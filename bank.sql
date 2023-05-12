create table user_tb (
       id bigint auto_increment,
       username varchar(255) not null unique,
       password varchar(255) not null,
       email varchar(255) not null,
       fullname varchar(255) not null,
       role varchar(255) not null,
       created_at timestamp not null,
       updated_at timestamp not null,
       primary key (id)
);
create table account_tb (
       id bigint auto_increment,
        number bigint not null unique,
        password varchar(255),
        balance bigint not null,
        user_id bigint,
        created_at timestamp not null,
        updated_at timestamp not null,
        primary key (id)
);
create table transaction_tb (
       id bigint auto_increment,
       withdraw_account_id bigint,
       deposit_account_id bigint,
       amount bigint,
       withdraw_account_balance bigint,
        deposit_account_balance bigint,
        gubun varchar(255) not null,
        created_at timestamp not null,
        updated_at timestamp not null,
        primary key (id)
);
