// Select the database to use.
use('myNewDatabase');

// Create the 'contacts' collection and insert some sample documents.
db.getCollection('contacts').insertMany([
  { _id: 1, name: 'John Doe', email: 'john.doe@example.com', phone: '555-1234' },
  { _id: 2, name: 'Jane Smith', email: 'jane.smith@example.com', phone: '555-5678' },
  { _id: 3, name: 'Alice Johnson', email: 'alice.johnson@example.com', phone: '555-8765' },
  { _id: 4, name: 'Bob Brown', email: 'bob.brown@example.com', phone: '555-4321' },
]);

// Verify the documents were inserted.
const contacts = db.getCollection('contacts').find().toArray();
console.log(contacts);