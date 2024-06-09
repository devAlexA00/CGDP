from flask import Flask, render_template, request, jsonify
from pymongo import MongoClient
import voluptuous as vol
from bson import ObjectId

app = Flask(__name__)
client = MongoClient('mongodb://mongo:27017/')
db = client['CGDP_DB']
contacts = db['contacts']

contact_schema = vol.Schema({
    'firstname': vol.Required(str),
    'lastname': vol.Required(str),
    'sex': vol.Required(str),
    'age': vol.Required(vol.Coerce(int)),
    'email': vol.Required(vol.Email()),
    'phone': vol.Required(str)
}, required=True)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api/contacts', methods=['GET'])
def get_contacts():
    contacts_list = list(contacts.find())
    for contact in contacts_list:
        contact['_id'] = str(contact['_id'])
    return jsonify(contacts_list)

@app.route('/api/contacts', methods=['POST'])
def add_contact():
    try:
        contact = contact_schema(request.json)
        result = contacts.insert_one(contact)
        contact['_id'] = str(result.inserted_id)
        return jsonify(contact), 201
    except vol.MultipleInvalid as e:
        return jsonify({'errors': e.msg}), 400

@app.route('/api/contacts/<contact_id>', methods=['PUT'])
def update_contact(contact_id):
    try:
        contact = contact_schema(request.json)
        result = contacts.update_one({'_id': ObjectId(contact_id)}, {'$set': contact})
        if result.matched_count == 0:
            return jsonify({'error': 'Contact non trouvé'}), 404
        contact['_id'] = contact_id
        return jsonify(contact), 200
    except vol.MultipleInvalid as e:
        return jsonify({'errors': e.msg}), 400

@app.route('/api/contacts/<contact_id>', methods=['DELETE'])
def delete_contact(contact_id):
    result = contacts.delete_one({'_id': ObjectId(contact_id)})
    if result.deleted_count == 0:
        return jsonify({'error': 'Contact non trouvé'}), 404
    return jsonify({'message': 'Contact supprimé'}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)