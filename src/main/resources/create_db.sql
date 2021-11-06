--CREATE DATABASE shop;
CREATE TABLE img(
id bigserial PRIMARY KEY,
data bytea[],
filename text
);
CREATE TABLE company(
id bigserial PRIMARY KEY,
title text,
country text,
address text,
logo_id bigint references img(id)
);
CREATE TABLE category(
id bigserial PRIMARY KEY,
name text,
parent_category_id bigint references category(id)
);
CREATE TABLE product(
id bigserial PRIMARY KEY,
name text,
price text,
expirationDate date,
legal_age boolean,
category_id bigint references category(id) not null
);
CREATE TABLE prod_img(
img_id bigint references img(id) not null,
product_id bigint references product(id) not null,
PRIMARY KEY(img_id,product_id)
);
