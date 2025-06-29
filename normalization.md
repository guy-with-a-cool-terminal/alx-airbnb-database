# Airbnb Database Normalization

### First Normal Form (1NF)
- All attributes contain atomic values.
- No repeating groups exist in any table.

 The schema meets 1NF requirements.

### Second Normal Form (2NF)
- All non-key attributes fully depend on the entire primary key.
- No partial dependencies exist since all tables use single-column primary keys.

 The schema meets 2NF requirements.

### Third Normal Form (3NF)
- No transitive dependencies exist.
- All attributes are directly dependent on the primary key, and not on other non-key attributes.

 The schema meets 3NF requirements.

## Conclusion
The database design is fully normalized up to 3NF. No structural changes are needed.
