SELECT name, saleprice
FROM Customer, Orders
WHERE Customer.custid=Orders.custid;

// ���� �ܺ� ����
SELECT name, saleprice
from customer left outer join orders on customer.custid=orders.custid;

// ���� �ܺ� ����
SELECT customer.name, saleprice
from customer, orders
where customer.custid=orders.custid(+);

// ���� ��� ������ ���� ǥ��
SELECT max(price)
from book

// ���� ��� ������ �̸�
SELECT bookname
from book
where price=35000;

// ���� ��� ������ �̸�
SELECT bookname
from book
where price=(select max(price) from book);

// ������ �ֹ������� �ִ� �� ���̵� ã��
SELECT custid
from orders;

// �� ���̵� �ش��ϴ� �� �̸� ã��
select name
from customer
where custid in (1,2,3,4);

// ������ �ֹ��� ���� �ִ� ���� �̸�
select name
from customer
where custid in (select custid from orders);

���ǻ纰�� ���ǻ��� ��� ���� ���ݺ��� ��� ������ ���Ͻÿ�
select b1.bookname
from Book b1
where b1.price > (select avg(b2.price) from Book b2 where b2.publisher=b1.publisher);