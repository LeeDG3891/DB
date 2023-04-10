select * from book;

// 2번
select count(*) from book;  //(1) 마당서점 도서의 총수
select count(distinct publisher) from book; //(2) 마당서점에 도서를  출고하는 출판사의 총수
select name, address from customer; //(3) 모든 고객의 이름, 주소
select * from orders where orderdate between '2020-07-04' and '2020-07-07'; //(4) 2020년7월4일~7월7일 사이에 주문받은 도서의 주문번호
select * from orders where orderdate not between '2020-07-04' and '2020-07-09'; //(5) 2020년7월4일~7월9일 사이에 주문받은 도서를 제외한 도서의 주문번호
select name, address from customer where name like '김%';    //(6) 성이 '김'씨인 고객의 이름과 주소
select name, address from customer where name like '김%아';   //(7) 성이 '김'씨이고 이름이 '아'로 끝나는 고객의 이름과 주소

// ch3. ex2-7
select name from customer where name not in (select name from customer, orders where customer.custid=orders.custid);
// 2-9 주문 금액의 총액과 주문의 평균 금액
select sum(saleprice), avg(saleprice) from orders;
// 2-10 고객의 이름과 고객별 구매액
select name, sum(saleprice) from orders, customer where orders.custid=customer.custid group by name;
// 2-11 고객의 이름과 고객이 구매한 도서 목록
select name, bookname from book, orders, customer where orders.bookid=book.bookid and orders.custid=customer.custid;
// 2-12 도서의 가격(book 테이블)과 판매가격(orders 테이블)의 차이가 가장 많은 주문
select * from book, orders where book.bookid=orders.bookid and price-saleprice=(select max(price-saleprice) from book, orders where book.bookid=orders.bookid);
// 2-13 도서의 판매액 평균보다 자신의 구매액 평균이 더 높은 고객의 이름
select name from customer, orders where customer.custid=orders.custid group by name having avg(saleprice) > (select avg(saleprice) from orders);
