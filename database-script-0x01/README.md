# Airbnb Database Schema

This SQL script defines the core schema for an Airbnb-like platform. It includes:

- `User`: Stores guest, host, and admin data.
- `Property`: Listings managed by hosts.
- `Booking`: Reservation information for users and properties.
- `Payment`: Payment records linked to bookings.
- `Review`: User-submitted feedback on properties.
- `Message`: Direct messages between users.

## Features
- UUIDs used as primary keys.
- ENUM-like constraints enforced using CHECK.
- Indexed columns for optimized query performance:
  - `User.email`
  - `Property.host_id`
  - `Booking.property_id`, `Booking.user_id`
  - `Payment.booking_id`

All constraints and relationships are aligned with 3NF principles.
