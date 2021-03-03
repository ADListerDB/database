USE adlister_db;


INSERT INTO users (username, email, password)
VALUES ('flyingdime7', 'flyingdime7@ymail.com', 'password0'),
       ('bluebell3', 'bluebell3@ymail.com', 'password1'),
       ('greentea2', 'greentea2@ymail.com', 'password2'),
       ('slyfox5', 'slyfox5@ymail.com', 'password3'),
       ('deviousmouse7', 'deviousmouse7@ymail.com', 'password4');



INSERT INTO ads (user_id, title, description)
VALUES (1001, 'Need baby sitter', 'Baby sitter needed for saturday night, between the hours of 8 pm and 2 am'),
       (1002, 'Handyman for hire', 'I have a leaking faucet in the the kitchen that needs repair/replace'),
       (1003, 'Free books', 'I have a box of free books, first come, first serve'),
       (1004, 'Car for sale', 'I have a blue, 1998 Toyota Corolla for sales. It''s in great condition, must see before buying. I''m asking $750 obo' ),
       (1005, 'Extermination services needed', 'I have a silverfish problem and need to eradicate them before they get worse');


INSERT INTO category (name)
VALUES ('Services'),
       ('Maintenance'),
       ('Free Items'),
       ('Auto Sales'),
       ('Pest Control');


