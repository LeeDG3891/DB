// 1-5 �������� ������ ������ ���ǻ� ��
select count(distinct publisher) from customer, orders, book
where (customer.custid=orders.custid) and (book.bookid=orders.bookid) and (customer.name='������');
// 1-6 �������� ������ ������ �̸�, ����, ������ �ǸŰ����� ����
select bookname, price, price-saleprice from customer, orders, book
where (customer.custid=orders.custid) and (book.bookid=orders.bookid) and (customer.name='������');
// 1-7 �������� �������� ���� ������ �̸�
select bookname from book, orders, customer minus select bookname from book, orders, customer
where (customer.custid=orders.custid) and (book.bookid=orders.bookid) and (customer.name='������');

// 2-9 �ֹ� �ݾ��� �Ѿװ� �ֹ��� ��� �ݾ�
select sum(saleprice), avg(saleprice) from orders;
// 2-10 ���� �̸��� ���� ���ž�
select name, sum(saleprice) from orders, customer where orders.custid=customer.custid group BY name;
// 2-11 ���� �̸��� ���� ������ ���� ���
select name, bookname from book, orders, customer where orders.bookid=book.bookid and orders.custid=customer.custid;
// 2-12 ������ ����(book ���̺�)�� �ǸŰ���(orders ���̺�)�� ���̰� ���� ���� �ֹ�
select * from book, orders where book.bookid=orders.bookid and price-saleprice=(select max(price-saleprice) from book, orders where book.bookid=orders.bookid);
// 2-13 ������ �Ǹž� ��պ��� �ڽ��� ���ž� ����� �� ���� ���� �̸�
select name from customer, orders where customer.custid=orders.custid group by name having avg(saleprice) > (select avg(saleprice) from orders);