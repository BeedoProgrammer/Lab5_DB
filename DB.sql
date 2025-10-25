CREATE DATABASE Library_Management_System;

Use Library_Management_System;

CREATE TABLE CATEGORY (

    category_id int not null auto_increment,
    name varchar(225) not null,
    PRIMARY KEY (category_id)
);

CREATE TABLE PUBLISHER (

    pub_id int not null auto_increment,
    name varchar(225) not null,
    address varchar(225) not null,
    PRIMARY KEY (pub_id)
);

CREATE TABLE MEMBER (

    member_id int not null auto_increment,
    name varchar(225) not null,
    address varchar(225) not null,
    join_date timestamp default current_timestamp,
    PRIMARY KEY (member_id)
);

CREATE TABLE BOOK (

    book_id int not null auto_increment,
    title varchar(225) not null,
    price DECIMAL(10, 2) not null,
    pub_id int not null,
    category_id int not null,
    PRIMARY KEY (book_id),
    FOREIGN KEY (pub_id) REFERENCES PUBLISHER(pub_id),
    FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id)
);

CREATE TABLE BORROWING_BOOK (

    member_id int not null,
    book_id int not null,
    borrow_date timestamp default current_timestamp,
    due_date timestamp not null,
    return_date timestamp null default null,
    PRIMARY KEY (member_id, book_id, borrow_date),
    FOREIGN KEY (member_id) REFERENCES MEMBER(member_id),
    FOREIGN KEY (book_id) REFERENCES BOOK(book_id)
);