--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
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

insert into products (name, description, code, price) values ('LAG Guitars Occitania 118 OC118CE elektrisch-akoestische klassieke gitaar', '
Algemeen
De Lag Guitars OC118CE uit de Occitania Tradition 188-serie is een uitstekende keuze voor de gitarist die op zoek is naar een klassieke gitaar, waar hij of zij gelijk mee het podium op kan in de studio in kan! De body van deze elektrisch-akoestische gitaar is namelijk opgebouwd uit een massief bovenblad van red cedar met zij- en achterkanten van Afrikaans mahonie. Het resultaat laat zich raden; een warme en diepe klank, waarbij de nuances in je spel goed te horen zullen zijn. Dankzij de brede topkam van 51 millimeter en de vlakke brownwood toets kun je rekenen op een vertrouwde speelervaring. Kleine details zoals de nieuw ontworpen slotten headstock en de stijlvolle rozet maken het plaatje helemaal af. ', 
'816905633-0', 449);

insert into products (name, description, code, price) values 
('LAG Guitars Tramontane Nylon 270 TN270ACE E/A klassieke gitaar met auditorium body en smalle hals ', '
Algemeen
De Lag Guitars TN270ACE mag met recht een van de topmodellen uit de Tramontane Nylon-serie worden genoemd. Deze elektrisch-akoestische klassieke gitaar heeft namelijk een comfortabele auditorium body, waarbij is gekozen voor luxe toonhoutsoorten. Zo is het bovenblad vervaardigd van AA Engelmann sparrenhout, waaardoor je kunt rekenen op een volwassen klank met een duidelijk aanwezige midrange. Het ook wil natuurlijk ook wat, daarom is de achterzijde gemaakt van Mexicaans snakewood. Deze exotische hardhoutsoort ziet er niet alleen spectaculair uit, het draagt ook bij de rijke en gebalanceerde klank.
Tramontane Nylon 270 met Fishman
Lag heeft ervoor gekozen om de TN270ACE van de Fishman INK3 voorversterker. Hierdoor kun je dit model eenvoudig aansluiten op bijvoorbeeld een akoestische gitaarversterker of audio-interface. Dit maakt dit model een interessante optie voor gitaristen die gewend zijn op een western- of elektrische gitaar te spelen en op zoek zijn naar een andere klank. Bovendien is de hals met 46 millimeter breed een stuk smaller dan de gemiddelde klassieke gitaar, waardoor de overstap een stuk soepeler zal verlopen. Kortom, een bijzonder hybride instrument waar duidelijk veel aandacht en liefde is ingestoken.',
 '077030122-3', 605);

insert into products (name, description, code, price) values ('Scarlet and the Black, The', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.
Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '445924201-X', 13.5);

insert into products (name, description, code, price) values ('Aquí llega Condemor, el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.
In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.
Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '693155505-7', 13.5);

insert into products (name, description, code, price) values ('Kiss for Corliss, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);

insert into products (name, description, code, price) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.
Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 14);

