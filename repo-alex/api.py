# Description: API RESTful pour gérer des contacts

# Importation des modules
from flask import Flask, render_template, request, redirect, url_for, jsonify
from pymongo import MongoClient
import voluptuous as vol

# Initialisation de l'application Flask
app = Flask(__name__)

# Connexion à MongoDB
client = MongoClient('mongodb://localhost:27017/')
db = client['CGDP_DB']
contacts = db['contacts']

# Vérification de l'existence de l'index textuel
if "name_text_email_text_phone_text" not in contacts.list_indexes():
    # Création de l'index textuel
    contacts.create_index([("name", "text"), ("email", "text"), ("phone", "text")])

# Schéma de validation pour un contact
contact_schema = vol.Schema({
    'name': vol.Required(str),
    'email': vol.Required(vol.Email()),
    'phone': vol.Required(str)
}, required=True)

# Routes de l'interface utilisateur
@app.route('/')
def home():
    return render_template('home.html')

# Route pour ajouter un contact (interface utilisateur)
@app.route('/contacts/new', methods=['GET', 'POST'])
def add_contact_view():
    if request.method == 'POST':
        try:
            contact = contact_schema(request.form.to_dict())
            add_contact(contact)
            return redirect(url_for('home'))
        except vol.MultipleInvalid as e:
            return render_template('add_contact.html', errors=e.msg), 400

    return render_template('add_contact.html')

# Route pour supprimer un contact (interface utilisateur)
@app.route('/contacts/delete/<int:contact_id>', methods=['GET', 'POST'])
def delete_contact_view(contact_id):
    if request.method == 'POST':
        delete_contact(contact_id)
        return redirect(url_for('home'))
    try:
        contact = contacts.find_one({'_id': int(contact_id)})
        return render_template('delete_contact.html', contact=contact, contact_id=contact_id)
    except (IndexError, ValueError):
        return render_template('delete_contact.html', contact=None)

# Route pour afficher tous les contacts (interface utilisateur)
@app.route('/all_contacts')
def all_contacts_view():
    contacts_list = list(contacts.find())
    return render_template('all_contacts.html', contacts=contacts_list)

# Route pour rechercher des contacts (interface utilisateur)
@app.route('/contacts/search', methods=['GET', 'POST'])
def search_contacts_view():
    if request.method == 'POST':
        criteria = request.form.get('criteria')
        results = search_contacts(criteria)
        return render_template('search_results.html', contacts=results)
    return redirect(url_for('home'))

# Routes de l'API de contacts
@app.route('/api/contacts', methods=['GET'])
def get_contacts():
    return jsonify(list(contacts.find()))

# Route pour ajouter un contact (API)
@app.route('/api/contacts', methods=['POST'])
def add_contact(contact):
    try:
        contacts.insert_one(contact)
        return jsonify(contact), 201
    except vol.MultipleInvalid as e:
        return jsonify({'errors': e.msg}), 400

# Route pour afficher un contact (API)
@app.route('/api/contacts/<contact_id>', methods=['GET'])
def get_contact(contact_id):
    try:
        contact = contacts.find_one({'_id': int(contact_id)})
        if contact:
            return jsonify(contact), 200
        else:
            return jsonify({'error': 'Contact non trouvé'}), 404
    except (IndexError, ValueError):
        return jsonify({'error': 'Contact non trouvé'}), 404

# Route pour supprimer un contact (API)
@app.route('/api/contacts/<contact_id>', methods=['DELETE'])
def delete_contact(contact_id):
    try:
        result = contacts.delete_one({'_id': int(contact_id)})
        if result.deleted_count > 0:
            return jsonify({'message': 'Contact supprimé'}), 200
        else:
            return jsonify({'error': 'Contact non trouvé'}), 404
    except (IndexError, ValueError):
        return jsonify({'error': 'Contact non trouvé'}), 404

# Route pour rechercher des contacts (API)
@app.route('/api/contacts/search', methods=['GET'])
def search_contacts(criteria=None):
    if criteria is None:
        criteria = request.args.get('criteria')
    if not criteria:
        return jsonify({'error': 'Critère de recherche non fourni.'}), 400

    results = list(contacts.find({'$text': {'$search': criteria}}))
    return jsonify(results)

# Lance l'application Flask
if __name__ == '__main__':
    app.run(port=5000, debug=True)