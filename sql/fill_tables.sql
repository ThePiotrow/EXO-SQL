INSERT INTO customer (id, first_name, last_name, email, phone)
VALUES
(1, 'Jean', 'Dupont', 'jean.dupont@mail.com', '0601020304'),
(2, 'Marie', 'Martin', 'marie.martin@mail.com', '0656789012'),
(3, 'Pierre', 'Durand', 'pierre.durand@mail.com', '0687654321'),
(4, 'Paul', 'Lefebvre', 'paul.lefebvre@mail.com', '0612345678');

INSERT INTO orders (id, customer_id, order_date, status)
VALUES
(1, 1, '2022-02-01', 'EN COURS'),
(2, 2, '2022-02-05', 'EN COURS'),
(3, 3, '2022-02-10', 'LIVRE'),
(4, 1, '2022-02-15', 'LIVRE'),
(5, 2, '2022-02-20', 'EN COURS'),
(6, 3, '2022-02-25', 'EN COURS');

INSERT INTO item (id, name, price, description)
VALUES
(1, 'Ordinateur portable', 999.99, 'Ordinateur portable haut de gamme'),
(2, 'Souris sans fil', 29.99, 'Souris sans fil de qualité'),
(3, 'Imprimante multifonction', 199.99, 'Imprimante multifonction de qualité'),
(4, 'Câble HDMI', 9.99, 'Câble HDMI de qualité'),
(5, 'Câble USB', 5.99, 'Câble USB de qualité'),
(6, 'Câble Ethernet', 7.99, 'Câble Ethernet de qualité'),
(7, 'Câble VGA', 6.99, 'Câble VGA de qualité'),
(8, 'Câble audio', 4.99, 'Câble audio de qualité'),
(9, 'Câble vidéo', 6.99, 'Câble vidéo de qualité'),
(10, 'Câble réseau', 8.99, 'Câble réseau de qualité');

INSERT INTO order_item (order_id, item_id, quantity)
VALUES 
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 10, 1),
(2, 6, 1),
(2, 7, 1),
(2, 8, 1),
(2, 9, 1),
(2, 10, 1),
(3, 1, 1),
(3, 2, 1),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1);
