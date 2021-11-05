--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT,
  kleuren_product_id NUMERIC(10),
  merk_id NUMERIC(10),
  categorie_id NUMERIC(10),
  price NUMERIC(10, 2)
);


CREATE TABLE kleur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  color VARCHAR(15)
);


CREATE TABLE productkleur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  kleur_id NUMERIC(10),
  products_id NUMERIC(10)
);


CREATE TABLE merk (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  brand VARCHAR(15)
);


CREATE TABLE categorie (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  category VARCHAR(15)
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (id, name, description, kleuren_product_id, merk_id, categorie_id, price) values 
(1, 'LAG T270DCE Tramontane 270', 'Integer aliquet, ', 1, 1, 1, 10.5);

insert into products (id, name, description, kleuren_product_id, merk_id, categorie_id, price) values 
(2, 'Post Mortem',  'Nullam varius.', 1, 1, 1, 11);

insert into products (id, name, description, kleuren_product_id, merk_id, categorie_id, price) values 
(3, 'Scarlet and the Black, The', 'Pellentesque at nulla. ', 1, 1, 1, 13.5);

insert into products (id, name, description, kleuren_product_id, merk_id, categorie_id, price) values 
(4, 'Fender Classic Design CD-140SCE Natural', 
'Voor wie gelijk goed van start of er gewoon een leuk gitaar bij zoekt, biedt Fender de Classic Design serie. Deze CD-140SCE is een hoogwaardige, doch zeer vriendelijk geprijsde westerngitaar, met ingebouwd elementsysteem. De basis van deze gitaar wordt gevormd door de ovangkol achter- en zijkanten, die zorgen voor een warme klankprojectie. Het bovenblad is van massief sparren (spruce) en geeft de gehele klank extra helderheid mee. De mahonie hals met walnoothouten toets maken dit klankpallet verder compleet, resulterend in een mooi gebalanceerd klinkende gitaar. Ook de topkam mag er wezen, deze is van Graph Tech Nubone. ',
 1, 1, 1, 318.00);

insert into products (id, name, description, kleuren_product_id, merk_id, categorie_id, price) values 
(5, 'Kiss for Corliss, A (Almost a Bride)', 'Nulla ut era.', 1, 1, 1, 14);

insert into products (id, name, description, kleuren_product_id, merk_id, categorie_id, price) values 
(6, 'Velvet Goldmine', 'Nam ultrices.', 1, 1, 1, 15);


--
-- kleuren
--
insert into kleur (id, color) values
(1, 'bruin');


--
-- kleuren van de producten
--
insert into productkleur (id, kleur_id, products_id) values
(1, 1, 1);

--
-- brand
--
insert into merk (id, brand) values
(1, 'LAG');

--
-- category
--
insert into categorie (id, category) values
(1, 'gitaar');

insert into categorie (id, category) values
(2, 'piano');

insert into categorie (id, category) values
(3, 'basgitaar');

insert into categorie (id, category) values
(4, 'drumstel');
