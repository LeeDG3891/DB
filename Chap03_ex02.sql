select * from book;

// 2��
select count(*) from book;  //(1) ���缭�� ������ �Ѽ�
select count(distinct publisher) from book; //(2) ���缭���� ������  ����ϴ� ���ǻ��� �Ѽ�
select name, address from customer; //(3) ��� ���� �̸�, �ּ�
select * from orders where orderdate between '2020-07-04' and '2020-07-07'; //(4) 2020��7��4��~7��7�� ���̿� �ֹ����� ������ �ֹ���ȣ
select * from orders where orderdate not between '2020-07-04' and '2020-07-09'; //(5) 2020��7��4��~7��9�� ���̿� �ֹ����� ������ ������ ������ �ֹ���ȣ
select name, address from customer where name like '��%';    //(6) ���� '��'���� ���� �̸��� �ּ�
select name, address from customer where name like '��%��';   //(7) ���� '��'���̰� �̸��� '��'�� ������ ���� �̸��� �ּ�