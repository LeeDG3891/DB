// 1-5 박지성이 구매한 도서의 출판사 수
select count(distinct publisher) from customer, orders, book
where (customer.custid=orders.custid) and (book.bookid=orders.bookid) and (customer.name='박지성');
// 1-6 박지성이 구매한 도서의 이름, 가격, 정가와 판매가격의 차이
select bookname, price, price-saleprice from customer, orders, book
where (customer.custid=orders.custid) and (book.bookid=orders.bookid) and (customer.name='박지성');
// 1-7 박지성이 구매하지 않은 도서의 이름
select bookname from book, orders, customer minus select bookname from book, orders, customer
where (customer.custid=orders.custid) and (book.bookid=orders.bookid) and (customer.name='박지성');

// 2-9 주문 금액의 총액과 주문의 평균 금액
select sum(saleprice), avg(saleprice) from orders;
// 2-10 고객의 이름과 고객별 구매액
select name, sum(saleprice) from orders, customer where orders.custid=customer.custid group BY name;
// 2-11 고객의 이름과 고객이 구매한 도서 목록
select name, bookname from book, orders, customer where orders.bookid=book.bookid and orders.custid=customer.custid;
// 2-12 도서의 가격(book 테이블)과 판매가격(orders 테이블)의 차이가 가장 많은 주문
select * from book, orders where book.bookid=orders.bookid and price-saleprice=(select max(price-saleprice) from book, orders where book.bookid=orders.bookid);
// 2-13 도서의 판매액 평균보다 자신의 구매액 평균이 더 높은 고객의 이름
select name from customer, orders where customer.custid=orders.custid group by name having avg(saleprice) > (select avg(saleprice) from orders);