create table if not exists categories
(
    id       bigint auto_increment
        primary key,
    category varchar(255) not null
);

create table if not exists products
(
    id          bigint auto_increment
        primary key,
    name        varchar(255)   not null,
    price       decimal(19, 2) not null,
    category_id bigint         null,
    constraint FKog2rp4qthbtt2lfyhfo32lsw9
        foreign key (category_id) references categories (id)
);

create table if not exists shops
(
    id         bigint auto_increment
        primary key,
    address    varchar(255) not null,
    work_hours int          not null
);

create table if not exists products_shops
(
    id         bigint auto_increment
        primary key,
    quantity   int    not null,
    product_id bigint not null,
    shop_id    bigint not null,
    constraint FKcx9bvoeqjhx25xbn4hq1x2s0j
        foreign key (shop_id) references shops (id),
    constraint FKhluuwk7xqe5vwlplkcv2io6bs
        foreign key (product_id) references products (id)
);

create table if not exists status
(
    id     bigint auto_increment
        primary key,
    status varchar(255) not null
);

create table if not exists users
(
    id       bigint auto_increment
        primary key,
    email    varchar(255) not null,
    password varchar(255) not null,
    username varchar(255) not null,
    constraint UK_6dotkott2kjsp8vw4d0m25fb7
        unique (email),
    constraint UK_r43af9ap4edm43mmtq01oddj6
        unique (username)
);

create table if not exists orders
(
    id         bigint auto_increment
        primary key,
    address    varchar(255) not null,
    order_date date         not null,
    status_id  bigint       null,
    user_id    bigint       null,
    constraint FK32ql8ubntj5uh44ph9659tiih
        foreign key (user_id) references users (id),
    constraint FKnoettwqr56yaai4i8nwxg4huo
        foreign key (status_id) references status (id)
);

create table if not exists order_details
(
    id         bigint auto_increment
        primary key,
    price      decimal(19, 2) not null,
    quantity   int            not null,
    order_id   bigint         not null,
    product_id bigint         not null,
    constraint FK4q98utpd73imf4yhttm3w0eax
        foreign key (product_id) references products (id),
    constraint FKjyu2qbqt8gnvno9oe9j2s2ldk
        foreign key (order_id) references orders (id)
);

create table if not exists roles
(
    id      bigint auto_increment
        primary key,
    name    varchar(255) not null,
    user_id bigint       null,
    constraint FK97mxvrajhkq19dmvboprimeg1
        foreign key (user_id) references users (id)
);

create table if not exists users_shops
(
    id      bigint auto_increment
        primary key,
    salary  decimal(19, 2) not null,
    shop_id bigint         not null,
    user_id bigint         not null,
    constraint FKe6vbwmid0sq6f9ra5vj0e6qq3
        foreign key (user_id) references users (id),
    constraint FKrwbjrfl7un8rftawgytimogwq
        foreign key (shop_id) references shops (id)
);

create table if not exists warehouses
(
    id      bigint auto_increment
        primary key,
    address varchar(255) not null
);

create table if not exists product_warehouse
(
    id           bigint auto_increment
        primary key,
    quantity     int    not null,
    product_id   bigint not null,
    warehouse_id bigint not null,
    constraint FK8mm3bmktx4ipfnkk1r72d2qqf
        foreign key (product_id) references products (id),
    constraint FKb079c7n0iwp9kyhxg05ilawqa
        foreign key (warehouse_id) references warehouses (id)
);
