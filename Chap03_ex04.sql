/* (1) ���ο� ���� ('������ ����', '���ѹ̵��', 10000��)�� ���缭���� �԰�Ǿ���. ������ �� �� ��� �ʿ��� �����Ͱ� �� �ִ��� ã�ƺ��ÿ�*/
insert into Book(bookname, publisher, price) values('������ ����', '���ѹ̵��', 10000);
/*���� : bookid�� NOT NULL �̹Ƿ� bookid�� �߰��Ͽ��� �Ѵ�.*/

/* (2) '�Ｚ��'���� ������ ������ �����Ͻÿ�*/
delete from Book where publisher='�Ｚ��';
select * from Book;
ROLLBACK;

/* (3) '�̻�̵��'���� ������ ������ �����Ͻÿ�. ������ �� �Ǹ� ������ ������ ���ÿ�*/
delete from Book where publisher='�̻�̵��';
select * from Book;
/*���� : �̻�̵��� ������ ������ Orders ���̺��� ����ϴ� Į���� �����Ƿ� ���� �Ұ�
(���� ���Ἲ(�ܷ�Ű ���Ἲ))*/

/* (4) ���ǻ� '���ѹ̵��'�� '�������ǻ�'�� �̸��� �ٲٽÿ�.*/
update Book set publisher='�������ǻ�' where publisher='���ѹ̵��';
select * from Book;
ROLLBACK;

/* (5) ���̺� ���� ���ǻ翡 ���� ������ �����ϴ� ���̺� ����*/
create table Bookcompany(
    name varchar2(20) PRIMARY KEY, address varchar2(20), begin DATE
);

/* (6) ���̺� ���� */
alter table Bookcompany ADD webaddress varchar2(30);
select * from Bookcompany;

/* (7) Bookcompany ���̺� ���� ����*/
insert into Bookcompany(name, address, begin, webaddress) values('�Ѻ���ī����', '����� ������', '1993-01-01', 'http://hanbit.co.kr');
select * from Bookcompany;