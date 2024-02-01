CREATE TABLE domainList (
    unique_id INT PRIMARY KEY AUTO_INCREMENT,
    data_value varchar(15) NOT NULL
);

CREATE TABLE dataTable (
    unique_id INT PRIMARY KEY AUTO_INCREMENT,
    date DATE NOT NULL,
    fruit INT NOT NULL,
    quantity_sold INT CHECK (quantity_sold > 0),
    FOREIGN KEY (fruit) REFERENCES domainList(unique_id)
);

INSERT INTO domainList (data_value) VALUES
('apple'),
('orange'),
('banana');

INSERT INTO dataTable (date, fruit, quantity_sold) VALUES
('2020-12-08', 2, 6),
('2020-12-08', 1, 12),
('2020-12-09', 2, 8),
('2020-12-10', 3, 4),
('2020-12-10', 1, 3),
('2020-12-10', 2, 16),
('2020-12-11', 2, 10);

SELECT
	dataTable.unique_id AS unique_id,
    dataTable.date,
    domainList.data_value AS fruit_name,
    dataTable.quantity_sold
FROM
    dataTable
JOIN
    domainList ON dataTable.fruit = domainList.unique_id;