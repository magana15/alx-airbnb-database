--users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
('9d2e1a77-2a14-4b09-9f33-1f28b83b4b72', 'Joel', 'Magana', 'joel.magana@example.com', 'hash111', '0712345678', 'admin', CURRENT_TIMESTAMP),
('3f5b45d1-64f0-45a4-8f8c-5cb5f6e9b1a2', 'Mary', 'Wambui', 'mary.wambui@example.com', 'hash222', '0723456789', 'host', CURRENT_TIMESTAMP),
('c8e3d20e-2e1c-4c45-b6b9-0d4b9c28a91f', 'Kevin', 'Otieno', 'kevin.otieno@example.com', 'hash333', '0734567890', 'guest', CURRENT_TIMESTAMP),
('f41a7f77-3b1b-4f2a-bf52-7f66dfe32de8', 'Lucy', 'Mwangi', 'lucy.mwangi@example.com', 'hash444', '0745678901', 'guest', CURRENT_TIMESTAMP),
('a9c64e51-b4f3-4709-9f77-d318e0cb634a', 'Peter', 'Omondi', 'peter.omondi@example.com', 'hash555', '0756789012', 'host', CURRENT_TIMESTAMP);

INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
('1b2a3c44-5d6e-4f7a-9b8c-1234567890aa', '3f5b45d1-64f0-45a4-8f8c-5cb5f6e9b1a2', 'Nakuru Hill View', 'A cozy 2-bedroom apartment overlooking Lake Nakuru.', 'Nakuru', 5500.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('2c3b4d55-6e7f-5a8b-0c9d-2345678900bb', 'a9c64e51-b4f3-4709-9f77-d318e0cb634a', 'Mombasa Beach Retreat', 'A luxurious beachfront villa perfect for families.', 'Mombasa', 12000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('3d4c5e66-7f8a-6b9c-1d0e-3456789000cc', '3f5b45d1-64f0-45a4-8f8c-5cb5f6e9b1a2', 'Eldoret Haven', 'Modern one-bedroom apartment near Rupa Mall.', 'Eldoret', 4000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('4e5d6f77-8a9b-7c0d-2e1f-4567890000dd', 'a9c64e51-b4f3-4709-9f77-d318e0cb634a', 'Kisumu Lakeside Home', 'Beautiful lake-view home near Dunga Beach.', 'Kisumu', 6500.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('5f6e7a88-9b0c-8d1e-3f2a-5678900000ee', '3f5b45d1-64f0-45a4-8f8c-5cb5f6e9b1a2', 'Nairobi Skyline Apartment', 'Stylish penthouse apartment in Westlands.', 'Nairobi', 10000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
('6a7b8c99-0d1e-9f2a-4b3c-6789000000ff', '2c3b4d55-6e7f-5a8b-0c9d-2345678900bb', 'c8e3d20e-2e1c-4c45-b6b9-0d4b9c28a91f', '2025-11-10', '2025-11-14', 48000.00, 'confirmed', CURRENT_TIMESTAMP),
('7b8c9d00-1e2f-0a3b-5c4d-7890000000aa', '1b2a3c44-5d6e-4f7a-9b8c-1234567890aa', 'f41a7f77-3b1b-4f2a-bf52-7f66dfe32de8', '2025-12-01', '2025-12-03', 11000.00, 'pending', CURRENT_TIMESTAMP),
('8c9d0e11-2f3a-1b4c-6d5e-8900000000bb', '3d4c5e66-7f8a-6b9c-1d0e-3456789000cc', 'c8e3d20e-2e1c-4c45-b6b9-0d4b9c28a91f', '2025-10-20', '2025-10-23', 12000.00, 'confirmed', CURRENT_TIMESTAMP),
('9d0e1f22-3a4b-2c5d-7e6f-9000000000cc', '5f6e7a88-9b0c-8d1e-3f2a-5678900000ee', 'f41a7f77-3b1b-4f2a-bf52-7f66dfe32de8', '2025-09-15', '2025-09-17', 20000.00, 'canceled', CURRENT_TIMESTAMP),
('0e1f2a33-4b5c-3d6e-8f7a-0100000000dd', '4e5d6f77-8a9b-7c0d-2e1f-4567890000dd', 'c8e3d20e-2e1c-4c45-b6b9-0d4b9c28a91f', '2025-10-25', '2025-10-28', 19500.00, 'confirmed', CURRENT_TIMESTAMP);


INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('aa1b2c3d-4e5f-6a7b-8c9d-111111111111', '6a7b8c99-0d1e-9f2a-4b3c-6789000000ff', 48000.00, CURRENT_TIMESTAMP, 'credit_card'),
('bb2c3d4e-5f6a-7b8c-9d0e-222222222222', '7b8c9d00-1e2f-0a3b-5c4d-7890000000aa', 11000.00, CURRENT_TIMESTAMP, 'paypal'),
('cc3d4e5f-6a7b-8c9d-0e1f-333333333333', '8c9d0e11-2f3a-1b4c-6d5e-8900000000bb', 12000.00, CURRENT_TIMESTAMP, 'stripe'),
('dd4e5f6a-7b8c-9d0e-1f2a-444444444444', '9d0e1f22-3a4b-2c5d-7e6f-9000000000cc', 20000.00, CURRENT_TIMESTAMP, 'credit_card'),
('ee5f6a7b-8c9d-0e1f-2a3b-555555555555', '0e1f2a33-4b5c-3d6e-8f7a-0100000000dd', 19500.00, CURRENT_TIMESTAMP, 'paypal');


INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
('ff6a7b8c-9d0e-1f2a-3b4c-666666666666', '2c3b4d55-6e7f-5a8b-0c9d-2345678900bb', 'c8e3d20e-2e1c-4c45-b6b9-0d4b9c28a91f', 5, 'Amazing beach house — very clean and quiet!', CURRENT_TIMESTAMP),
('aa7b8c9d-0e1f-2a3b-4c5d-777777777777', '1b2a3c44-5d6e-4f7a-9b8c-1234567890aa', 'f41a7f77-3b1b-4f2a-bf52-7f66dfe32de8', 4, 'Nice stay, friendly host.', CURRENT_TIMESTAMP),
('bb8c9d0e-1f2a-3b4c-5d6e-888888888888', '3d4c5e66-7f8a-6b9c-1d0e-3456789000cc', 'c8e3d20e-2e1c-4c45-b6b9-0d4b9c28a91f', 5, 'Very convenient location.', CURRENT_TIMESTAMP),
('cc9d0e1f-2a3b-4c5d-6e7f-999999999999', '4e5d6f77-8a9b-7c0d-2e1f-4567890000dd', 'f41a7f77-3b1b-4f2a-bf52-7f66dfe32de8', 3, 'Good view but needs better cleaning.', CURRENT_TIMESTAMP),
('dd0e1f2a-3b4c-5d6e-7f8a-000000000000', '5f6e7a88-9b0c-8d1e-3f2a-5678900000ee', 'c8e3d20e-2e1c-4c45-b6b9-0d4b9c28a91f', 5, 'Best stay in Nairobi!', CURRENT_TIMESTAMP);


INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
('ee1f2a3b-4c5d-6e7f-8a9b-aaaaaaa11111', 'c8e3d20e-2e1c-4c45-b6b9-0d4b9c28a91f', '3f5b45d1-64f0-45a4-8f8c-5cb5f6e9b1a2', 'Hi Mary, is the Nakuru Hill View available this weekend?', CURRENT_TIMESTAMP),
('ff2a3b4c-5d6e-7f8a-9b0c-bbbbbbb22222', '3f5b45d1-64f0-45a4-8f8c-5cb5f6e9b1a2', 'c8e3d20e-2e1c-4c45-b6b9-0d4b9c28a91f', 'Yes Kevin, it’s available. Would you like to book?', CURRENT_TIMESTAMP),
('aa3b4c5d-6e7f-8a9b-0c1d-ccccccc33333', 'f41a7f77-3b1b-4f2a-bf52-7f66dfe32de8', 'a9c64e51-b4f3-4709-9f77-d318e0cb634a', 'Hi Peter, does your Mombasa villa have Wi-Fi?', CURRENT_TIMESTAMP),
('bb4c5d6e-7f8a-9b0c-1d2e-ddddddd44444', 'a9c64e51-b4f3-4709-9f77-d318e0cb634a', 'f41a7f77-3b1b-4f2a-bf52-7f66dfe32de8', 'Yes, it has free Wi-Fi and air conditioning.', CURRENT_TIMESTAMP),
('cc5d6e7f-8a9b-0c1d-2e3f-eeeeeee55555', '9d2e1a77-2a14-4b09-9f33-1f28b83b4b72', '3f5b45d1-64f0-45a4-8f8c-5cb5f6e9b1a2', 'Admin note: Please update your property details.', CURRENT_TIMESTAMP);

