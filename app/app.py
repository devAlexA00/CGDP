from typing import List, Dict
from flask import Flask, request, jsonify
import mysql.connector

CONFIG = {
    'user': 'root',
    'password': 'root',
    'host': 'db',
    'port': '3306',
    'database': 'mysql_db'
}
CONNECTION = mysql.connector.connect(**CONFIG)
CURSOR = CONNECTION.cursor()
print('Connexion DB OK')

app = Flask(__name__)


def get_contacts() -> List[Dict]:
    filters = request.args
    sql = 'SELECT * FROM contacts'
    conditions = []

    if 'prenom' in filters:
        conditions.append(f"firstname LIKE '%{filters['prenom']}%'")
    if 'nom' in filters:
        conditions.append(f"lastname LIKE '%{filters['nom']}%'")
    if 'email' in filters:
        conditions.append(f"email LIKE '%{filters['email']}%'")
    if 'entreprise' in filters:
        conditions.append(f"company LIKE '%{filters['entreprise']}%'")
    if 'region' in filters:
        conditions.append(f"region LIKE '%{filters['region']}%'")
    if 'tel' in filters:
        conditions.append(f"phone LIKE '%{filters['tel']}%'")
    if 'age_min' in filters:
        conditions.append(f"age >= {filters['age_min']}")
    if 'age_max' in filters:
        conditions.append(f"age <= {filters['age_max']}")
    if 'sexe' in filters:
        conditions.append(f"sex = '{filters['sexe']}'")

    if conditions:
        sql += ' WHERE ' + ' AND '.join(conditions)
        sql += ';'

    CURSOR.execute(sql)
    results = [{"id": id, "prenom": prenom, "nom": nom, "age": age, "sexe": sex, "email": email, "n tel": tel, 'entreprise': company, 'region': region} for (id, prenom, nom, age, sex, email, tel, company, region) in CURSOR.fetchall()]
    return results


@app.route('/')
def index():
    html = """
<!DOCTYPE html>
<html>
<head>
    <title>Gestion des contacts</title>
    <meta charset="UTF-8">
</head>
<body>
    <h1>Gestion des contacts</h1>
    <form id="contact-form" method="post" action="/api/contacts" onsubmit="return validateForm()">
        <input type="hidden" id="contact-id" name="id" value="0">
        <label for="firstname">Prénom :</label>
        <input type="text" id="firstname" name="firstname" required><br>
        <label for="lastname">Nom :</label>
        <input type="text" id="lastname" name="lastname" required><br>
        <label for="sex">Sexe :</label>
        <select id="sex" name="sex" required>
            <option value="M">M</option>
            <option value="F">F</option>
        </select><br>
        <label for="age">Âge :</label>
        <input type="number" min="0" value="0" id="age" name="age" required><br>
        <label for="email">Email :</label>
        <input type="email" id="email" name="email" required><br>
        <label for="phone">Téléphone :</label>
        <input type="text" id="phone" name="phone" required><br>
        <label for="company">Entreprise :</label>
        <input type="text" id="company" name="company" required><br>
        <label for="region">Région :</label>
        <input type="text" id="region" name="region" required><br>
        <button type="submit">Enregistrer</button>
    </form>
    <br>
    <div id="filters">
        <input type="text" id="firstname-filter" oninput="applyFilters()" placeholder="Prénom">
        <input type="text" id="lastname-filter" oninput="applyFilters()" placeholder="Nom">
        <input type="text" id="email-filter" oninput="applyFilters()" placeholder="Email">
        <input type="text" id="company-filter" oninput="applyFilters()" placeholder="Entreprise">
        <input type="text" id="region-filter" oninput="applyFilters()" placeholder="Region">
        <input type="text" id="phone-filter" oninput="applyFilters()" placeholder="Téléphone">
        <input type="number" id="age-filter-min" min="0" oninput="applyFilters()" placeholder="Âge minimum">
        <input type="number" id="age-filter-max" min="0" oninput="applyFilters()" placeholder="Âge maximum">
        <select id="sex-filter" onchange="applyFilters()">
            <option value="">Tous les genres</option>
            <option value="M">M</option>
            <option value="F">F</option>
        </select>
    </div>
    <br>
    <button onclick="loadContacts()">Rechercher</button>
    <br>
    <div id="error-message"></div>
    <table id="contacts-table" border="1">
        <thead>
            <tr>
                <th>Prénom</th>
                <th>Nom</th>
                <th>Sexe</th>
                <th>Âge</th>
                <th>Email</th>
                <th>Téléphone</th>
                <th>Entreprise</th>
                <th>Region</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>

    <script>
        function applyFilters() {
            const firstname = document.getElementById('firstname-filter').value;
            const lastname = document.getElementById('lastname-filter').value;
            const email = document.getElementById('email-filter').value;
            const company = document.getElementById('company-filter').value;
            const region = document.getElementById('region-filter').value;
            const phone = document.getElementById('phone-filter').value;
            const ageMin = document.getElementById('age-filter-min').value;
            const ageMax = document.getElementById('age-filter-max').value;
            const sex = document.getElementById('sex-filter').value;

            const params = new URLSearchParams();
            if (firstname) params.append('prenom', firstname);
            if (lastname) params.append('nom', lastname);
            if (email) params.append('email', email);
            if (company) params.append('entreprise', company);
            if (region) params.append('region', region);
            if (phone) params.append('tel', phone);
            if (ageMin) params.append('age_min', ageMin);
            if (ageMax) params.append('age_max', ageMax);
            if (sex) params.append('sexe', sex);

            const url = `/api/contacts?${params.toString()}`;
            fetch(url)
                .then(response => response.json())
                .then(data => {
                    const tbody = document.getElementById('contacts-table').querySelector('tbody');
                    tbody.innerHTML = '';
                    data.forEach(contact => {
                        const row = document.createElement('tr');
                        row.innerHTML = `
                            <td>${contact.prenom}</td>
                            <td>${contact.nom}</td>
                            <td>${contact.sexe}</td>
                            <td>${contact.age}</td>
                            <td>${contact.email}</td>
                            <td>${contact["n tel"]}</td>
                            <td>${contact.entreprise}</td>
                            <td>${contact.region}</td>
                            <td>
                                <button onclick="editContact(${contact.id}, '${contact.prenom}', '${contact.nom}', '${contact.sexe}', ${contact.age}, '${contact.email}', '${contact["n tel"]}', '${contact.entreprise}', '${contact.region}')">Modifier</button>
                                <button onclick="deleteContact(${contact.id})">Supprimer</button>
                            </td>
                        `;
                        tbody.appendChild(row);
                    });
                });
        }

        function loadContacts() {
            const ageMin = document.getElementById('age-filter-min').value;
            const ageMax = document.getElementById('age-filter-max').value;
            
            if (ageMin && ageMax && parseInt(ageMin) > parseInt(ageMax)) {
                document.getElementById('error-message').innerText = "Âge minimum doit être inférieur ou égal à Âge maximum";
                return;
            }
            
            document.getElementById('error-message').innerText = "";
            
            fetch('/api/contacts')
                .then(response => response.json())
                .then(data => {
                    const tbody = document.getElementById('contacts-table').querySelector('tbody');
                    tbody.innerHTML = '';
                    data.forEach(contact => {
                        const row = document.createElement('tr');
                        row.innerHTML = `
                            <td>${contact.prenom}</td>
                            <td>${contact.nom}</td>
                            <td>${contact.sexe}</td>
                            <td>${contact.age}</td>
                            <td>${contact.email}</td>
                            <td>${contact["n tel"]}</td>
                            <td>${contact.entreprise}</td>
                            <td>${contact.region}</td>
                            <td>
                                <button onclick="editContact(${contact.id}, '${contact.prenom}', '${contact.nom}', '${contact.sexe}', ${contact.age}, '${contact.email}', '${contact["n tel"]}', '${contact.entreprise}', '${contact.region}')">Modifier</button>
                                <button onclick="deleteContact(${contact.id})">Supprimer</button>
                            </td>
                        `;
                        tbody.appendChild(row);
                    });
                });
        }

        function editContact(id, firstname, lastname, sex, age, email, phone, company, region) {
            document.getElementById('contact-id').value = id;
            document.getElementById('firstname').value = firstname;
            document.getElementById('lastname').value = lastname;
            document.getElementById('sex').value = sex;
            document.getElementById('age').value = age;
            document.getElementById('email').value = email;
            document.getElementById('phone').value = phone;
            document.getElementById('company').value = company;
            document.getElementById('region').value = region;
        }

        function validateForm() {
            const firstname = document.getElementById('firstname').value;
            const lastname = document.getElementById('lastname').value;
            const sex = document.getElementById('sex').value;
            const age = document.getElementById('age').value;
            const email = document.getElementById('email').value;
            const phone = document.getElementById('phone').value;
            const company = document.getElementById('company').value;
            const region = document.getElementById('region').value;

            if (!firstname || !lastname || !sex || !age || !email || !phone || !company || !region) {
                document.getElementById('error-message').innerText = "Veuillez remplir tous les champs";
                return false;
            }

            return true;
        }

        function deleteContact(id) {
            fetch(`/api/contacts/${id}`, { method: 'DELETE' })
                .then(response => response.json())
                .then(data => loadContacts());
        }

        document.addEventListener('DOMContentLoaded', function() {
            loadContacts();
        });
    </script>
</body>
</html>
"""
    return html


@app.route('/api/contacts/<int:id>', methods=['GET', 'POST'])
def contacts(id=None):
    if request.method == 'GET':
        if id is None:
            return jsonify(get_contacts()), 200
        else:
            contact = get_contacts(id)
            if contact:
                return jsonify(contact), 200
            else:
                return jsonify({'message': 'Contact not found'}), 404

    elif request.method == 'POST':
        contact_id = request.form.get('id')
        firstname = request.form.get('firstname')
        lastname = request.form.get('lastname')
        sex = request.form.get('sex')
        age = request.form.get('age')
        email = request.form.get('email')
        phone = request.form.get('phone')
        company = request.form.get('company')
        region = request.form.get('region')

        if contact_id == '0':
            CURSOR.execute(
                'INSERT INTO contacts (firstname, lastname, age, sex, email, phone, company, region) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)',
                (firstname, lastname, age, sex, email, phone, company, region)
            )
        else:
            CURSOR.execute(
                'UPDATE contacts SET firstname = %s, lastname = %s, age = %s, sex = %s, email = %s, phone = %s, company = %s, region = %s WHERE id = %s',
                (firstname, lastname, age, sex, email, phone, company, region, contact_id)
            )

        CONNECTION.commit()
        return jsonify({'message': 'Contact saved'}), 201


@app.route('/api/contacts/<int:id>', methods=['DELETE'])
def delete_contact(id):
    contact = get_contacts(id)
    if contact:
        CURSOR.execute('DELETE FROM contacts WHERE id = %s', (id,))
        CONNECTION.commit()
        return jsonify({'message': 'Contact deleted'}), 200
    else:
        return jsonify({'message': 'Contact not found'}), 404


if __name__ == '__main__':
    app.run(host='0.0.0.0')
