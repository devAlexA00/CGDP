from typing import List, Dict
from flask import Flask, jsonify, render_template, redirect
import mysql.connector
import json

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
    CURSOR.execute('SELECT * FROM contacts')
    results = [{"prenom": prenom, "nom": nom, "age": age, "sexe": sex,"email": email, "n tel": tel, 'entreprise': company, 'region': region} for (id, prenom, nom, age, sex, email, tel, company, region) in CURSOR.fetchall()]
    return results


@app.route('/')
def index():
    html = """
<!DOCTYPE html>
<html>
<head>
    <title>Gestion des contacts</title>
</head>
<body>
    <h1>Gestion des contacts</h1>
    <form id="contact-form">
        <input type="hidden" id="contact-id" name="id">
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
        <button type="button" onclick="saveContact()">Enregistrer</button>
    </form>
    <br>
    <button onclick="loadContacts()">Rechercher</button>
    <br>
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
        const API_URL = '/api/contacts';

        function loadContacts() {
            fetch(API_URL)
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
                                <button onclick="editContact(${contact.id}, '${contact.prenom}', '${contact.nom}', '${contact.sexe}', ${contact.age}, '${contact.email}', '${contact["n tel"]}')">Modifier</button>
                                <button onclick="deleteContact(${contact.id})">Supprimer</button>
                            </td>
                        `;
                        tbody.appendChild(row);
                    });
                });
        }

        function editContact(id, prenom, nom, sexe, age, email, phone) {
            document.getElementById('contact-id').value = id;
            document.getElementById('firstname').value = prenom;
            document.getElementById('lastname').value = nom;
            document.getElementById('sex').value = sexe;
            document.getElementById('age').value = age;
            document.getElementById('email').value = email;
            document.getElementById('phone').value = phone;
        }

        function deleteContact(id) {
            fetch(`${API_URL}/${id}`, {
                method: 'DELETE'
            }).then(() => loadContacts());
        }

        function saveContact() {
            const formData = new FormData(document.getElementById('contact-form'));
            const data = Object.fromEntries(formData);
            const id = data.id;
            delete data.id;

            const method = id ? 'PUT' : 'POST';
            const url = id ? `${API_URL}/${id}` : API_URL;

            fetch(url, {
                method: method,
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(data)
            }).then(() => {
                document.getElementById('contact-form').reset();
                loadContacts();
            });
        }

        window.onload = loadContacts;
    </script>
</body>
</html>
"""
    return html, 200

@app.route('/api/contacts', methods=['GET'])
def get_contacts_route() -> str:
    contacts = get_contacts()
    return jsonify(contacts)


if __name__ == '__main__':
    app.run(host='0.0.0.0')