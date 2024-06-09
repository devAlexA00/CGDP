from typing import List, Dict
from flask import Flask
import mysql.connector
import json

app = Flask(__name__)

def request() -> List[Dict]:
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'mysql_db'
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM contacts')
    results = [{"prenom": prenom, "nom": nom, "email": email, "n tel": tel} for (prenom, nom, email, tel) in cursor.fetchall()]
    cursor.close()
    connection.close()

    return results


@app.route('/')
def index() -> str:
    return json.dumps({'db complete': request()})


if __name__ == '__main__':
    app.run(host='0.0.0.0')