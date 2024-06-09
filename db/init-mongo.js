// Select the database to use.
use('CGDP_DB');

// Drop the 'contacts' collection if it exists.
db.contacts.drop();

// Create the 'contacts' collection and insert some sample documents.
db.getCollection('contacts').insertMany([
  { _id: 1, firstname: 'John', lastname: 'Doe', sex: 'M', age: 28, email: 'john.doe@example.com', phone: '555-1234' },
  { _id: 2, firstname: 'Jane', lastname: 'Smith', sex: 'F', age: 32, email: 'jane.smith@example.com', phone: '555-5678' },
  { _id: 3, firstname: 'Alice', lastname: 'Johnson', sex: 'F', age: 24, email: 'alice.johnson@example.com', phone: '555-8765' },
  { _id: 4, firstname: 'Bob', lastname: 'Brown', sex: 'M', age: 45, email: 'bob.brown@example.com', phone: '555-4321' },
  { _id: 5, firstname: 'Charlie', lastname: 'Davis', sex: 'M', age: 30, email: 'charlie.davis@example.com', phone: '555-3456' },
  { _id: 6, firstname: 'Diana', lastname: 'Miller', sex: 'F', age: 27, email: 'diana.miller@example.com', phone: '555-6789' },
]);


const contacts = db.getCollection('contacts').find().toArray();
printjson(contacts); // Utilisez printjson() pour afficher les résultats de manière appropriée.
