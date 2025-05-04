
CREATE TABLE Customer (
    Customer_id NUMBER PRIMARY KEY,
    customer_Name VARCHAR2(50) NOT NULL,
    customer_Tel VARCHAR2(15)
);


CREATE TABLE Product (
    Product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(50) NOT NULL,
    Price NUMBER(10,2) NOT NULL
);


CREATE TABLE Orders (
    Customer_id NUMBER,
    Product_id NUMBER,
    quantity NUMBER NOT NULL,
    total_amount NUMBER(10,2) NOT NULL,
    PRIMARY KEY (Customer_id, Product_id),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

Modifying the Tables


ALTER TABLE Product ADD Category VARCHAR2(20);


ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;