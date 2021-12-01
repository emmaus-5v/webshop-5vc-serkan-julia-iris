--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT,
  merk_id NUMERIC(10),
  categorie_id NUMERIC(10),
  price NUMERIC(10, 2)
);

DROP TABLE IF EXISTS kleur; 
CREATE TABLE kleur (
  k_id INTEGER PRIMARY KEY AUTOINCREMENT,
  color VARCHAR(15)
);

DROP TABLE IF EXISTS productkleur; 
CREATE TABLE productkleur (
  pk_id INTEGER PRIMARY KEY AUTOINCREMENT,
  kleur_id NUMERIC(10),
  products_id NUMERIC(10)
);

DROP TABLE IF EXISTS merk; 
CREATE TABLE merk (
  m_id INTEGER PRIMARY KEY AUTOINCREMENT,
  brand VARCHAR(15)
);

DROP TABLE IF EXISTS categorie; 
CREATE TABLE categorie (
  c_id INTEGER PRIMARY KEY AUTOINCREMENT,
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

insert into products (id, name, description, merk_id, categorie_id, price) values 
(1, 'LAG Guitars Tramontane Nylon 270 TN270ACE E/A klassieke gitaar met auditorium body en smalle hals', 
  'De Lag Guitars TN270ACE mag met recht een van de topmodellen uit de Tramontane Nylon-serie worden genoemd. Deze elektrisch-akoestische klassieke gitaar heeft namelijk een comfortabele auditorium body, waarbij is gekozen voor luxe toonhoutsoorten. Zo is het bovenblad vervaardigd van AA Engelmann sparrenhout, waaardoor je kunt rekenen op een volwassen klank met een duidelijk aanwezige midrange. Het ook wil natuurlijk ook wat, daarom is de achterzijde gemaakt van Mexicaans snakewood. Deze exotische hardhoutsoort ziet er niet alleen spectaculair uit, het draagt ook bij de rijke en gebalanceerde klank. ',
  1, 1, 605);

insert into products (id, name, description, merk_id, categorie_id, price) values 
(2, 'LAG Guitars Occitania 118 OC118CE elektrisch-akoestische klassieke gitaar',
  'De Lag Guitars OC118CE uit de Occitania Tradition 188-serie is een uitstekende keuze voor de gitarist die op zoek is naar een klassieke gitaar, waar hij of zij gelijk mee het podium op kan in de studio in kan! De body van deze elektrisch-akoestische gitaar is namelijk opgebouwd uit een massief bovenblad van red cedar met zij- en achterkanten van Afrikaans mahonie. Het resultaat laat zich raden; een warme en diepe klank, waarbij de nuances in je spel goed te horen zullen zijn. Dankzij de brede topkam van 51 millimeter en de vlakke brownwood toets kun je rekenen op een vertrouwde speelervaring. Kleine details zoals de nieuw ontworpen slotten headstock en de stijlvolle rozet maken het plaatje helemaal af.',
  1, 1, 469);

insert into products (id, name, description, merk_id, categorie_id, price) values 
(3, 'LAG Guitars Occitania 70 OCL70 linkshandige klassieke gitaar', 
  'De Lag Guitars OC70 uit de Occitania 70-serie is speciaal ontworpen voor beginners, onder toezicht van de ervaren luthier Maurice Dupont. Bij de ontwikkeling van deze klassieke gitaar waren speelgemak en een gebalanceerde klank de belangrijkste uitgangspunten. Daarom is er gekozen voor een massief bovenbladvan Engelmann sparren met zij en achterkanten van sapele. Dankzij de brede topkam van 51 millimeter kun je rekenen op een authentieke speelervaring. Bovendien blijft de gitaar goed op stemming door het gebruik van een zadel en brugkam van zwart grafiet. Het geheel is afgewerkt in zijdeglans (satin) voor een stijlvolle uitstraling. Dit is de linkshandige versie. ',
  1, 1, 226);

insert into products (id, name, description, merk_id, categorie_id, price) values 
(4, 'Fender Classic Design CD-140SCE Natural', 
  'Voor wie gelijk goed van start of er gewoon een leuk gitaar bij zoekt, biedt Fender de Classic Design serie. Deze CD-140SCE is een hoogwaardige, doch zeer vriendelijk gepricede westerngitaar, met ingebouwd elementsysteem. De basis van deze gitaar wordt gevormd door de ovangkol achter- en zijkanten, die zorgen voor een warme klankprojectie. Het bovenblad is van massief sparren (spruce) en geeft de gehele klank extra helderheid mee. De mahonie hals met walnoothouten toets maken dit klankpallet verder compleet, resulterend in een mooi gebalanceerd klinkende gitaar. Ook de topkam mag er wezen, deze is van Graph Tech Nubone. ',
  2, 1, 299);

 insert into products (id, name, description, merk_id, categorie_id, price) values 
(5, 'Fender Classic Design CN-60S Black ', 
  'De Fender Classic Design CN-60S is een klassieke gitaar voor de gitarist die zichzelf verder wil ontwikkelen. Dit model combineert namelijk de warme klank van de nylon snaren met de comfortabele snaren spacing van een westerngitaar. Fender heeft namelijk de brede hals die je normaal gesproken op een klassieke ziet, vervangen met een smallere hals. Daarnaast zijn de randen van de laurier toets afgerond voor nog meer speelgemak. Kortom, deze Fender is gemaakt om lekker veel op te spelen. ',
  2, 1, 189);

insert into products (id, name, description, merk_id, categorie_id, price) values 
(6, 'Fender Justin Meldal-Johnsen Road Worn Mustang Bass FDB RW,',
 'Oplettende muzikanten zullen Justin Meldal-Johnsen geheid kennen als bassist van acts zoals Beck en Nine Inch Nails. Ook wordt hij geregeld ingezet als muzikant, geluidstechnicus en/of co-producer in de studio bij artiesten als Paramore en Jimmy Eat World. Daarnaast heeft hij meegeschreven aan songs van onder andere Macy Gray en M83. Toch is hij vooral een veelgevraagd live- en sessie-bassist. Deze Fender Mustang Bass is gemodeleerd naar zijn favoriete offset shortscale bas uit 1967. Dit signature exemplaar heeft een Faded Daphne Blue laklaag met een vintage ogende Road Worn afwerking. Deze stevig ingespeelde look maakt gelijk duidelijk dat je hier met een basgitaar te maken hebt, die als een geschikt werkpaard zal dienen voor de eigenzinnig bassist.',
  2, 3, 1219);

insert into products (id, name, description, merk_id, categorie_id, price) values 
(7, 'Fender Flea Signature Jazz Bass Roadworn Shell Pink',
  'Bassist Flea van de Red Hot Chili Peppers herdefinieerde de rol van de basgitaar in de hedendaagse muziek met onder meer dit type jazz bas. Deze Fender Flea Signature Jazz Bass RDWRN SHP is een exact nagemaakt exemplaar van de 61 Jazz bas waarmee Flea de albums Stadium Arcadium en The Getaway inspeelde. Van de originele bas die in bezit is van Flea in de Custom Color-kleur Shell Pink, is er waarschijnlijk nog maar eentje in de wereld. Vandaar dat Fender deze bas die zo bepalend is geweest voor de muziekgeschiedenis, graag wilde behouden voor de toekomst en als signature reissue beschikbaar te stellen aan liefhebbers van de artiest en van het genre.',
  2, 3, 1350);

insert into products (id, name, description, merk_id, categorie_id, price) values 
(8, 'Ibanez SR375E Soundgear Sapphire Blue 5-snarige elektrische basgitaar',
  'De Ibanez SR375E mag gerust een schot in de roos worden genoemd. Het model bedient namelijk bassisten uit meerdere categorieën. Allereerst is er de pricebewuste bassist, die aan deze Soundgear een instrument met een uitstekende price kwaliteit-verhouding in huis haalt. Voor de geoefende bassist die zich zo af en toe wil uitleven op goede five-string is het een prima instrument voor een schappelijke price. Dan is er nog de beginnende bassist die gelijk op een 5-snaar wil starten. Laatstgenoemde komt met de SR375E goed beslagen ten ijs en zal langdurig plezier hebben van deze heftige Ibanez.',
  3, 3, 449);

insert into products (id, name, description, merk_id, categorie_id, price) values 
(9, 'Tama IE62H6W-BOW Imperialstar Black Oak Wrap 6d. drumstel', 
'Met de Imperialstar drumstellen boekt Tama al jarenlang veel succes. De sets klinken namelijk gewoon goed, ze zijn stuk voor stuk scherp gepriced en ook nog eens breed inzetbaar. Bovendien staat Tama bekend als een merk waarbij de kwaliteit zeer constant is. De ketels hebben een dikte van 8 mm en zijn opgebouwd uit zes laagjes populierenhout. Het drumstel wordt compleet met hardware (statieven) en bekkens geleverd, dus je bent direct klaar om te drummen! Dit drumstel is voorzien van een wrap in de kleur Black Oak. ',
6, 4, 899.00);

insert into products (id, name, description, merk_id, categorie_id, price) values 
(10, 'Fazley FSP-500-BK digitale piano zwart',
'De FSP-500 is een fraai instapmodel digitale piano, maar dan wel een met 88 Hammer Action-toetsen. Zo wordt de weerstand van het klavier van een akoestische piano nagebootst. Dat betekent dat je op dezelfde manier kunt spelen. Je kunt spelen met 16 klanken, waaronder een fraai vleugelgeluid, elektrische pianos, orgels en strijkers. Je kunt deze geluiden snel kiezen via de overzichtelijk knoppenindeling op de compacte behuizing. Bij de piano krijg je een sustainpedaal geleverd, maar je kunt ook een los verkrijgbaar onderstel aanschaffen, waarop je dan gelijk drie pedalen vindt. De FSP-500-BK is de zwarte versie.',
4, 2, 265.00);

insert into products (id, name, description, merk_id, categorie_id, price) values 
(11, 'Casio Celviano AP-470 BK digitale piano zwart',
'De Casio Celviano AP-470 is een zeer complete digitale piano met een stak vormgegeven behuizing. Een belangrijk onderdeel van de Casio Celviano AP-470 is de AiR Sound Source-klankbron. Hierin zitten 22 klanken, waaronder 2 vleugels, elektrische pianos en orgels. Door dit combineren met effecten als String Resonance, Damper Resonance, Lid Simulator en Hall Simulator, kun je de AP-470 laten klinken als een vleugel in een concertzaal of als jazz-piano in een kleine club. Met het Tri-sensor Sensor Sacle Hammer Action Keyboard II-klavier heb je dezelfde terugslag en hetzelfde speelgevoel, als op een akoestische vleugel. De meegeleverde 3 pedalen maken het akoestische piano-gevoel compleet. Dit is de zwarte variant.',
5, 2, 975.00);

insert into products (id, name, description, merk_id, categorie_id, price) values 
(12, 'Casio Celviano AP-270BK digitale piano zwart',
'Casio heeft met de Celviano-serie een reeks succesvolle digitale pianos ontworpen. De AP-270BK is hierin een fraai, zwart instapmodel. Het klavier heeft 88 Hammer Action toetsen, die dankzij een gesimuleerd ebbenhout- en ivoor-oppervlak, hetzelfde speelgevoel en terugslag geven als een akoestische piano. Het AiR Sound Service-klankborn bevat 21 klanken, waaronder een Amerikaanse en een Europese vleugel, maar ook elektrische pianos, orgels, strijkers en een vibrafoon. De piano wordt geleverd inclusief 3 pedalen, een onderstel en een bladmuziekhouder. Dat allemaal verpakt in een fraai ontwerp compleet met uitschuifbare klavierklep.',
5, 2, 794.00);

--
-- kleuren
--
insert into kleur (id, color) values
(1, 'hout');

insert into kleur (id, color) values
(1, 'naturel');
--
-- kleuren van de producten
--
insert into productkleur (pk_id, kleur_id, products_id) values
(1, 1, 1);

insert into productkleur (id, kleur_id, products_id) values
(2, 1, 2);

insert into productkleur (id, kleur_id, products_id) values
(3, 1, 3);
--
-- brand
--
insert into merk (m_id, brand) values
(1, 'LAG Guitars');

insert into merk (m_id, brand) values
(2, 'Fender');

insert into merk (m_id, brand) values
(3, 'Ibanez');

insert into merk (m_id, brand) values
(4, 'Fazley');

insert into merk (m_id, brand) values
(5, 'Casio');

insert into merk (m_id, brand) values
(6, 'Tama');

--
-- categorie
--
insert into categorie (c_id, category) values
(1, 'gitaar');

insert into categorie (c_id, category) values
(2, 'piano');

insert into categorie (c_id, category) values
(3, 'basgitaar');

insert into categorie (c_id, category) values
(4, 'drumstel');


