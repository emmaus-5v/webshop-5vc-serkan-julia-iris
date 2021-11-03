--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT,
  kleuren_product INTEGER,
  brand VARCHAR(15),
  category VARCHAR(15),
  price NUMERIC(10, 2)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (id, name, description, kleuren_product, brand, category, price) values (1, 'LAG T270DCE Tramontane 270', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.
In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '816905633-0', 10.5);
insert into products (id, name, description, kleuren_product, brand, category, price) values (2, 'Post Mortem', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '077030122-3', 11);
insert into products (id, name, description, kleuren_product, brand, category, price) values (3, 'Scarlet and the Black, The', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '445924201-X', 13.5);
insert into products (id, name, description, kleuren_product, brand, category, price) values (4, 'Aquí llega Condemor, el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '693155505-7', 13.5);
insert into products (id, name, description, kleuren_product, brand, category, price) values (5, 'Kiss for Corliss, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (id, name, description, kleuren_product, brand, category, price) values (6, 'Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 14);



DROP TABLE IF EXISTS kleur; 
CREATE TABLE kleur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  color VARCHAR(255),
);

insert into kleur (id, color) values
(1, bruin);



DROP TABLE IF EXISTS kleur_product; 
CREATE TABLE kleur_product (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  kleur_id INTEGER,
  products_id
);

insert into kleur_product (id, kleur_id, products_id) values
(1, 1, 1);