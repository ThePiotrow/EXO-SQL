### 1: Sélectionner tous les clients.

```sql
SELECT * FROM customer;
```



### 2: Sélectionner tous les articles dont le prix est supérieur à 100.

```sql
SELECT * FROM item WHERE price > 100;
```



### 3: Sélectionner les commandes passées par le client ayant l'ID 2.

```sql
SELECT * FROM orders WHERE customer_id = 2;
```



### 4: Sélectionner les noms et les emails des clients ayant un numéro de téléphone.
```sql
SELECT first_name, last_name, email FROM customer WHERE phone IS NOT NULL;
```



### 5: Sélectionner les articles et leur quantité pour la commande ayant l'ID 3.

```sql
SELECT item_id, quantity FROM order_item WHERE order_id = 3;
```



### 6: Sélectionner le nom, le prénom et l'email des clients ayant passé une commande avec le statut 'EN COURS'.
```sql
SELECT c.first_name, c.last_name, c.email
FROM customer c
JOIN orders o ON c.id = o.customer_id
WHERE o.status = 'EN COURS';
```



### 7: Sélectionner le nom des articles et la quantité totale vendue pour chaque article.
```sql
SELECT i.name, SUM(oi.quantity) AS total_quantity
FROM item i
JOIN order_item oi ON i.id = oi.item_id
GROUP BY i.id, i.name;
```



### 8: Sélectionner le nom, le prénom et le montant total dépensé par chaque client.
```sql
SELECT c.first_name, c.last_name, SUM(i.price * oi.quantity) AS total_spent
FROM customer c
JOIN orders o ON c.id = o.customer_id
JOIN order_item oi ON o.id = oi.order_id
JOIN item i ON oi.item_id = i.id
GROUP BY c.id, c.first_name, c.last_name;
```



### 9: Sélectionner les articles vendus avec chaque commande, en incluant le nom du client, l'ID de la commande et le nom de l'article.
```sql
SELECT c.first_name, c.last_name, o.id AS order_id, i.name AS item_name
FROM customer c
JOIN orders o ON c.id = o.customer_id
JOIN order_item oi ON o.id = oi.order_id
JOIN item i ON oi.item_id = i.id;
```



### 10: Sélectionner les clients n'ayant pas encore passé de commande.

```sql
SELECT c.first_name, c.last_name, c.email
FROM customer c
LEFT JOIN orders o ON c.id = o.customer_id
WHERE o.id IS NULL;
```

### 11: Sélectionner tous les clients dont le nom de famille commence par la lettre 'D'.
```sql
SELECT * FROM customer WHERE last_name LIKE 'D%';
```



### 12: Sélectionner les trois articles les moins chers.
```sql
SELECT * FROM item ORDER BY price ASC LIMIT 3;
```



### 13: Sélectionner les commandes passées entre le 1er février 2022 et le 28 février 2022.
```sql
SELECT * FROM orders WHERE order_date BETWEEN '2022-02-01' AND '2022-02-28';
```



### 14: Sélectionner le nombre total de commandes pour chaque statut.
```sql
SELECT status, COUNT(*) as total_orders FROM orders GROUP BY status;
```



### 15: Sélectionner les articles dont le nom contient le mot 'Câble'.
```sql
SELECT * FROM item WHERE name LIKE '%Câble%';
```



### 16: Sélectionner l'ID de la commande, le nom de l'article et le prix total pour chaque article commandé.
```sql
SELECT oi.order_id, i.name, i.price * oi.quantity as total_price
FROM order_item oi
JOIN item i ON oi.item_id = i.id;
```



### 17: Sélectionner les clients et le nombre de commandes qu'ils ont passées, en affichant seulement les clients ayant passé au moins deux commandes.
```sql
SELECT c.id, c.first_name, c.last_name, COUNT(o.id) as order_count
FROM customer c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.id, c.first_name, c.last_name
HAVING order_count >= 2;
```



### 18: Sélectionner les articles qui n'ont jamais été commandés.
```sql
SELECT i.*
FROM item i
LEFT JOIN order_item oi ON i.id = oi.item_id
WHERE oi.item_id IS NULL;
```



### 19: Sélectionner les clients et le prix moyen des articles qu'ils ont commandés.
```sql
SELECT c.id, c.first_name, c.last_name, AVG(i.price) as average_price
FROM customer c
JOIN orders o ON c.id = o.customer_id
JOIN order_item oi ON o.id = oi.order_id
JOIN item i ON oi.item_id = i.id
GROUP BY c.id, c.first_name, c.last_name;
```



### 20: Sélectionner les commandes contenant au moins un article dont le prix est supérieur à 500.
```sql
SELECT DISTINCT o.id, o.customer_id, o.order_date, o.status
FROM orders o
JOIN order_item oi ON o.id = oi.order_id
JOIN item i ON oi.item_id = i.id
WHERE i.price > 500;
```