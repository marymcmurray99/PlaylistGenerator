CREATE DATABASE  IF NOT EXISTS `music` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `music`;
-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: music
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `artist_name` varchar(100) NOT NULL,
  PRIMARY KEY (`artist_name`),
  UNIQUE KEY `artist_name` (`artist_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES ('3OH!3'),('5 Seconds of Summer'),('A Great Big World'),('ABBA'),('AC/DC'),('Adam Faith'),('Adam Lambert'),('Adele'),('Al Martino'),('Alan Walker'),('Alessia Cara'),('Alesso'),('Alice Coltrane'),('Alicia Keys'),('Anne Shelton'),('Ansel Elgort'),('Anthony Newley'),('Ariana Grande'),('Austin Mahone'),('Avicii'),('Avril Lavigne'),('Bastille'),('Bebe Rexha'),('Bee Gees'),('Beyoncé'),('Billy Eckstine'),('Billy Fury'),('Birdy'),('Bob Sharples & His Music'),('Bobby Freeman'),('Bobby Goldsboro'),('Bobby Vee'),('BØRNS'),('Brian Hyland'),('Britney Spears'),('Bruce Channel'),('Bruno Mars'),('Buddy Holly'),('Buffalo Springfield'),('Calvin Harris'),('Camila Cabello'),('Cardi B'),('Carly Rae Jepsen'),('Cashmere Cat'),('Charles Mingus'),('Charli XCX'),('Charlie Puth'),('Chris Brown'),('Christina Aguilera'),('Christina Perri'),('Ciara'),('Clarence \"Frogman\"\" Henry\"'),('Clean Bandit'),('CNCO'),('Coldplay'),('Connie Francis'),('Craig Douglas'),('Cream'),('Crosby Stills & Nash'),('Daddy Yankee'),('Daft Punk'),('Dan + Shay'),('David Guetta'),('David Whitfield'),('Dean Martin'),('Deep Purple'),('Demi Lovato'),('Diana Ross & The Supremes'),('Dion & The Belmonts'),('Dionne Warwick'),('Disclosure'),('DJ Khaled'),('DJ Snake'),('DNCE'),('Donovan'),('Doris Day'),('Dr. John'),('Drake'),('Dua Lipa'),('Duke Ellington'),('Eagles'),('Ed Sheeran'),('Eddie Palmieri'),('Electric Light Orchestra'),('Ella Fitzgerald'),('Ellie Goulding'),('Elton John'),('Elvis Presley'),('Emeli Sandé'),('Eminem'),('Enrique Iglesias'),('Far East Movement'),('Fergie'),('Fifth Harmony'),('Fleetwood Mac'),('Flo Rida'),('Florence + The Machine'),('Four Tops'),('Françoise Hardy'),('Frank Sinatra'),('Frank Zappa'),('Frankie Valli'),('Frankie Valli & The Four Seasons'),('Frankie Vaughan'),('Fred Neil'),('fun.'),('G-Eazy'),('Galantis'),('Gary Lewis & The Playboys'),('Gary Puckett & The Union Gap'),('Georgie Fame'),('Gerry & The Pacemakers'),('Green Martini Keys'),('Gwen Stefani'),('Gym Class Heroes'),('Hailee Steinfeld'),('Halsey'),('Harry Styles'),('Hayley Kiyoko'),('Helen Shapiro'),('Hilary Duff'),('Hot Chelle Rae'),('Hozier'),('Icona Pop'),('Iggy Azalea'),('Ike Carpenter Orchestra'),('J Balvin'),('James Arthur'),('James Darren'),('Jan & Dean'),('Janet Jackson'),('Jason Derulo'),('Jayne Mansfield'),('Jefferson Airplane'),('Jennifer Hudson'),('Jennifer Lopez'),('Jess Glynne'),('Jessie J'),('Jewel'),('Jimmy Rodgers'),('Jimmy Ruffin'),('Jimmy Young'),('Joan Regan'),('Joey Dee'),('Joey Montana'),('John Fahey'),('John Hartford'),('John Legend'),('John Lennon'),('John Newman'),('Johnny Maestro'),('Johnny Tillotson'),('Jonas Blue'),('Jonas Brothers'),('Joni Mitchell'),('Justin Bieber'),('Justin Timberlake'),('Kanye West'),('Karen Dalton'),('Katy Perry'),('Kelly Clarkson'),('Kelly Rowland'),('Kesha'),('Khalid'),('KISS'),('Kygo'),('Labrinth'),('Lady Gaga'),('Lana Del Rey'),('Lea Michele'),('Led Zeppelin'),('Lewis Capaldi'),('Liam Payne'),('Lilly Wood and The Prick'),('Lily Allen'),('Little Mix'),('Lizzo'),('LMFAO'),('Lorde'),('Lorne Greene'),('Lost Frequencies'),('Louis Prima'),('Love'),('Love Affair'),('Luis Fonsi'),('Lukas Graham'),('Mabel'),('Macklemore & Ryan Lewis'),('Madonna'),('MAGIC!'),('Major Lazer'),('Mariah Carey'),('Mark Ronson'),('Maroon 5'),('Marshmello'),('Martin Garrix'),('Martin Solveig'),('Marty Wilde'),('Marvin Gaye'),('Mary Lou Williams'),('Max Bygraves'),('Meghan Trainor'),('Mel Torme & the Mel-Tones'),('Michael Jackson'),('Mike Posner'),('Miley Cyrus'),('Missy Elliott'),('MØ'),('Mr. Probz'),('N.E.R.D'),('Nat King Cole'),('Naughty Boy'),('Ne-Yo'),('Neil Diamond'),('Neil Sedaka'),('Neil Young'),('Nelly Furtado'),('Neon Trees'),('Niall Horan'),('Nick Jonas'),('Nicki Minaj'),('Olly Murs'),('One Direction'),('OneRepublic'),('Owl City'),('P!nk'),('Paloma Faith'),('Passenger'),('Pat Boone'),('Patsy Cline'),('Paul Anka'),('Paul Revere & The Raiders'),('Peter And Gordon'),('Pharrell Williams'),('Pitbull'),('Queen'),('R3HAB'),('RedOne'),('Ricky Martin'),('Ricky Nelson'),('Rihanna'),('Rita Ora'),('Robin Schulz'),('Robin Thicke'),('Roy Orbison'),('Rudimental'),('Rusty Draper'),('Sam Smith'),('Sara Bareilles'),('Scott Walker'),('Sean Kingston'),('Selena Gomez'),('Selena Gomez & The Scene'),('SHAED'),('Shakira'),('Shawn Mendes'),('Shirley & Dolly Collins'),('Sia'),('Sigala'),('Silk City'),('Sleeping At Last'),('Small Faces'),('Snakehips'),('Stargazers'),('Status Quo'),('Suzi Miller And Johnson Brothers'),('Swedish House Mafia'),('T.I.'),('Tab Hunter'),('Taio Cruz'),('Taj Mahal'),('Taylor Swift'),('Teresa Brewer'),('Terry Dene'),('The Beach Boys'),('The Beatles'),('The Beau Brummels'),('The Black Eyed Peas'),('The Box Tops'),('The Byrds'),('The Cascades'),('The Chainsmokers'),('The Chordettes'),('The Chords'),('The Crew Cuts'),('The Cyrkle'),('The Doobie Brothers'),('The Easybeats'),('The Five Keys'),('The Five Satins'),('The Fleetwoods'),('The Flying Burrito Brothers'),('The Foundations'),('The Guess Who'),('The Hilltoppers'),('The Kinks'),('The Marvelettes'),('The Meters'),('The Platters'),('The Rolling Stones'),('The Script'),('The Searchers'),('The Teddy Bears'),('The Temprees'),('The Tornados'),('The Tremeloes'),('The Turtles'),('The Tymes'),('The Walker Brothers'),('The Wanted'),('The Weeknd'),('The Who'),('The Yardbirds'),('The Zombies'),('Thelonious Monk'),('Them'),('Timi Yuro'),('Tinie Tempah'),('Tommy Edwards'),('Tommy Roe'),('Tommy Steele'),('Tove Lo'),('Train'),('Troye Sivan'),('Usher'),('Van Morrison'),('Wayne Fontana & The Mindbenders'),('will.i.am'),('Wiz Khalifa'),('Years & Years'),('Yusuf / Cat Stevens'),('Zara Larsson'),('ZAYN'),('Zedd');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bpm`
--

DROP TABLE IF EXISTS `bpm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bpm` (
  `bpm_amount` int NOT NULL,
  PRIMARY KEY (`bpm_amount`),
  UNIQUE KEY `bpm_amount` (`bpm_amount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bpm`
--

LOCK TABLES `bpm` WRITE;
/*!40000 ALTER TABLE `bpm` DISABLE KEYS */;
INSERT INTO `bpm` VALUES (0),(43),(63),(64),(65),(71),(72),(73),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(154),(155),(156),(157),(158),(159),(160),(163),(164),(165),(167),(168),(170),(172),(173),(174),(175),(176),(177),(178),(180),(181),(182),(184),(185),(186),(190),(192),(195),(199),(201),(202),(206);
/*!40000 ALTER TABLE `bpm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `energy`
--

DROP TABLE IF EXISTS `energy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `energy` (
  `energy_amount` int NOT NULL,
  PRIMARY KEY (`energy_amount`),
  UNIQUE KEY `energy_amount` (`energy_amount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `energy`
--

LOCK TABLES `energy` WRITE;
/*!40000 ALTER TABLE `energy` DISABLE KEYS */;
INSERT INTO `energy` VALUES (0),(4),(6),(7),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99);
/*!40000 ALTER TABLE `energy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_name` varchar(100) NOT NULL,
  PRIMARY KEY (`genre_name`),
  UNIQUE KEY `genre_name` (`genre_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (''),('acoustic blues'),('acoustic pop'),('adult standards'),('afrobeat'),('afropop'),('alaska indie'),('album rock'),('alternative country'),('alternative r&b'),('american folk revival'),('appalachian folk'),('art pop'),('art rock'),('atl hip hop'),('australian dance'),('australian hip hop'),('australian pop'),('australian rock'),('australian talent show'),('avant-garde jazz'),('barbadian pop'),('baroque pop'),('beach music'),('bebop'),('belgian edm'),('big room'),('blues'),('blues rock'),('boogaloo'),('boy band'),('brill building pop'),('british blues'),('british comedy'),('british dance band'),('british folk'),('british invasion'),('british soul'),('brostep'),('bubblegum pop'),('canadian contemporary r&b'),('canadian folk'),('canadian hip hop'),('canadian latin'),('canadian pop'),('candy pop'),('celtic rock'),('chanson'),('chicago rap'),('classic girl group'),('classic rock'),('classic soul'),('classic uk pop'),('colombian pop'),('complextro'),('contemporary country'),('cowboy western'),('dance pop'),('danish pop'),('deep adult standards'),('detroit hip hop'),('doo-wop'),('downtempo'),('drone folk'),('edm'),('electro'),('electro house'),('electronic trap'),('electropop'),('escape room'),('europop'),('folk-pop'),('french indie pop'),('glam rock'),('hip hop'),('hip pop'),('hollywood'),('house'),('indie pop'),('irish singer-songwriter'),('latin'),('louisiana blues'),('merseybeat'),('metropopolis'),('moroccan pop'),('neo mellow'),('permanent wave'),('pop'),('rock-and-roll'),('tropical house'),('yodeling');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_year`
--

DROP TABLE IF EXISTS `my_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_year` (
  `release_year` int NOT NULL,
  PRIMARY KEY (`release_year`),
  UNIQUE KEY `release_year` (`release_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_year`
--

LOCK TABLES `my_year` WRITE;
/*!40000 ALTER TABLE `my_year` DISABLE KEYS */;
INSERT INTO `my_year` VALUES (1945),(1948),(1953),(1957),(1958),(1959),(1960),(1961),(1962),(1963),(1964),(1965),(1966),(1967),(1968),(1969),(1970),(1971),(1972),(1973),(1975),(1976),(1977),(1978),(1979),(1982),(1984),(1989),(1990),(1991),(1992),(1993),(1994),(1995),(1996),(1997),(1998),(2000),(2001),(2002),(2003),(2005),(2006),(2007),(2008),(2010),(2011),(2012),(2013),(2014),(2015),(2016),(2017),(2018),(2019);
/*!40000 ALTER TABLE `my_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song` (
  `song_title` varchar(100) NOT NULL,
  `song_year` int DEFAULT NULL,
  `song_artist` varchar(100) NOT NULL,
  `song_genre` varchar(100) DEFAULT NULL,
  `song_bpm` int DEFAULT NULL,
  `song_energy` int DEFAULT NULL,
  PRIMARY KEY (`song_title`,`song_artist`),
  UNIQUE KEY `song_title` (`song_title`),
  KEY `genre` (`song_genre`),
  KEY `year` (`song_year`),
  KEY `artist` (`song_artist`),
  KEY `bpm` (`song_bpm`),
  KEY `energy` (`song_energy`),
  CONSTRAINT `artist` FOREIGN KEY (`song_artist`) REFERENCES `artist` (`artist_name`) ON DELETE CASCADE,
  CONSTRAINT `bpm` FOREIGN KEY (`song_bpm`) REFERENCES `bpm` (`bpm_amount`) ON DELETE CASCADE,
  CONSTRAINT `energy` FOREIGN KEY (`song_energy`) REFERENCES `energy` (`energy_amount`) ON DELETE CASCADE,
  CONSTRAINT `genre` FOREIGN KEY (`song_genre`) REFERENCES `genre` (`genre_name`) ON DELETE CASCADE,
  CONSTRAINT `year` FOREIGN KEY (`song_year`) REFERENCES `my_year` (`release_year`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES ('...Ready For It? - BloodPop® Remix',2018,'Taylor Swift','pop',160,84),('#Beautiful',2013,'Mariah Carey','dance pop',107,76),('#SELFIE',2014,'The Chainsmokers','electropop',128,92),('#thatPOWER',2013,'will.i.am','dance pop',128,61),('1+1',2011,'Beyoncé','dance pop',63,38),('16 Candles',1993,'Johnny Maestro','brill building pop',114,31),('24K Magic',2017,'Bruno Mars','pop',107,80),('2U (feat. Justin Bieber)',2018,'David Guetta','dance pop',145,61),('3',2010,'Britney Spears','dance pop',135,71),('43776',2015,'Beyoncé','dance pop',136,71),('7 Years',2016,'Lukas Graham','danish pop',120,47),('A L I E N S',2017,'Coldplay','permanent wave',148,88),('A Little Party Never Killed Nobody (All We Got)',2013,'Fergie','dance pop',130,62),('A Sky Full of Stars',2014,'Coldplay','permanent wave',125,68),('A Tear Fell',1995,'Teresa Brewer','adult standards',86,16),('A Teenager In Love',1959,'Dion & The Belmonts','adult standards',79,38),('A Thousand Miles Away',1984,'The Temprees','classic soul',75,26),('A Thousand Years',2011,'Christina Perri','dance pop',139,41),('A World Without Love',2017,'Peter And Gordon','brill building pop',130,66),('Adore You',2014,'Miley Cyrus','dance pop',120,66),('Ain\'t Got No Home',2013,'Clarence \"Frogman\"\" Henry\"','louisiana blues',84,33),('Ain\'t Your Mama',2016,'Jennifer Lopez','dance pop',120,68),('Alejandro',2010,'Lady Gaga','dance pop',99,80),('Alive',2015,'Sia','australian dance',100,76),('All About That Bass',2015,'Meghan Trainor','dance pop',134,88),('All Around The World (La La La)',2019,'R3HAB','big room',125,86),('All I Ask',2016,'Adele','british soul',142,28),('All of Me',2014,'John Legend','neo mellow',120,26),('All The Right Moves',2010,'OneRepublic','dance pop',146,95),('All We Know',2016,'The Chainsmokers','electropop',90,59),('Always See Your Face',1969,'Love','art rock',110,58),('American Oxygen',2015,'Rihanna','barbadian pop',78,75),('Anaconda',2014,'Nicki Minaj','dance pop',130,60),('Angel',2017,'Fifth Harmony','dance pop',124,53),('Animal',2010,'Neon Trees','indie pop',148,83),('Animals',2015,'Maroon 5','pop',190,74),('Antisocial (with Travis Scott)',2019,'Ed Sheeran','pop',152,82),('Anything Could Happen',2013,'Ellie Goulding','dance pop',103,78),('Anywhere',2018,'Rita Ora','dance pop',107,80),('Applause',2013,'Lady Gaga','dance pop',140,78),('April Love',1962,'Pat Boone','adult standards',91,17),('Are You Really Mine',2014,'Jimmy Rodgers','yodeling',102,19),('Astral Weeks - 1999 Remaster',1968,'Van Morrison','classic rock',81,35),('Atlas - From The Hunger Games: Catching Fire Soundtrack',2013,'Coldplay','permanent wave',136,45),('Attention',2018,'Charlie Puth','dance pop',100,61),('Baby',2010,'Justin Bieber','canadian pop',65,86),('Baby Don\'t Lie',2015,'Gwen Stefani','dance pop',100,55),('Baby I Need Your Loving',1965,'Four Tops','adult standards',121,69),('Back In The U.S.S.R. - Remastered 2009',1968,'The Beatles','british invasion',142,97),('Bad At Love',2018,'Halsey','dance pop',118,75),('Bad Liar',2018,'Selena Gomez','dance pop',121,41),('Bad Romance',2010,'Lady Gaga','dance pop',119,92),('Bang Bang',2015,'Jessie J','australian pop',150,75),('Bang My Head (feat. Sia & Fetty Wap)',2015,'David Guetta','dance pop',108,87),('Barabajagal (with Jeff Beck Group)',1969,'Donovan','art rock',100,57),('Beautiful Birds (feat. Birdy)',2016,'Passenger','folk-pop',86,17),('Beautiful People (feat. Khalid)',2019,'Ed Sheeran','pop',93,65),('Beauty And A Beat',2012,'Justin Bieber','canadian pop',128,84),('Been You',2015,'Justin Bieber','canadian pop',113,78),('Behind Your Back',2016,'Nelly Furtado','canadian latin',98,47),('Beneath Your Beautiful',2013,'Labrinth','pop',84,52),('Best Song Ever',2013,'One Direction','boy band',118,88),('Best Thing I Never Had',2011,'Beyoncé','dance pop',99,65),('Birthday',2014,'Katy Perry','dance pop',126,67),('Black Christ of the Andes (St. Martin de Porres)',1964,'Mary Lou Williams','bebop',89,7),('Blah Blah Blah (feat. 3OH!3)',2010,'Kesha','dance pop',120,84),('Blame',2015,'Calvin Harris','dance pop',128,86),('Bloodstream',2015,'Ed Sheeran','pop',89,59),('Blow',2011,'Kesha','dance pop',120,73),('Blow Me (One Last Kiss)',2012,'P!nk','dance pop',114,92),('Blown',2016,'DNCE','dance pop',130,95),('Blurred Lines',2013,'Robin Thicke','dance pop',120,60),('BO$$',2015,'Fifth Harmony','dance pop',103,87),('Bodak Yellow',2017,'Cardi B','pop',125,72),('Body Moves',2017,'DNCE','dance pop',102,69),('Body Say',2016,'Demi Lovato','dance pop',87,74),('Bohemian Rhapsody - 2011 Mix',1975,'Queen','glam rock',71,40),('Bon appétit',2017,'Katy Perry','dance pop',106,79),('Boom Boom',2018,'RedOne','moroccan pop',110,76),('Boom Clap - From the Motion Picture Das Schicksal ist ein mieser Verräter',2014,'Charli XCX','candy pop',92,81),('Booty',2015,'Jennifer Lopez','dance pop',129,95),('Born This Way',2011,'Lady Gaga','dance pop',124,83),('Both Sides Now',1969,'Joni Mitchell','canadian folk',97,16),('Bound To You - Burlesque Original Motion Picture Soundtrack',2010,'Christina Aguilera','dance pop',164,41),('Boyfriend',2012,'Justin Bieber','canadian pop',97,55),('Brave',2013,'Sara Bareilles','acoustic pop',185,84),('Break Free',2015,'Ariana Grande','dance pop',130,70),('Break Your Heart',2010,'Taio Cruz','dance pop',122,90),('Broken Arrows',2015,'Avicii','big room',116,67),('Brown Eyed Handsome Man',1963,'Buddy Holly','adult standards',95,97),('Build Me Up Buttercup',1968,'The Foundations','brill building pop',134,51),('Burn',2014,'Ellie Goulding','dance pop',87,78),('BURNITUP!',2016,'Janet Jackson','dance pop',123,71),('But Not For Me',1959,'Ella Fitzgerald','adult standards',80,22),('Butterfingers',2000,'Tommy Steele','classic uk pop',75,14),('Ca\' the Yowes',2008,'Shirley & Dolly Collins','british folk',80,7),('Cake By The Ocean',2016,'DNCE','dance pop',119,75),('California Gurls',2010,'Katy Perry','dance pop',125,75),('Call Me Maybe',2012,'Carly Rae Jepsen','canadian pop',120,58),('Call You Mine',2019,'The Chainsmokers','electropop',104,70),('Came Here for Love',2017,'Sigala','dance pop',125,87),('Can\'t Help Falling in Love',1961,'Elvis Presley','adult standards',100,29),('Can\'t Hold Us (feat. Ray Dalton)',2013,'Macklemore & Ryan Lewis','dance pop',146,93),('Can\'t Remember to Forget You (feat. Rihanna)',2014,'Shakira','colombian pop',138,81),('CAN\'T STOP THE FEELING! (Original Song from DreamWorks Animation\'s \"TROLLS\"\")\"',2016,'Justin Timberlake','dance pop',113,83),('Can\'t Take My Eyes Off You',2017,'Frankie Valli','adult standards',124,78),('Cannonball',2014,'Lea Michele','hollywood',92,82),('Capital Letters',2018,'Hailee Steinfeld','dance pop',100,81),('Carolina in the Morning',2011,'Craig Douglas','brill building pop',81,20),('Castle Walls (feat. Christina Aguilera)',2010,'T.I.','atl hip hop',80,86),('Celebrate (From the Original Motion Picture \"Penguins of Madagascar\"\")\"',2015,'Pitbull','dance pop',127,85),('Chained To The Rhythm',2017,'Katy Perry','dance pop',190,80),('Champagne Problems',2016,'Nick Jonas','dance pop',108,78),('Chandelier',2014,'Sia','australian dance',174,78),('Change',2016,'Christina Aguilera','dance pop',82,54),('Che La Luna',1973,'Louis Prima','adult standards',127,64),('Cheap Thrills',2016,'Sia','australian dance',90,80),('Cheers (Drink To That)',2011,'Rihanna','barbadian pop',80,91),('Chicago - Remastered',1958,'Frank Sinatra','adult standards',148,46),('Chun-Li',2018,'Nicki Minaj','dance pop',129,73),('Clarity',2013,'Zedd','complextro',128,78),('Close',2016,'Nick Jonas','dance pop',124,62),('Closer',2017,'The Chainsmokers','electropop',95,52),('Clown',2013,'Emeli Sandé','dance pop',130,23),('Club Can\'t Handle Me (feat. David Guetta)',2010,'Flo Rida','dance pop',128,87),('Cold (feat. Future)',2017,'Maroon 5','pop',100,72),('Cold Water (feat. Justin Bieber & MØ)',2016,'Major Lazer','dance pop',93,80),('Collette',1982,'Billy Fury','adult standards',155,44),('Come & Get It',2013,'Selena Gomez','dance pop',80,79),('Come Get It Bae',2014,'Pharrell Williams','dance pop',120,80),('Come Softly To Me',2010,'Frankie Vaughan','merseybeat',131,34),('Come Together - Remastered 2009',1969,'The Beatles','british invasion',165,38),('Comment te dire adieu - It Hurts to Say Goodbye',2005,'Françoise Hardy','chanson',124,45),('Company',2015,'Justin Bieber','canadian pop',95,80),('Con Calma - Remix',2019,'Daddy Yankee','latin',94,87),('Confident',2016,'Demi Lovato','dance pop',130,75),('Cool Girl',2016,'Tove Lo','dance pop',102,69),('Cooler Than Me - Single Mix',2010,'Mike Posner','dance pop',130,82),('Crazy Kids (feat. will.i.am)',2013,'Kesha','dance pop',128,75),('Cross Me (feat. Chance the Rapper & PnB Rock)',2019,'Ed Sheeran','pop',95,79),('Cruel (feat. ZAYN)',2016,'Snakehips','dance pop',110,88),('Cry Like a Baby',1968,'The Box Tops','brill building pop',133,47),('Crying',2017,'Roy Orbison','adult standards',97,47),('Crying in the Club',2017,'Camila Cabello','dance pop',85,62),('Cut To The Feeling',2017,'Carly Rae Jepsen','canadian pop',115,91),('Dance Again',2012,'Jennifer Lopez','dance pop',128,86),('Dangerous',2015,'Jennifer Hudson','dance pop',109,53),('Dangerous Woman',2016,'Ariana Grande','dance pop',134,60),('Dark Horse',2014,'Katy Perry','dance pop',132,59),('Daylight',2013,'Maroon 5','pop',120,67),('Dear Future Husband',2015,'Meghan Trainor','dance pop',79,78),('Desire',2016,'Years & Years','dance pop',126,78),('Despacito - Remix',2017,'Luis Fonsi','latin',178,82),('Diamonds',2012,'Rihanna','barbadian pop',92,71),('Die Young',2013,'Kesha','dance pop',128,70),('DJ Got Us Fallin\' In Love (feat. Pitbull)',2010,'Usher','atl hip hop',120,86),('Do You Wanna Come Over?',2016,'Britney Spears','dance pop',121,70),('Do You Wanna Dance',2013,'Bobby Freeman','doo-wop',167,50),('Doesn\'t Mean Anything',2010,'Alicia Keys','hip pop',104,41),('Dog Days Are Over',2010,'Florence + The Machine','art pop',150,81),('Domino',2012,'Jessie J','australian pop',127,55),('Don\'t',2015,'Ed Sheeran','pop',95,61),('Don\'t Be A Fool',2016,'Shawn Mendes','canadian pop',175,34),('Don\'t Be so Hard on Yourself',2015,'Jess Glynne','dance pop',120,82),('Don\'t Break The Heart That Loves You',1996,'Connie Francis','adult standards',73,41),('Don\'t Call Me Up',2019,'Mabel','dance pop',99,88),('Don\'t Go Breaking My Heart',1975,'Elton John','glam rock',131,84),('Don\'t Let Me Down',2016,'The Chainsmokers','electropop',160,87),('Don\'t Stop Me Now - 2011 Mix',1978,'Queen','glam rock',156,87),('Don\'t Stop the Party (feat. TJR)',2012,'Pitbull','dance pop',127,96),('Don\'t You Worry Child - Radio Edit',2013,'Swedish House Mafia','big room',129,84),('Downtown (feat. Melle Mel, Grandmaster Caz, Kool Moe Dee & Eric Nally)',2015,'Macklemore & Ryan Lewis','dance pop',110,61),('Dream A Little Dream Of Me',1963,'Ella Fitzgerald','adult standards',72,7),('Dreams - 2004 Remaster',1977,'Fleetwood Mac','album rock',120,49),('Drinks On The House',2016,'Green Martini Keys','',97,16),('Drip (feat. Migos)',2018,'Cardi B','pop',130,59),('Drunk in Love',2014,'Beyoncé','dance pop',140,62),('Dusk Till Dawn - Radio Edit',2018,'ZAYN','dance pop',180,44),('Dynamite',2010,'Taio Cruz','dance pop',120,78),('E.T.',2011,'Katy Perry','dance pop',152,87),('Earned It (Fifty Shades Of Grey) - From The \"Fifty Shades Of Grey\"\" Soundtrack\"',2015,'The Weeknd','canadian contemporary r&b',120,38),('Easy Love',2015,'Sigala','dance pop',124,94),('Eddie My Love',2012,'The Chordettes','adult standards',108,14),('Eenie Meenie',2010,'Sean Kingston','dance pop',121,61),('Elastic Heart',2015,'Sia','australian dance',130,79),('Electric Love',2016,'BØRNS','electropop',120,80),('Electricity (with Dua Lipa)',2018,'Silk City','edm',118,67),('Empire State of Mind (Part II) Broken Down',2010,'Alicia Keys','hip pop',93,37),('End Game',2018,'Taylor Swift','pop',159,59),('Everlasting Love',2012,'Love Affair','bubblegum pop',121,60),('Everybody Knows This Is Nowhere - 2009 Remaster',1969,'Neil Young','album rock',158,64),('Everybody Loves Somebody',2013,'Dean Martin','adult standards',81,49),('Everybody Needs Somebody To Love - Long Version',1965,'The Rolling Stones','album rock',178,73),('Everybody Talks',2013,'Neon Trees','indie pop',155,92),('Everybody\'s Talkin\'',1998,'Fred Neil','american folk revival',120,30),('Familiar',2018,'Liam Payne','dance pop',93,81),('Fancy',2014,'Iggy Azalea','australian hip hop',95,72),('Father And Son',1970,'Yusuf / Cat Stevens','british folk',136,33),('Feel The Light - From The \"Home\"\" Soundtrack\"',2015,'Jennifer Lopez','dance pop',156,60),('Feel This Moment (feat. Christina Aguilera)',2013,'Pitbull','dance pop',136,76),('Ferrari',2018,'Bebe Rexha','dance pop',77,48),('Ferry Cross the Mersey - Stereo, 1997 Remaster',1997,'Gerry & The Pacemakers','adult standards',105,29),('Filthy',2018,'Justin Timberlake','dance pop',97,58),('Final Song',2016,'MØ','dance pop',105,67),('Finally Found You',2013,'Enrique Iglesias','dance pop',128,88),('Find U Again (feat. Camila Cabello)',2019,'Mark Ronson','dance pop',104,66),('Finesse - Remix; feat. Cardi B',2018,'Bruno Mars','pop',105,86),('Fireball (feat. John Ryan)',2015,'Pitbull','dance pop',123,94),('Firework',2011,'Katy Perry','dance pop',124,83),('First Time',2017,'Kygo','edm',90,59),('Fly Me To The Moon (In Other Words)',1962,'Frank Sinatra','adult standards',119,26),('Focus',2015,'Ariana Grande','dance pop',100,88),('Foolish Games',2013,'Jewel','alaska indie',132,34),('For You (With Rita Ora)',2018,'Liam Payne','dance pop',113,80),('FourFiveSeconds',2015,'Rihanna','barbadian pop',206,27),('Freak',2013,'Kelly Rowland','atl hip hop',104,78),('Free Me',2017,'Sia','australian dance',87,46),('Friday On My Mind',1965,'The Easybeats','australian rock',95,99),('Friends (with BloodPop®)',2018,'Justin Bieber','canadian pop',105,73),('G.U.Y.',2014,'Lady Gaga','dance pop',110,92),('Genie In a Bottle',2015,'Christina Aguilera','dance pop',176,80),('Get Low (with Liam Payne)',2017,'Zedd','complextro',108,93),('Get Lucky (feat. Pharrell Williams & Nile Rodgers) - Radio Edit',2013,'Daft Punk','electro',116,81),('Ghosttown',2015,'Madonna','dance pop',79,55),('Giant (with Rag\'n\'Bone Man)',2019,'Calvin Harris','dance pop',122,89),('Gigi',1958,'Billy Eckstine','adult standards',81,12),('Gimme! Gimme! Gimme! (A Man After Midnight)',1979,'ABBA','europop',120,49),('Girl On Fire (feat. Nicki Minaj) - Inferno Version',2013,'Alicia Keys','hip pop',93,81),('Girls (feat. Cardi B, Bebe Rexha & Charli XCX)',2018,'Rita Ora','dance pop',94,69),('Girls Like You (feat. Cardi B)',2019,'Maroon 5','pop',125,54),('Give It 2 U',2013,'Robin Thicke','dance pop',127,83),('Give Me Everything',2011,'Pitbull','dance pop',129,94),('Glad You Came',2012,'The Wanted','boy band',127,85),('Gloria - Stereo Version',2015,'Them','blues rock',129,70),('Goin\' Back',1968,'The Byrds','art rock',116,45),('Good as Hell (feat. Ariana Grande) - Remix',2019,'Lizzo','escape room',96,89),('Good Life',2011,'OneRepublic','dance pop',95,69),('Good Time',2012,'Owl City','pop',126,87),('Gorilla',2014,'Bruno Mars','pop',140,54),('Greenlight (feat. Flo Rida & LunchMoney Lewis)',2017,'Pitbull','dance pop',115,83),('Grenade',2011,'Bruno Mars','pop',110,56),('Hall of Fame',2013,'The Script','celtic rock',85,87),('Hands To Myself',2016,'Selena Gomez','dance pop',111,50),('Happier',2019,'Marshmello','brostep',100,79),('Happy - From \"Despicable Me 2\"\"\"',2014,'Pharrell Williams','dance pop',160,82),('Happy Days And Lonely Nights',2012,'Suzi Miller And Johnson Brothers','',142,38),('Hard',2010,'Rihanna','barbadian pop',182,75),('Havana (feat. Young Thug)',2018,'Camila Cabello','dance pop',105,52),('Heart Attack',2013,'Demi Lovato','dance pop',174,79),('Heart Full of Soul',2002,'The Yardbirds','album rock',141,67),('Heartbeat Song',2015,'Kelly Clarkson','dance pop',149,80),('Heartbreaker',2013,'Justin Bieber','canadian pop',105,52),('Held for Questioning',1953,'Rusty Draper','deep adult standards',109,65),('Hello',2010,'Martin Solveig','big room',128,98),('Here',2015,'Alessia Cara','canadian contemporary r&b',120,82),('Here Comes the Night',2015,'Them','blues rock',99,58),('Here Comes The Sun - Remastered 2009',1969,'The Beatles','british invasion',129,54),('Heroes (we could be)',2015,'Alesso','big room',126,75),('Hey Brother',2014,'Avicii','big room',125,78),('Hey Jude - Remastered 2009',1973,'The Beatles','british invasion',145,55),('Hey Mama (feat. Nicki Minaj, Bebe Rexha & Afrojack)',2015,'David Guetta','dance pop',86,73),('Hey, Soul Sister',2010,'Train','neo mellow',97,89),('Hey! Baby - Remastered',2017,'Bruce Channel','rock-and-roll',64,62),('Higher',2016,'Carly Rae Jepsen','canadian pop',114,87),('Higher Love',2019,'Kygo','edm',104,68),('Highway to Hell',1979,'AC/DC','album rock',116,91),('Him & I (with Halsey)',2018,'G-Eazy','hip hop',88,73),('Hold It Against Me',2011,'Britney Spears','dance pop',133,72),('Hold On, We\'re Going Home',2013,'Drake','canadian hip hop',100,41),('Honey',2008,'Bobby Goldsboro','adult standards',93,35),('Hot Burrito #1',1969,'The Flying Burrito Brothers','alternative country',157,43),('Hot Diggity',2001,'Stargazers','',109,64),('How Deep Is Your Love',2015,'Calvin Harris','dance pop',122,87),('How Do You Sleep?',2019,'Sam Smith','pop',111,68),('How Far I\'ll Go - From \"Moana\"\"\"',2017,'Alessia Cara','canadian contemporary r&b',181,54),('How Ya Doin\'? (feat. Missy Elliott)',2013,'Little Mix','dance pop',201,95),('human',2014,'Christina Perri','dance pop',144,49),('Hurts',2016,'Emeli Sandé','dance pop',106,64),('I Don\'t Care (with Justin Bieber)',2019,'Ed Sheeran','pop',102,68),('I Dont Wanna Live Forever (Fifty Shades Darker)',2017,'ZAYN','dance pop',118,45),('I Feel It Coming',2017,'The Weeknd','canadian contemporary r&b',93,82),('I Got You',2016,'Bebe Rexha','dance pop',98,89),('I Knew You Were Trouble.',2012,'Taylor Swift','pop',77,47),('I Know What You Did Last Summer',2016,'Shawn Mendes','canadian pop',114,77),('I Like It',2010,'Enrique Iglesias','dance pop',129,94),('I Lived',2015,'OneRepublic','dance pop',120,85),('I Love It (feat. Charli XCX)',2013,'Icona Pop','candy pop',126,91),('I Love My Girl',2011,'The Hilltoppers','deep adult standards',123,45),('I Luh Ya Papi',2014,'Jennifer Lopez','dance pop',96,73),('I Really Like You',2015,'Carly Rae Jepsen','canadian pop',122,81),('I Took A Pill In Ibiza - Seeb Remix',2016,'Mike Posner','dance pop',102,71),('I Walk on Guilded Splinters',1968,'Dr. John','blues',90,29),('I Wanna Go',2011,'Britney Spears','dance pop',130,55),('I Want To Hold Your Hand - Remastered 2015',2000,'The Beatles','british invasion',131,72),('I Want You To Know',2015,'Zedd','complextro',130,85),('I Was Made For Lovin\' You',1979,'KISS','album rock',128,85),('I\'ll Show You',2015,'Justin Bieber','canadian pop',192,61),('I\'m Gonna Make You Love Me',1968,'Diana Ross & The Supremes','classic girl group',98,39),('I\'m Into You',2011,'Jennifer Lopez','dance pop',84,75),('I\'m Not The Only One',2015,'Sam Smith','pop',82,49),('I\'m the One (feat. Justin Bieber, Quavo, Chance the Rapper & Lil Wayne)',2017,'DJ Khaled','dance pop',81,67),('I\'ve Grown Accustomed To Her Face - Remastered/1998',1960,'Dean Martin','adult standards',79,12),('I\'ve Waited So Long',2012,'Anthony Newley','',137,36),('IDGAF',2018,'Dua Lipa','dance pop',97,54),('If I Give My Heart To You',2011,'The Teddy Bears','',113,29),('If I Give My Heart to You (with The Mellomen) - 78rpm Version',1945,'Doris Day','adult standards',77,6),('If I Had You',2010,'Adam Lambert','australian pop',131,91),('If I Lose Myself - Alesso vs OneRepublic',2013,'OneRepublic','dance pop',126,75),('Imagine - Remastered',1971,'John Lennon','album rock',76,26),('Imma Be',2010,'The Black Eyed Peas','dance pop',92,52),('Immigrant Song - Remaster',1970,'Led Zeppelin','album rock',113,93),('Impossible',2013,'James Arthur','pop',170,70),('In My Blood',2018,'Shawn Mendes','canadian pop',140,71),('In the Name of Love',2016,'Martin Garrix','big room',134,52),('In The Still Of The Night',2010,'The Five Satins','brill building pop',110,32),('Indian Reservation (The Lament of the Cherokee Reservation Indian)',1971,'Paul Revere & The Raiders','brill building pop',132,39),('Influence',2017,'Tove Lo','dance pop',105,59),('International Love',2012,'Pitbull','dance pop',120,86),('Into You',2016,'Ariana Grande','dance pop',108,73),('Invading My Mind',2011,'Jennifer Lopez','dance pop',129,88),('Invitation',2016,'Britney Spears','dance pop',112,65),('Isfahan',1967,'Duke Ellington','adult standards',173,7),('It Ain\'t Me (with Selena Gomez)',2017,'Kygo','edm',100,53),('It All Depends on You',1993,'Craig Douglas','brill building pop',147,32),('It Takes Two',1966,'Marvin Gaye','classic soul',151,48),('It Will Rain',2012,'Bruno Mars','pop',150,84),('It\'s All In The Game',1994,'Tommy Edwards','deep adult standards',105,28),('It\'s On Again - Main Soundtrack',2014,'Alicia Keys','hip pop',110,54),('Itchycoo Park (Mono Version) - 2012 Remaster',1967,'Small Faces','art rock',127,56),('Itsy Bitsy Teenie Weenie Yellow Polka Dot Bikini',1961,'Brian Hyland','adult standards',123,43),('Jar of Hearts',2011,'Christina Perri','dance pop',75,35),('Jealous - Remix',2015,'Nick Jonas','dance pop',93,71),('Judas',2011,'Lady Gaga','dance pop',131,93),('Just Cant Get Enough',2011,'The Black Eyed Peas','dance pop',94,63),('Just Give Me a Reason (feat. Nate Ruess)',2013,'P!nk','dance pop',95,55),('Just Like Fire (From the Original Motion Picture \"Alice Through The Looking Glass\"\")\"',2016,'P!nk','dance pop',163,70),('Just the Way You Are',2010,'Bruno Mars','pop',109,84),('Keeping Your Head Up',2016,'Birdy','neo mellow',122,78),('Kill Em With Kindness',2016,'Selena Gomez','dance pop',120,88),('Kills You Slowly',2019,'The Chainsmokers','electropop',150,44),('Kiss You',2013,'One Direction','boy band',90,93),('Kisses Sweeter Than Wine',2010,'Frankie Vaughan','merseybeat',87,46),('Kissing Strangers',2017,'DNCE','dance pop',120,74),('Kissing Strangers - Remix',2017,'DNCE','dance pop',120,77),('L-O-V-E',1992,'Nat King Cole','adult standards',78,37),('L.A.LOVE (la la)',2015,'Fergie','dance pop',202,39),('La La La (Brasil 2014) (feat. Carlinhos Brown)',2014,'Shakira','colombian pop',128,82),('Last Friday Night (T.G.I.F.)',2011,'Katy Perry','dance pop',126,81),('Latch',2014,'Disclosure','house',122,73),('Laugh Laugh',2006,'The Beau Brummels','brill building pop',129,68),('Lay It All on Me',2015,'Rudimental','dance pop',123,75),('Leaving Trunk',1968,'Taj Mahal','acoustic blues',174,50),('Legendary Lovers',2015,'Katy Perry','dance pop',126,84),('Lemon',2018,'N.E.R.D','hip hop',95,73),('Let Her Go',2014,'Passenger','folk-pop',75,54),('Let It Be - Remastered 2009',1970,'The Beatles','british invasion',143,40),('Let It Go - From \"Frozen / Single Version\"',2014,'Demi Lovato','dance pop',140,66),('Let Me',2018,'ZAYN','dance pop',168,57),('Let Me Be Your Lover',2015,'Enrique Iglesias','dance pop',112,90),('Let Me Go (with Alesso, Florida Georgia Line & watt)',2018,'Hailee Steinfeld','dance pop',103,71),('Let Me Love You',2017,'DJ Snake','electronic trap',100,72),('Let Me Love You (Until You Learn To Love Yourself)',2013,'Ne-Yo','dance pop',125,68),('Let There Be You',1989,'The Five Keys','doo-wop',92,11),('Let\'s Fall in Love',2014,'James Darren','adult standards',128,29),('Light It Up (feat. Nyla & Fuse ODG) [Remix]',2016,'Major Lazer','dance pop',108,88),('Lights - Single Version',2012,'Ellie Goulding','dance pop',120,80),('Like A G6',2010,'Far East Movement','dance pop',125,84),('LIKE I WOULD',2016,'ZAYN','dance pop',113,83),('Like I\'m Gonna Lose You (feat. John Legend)',2016,'Meghan Trainor','dance pop',108,53),('Lips Are Movin',2015,'Meghan Trainor','dance pop',139,83),('Listen to the Music',1972,'The Doobie Brothers','album rock',106,60),('Little Bit Of Rain',1969,'Karen Dalton','alternative country',174,6),('Little Lies',2016,'Hilary Duff','dance pop',124,76),('Little Things Means A Lot',2008,'Jayne Mansfield','',109,29),('Live It Up',2013,'Jennifer Lopez','dance pop',128,73),('Live Wire',1969,'The Meters','afrobeat',114,77),('Living For Love',2015,'Madonna','dance pop',123,79),('Loca',2010,'Shakira','colombian pop',112,87),('Locked Out of Heaven',2012,'Bruno Mars','pop',144,70),('Locomotive',1967,'Thelonious Monk','bebop',112,44),('Lonesome Town - 1990 Digital Remaster',1990,'Ricky Nelson','adult standards',78,10),('Look What You Made Me Do',2018,'Taylor Swift','pop',128,71),('Lose You To Love Me',2019,'Selena Gomez','dance pop',102,34),('Lose Yourself to Dance',2013,'Daft Punk','electro',100,66),('Love',2017,'Lana Del Rey','art pop',99,37),('Love Incredible (feat. Camila Cabello)',2017,'Cashmere Cat','downtempo',167,50),('Love Me Again',2014,'John Newman','pop',126,89),('Love Me Harder',2015,'Ariana Grande','dance pop',99,71),('Love Me Like You',2015,'Little Mix','dance pop',106,67),('Love Me Like You Do - From \"Fifty Shades Of Grey\"\"\"',2015,'Ellie Goulding','dance pop',190,61),('Love Never Felt So Good',2014,'Michael Jackson','pop',118,72),('Love Of My Life - Remastered 2011',1975,'Queen','glam rock',154,18),('Love On The Brain',2018,'Rihanna','barbadian pop',172,64),('Love On Top',2011,'Beyoncé','dance pop',94,75),('Love Runs Out',2014,'OneRepublic','dance pop',120,93),('Love Somebody',2013,'Maroon 5','pop',120,78),('Love The Way You Lie',2010,'Eminem','detroit hip hop',87,93),('Love You Like A Love Song',2012,'Selena Gomez & The Scene','dance pop',117,68),('Love Yourself',2015,'Justin Bieber','canadian pop',100,38),('Lovely Sky Boat',1968,'Alice Coltrane','afropop',119,43),('Lust for Life (with The Weeknd)',2017,'Lana Del Rey','art pop',100,67),('Made In The USA',2013,'Demi Lovato','dance pop',87,86),('Make Me Like You',2016,'Gwen Stefani','dance pop',118,71),('Make Me... (feat. G-Eazy)',2016,'Britney Spears','dance pop',123,70),('Malibu',2017,'Miley Cyrus','dance pop',140,78),('Mama',2017,'Jonas Blue','dance pop',104,79),('Maps',2014,'Maroon 5','pop',120,71),('Marianne',2019,'The Hilltoppers','deep adult standards',106,55),('Mark My Words',2015,'Justin Bieber','canadian pop',114,26),('Marry The Night',2011,'Lady Gaga','dance pop',131,88),('Marry You',2010,'Bruno Mars','pop',145,83),('Me Too',2016,'Meghan Trainor','dance pop',124,69),('Me, Myself & I',2016,'G-Eazy','hip hop',112,67),('Meet Me Halfway',2010,'The Black Eyed Peas','dance pop',130,63),('Memories',2019,'Maroon 5','pop',91,32),('Mercy',2017,'Shawn Mendes','canadian pop',148,66),('Messin\' Around',2017,'Pitbull','dance pop',158,81),('Mi Gente (feat. Beyoncé)',2018,'J Balvin','latin',105,72),('Million Reasons',2016,'Lady Gaga','dance pop',130,42),('Million Years Ago',2016,'Adele','british soul',0,0),('Mirrors - Radio Edit',2013,'Justin Timberlake','dance pop',77,60),('Misery',2010,'Maroon 5','pop',103,81),('Miss You (with Major Lazer & Tory Lanez)',2018,'Cashmere Cat','downtempo',100,64),('Mmm Yeah (feat. Pitbull)',2014,'Austin Mahone','dance pop',126,92),('Moment 4 Life - Album Version (Edited)',2011,'Nicki Minaj','dance pop',130,88),('Monster',2011,'Kanye West','chicago rap',125,69),('More',2007,'Jimmy Young','deep adult standards',126,31),('Move',2013,'Little Mix','dance pop',121,74),('MOVE TO MIAMI',2018,'Enrique Iglesias','dance pop',100,87),('Moves Like Jagger - Studio Recording From The Voice Performance',2011,'Maroon 5','pop',128,76),('Mr. Blue',1993,'The Fleetwoods','adult standards',97,9),('Mr. Blue Sky',1977,'Electric Light Orchestra','album rock',178,34),('Mr. Put It Down',2015,'Ricky Martin','dance pop',128,78),('Mr. Soul',1969,'Buffalo Springfield','blues rock',135,55),('Muny - Album Version (Edited)',2011,'Nicki Minaj','dance pop',98,72),('My First Kiss - feat. Ke$ha',2010,'3OH!3','dance pop',138,89),('My Happiness',1996,'Connie Francis','adult standards',107,31),('My House',2015,'Flo Rida','dance pop',94,70),('My My My!',2018,'Troye Sivan','dance pop',103,46),('My September Love',2000,'David Whitfield','deep adult standards',137,21),('My Spiritual Indian',1969,'Eddie Palmieri','boogaloo',121,92),('My Way',2017,'Calvin Harris','dance pop',120,91),('Myself When I Am Real',1963,'Charles Mingus','avant-garde jazz',81,19),('Naturally',2010,'Selena Gomez & The Scene','dance pop',133,90),('Needed Me',2016,'Rihanna','barbadian pop',111,31),('Needles and Pins - Mono',1964,'The Searchers','adult standards',124,95),('Nervous',2018,'Shawn Mendes','canadian pop',122,62),('Never Be the Same - Radio Edit',2018,'Camila Cabello','dance pop',130,69),('Never Forget You',2015,'Zara Larsson','dance pop',146,73),('New Rules',2018,'Dua Lipa','dance pop',116,70),('Next To Me',2013,'Emeli Sandé','dance pop',95,80),('Night Changes',2015,'One Direction','boy band',120,52),('Ninety-Nine Ways',2000,'Tab Hunter','deep adult standards',125,33),('NO',2016,'Meghan Trainor','dance pop',92,80),('No Brainer (feat. Justin Bieber, Chance the Rapper & Quavo)',2019,'DJ Khaled','dance pop',136,76),('No Guidance (feat. Drake)',2019,'Chris Brown','dance pop',93,45),('No Other Love',2014,'Bob Sharples & His Music','',97,31),('No Sugar Tonight / New Mother Nature',2000,'The Guess Who','album rock',101,83),('no tears left to cry',2018,'Ariana Grande','dance pop',122,71),('No Time',1971,'The Guess Who','album rock',128,48),('No Vacancy (with Sebastián Yatra)',2017,'OneRepublic','dance pop',100,76),('Not a Bad Thing',2014,'Justin Timberlake','dance pop',86,73),('Not About Angels',2014,'Birdy','neo mellow',116,14),('Not Myself Tonight',2010,'Christina Aguilera','dance pop',120,81),('Nothing Breaks Like a Heart (feat. Miley Cyrus)',2019,'Mark Ronson','dance pop',114,79),('OK - Spotify Version',2017,'Robin Schulz','dance pop',122,81),('OMG (feat. will.i.am)',2010,'Usher','atl hip hop',130,75),('On My Mind',2015,'Ellie Goulding','dance pop',155,71),('On The Floor',2011,'Jennifer Lopez','dance pop',130,78),('On The Sunny Side Of The Ocean',1965,'John Fahey','drone folk',116,73),('One Call Away (feat. Tyga) - Remix',2016,'Charlie Puth','dance pop',91,69),('One Kiss (with Dua Lipa)',2018,'Calvin Harris','dance pop',124,86),('One More Night',2012,'Maroon 5','pop',93,82),('Only Because',1957,'The Platters','adult standards',73,28),('Only Girl (In The World)',2010,'Rihanna','barbadian pop',126,72),('Only Human',2019,'Jonas Brothers','boy band',94,50),('Only Love Can Hurt Like This',2015,'Paloma Faith','british soul',91,89),('Only Sixteen - 2004 Remaster',2008,'Craig Douglas','brill building pop',114,55),('Ooh La La (from \"The Smurfs 2\"\")\"',2013,'Britney Spears','dance pop',128,57),('Out Of The Woods',2016,'Taylor Swift','pop',92,84),('Outside My Window',1993,'The Fleetwoods','adult standards',106,16),('Outta Nowhere (feat. Danny Mercer)',2013,'Pitbull','dance pop',95,84),('Over Under Sideways Down - The Mono Album',1966,'The Yardbirds','album rock',97,86),('Overdose',2013,'Ciara','dance pop',107,70),('Pachuko Hop',2006,'Ike Carpenter Orchestra','',83,53),('Papi',2011,'Jennifer Lopez','dance pop',120,81),('Paradise',2012,'Coldplay','permanent wave',140,59),('Paris',2017,'The Chainsmokers','electropop',100,64),('Part Of Me',2012,'Katy Perry','dance pop',130,92),('Partition',2014,'Beyoncé','dance pop',186,44),('Party Rock Anthem',2011,'LMFAO','dance pop',130,74),('Payphone',2012,'Maroon 5','pop',110,75),('People Like Us',2013,'Kelly Clarkson','dance pop',128,79),('Pep Rally',2016,'Missy Elliott','dance pop',90,75),('Peppermint Twist Pt.1',2019,'Joey Dee','australian talent show',199,73),('Perfect',2015,'One Direction','boy band',100,82),('Perfect Duet (Ed Sheeran & Beyoncé)',2018,'Ed Sheeran','pop',95,30),('Perfect Illusion',2016,'Lady Gaga','dance pop',125,86),('Picky - Remix',2016,'Joey Montana','latin',186,81),('Pictures of Matchstick Men - Mono Version',1968,'Status Quo','album rock',173,60),('PILLOWTALK',2016,'ZAYN','dance pop',125,70),('Pinball Wizard',1969,'The Who','album rock',124,72),('Play Hard (feat. Ne-Yo & Akon) - New Edit',2013,'David Guetta','dance pop',130,87),('Please Don\'t Go',2011,'Mike Posner','dance pop',120,88),('Please Mr. Postman',1961,'The Marvelettes','brill building pop',122,78),('Poetry In Motion',2011,'Johnny Tillotson','adult standards',135,71),('Pom Poms',2013,'Jonas Brothers','boy band',148,98),('Pompeii',2014,'Bastille','metropopolis',127,72),('Prayer in C - Robin Schulz Radio Edit',2015,'Lilly Wood and The Prick','french indie pop',123,89),('Praying',2017,'Kesha','dance pop',73,39),('Price Tag',2011,'Jessie J','australian pop',175,83),('Problem',2014,'Ariana Grande','dance pop',103,81),('Puppy Love - Remix',2000,'Paul Anka','adult standards',102,41),('Put Your Head On My Shoulder',2000,'Paul Anka','adult standards',116,34),('Rag Doll',2003,'Frankie Valli & The Four Seasons','adult standards',121,53),('Raindrops',1961,'Roy Orbison','adult standards',103,44),('Raise Your Glass',2011,'P!nk','dance pop',122,64),('Rather Be (feat. Jess Glynne)',2015,'Clean Bandit','dance pop',121,59),('Reality - Radio Edit',2015,'Lost Frequencies','belgian edm',122,70),('Reality (feat. Janieck Devy) - Radio Edit',2017,'Lost Frequencies','belgian edm',122,64),('Really Don\'t Care',2015,'Demi Lovato','dance pop',121,73),('Red Rubber Ball',2002,'The Cyrkle','brill building pop',92,52),('Reggaetón Lento (Remix)',2017,'CNCO','boy band',94,91),('Remember I Told You',2017,'Nick Jonas','dance pop',113,53),('Rhythm of the Rain',1963,'The Cascades','adult standards',117,66),('Rich Boy',2017,'Galantis','big room',110,90),('Rich Love (with Seeb)',2017,'OneRepublic','dance pop',105,87),('Right Now - Dyro Radio Edit',2013,'Rihanna','barbadian pop',130,74),('Ringo',1964,'Lorne Greene','cowboy western',111,52),('Rise',2016,'Katy Perry','dance pop',101,64),('Roar',2013,'Katy Perry','dance pop',180,77),('Rock And Roll All Nite',1975,'KISS','album rock',145,93),('Rock N Roll',2013,'Avril Lavigne','canadian pop',184,96),('Rock That Body',2010,'The Black Eyed Peas','dance pop',125,91),('Rockabye (feat. Sean Paul & Anne-Marie)',2017,'Clean Bandit','dance pop',102,76),('Rocket Man (I Think It\'s Going To Be A Long Long Time)',1972,'Elton John','glam rock',137,53),('Rolling in the Deep',2011,'Adele','british soul',105,76),('Roses',2016,'The Chainsmokers','electropop',100,80),('Rubber Ball',1961,'Bobby Vee','adult standards',143,43),('Rude',2014,'MAGIC!','pop',144,76),('Run Away With Me',2016,'Carly Rae Jepsen','canadian pop',119,72),('Run Run Run',2015,'Kelly Clarkson','dance pop',112,37),('Run the World (Girls)',2011,'Beyoncé','dance pop',127,90),('Runaround',2011,'The Fleetwoods','adult standards',79,14),('Runnin\' (Lose It All)',2015,'Naughty Boy','tropical house',139,85),('S&M Remix',2011,'Rihanna','barbadian pop',128,81),('Same Old Love',2015,'Selena Gomez','dance pop',98,59),('Say Something',2014,'A Great Big World','neo mellow',138,15),('Scars To Your Beautiful',2016,'Alessia Cara','canadian contemporary r&b',97,74),('Sea Of Love',2010,'Marty Wilde','brill building pop',84,39),('Secrets',2010,'OneRepublic','dance pop',148,76),('See You Again (feat. Charlie Puth)',2015,'Wiz Khalifa','hip hop',80,48),('Send My Love (To Your New Lover)',2016,'Adele','british soul',164,52),('Señorita',2019,'Shawn Mendes','canadian pop',117,54),('Set Fire to the Rain',2012,'Adele','british soul',108,68),('Seven Days',2016,'Anne Shelton','british dance band',90,27),('Sexy And I Know It',2011,'LMFAO','dance pop',130,86),('Sexy Bitch (feat. Akon)',2010,'David Guetta','dance pop',130,63),('Sh-Boom - Single Version',2007,'The Chords','doo-wop',137,47),('Sh-Boom (Life Could Be A Dream)',2006,'The Crew Cuts','doo-wop',130,27),('Shake It Off',2014,'Taylor Swift','pop',160,80),('Shallow - Radio Edit',2018,'Lady Gaga','dance pop',96,33),('Shape of You',2017,'Ed Sheeran','pop',96,65),('She Looks So Perfect',2014,'5 Seconds of Summer','boy band',160,95),('She\'d Rather Be With Me',1967,'The Turtles','brill building pop',124,78),('She\'s Got You - Single Version',1962,'Patsy Cline','adult standards',182,14),('Sheezus',2014,'Lily Allen','dance pop',130,50),('Sheila',1962,'Tommy Roe','adult standards',136,57),('Shot Me Down (feat. Skylar Grey) - Radio Edit',2014,'David Guetta','dance pop',192,77),('Shout Out to My Ex',2016,'Little Mix','dance pop',126,75),('Sick Boy',2018,'The Chainsmokers','electropop',90,58),('Side To Side',2017,'Ariana Grande','dance pop',159,74),('Sign of the Times',2018,'Harry Styles','dance pop',120,57),('Silence',2018,'Marshmello','brostep',142,76),('Silence Is Golden',1997,'The Tremeloes','adult standards',112,56),('Sing',2015,'Ed Sheeran','pop',120,67),('Slide (feat. Frank Ocean & Migos)',2017,'Calvin Harris','dance pop',104,80),('Slow Hands',2017,'Niall Horan','dance pop',86,42),('Smoke On The Water - Remastered 2012',1972,'Deep Purple','album rock',114,68),('So Much In Love',1963,'The Tymes','beach music',76,49),('Some Nights',2012,'fun.','baroque pop',108,74),('Somebody To Love - 2011 Mix',1976,'Queen','glam rock',109,70),('Someone Elses Roses',2019,'Joan Regan','',100,14),('Someone Like You',2011,'Adele','british soul',135,33),('Someone You Loved',2019,'Lewis Capaldi','pop',110,41),('Something Just Like This',2017,'The Chainsmokers','electropop',103,65),('Something\'s Got A Hold On Me - Burlesque Original Motion Picture Soundtrack',2010,'Christina Aguilera','dance pop',150,85),('Sorry',2015,'Justin Bieber','canadian pop',100,76),('Sorry Not Sorry',2018,'Demi Lovato','dance pop',144,64),('South of the Border (feat. Camila Cabello & Cardi B)',2019,'Ed Sheeran','pop',98,62),('Spanish Eyes',1977,'Al Martino','adult standards',109,49),('Spark The Fire',2015,'Gwen Stefani','dance pop',120,80),('Sparks',2015,'Hilary Duff','dance pop',122,88),('St Jude',2015,'Florence + The Machine','art pop',117,43),('Stairway Of Love',2015,'Terry Dene','',93,62),('Starboy',2017,'The Weeknd','canadian contemporary r&b',186,59),('Starships',2012,'Nicki Minaj','dance pop',125,72),('Start',2016,'John Legend','neo mellow',110,4),('Starving',2016,'Hailee Steinfeld','dance pop',100,62),('Stay',2017,'Zedd','complextro',102,62),('Stay The Night - Featuring Hayley Williams Of Paramore',2014,'Zedd','complextro',128,74),('Stay With Me',2014,'Sam Smith','pop',84,42),('Steal My Girl',2015,'One Direction','boy band',77,76),('Stereo Hearts (feat. Adam Levine)',2012,'Gym Class Heroes','dance pop',90,80),('Stitches',2015,'Shawn Mendes','canadian pop',150,75),('Story of My Life',2013,'One Direction','boy band',121,66),('Strip That Down (feat. Quavo)',2017,'Liam Payne','dance pop',106,50),('Stronger (What Doesn\'t Kill You)',2012,'Kelly Clarkson','dance pop',116,94),('Sucker',2019,'Jonas Brothers','boy band',138,73),('Sugar',2015,'Maroon 5','pop',120,79),('Sugar (feat. Francesco Yates)',2015,'Robin Schulz','dance pop',123,82),('Suit & Tie',2013,'Justin Timberlake','dance pop',102,60),('Suite: Judy Blue Eyes - Remastered',1969,'Crosby Stills & Nash','album rock',154,36),('Summer',2014,'Calvin Harris','dance pop',128,86),('Summer Bummer (feat. A$AP Rocky & Playboi Carti)',2017,'Lana Del Rey','art pop',135,57),('Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix',2013,'Lana Del Rey','art pop',126,81),('Super Bass',2011,'Nicki Minaj','dance pop',127,74),('Supernova',2018,'Ansel Elgort','dance pop',140,62),('Supplies',2018,'Justin Timberlake','dance pop',120,55),('Surf City',2010,'Jan & Dean','brill building pop',148,81),('Surf City - Remastered 1990/Stereo Remix',1990,'Jan & Dean','brill building pop',148,65),('Surfin\' U.S.A. - Remastered',1963,'The Beach Boys','baroque pop',159,85),('Sweet Caroline',1969,'Neil Diamond','adult standards',63,13),('Sweet Nothing (feat. Florence Welch)',2013,'Calvin Harris','dance pop',128,93),('Swish Swish',2017,'Katy Perry','dance pop',120,71),('Take Back the Night',2013,'Justin Timberlake','dance pop',107,66),('Take Good Care Of My Baby - 1990 Remastered',2011,'Bobby Vee','adult standards',82,43),('Take It Easy - 2013 Remaster',1972,'Eagles','album rock',139,67),('Take It Off',2010,'Kesha','dance pop',125,68),('Take Me To Church',2015,'Hozier','irish singer-songwriter',129,66),('Takeaway',2019,'The Chainsmokers','electropop',100,51),('Taki Taki (feat. Selena Gomez, Ozuna & Cardi B)',2019,'DJ Snake','electronic trap',96,80),('Talk (feat. Disclosure)',2019,'Khalid','alternative r&b',136,40),('Talk Dirty (feat. 2 Chainz)',2014,'Jason Derulo','dance pop',100,65),('Team',2014,'Lorde','art pop',100,58),('Tee Shirt - Soundtrack Version',2014,'Birdy','neo mellow',76,34),('Teenage Dream',2010,'Katy Perry','dance pop',120,80),('Telephone',2010,'Lady Gaga','dance pop',122,83),('Tell Me You Love Me - NOTD Remix',2018,'Demi Lovato','dance pop',102,77),('Telstar',1962,'The Tornados','british invasion',146,75),('Tequila',2018,'Dan + Shay','contemporary country',86,59),('That\'s What I Like',2017,'Bruno Mars','pop',134,56),('The Ballad of Bonnie & Clyde',1968,'Georgie Fame','british blues',107,47),('The Cure',2017,'Lady Gaga','dance pop',100,51),('The Edge Of Glory',2011,'Lady Gaga','dance pop',128,77),('The Feeling',2015,'Justin Bieber','canadian pop',127,81),('The Game Of Love',1964,'Wayne Fontana & The Mindbenders','british invasion',109,83),('The Greatest',2017,'Sia','australian dance',192,73),('The Heart Wants What It Wants',2015,'Selena Gomez','dance pop',83,79),('The Hills',2015,'The Weeknd','canadian contemporary r&b',113,56),('The Lady Is A Tramp',2016,'Mel Torme & the Mel-Tones','',138,60),('The Old Man\'s Back Again (Dedicated To The Neo-Stalinist Regime)',1969,'Scott Walker','art pop',91,45),('The One That Got Away',2012,'Katy Perry','dance pop',134,80),('The Sun Ain\'t Gonna Shine Anymore',1998,'The Walker Brothers','brill building pop',111,68),('The Time (Dirty Bit)',2010,'The Black Eyed Peas','dance pop',128,81),('The Way',2013,'Ariana Grande','dance pop',82,88),('There for You',2017,'Martin Garrix','big room',106,64),('There\'s Nothing Holdin\' Me Back',2018,'Shawn Mendes','canadian pop',122,81),('These Days',2018,'Rudimental','dance pop',92,81),('Thinking out Loud',2015,'Ed Sheeran','pop',79,45),('This Diamond Ring',2011,'Gary Lewis & The Playboys','adult standards',133,61),('This Eve of Parting',2018,'John Hartford','appalachian folk',115,46),('This Is How We Do',2014,'Katy Perry','dance pop',96,64),('This Is What You Came For',2016,'Calvin Harris','dance pop',124,93),('This Town',2018,'Niall Horan','dance pop',112,41),('This Will Be Our Year',1968,'The Zombies','art rock',98,42),('Thrift Shop (feat. Wanz)',2013,'Macklemore & Ryan Lewis','dance pop',95,53),('TiK ToK',2010,'Kesha','dance pop',120,84),('Till the World Ends',2011,'Britney Spears','dance pop',132,71),('Time of Our Lives',2015,'Pitbull','dance pop',124,80),('Tiny Dancer',1971,'Elton John','glam rock',145,43),('Tired',2017,'Alan Walker','electro house',124,88),('Titanium (feat. Sia)',2012,'David Guetta','dance pop',126,79),('TKO',2013,'Justin Timberlake','dance pop',138,68),('To The Aisle',2008,'The Five Satins','brill building pop',195,27),('Today',1967,'Jefferson Airplane','art rock',90,31),('Tonight (I\'m Fuckin\' You)',2011,'Enrique Iglesias','dance pop',126,89),('Tonight Tonight',2011,'Hot Chelle Rae','dance pop',100,78),('Too Good',2016,'Drake','canadian hip hop',118,65),('Toothbrush',2016,'DNCE','dance pop',105,79),('Touch (feat. Kid Ink)',2017,'Little Mix','dance pop',102,75),('Tous les garçons et les filles - Slow',1962,'Françoise Hardy','chanson',108,37),('Trampoline (with ZAYN)',2019,'SHAED','electropop',127,46),('Travelin\' Man - Remastered',1991,'Ricky Nelson','adult standards',123,36),('Treasure',2014,'Bruno Mars','pop',116,69),('Treat You Better',2017,'Shawn Mendes','canadian pop',83,82),('Trouble Every Day',1966,'Frank Zappa','album rock',121,78),('True Colors',2016,'Zedd','complextro',126,79),('Trumpets',2015,'Jason Derulo','dance pop',82,70),('Truth Hurts',2019,'Lizzo','escape room',158,62),('Try',2012,'P!nk','dance pop',104,63),('Try Sleeping with a Broken Heart',2010,'Alicia Keys','hip pop',111,82),('Tulips From Amsterdam',2000,'Max Bygraves','british comedy',93,45),('Turn Up the Music',2012,'Chris Brown','dance pop',130,84),('Turning Page',2011,'Sleeping At Last','acoustic pop',125,38),('Unchained Melody',2011,'The Teddy Bears','',114,44),('Under Control',2013,'Calvin Harris','dance pop',126,92),('Underneath the Tree',2013,'Kelly Clarkson','dance pop',160,81),('Up',2015,'Olly Murs','dance pop',115,85),('Uptown Funk',2015,'Mark Ronson','dance pop',115,61),('Wait',2018,'Maroon 5','pop',126,60),('Wake Me Up',2013,'Avicii','big room',124,78),('Walk On Water (feat. Beyoncé)',2018,'Eminem','detroit hip hop',82,44),('Walkin\' Back to Happiness',2017,'Helen Shapiro','adult standards',97,67),('Walkin’ My Baby Back Home',2007,'Dean Martin','adult standards',127,17),('Walks Like Rihanna',2013,'The Wanted','boy band',126,82),('Want To',2018,'Dua Lipa','dance pop',92,69),('Want to Want Me',2015,'Jason Derulo','dance pop',114,68),('Water Under the Bridge',2017,'Adele','british soul',95,84),('Waterloo Sunset - Mono Mix',1967,'The Kinks','album rock',108,69),('Waves - Robin Schulz Radio Edit',2015,'Mr. Probz','tropical house',120,51),('We Are Here',2015,'Alicia Keys','hip pop',93,67),('We Are Never Ever Getting Back Together',2012,'Taylor Swift','pop',86,68),('We Are One (Ole Ola) [The Official 2014 FIFA World Cup Song]',2014,'Pitbull','dance pop',125,94),('We Are The Champions - Remastered 2011',1977,'Queen','glam rock',64,46),('We Are Young (feat. Janelle Monáe)',2012,'fun.','baroque pop',184,64),('We Can\'t Stop',2013,'Miley Cyrus','dance pop',80,62),('We Don\'t Talk Anymore - DROELOE Remix',2017,'Charlie Puth','dance pop',100,82),('We Found Love',2011,'Rihanna','barbadian pop',128,77),('We Own The Night',2013,'The Wanted','boy band',104,94),('We R Who We R',2011,'Kesha','dance pop',120,82),('We Will Rock You - Remastered',1977,'Queen','glam rock',81,50),('What About Love',2013,'Austin Mahone','dance pop',100,78),('What About Us',2018,'P!nk','dance pop',114,59),('What Becomes Of The Brokenhearted',1989,'Jimmy Ruffin','brill building pop',99,42),('What Do You Mean?',2015,'Justin Bieber','canadian pop',125,57),('What Do You Mean? - Acoustic',2015,'Justin Bieber','canadian pop',125,36),('What Do You Want',1989,'Adam Faith','brill building pop',147,37),('What I Need (feat. Kehlani)',2018,'Hayley Kiyoko','dance pop',104,79),('What Lovers Do (feat. SZA)',2018,'Maroon 5','pop',110,60),('What Makes You Beautiful',2012,'One Direction','boy band',125,79),('What the Hell',2011,'Avril Lavigne','canadian pop',150,93),('What the World Needs Now Is Love',2016,'Dionne Warwick','adult standards',112,36),('What\'s My Name?',2011,'Rihanna','barbadian pop',100,79),('Whataya Want from Me',2010,'Adam Lambert','australian pop',186,68),('Whatever Will Be Will Be (Que Sera Sera) (with Frank DeVol & His Orchestra) - Single Version',1948,'Doris Day','adult standards',177,34),('When We Were Young',2016,'Adele','british soul',144,59),('Where Have You Been',2012,'Rihanna','barbadian pop',128,85),('Wherever I Go',2016,'OneRepublic','dance pop',100,69),('White Room',1968,'Cream','album rock',110,58),('Wide Awake',2012,'Katy Perry','dance pop',160,68),('Wiggle (feat. Snoop Dogg)',2014,'Jason Derulo','dance pop',82,62),('Wild Thoughts (feat. Rihanna & Bryson Tiller)',2018,'DJ Khaled','dance pop',98,67),('Wings',2014,'Birdy','neo mellow',83,71),('Wish That You Were Here - From Miss Peregrines Home for Peculiar Children Original Motion Picture',2016,'Florence + The Machine','art pop',94,57),('Without You (feat. Usher)',2011,'David Guetta','dance pop',128,61),('Wolves',2018,'Selena Gomez','dance pop',125,80),('Words as Weapons',2014,'Birdy','neo mellow',120,35),('Work',2016,'Rihanna','barbadian pop',92,53),('Work Bitch',2013,'Britney Spears','dance pop',128,82),('Work from Home (feat. Ty Dolla $ign)',2016,'Fifth Harmony','dance pop',105,59),('Worth It',2015,'Fifth Harmony','dance pop',100,77),('Wrecking Ball',2013,'Miley Cyrus','dance pop',120,42),('Written in the Stars (feat. Eric Turner)',2010,'Tinie Tempah','dance pop',91,95),('WTF (Where They From)',2016,'Missy Elliott','dance pop',120,82),('XO',2014,'Beyoncé','dance pop',170,79),('Yeah 3x',2011,'Chris Brown','dance pop',130,88),('Yesterday - Remastered 2009',1965,'The Beatles','british invasion',97,18),('Yesterday (feat. Bebe Rexha)',2015,'David Guetta','dance pop',128,78),('You Ain\'t Goin\' Nowhere',1968,'The Byrds','art rock',132,43),('You And I',2011,'Lady Gaga','dance pop',127,70),('You Belong to My Heart',2013,'Timi Yuro','adult standards',108,39),('You Da One',2012,'Rihanna','barbadian pop',127,72),('You Lost Me',2010,'Christina Aguilera','dance pop',43,39),('You Mean Everything to Me',1959,'Neil Sedaka','adult standards',72,43),('You\'ll Never Walk Alone',2017,'Gerry & The Pacemakers','adult standards',114,43),('You\'re Mine (Eternal)',2014,'Mariah Carey','dance pop',149,58),('Young Girl',1968,'Gary Puckett & The Union Gap','adult standards',119,54),('Young Girls',2014,'Bruno Mars','pop',126,75),('Younger Now',2017,'Miley Cyrus','dance pop',122,87),('Your Love Is My Drug',2010,'Kesha','dance pop',120,61),('Youth (feat. Khalid)',2018,'Shawn Mendes','canadian pop',100,60);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'music'
--

--
-- Dumping routines for database 'music'
--
/*!50003 DROP FUNCTION IF EXISTS `check_for_playlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `check_for_playlist`(playlist_name VARCHAR(100)) RETURNS varchar(10) CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
BEGIN
		DECLARE exist_counter INT;
		SELECT count(*) INTO exist_counter FROM information_schema.tables WHERE table_schema = 'music' AND table_name = playlist_name;
        
        IF exist_counter > 0 THEN 
			RETURN 'True';
		ELSE
			RETURN 'False';
		END IF;
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_playlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_playlist`(IN playlist_name VARCHAR(100))
BEGIN
		SET @variable = CONCAT('CREATE TABLE ', playlist_name, '(song_title VARCHAR(100), song_year INT, song_artist VARCHAR(100), song_genre VARCHAR(100), song_bpm INT, song_energy INT)');
		DROP TABLE IF EXISTS playlist_name;
        PREPARE statement FROM @variable;
        EXECUTE statement;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_artist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_artist`(IN artist_param VARCHAR(100))
BEGIN
		DELETE FROM artist WHERE artist_name = artist_param;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_genre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_genre`(IN genre_param VARCHAR(100))
BEGIN
		DELETE FROM genre WHERE genre_name = genre_param;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_songs_artist_and_title` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_songs_artist_and_title`(IN song_title_param VARCHAR(100), IN song_artist_param VARCHAR(100))
BEGIN
		DELETE FROM song WHERE song_title = song_title_param AND song_artist = song_artist_param;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_songs_with_artist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_songs_with_artist`(IN song_artist_param VARCHAR(100))
BEGIN
		DELETE FROM song WHERE song_artist = song_artist_param;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_songs_with_genre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_songs_with_genre`(IN song_genre_param VARCHAR(100))
BEGIN
		DELETE FROM song WHERE song_genre = song_genre_param;
        
		END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_songs_with_year` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_songs_with_year`(IN song_year_param INT)
BEGIN
		DELETE FROM song WHERE song_year = song_year_param;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_year` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_year`(IN year_param INT)
BEGIN
		DELETE FROM my_year WHERE release_year = year_param;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_into_playlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_into_playlist`(IN playlist_name VARCHAR(100), IN artist_param VARCHAR(100), IN genre_param VARCHAR(100), IN oldest_year INT, IN newest_year INT)
BEGIN
		SET @variable = CONCAT('INSERT INTO ', playlist_name, ' SELECT * FROM song WHERE song_artist = "', artist_param, '" AND song_genre = "', genre_param, '" AND song_year >= ', oldest_year, ' AND song_year <= ', newest_year);
        PREPARE statement FROM @variable;
        EXECUTE statement;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_into_playlist_no_artist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_into_playlist_no_artist`(IN playlist_name VARCHAR(100), IN genre_param VARCHAR(100), IN oldest_year INT, IN newest_year INT)
BEGIN
		SET @variable = CONCAT('INSERT INTO ', playlist_name, ' SELECT * FROM song WHERE song_genre = "', genre_param, '" AND song_year >= ', oldest_year, ' AND song_year <= ', newest_year);
        PREPARE statement FROM @variable;
        EXECUTE statement;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_into_playlist_no_artist_no_genre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_into_playlist_no_artist_no_genre`(IN playlist_name VARCHAR(100), IN oldest_year INT, IN newest_year INT)
BEGIN
		SET @variable = CONCAT('INSERT INTO ', playlist_name, ' SELECT * FROM song WHERE song_year >= ', oldest_year, ' AND song_year <= ', newest_year);
        PREPARE statement FROM @variable;
        EXECUTE statement;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_into_playlist_no_artist_no_genre_no_year` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_into_playlist_no_artist_no_genre_no_year`(IN playlist_name VARCHAR(100))
BEGIN
		SET @variable = CONCAT('INSERT INTO ', playlist_name, ' SELECT * FROM song');
        PREPARE statement FROM @variable;
        EXECUTE statement;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_into_playlist_no_genre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_into_playlist_no_genre`(IN playlist_name VARCHAR(100), IN artist_param VARCHAR(100), IN oldest_year INT, IN newest_year INT)
BEGIN
		SET @variable = CONCAT('INSERT INTO ', playlist_name, ' SELECT * FROM song WHERE song_artist = "', artist_param, '" AND song_year >= ', oldest_year, ' AND song_year <= ', newest_year);
        PREPARE statement FROM @variable;
        EXECUTE statement;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_into_playlist_no_years` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_into_playlist_no_years`(IN playlist_name VARCHAR(100), IN artist_param VARCHAR(100), IN genre_param VARCHAR(100))
BEGIN
		SET @variable = CONCAT('INSERT INTO ', playlist_name, ' SELECT * FROM song WHERE song_artist = "', artist_param, '" AND song_genre = "', genre_param, '"');
        PREPARE statement FROM @variable;
        EXECUTE statement;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_into_playlist_no_years_no_artist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_into_playlist_no_years_no_artist`(IN playlist_name VARCHAR(100), IN genre_param VARCHAR(100))
BEGIN
		SET @variable = CONCAT('INSERT INTO ', playlist_name, ' SELECT * FROM song WHERE song_genre = "', genre_param, '"');
        PREPARE statement FROM @variable;
        EXECUTE statement;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_into_playlist_no_years_no_genre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_into_playlist_no_years_no_genre`(IN playlist_name VARCHAR(100), IN artist_param VARCHAR(100))
BEGIN
		SET @variable = CONCAT('INSERT INTO ', playlist_name, ' SELECT * FROM song WHERE song_artist = "', artist_param, '"');
        PREPARE statement FROM @variable;
        EXECUTE statement;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `return_playlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `return_playlist`(IN playlist_name VARCHAR(100))
BEGIN
		SET @variable = CONCAT('SELECT * FROM ', playlist_name);
		PREPARE statement FROM @variable;
        EXECUTE statement;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `return_song` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `return_song`(IN song_title_param VARCHAR(100), IN song_artist_param VARCHAR(100))
BEGIN
		SELECT * FROM song WHERE song_title = song_title_param AND song_artist = song_artist_param;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `return_ten_artists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `return_ten_artists`()
BEGIN
		SELECT * FROM artist ORDER BY rand() LIMIT 10;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `return_ten_genres` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `return_ten_genres`()
BEGIN
		SELECT * FROM genre ORDER BY rand() LIMIT 10;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_artist_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_artist_table`(IN song_artist_param VARCHAR(100))
BEGIN
		INSERT INTO artist(artist_name) SELECT song_artist_param WHERE NOT EXISTS(SELECT * FROM artist WHERE artist_name = song_artist_param);
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_bpm_in_song_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_bpm_in_song_table`(IN song_title_param VARCHAR(100), IN song_artist_param VARCHAR(100), IN bpm_param INT)
BEGIN
        CALL update_bpm_table(bpm_param);
		UPDATE song SET song_bpm = bpm_param WHERE song_title = song_title_param AND song_artist = song_artist_param;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_bpm_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_bpm_table`(IN bpm_param INT)
BEGIN
		INSERT INTO bpm(bpm_amount) SELECT bpm_param WHERE NOT EXISTS(SELECT * FROM bpm WHERE bpm_amount = bpm_param);
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_energy_in_song_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_energy_in_song_table`(IN song_title_param VARCHAR(100), IN song_artist_param VARCHAR(100), IN energy_param INT)
BEGIN
        CALL update_energy_table(energy_param);
		UPDATE song SET song_energy = energy_param WHERE song_title = song_title_param AND song_artist = song_artist_param;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_energy_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_energy_table`(IN energy_param INT)
BEGIN
		INSERT INTO energy(energy_amount) SELECT energy_param WHERE NOT EXISTS(SELECT * FROM energy WHERE energy_amount = energy_param);
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_genre_in_song_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_genre_in_song_table`(IN song_title_param VARCHAR(100), IN song_artist_param VARCHAR(100), IN genre_param VARCHAR(100))
BEGIN
		CALL update_genre_table(genre_param);
		UPDATE song SET song_genre = genre_param WHERE song_title = song_title_param AND song_artist = song_artist_param;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_genre_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_genre_table`(IN genre_param VARCHAR(100))
BEGIN
		INSERT INTO genre(genre_name) SELECT genre_param WHERE NOT EXISTS(SELECT * FROM genre WHERE genre_name = genre_param);
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_my_year_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_my_year_table`(IN year_param INT)
BEGIN
		INSERT INTO my_year(release_year) SELECT year_param WHERE NOT EXISTS(SELECT * FROM my_year WHERE release_year = year_param);
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_song_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_song_table`(IN song_title_param VARCHAR(100), IN song_artist_param VARCHAR(100))
BEGIN
		CALL update_artist_table(song_artist_param);
		INSERT INTO song(song_title, song_artist) VALUES (song_title_param, song_artist_param);
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_year_in_song_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_year_in_song_table`(IN song_title_param VARCHAR(100), IN song_artist_param VARCHAR(100), IN year_param INT)
BEGIN
        CALL update_my_year_table(year_param);
		UPDATE song SET song_year = year_param WHERE song_title = song_title_param AND song_artist = song_artist_param;
        
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 11:44:15
