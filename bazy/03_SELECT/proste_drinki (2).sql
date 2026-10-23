
CREATE TABLE `proste_drinki` (
   nazwa varchar(16) default NULL,
   skladnik_glowny varchar(30) default NULL,
   ilosc1 decimal(4,1) default NULL,
   skladnik_dodatkowy varchar(30) default NULL,
   ilosc2 decimal(4,1) default NULL,
   wskazowki varchar(250) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO proste_drinki VALUES ('Blackthorn', 'tonik', 45.0, 'sok ananasowy', 30.0, 'wymieszac z lodem, odcedzic do szklanki koktailowej z plasterkiem cytryny');
INSERT INTO proste_drinki VALUES ('Blue Moon', 'woda sodowa', 45.0, 'sok z jagod', 22.0, 'wymieszac z lodem, odcedzic do szklanki koktailowej z plasterkiem cytryny');
INSERT INTO proste_drinki VALUES ('Oh My Gosh', 'nektar brzoskwiniowy', 30.0, 'sok ananasowy', 30.0, 'wymieszac z lodem, odcedzic do wysokiej szklanki');
INSERT INTO proste_drinki VALUES ('Lime Fizz', 'Sprite', 45.0, 'sok z cytryny', 22.0, 'wymieszac z lodem, odcedzic do szklanki koktailowej');
INSERT INTO proste_drinki VALUES ('Kiss on the Lips', 'sok wisniowy', 60.0, 'nektar morelowy', 210.0, 'podawac z lodem i rurka do picia');
INSERT INTO proste_drinki VALUES ('Hot Gold', 'nektar brzoskwiniowy', 90.0, 'sok pomaranczowy', 180.0, 'wlac goracy sok pomaranczowy do kubka, dolac do niego nektaru brzoskwiniowego');
INSERT INTO proste_drinki VALUES ('Lone Tree', 'woda sodowa', 45.0, 'sok wisniowy', 22.0, 'wymieszac z lodem, odcedzic do szklanki koktailowej');
INSERT INTO proste_drinki VALUES ('Grayhound', 'woda sodowa', 45.0, 'sok grapefruitowy', 150.0, 'podawac z lodem, dobrze wymieszac');
INSERT INTO proste_drinki VALUES ('Indian Summer', 'sok jablkowy', 60.0, 'goraca herbata', 180.0, 'wlac sok do kubka, dodac hrebaty');
INSERT INTO proste_drinki VALUES ('Bull Frog', 'mrozona herbata', 45.0, 'lemoniada', 150.0, 'podawac z lodem i plasterkiem cytryny');
INSERT INTO proste_drinki VALUES ('Soda and It', 'woda sodowa', 60.0, 'sok z winogron', 30.0, 'wstrzasnac w szklance koktailowej, podawac bez lodu');
INSERT INTO proste_drinki VALUES ('Amnezja','sok pomaranczowy',50,'sok truskawkowy',15,'Do shakera wypełnionego lodem wlewamy wodę oraz sok z mango. Po dokładnym wymieszaniu składników przelewamy zawartość do szklanki i dolewamy soku pomarańczowego. Na taką warstwę kładziemy pół plastra pomarańczy. Następnie w umiejętny i delikatny sposób uzupełniamy zawartość likierem Blue Curacao i sokiem truskawkowym. Pamiętajmy, by wlewać te składniki jak najbliżej środka szklanki. Całość dekorujemy plastrem limonki.');
INSERT INTO proste_drinki VALUES ('Drink','nektar z czarnej porzeczki',50,'nektar bananowy',100,'Do wiekszego kieliszka na dno wlewamy schlodzona wodę');
