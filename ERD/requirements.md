## Airbnb Database ERD (dbdiagram.io Format)
Below is the DBML code to generate the ER diagram for the Airbnb-like database.
I also have the documentation here https://dbdocs.io/njugunabriian/airbnb-database?view=table_structure

Table User {
  user_id UUID [pk, unique, not null, note: 'Primary Key']
  first_name VARCHAR [not null]
  last_name VARCHAR [not null]
  email VARCHAR [unique, not null, note: 'Indexed']
  password_hash VARCHAR [not null]
  phone_number VARCHAR
  role ENUM [not null, note: 'guest, host, admin']
  created_at TIMESTAMP [default: `CURRENT_TIMESTAMP`]
}

Table Property {
  property_id UUID [pk, unique, not null]
  host_id UUID [not null, ref: > User.user_id]
  name VARCHAR [not null]
  description TEXT [not null]
  location VARCHAR [not null]
  pricepernight DECIMAL [not null]
  created_at TIMESTAMP [default: `CURRENT_TIMESTAMP`]
  updated_at TIMESTAMP
}

Table Booking {
  booking_id UUID [pk, unique, not null]
  property_id UUID [not null, ref: > Property.property_id]
  user_id UUID [not null, ref: > User.user_id]
  start_date DATE [not null]
  end_date DATE [not null]
  total_price DECIMAL [not null]
  status ENUM [not null, note: 'pending, confirmed, canceled']
  created_at TIMESTAMP [default: `CURRENT_TIMESTAMP`]
}

Table Payment {
  payment_id UUID [pk, unique, not null]
  booking_id UUID [not null, ref: > Booking.booking_id]
  amount DECIMAL [not null]
  payment_date TIMESTAMP [default: `CURRENT_TIMESTAMP`]
  payment_method ENUM [not null, note: 'credit_card, paypal, stripe']
}

Table Review {
  review_id UUID [pk, unique, not null]
  property_id UUID [not null, ref: > Property.property_id]
  user_id UUID [not null, ref: > User.user_id]
  rating INTEGER [not null, note: 'Rating between 1 and 5']
  comment TEXT [not null]
  created_at TIMESTAMP [default: `CURRENT_TIMESTAMP`]
}

Table Message {
  message_id UUID [pk, unique, not null]
  sender_id UUID [not null, ref: > User.user_id]
  recipient_id UUID [not null, ref: > User.user_id]
  message_body TEXT [not null]
  sent_at TIMESTAMP [default: `CURRENT_TIMESTAMP`]
}