select * from book;

// 1번
select bookname from book where bookid=1;   //(1) 도서번호가 1인 도서의 이름
select bookname from book where price>=20000;   //(2) 가격이 2만원 이상인 도서의 이름
select sum(saleprice) from orders where custid=1;   //(3) 박지성의 총 구매액
select sum(saleprice) from customer orders where customer.custid=orders.custid and customer.name like '박지성';    //(3-2) 박지성의 총 구매액2
select count(*) from orders where custid=1; //(4)

// 1-5 박지성이 구매한 도서의 출판사 수
select count(distinct publisher) from customer, orders, book
where (customer.custid=orders.custid) and (book.bookid=orders.bookid) and (customer.name like '박지성');
// 1-6 박지성이 구매한 도서의 이름, 가격, 정가와 판매가격의 차이
select bookname, price, price-saleprice from customer, orders, book
where (customer.custid=orders.custid) and (book.bookid=orders.bookid) and (customer.name like '박지성');
// 1-7 박지성이 구매하지 않은 도서의 이름
select bookname from book, orders, customer minus select bookname from book, orders, customer
where (customer.custid=orders.custid) and (book.bookid=orders.bookid) and (customer.name like '박지성');
