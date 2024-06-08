import flask as f
import sqlite3

#Data structure
    # name 
    # phone 
    # email
    # address
    # postalZip
    # country
    # company
    # job > TO ADD

app = f.Flask(__name__)

@app.route('/')
def index():
    return f.render_template('index.html')

@app.route('/add', methods=['POST'])
def add():
    # Connect to the SQLite database
    conn = sqlite3.connect('database.db')
    c = conn.cursor()
    
    # Retrieve data from the form
    name = f.request.form['name']
    email = f.request.form['email']
    
    # Insert data into the database
    c.execute('INSERT INTO users (name, email) VALUES (?, ?)', (name, email))
    conn.commit()
    conn.close()
    
    return f.redirect(f.url_for('index'))

@app.route('/search')
def search():
    # Connect to the SQLite database
    conn = sqlite3.connect('database.db')
    c = conn.cursor()
    
    # Retrieve data from the database
    c.execute('SELECT * FROM users')
    users = c.fetchall()
    conn.close()
    
    return f.render_template('search.html', users=users)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
