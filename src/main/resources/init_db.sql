insert into category(name,parent_category_id) values(
'Fish', null),
('Meat', null);
insert into category(name,parent_category_id) select 'Pork' as name,c.id as parent_category_id from category c where c.name = 'Meat';
insert into category(name,parent_category_id) select 'Red Fish' as name, c.id as parent_category_id from category c where c.name = 'Fish';

insert into company(title,country,address,logo_id) values(
'funny_meat','USA','street 55',null),
('Burger King','USA','street 66',null),
('KFC','USA','street 77',null);

insert into product (name,price,expirationdate,legal_age,category_id)select 'Head cow' as name,25 as price,'2021-06-30' as expirationdate,true as legal_age, c.id as category_id from category c where c.name = 'Meat'
