/*�� ����, ����, ����*/
SELECT *
FROM book;


/*å ���� �౸�� ���� �ڷḸ ���� ���̺� ����*/
CREATE VIEW vw_book
AS SELECT *
    FROM book
    WHERE bookname LIKE '%�౸%';
    
SELECT *
FROM vw_book;

SELECT *
FROM customer;

/*�ּҰ� ���ѹα��� �� �ڷḸ ���� ���̺� ����*/
CREATE VIEW vw_customer
AS SELECT *
   FROM customer
   WHERE address LIKE '%���ѹα�%';

SELECT *
FROM vw_customer;

CREATE OR REPLACE VIEW vw_customer(custid, name, address)
AS SELECT custid, name, address
   FROM customer
   WHERE address LIKE '%����%';
   
SELECT *
FROM vw_customer;