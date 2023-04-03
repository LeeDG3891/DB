select * from book;

// 2번
select count(*) from book;  //(1) 마당서점 도서의 총수
select count(distinct publisher) from book; //(2) 마당서점에 도서를  출고하는 출판사의 총수
select name, address from customer; //(3) 모든 고객의 이름, 주소
select * from orders where orderdate between '2020-07-04' and '2020-07-07'; //(4) 2020년7월4일~7월7일 사이에 주문받은 도서의 주문번호
select * from orders where orderdate not between '2020-07-04' and '2020-07-09'; //(5) 2020년7월4일~7월9일 사이에 주문받은 도서를 제외한 도서의 주문번호
select name, address from customer where name like '김%';    //(6) 성이 '김'씨인 고객의 이름과 주소
select name, address from customer where name like '김%아';   //(7) 성이 '김'씨이고 이름이 '아'로 끝나는 고객의 이름과 주소