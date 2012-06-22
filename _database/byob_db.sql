/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : byob_db

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2012-06-22 10:13:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `brackets`
-- ----------------------------
DROP TABLE IF EXISTS `brackets`;
CREATE TABLE `brackets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `link` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bracket` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of brackets
-- ----------------------------
INSERT INTO `brackets` VALUES ('1', 'aybLyQ', '242,131,215,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0');
INSERT INTO `brackets` VALUES ('2', '3G9K12', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0');
INSERT INTO `brackets` VALUES ('3', 'knRUCz', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,82');
INSERT INTO `brackets` VALUES ('4', 'Kp9On0', '86,46,11,10,88,0,184,0,0,0,0,0,0,0,330,0,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0');
INSERT INTO `brackets` VALUES ('5', 'mtKwRW', '84,84,84,84,0,93,0,0,318,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0');
INSERT INTO `brackets` VALUES ('6', 'hEmh91', '86,11,261,46,95,94,10,96,82,210,88,51,230,200,84,265,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0');
INSERT INTO `brackets` VALUES ('7', 'rzC52q', '13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0');
INSERT INTO `brackets` VALUES ('8', 'gFpPmr', '0,0,110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0');
INSERT INTO `brackets` VALUES ('9', 'gFpPmr', '0,0,110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0');

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `option` varchar(30) DEFAULT NULL,
  `value` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('autoFill', '11,96,261,46,86,95,10,82,210,54,94,51,84,85,57,88,39,16,265,201,212,330,263,329,128,12,200,48,230,127,264,211,52,97,41,50,242,87,100,157,331,83,262,49,98,21,91,14,90,36,165,307,104,317,117,279,338,175,22,139,62,253,71,187,218,291,298,1', '1');

-- ----------------------------
-- Table structure for `ncaab_teams`
-- ----------------------------
DROP TABLE IF EXISTS `ncaab_teams`;
CREATE TABLE `ncaab_teams` (
  `name` varchar(128) NOT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mascot` varchar(128) NOT NULL,
  `conference` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `alt_name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ncaab_teams
-- ----------------------------
INSERT INTO `ncaab_teams` VALUES ('Stony Brook', '1', 'Seawolves', 'America East', 'stony_brook.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Albany', '2', 'Great Danes', 'America East', 'albany.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Vermont', '3', 'Catamounts', 'America East', 'vermont.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Maine', '4', 'Black Bears', 'America East', 'maine.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Boston', '5', 'Terriers', 'America East', 'boston_university.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Hartford', '6', 'Hawks', 'America East', 'hartford.gif', '');
INSERT INTO `ncaab_teams` VALUES ('UMBC', '7', 'Retrievers', 'America East', 'umbc.gif', 'University of Maryland Baltimore County');
INSERT INTO `ncaab_teams` VALUES ('New Hampshire', '8', 'Wildcats', 'America East', 'new_hampshire.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Binghamton', '9', 'Bearcats', 'America East', 'binghamton.gif', '');
INSERT INTO `ncaab_teams` VALUES ('North Carolina', '10', 'Tarheels', 'Atlantic Coast', 'north_carolina.gif', 'UNC');
INSERT INTO `ncaab_teams` VALUES ('Duke', '11', 'Blue Devils', 'Atlantic Coast', 'duke.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Virginia', '12', 'Cavaliers', 'Atlantic Coast', 'virginia.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Maryland', '13', 'Terrapins', 'Atlantic Coast', 'maryland.gif', '');
INSERT INTO `ncaab_teams` VALUES ('North Carolina State', '14', 'Wolfpack', 'Atlantic Coast', 'nc_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Wake Forest', '15', 'Demon Deacons', 'Atlantic Coast', 'wake_forest.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Florida State', '16', 'Seminoles', 'Atlantic Coast', 'florida_state.gif', 'FSU');
INSERT INTO `ncaab_teams` VALUES ('Clemson', '17', 'Tigers', 'Atlantic Coast', 'clemson.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Georgia Tech', '18', 'Yellow Jackets', 'Atlantic Coast', 'georgia_tech.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Boston College', '19', 'Eagles', 'Atlantic Coast', 'boston_college.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Virginia Tech', '20', 'Hokies', 'Atlantic Coast', 'virginia_tech.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Miami (FL)', '21', 'Hurricanes', 'Atlantic Coast', 'miami_fl.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Belmont', '22', 'Bruins', 'Atlantic Sun', 'belmont.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Mercer', '23', 'Bears', 'Atlantic Sun', 'mercer.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Stetson', '24', 'Hatters', 'Atlantic Sun', 'stetson.gif', '');
INSERT INTO `ncaab_teams` VALUES ('East Tennessee State', '25', 'Buccaneers', 'Atlantic Sun', 'e_tennessee.gif', '');
INSERT INTO `ncaab_teams` VALUES ('South Carolina Upstate', '26', 'Spartans', 'Atlantic Sun', 's_car_upstate.gif', '');
INSERT INTO `ncaab_teams` VALUES ('North Florida', '27', 'Ospreys', 'Atlantic Sun', 'n_florida.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Lipscomb', '28', 'Bisons', 'Atlantic Sun', 'lipscomb.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Florida Gulf Coast', '29', 'Eagles', 'Atlantic Sun', 'fl_gulf_coast.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Jacksonville', '30', 'Dolphins', 'Atlantic Sun', 'jacksonville.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Kennesaw State', '31', 'Owls', 'Atlantic Sun', 'kennesaw.gif', '');
INSERT INTO `ncaab_teams` VALUES ('La Salle', '32', 'Explorers', 'Atlantic 10', 'la_salle.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Massachusetts', '33', 'Minutemen', 'Atlantic 10', 'u_mass.gif', 'UMass');
INSERT INTO `ncaab_teams` VALUES ('Dayton', '34', 'Flyers', 'Atlantic 10', 'dayton.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Saint Josephs', '35', 'Hawks', 'Atlantic 10', 'st_josephs.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Xavier', '36', 'Musketeers', 'Atlantic 10', 'xavier.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Charlotte', '37', '49ers', 'Atlantic 10', 'charlotte.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Saint Bonaventure', '38', 'Bonnies', 'Atlantic 10', 'st_bonaventure.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Temple', '39', 'Owls', 'Atlantic 10', 'temple.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Richmond', '40', 'Spiders', 'Atlantic 10', 'richmond.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Saint Louis', '41', 'Billikens', 'Atlantic 10', 'st_louis.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Duquesne', '42', 'Dukes', 'Atlantic 10', 'duquesne.gif', '');
INSERT INTO `ncaab_teams` VALUES ('George Washington', '43', 'Colonials', 'Atlantic 10', 'george_washington.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Rhode Island', '44', 'Rams', 'Atlantic 10', 'rhode_island', '');
INSERT INTO `ncaab_teams` VALUES ('Fordham', '45', 'Rams', 'Atlantic 10', 'fordham.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Syracuse', '46', 'Orange', 'Big East', 'syracuse.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Cincinnati', '47', 'Bearcats', 'Big East', 'cincinnati.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Notre Dame', '48', 'Fighting Irish', 'Big East', 'notre_dame.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Seton Hall', '49', 'Pirates', 'Big East', 'seton_hall.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Connecticut', '50', 'Huskies', 'Big East', 'connecticut.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Georgetown', '51', 'Hoyas', 'Big East', 'georgetown.gif', '');
INSERT INTO `ncaab_teams` VALUES ('West Virginia', '52', 'Mountaineers', 'Big East', 'west_virginia.gif', '');
INSERT INTO `ncaab_teams` VALUES ('South Florida', '53', 'Bulls', 'Big East', 'south_florida.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Marquette', '54', 'Golden Eagles', 'Big East', 'marquette.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Rutgers', '55', 'Scarlet Knights', 'Big East', 'rutgers.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Saint Johns', '56', 'Red Storm', 'Big East', 'st_johns.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Louisville', '57', 'Cardinals', 'Big East', 'louisville.gif', '');
INSERT INTO `ncaab_teams` VALUES ('DePaul', '58', 'Blue Demons', 'Big East', 'depaul.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Providence', '59', 'Friars', 'Big East', 'providence.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Villanova', '60', 'Wildcats', 'Big East', 'villanova.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Pittsburgh', '61', 'Panthers', 'Big East', 'pittsburgh.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Weber State', '62', 'Wildcats', 'Big Sky', 'weber_st.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Montana', '63', 'Grizzlies', 'Big Sky', 'montana.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Eastern Washington', '64', 'Eagles', 'Big Sky', 'eastern_washington.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Montana State', '65', 'Bobcats', 'Big Sky', 'montana_st.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Northern Colorado', '66', 'Bears', 'Big Sky', 'northern_colorado.gif', 'UNC');
INSERT INTO `ncaab_teams` VALUES ('Portland State', '67', 'Vikings', 'Big Sky', 'portland_st.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Idaho State', '68', 'Bengals', 'Big Sky', 'idaho_st.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Northern Arizona', '69', 'Lumberjacks', 'Big Sky', 'northern_arizona.gif', 'NAU');
INSERT INTO `ncaab_teams` VALUES ('Sacramento State', '70', 'Hornets', 'Big Sky', 'sac_state.gif', 'California State University - Sacramento');
INSERT INTO `ncaab_teams` VALUES ('North Carolina Asheville', '71', 'Bulldogs', 'Big South', 'nc_asheville.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Coastal Carolina', '72', 'Chanticleers', 'Big South', 'coastal_carolina.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Campbell', '73', 'Fighting Camels', 'Big South', 'campbell.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Charleston Southern', '74', 'Buccaneers', 'Big South', 'charleston_southern.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Gardner Webb', '75', 'Runnin\' Bulldogs', 'Big South', 'gardner_webb.gif', '');
INSERT INTO `ncaab_teams` VALUES ('High Point', '76', 'Panthers', 'Big South', 'high_point.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Winthrop', '77', 'Eagles', 'Big South', 'winthrop.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Virginia Military', '78', 'Keydets', 'Big South', 'virginia_military.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Presbyterian', '79', 'Blue Hose', 'Big South', 'presbyterian.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Liberty', '80', 'Flames', 'Big South', 'liberty.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Radford', '81', 'Highlanders', 'Big South', 'radford.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Michigan State', '82', 'Spartans', 'Big Ten', 'michigan_state.gif', 'MSU');
INSERT INTO `ncaab_teams` VALUES ('Illinois', '83', 'Fighting Illini', 'Big Ten', 'illinois.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Michigan', '84', 'Wolverines', 'Big Ten', 'michigan.gif', 'UM');
INSERT INTO `ncaab_teams` VALUES ('Indiana', '85', 'Hoosiers', 'Big Ten', 'indiana.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Ohio State', '86', 'Buckeyes', 'Big Ten', 'ohio_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Purdue', '87', 'Boilermakers', 'Big Ten', 'purdue.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Wisconsin', '88', 'Badgers', 'Big Ten', 'wisconsin.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Iowa', '89', 'Hawkeyes', 'Big Ten', 'iowa.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Northwestern', '90', 'Wildcats', 'Big Ten', 'northwestern.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Minnesota', '91', 'Golden Gophers', 'Big Ten', 'minnesota.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Nebraska', '92', 'Cornhuskers', 'Big Ten', 'nebraska.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Penn State', '93', 'Nittany Lions', 'Big Ten', 'penn_state.gif', 'PSU');
INSERT INTO `ncaab_teams` VALUES ('Baylor', '94', 'Bears', 'Big Twelve', 'baylor.gif', 'BU');
INSERT INTO `ncaab_teams` VALUES ('Kansas', '95', 'Jayhawks', 'Big Twelve', 'kansas.gif', 'KU');
INSERT INTO `ncaab_teams` VALUES ('Missouri', '96', 'Tigers', 'Big Twelve', 'missouri.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Iowa State', '97', 'Cyclones', 'Big Twelve', 'iowa_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Texas', '98', 'Longhorns', 'Big Twelve', 'texas.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Oklahoma State', '99', 'Cowboys', 'Big Twelve', 'oklahoma_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Kansas State', '100', 'Wildcats', 'Big Twelve', 'kansas_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Oklahoma', '101', 'Sooners', 'Big Twelve', 'oklahoma.gif', 'OU');
INSERT INTO `ncaab_teams` VALUES ('Texas A&M', '102', 'Aggies', 'Big Twelve', 'texas_am.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Texas Tech', '103', 'Red Raiders', 'Big Twelve', 'texas_tech.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Long Beach State', '104', '49ers', 'Big West', 'long_beach.gif', '');
INSERT INTO `ncaab_teams` VALUES ('UC Riverside', '105', 'Highlanders', 'Big West', 'uc_riverside.gif', '');
INSERT INTO `ncaab_teams` VALUES ('UC Santa Barbara', '106', 'Gauchos', 'Big West', 'ucsb.gif', '');
INSERT INTO `ncaab_teams` VALUES ('UC Irvine', '107', 'Anteaters', 'Big West', 'uc_irvine.gif', '');
INSERT INTO `ncaab_teams` VALUES ('CSU Fullerton', '108', 'Titans', 'Big West', 'csu_fullerton.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Cal Poly', '109', 'Mustangs', 'Big West', 'cal_poly.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Pacific', '110', 'Tigers', 'Big West', 'pacific.gif', '');
INSERT INTO `ncaab_teams` VALUES ('CSU Northridge', '111', 'Matadors', 'Big West', 'csu_northridge.gif', '');
INSERT INTO `ncaab_teams` VALUES ('UC Davis', '112', 'Aggies', 'Big West', 'uc_davis.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Georgia State', '113', 'Panthers', 'Colonial Athletic', 'georgia_st.gif', '');
INSERT INTO `ncaab_teams` VALUES ('George Mason', '114', 'Patriots', 'Colonial Athletic', 'george_mason.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Old Dominion', '115', 'Monarchs', 'Colonial Athletic', 'old_dominion.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Virginia Commonwealth', '116', 'Rams', 'Colonial Athletic', 'vcu.gif', 'VCU');
INSERT INTO `ncaab_teams` VALUES ('Drexel', '117', 'Dragons', 'Colonial Athletic', 'drexel.gif', '');
INSERT INTO `ncaab_teams` VALUES ('North Carolina Wilmington', '118', 'Seahawks', 'Colonial Athletic', 'nc_wilmington.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Delaware', '119', 'Fightin Blue Hens', 'Colonial Athletic', 'delaware.gif', 'UD');
INSERT INTO `ncaab_teams` VALUES ('Northeastern', '120', 'Huskies', 'Colonial Athletic', 'northeastern.gif', '');
INSERT INTO `ncaab_teams` VALUES ('William & Mary', '121', 'Tribe', 'Colonial Athletic', 'william_mary.gif', '');
INSERT INTO `ncaab_teams` VALUES ('James Madison', '122', 'Dukes', 'Colonial Athletic', 'james_madison.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Hofstra', '123', 'Pride', 'Colonial Athletic', 'hofstra.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Towson', '124', 'Tigers', 'Colonial Athletic', 'towson.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Central Florida', '125', 'Knights', 'Conference USA', 'ucf.gif', 'UCF');
INSERT INTO `ncaab_teams` VALUES ('Marshall', '126', 'Thundering Herd', 'Conference USA', 'marshall.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Memphis', '127', 'Tigers', 'Conference USA', 'memphis.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Southern Mississippi', '128', 'Golden Eagles', 'Conference USA', 'southern_miss.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Rice', '129', 'Owls', 'Conference USA', 'rice.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Southern Methodist', '130', 'Mustangs', 'Conference USA', 'southern_methodist.gif', 'SMU');
INSERT INTO `ncaab_teams` VALUES ('Houston', '131', 'Cougars', 'Conference USA', 'houston.gif', 'UH');
INSERT INTO `ncaab_teams` VALUES ('Tulsa', '132', 'Golden Hurricane', 'Conference USA', 'tulsa.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Texas El Paso', '133', 'Miners', 'Conference USA', 'utep.gif', 'UTEP');
INSERT INTO `ncaab_teams` VALUES ('Tulane', '134', 'Green Wave', 'Conference USA', 'tulane.gif', '');
INSERT INTO `ncaab_teams` VALUES ('East Carolina', '135', 'Pirates', 'Conference USA', 'east_carolina.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Alabama Birmingham', '136', 'Blazers', 'Conference USA', 'uab.gif', 'UAB');
INSERT INTO `ncaab_teams` VALUES ('Cleveland State', '137', 'Vikings', 'Horizon League', 'cleveland_st.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Wisconsin Milwaukee', '138', 'Panthers', 'Horizon League', 'uw_milwaukee.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Valparaiso', '139', 'Crusaders', 'Horizon League', 'valparaiso.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Youngstown State', '140', 'Penguins', 'Horizon League', 'youngstown_st.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Wright State', '141', 'Raiders', 'Horizon League', 'wright_st.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Butler', '142', 'Bulldogs', 'Horizon League', 'butler.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Detroit', '143', 'Titans', 'Horizon League', 'detroit.gif', 'UDM');
INSERT INTO `ncaab_teams` VALUES ('Green Bay', '144', 'Phoenix', 'Horizon League', 'green_bay.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Illinois Chicago', '145', 'Flames', 'Horizon League', 'ill_chicago.gif', 'UIC');
INSERT INTO `ncaab_teams` VALUES ('Loyola Chicago', '146', 'Ramblers', 'Horizon League', 'loyola_chicago.gif', '');
INSERT INTO `ncaab_teams` VALUES ('CSU Bakersfield', '147', 'Roadrunners', 'Independent', '', '');
INSERT INTO `ncaab_teams` VALUES ('Utah Valley', '148', 'Wolverines', 'Independent', 'utah_valley.gif', '');
INSERT INTO `ncaab_teams` VALUES ('North Dakota', '149', 'Fighting Sioux', 'Independent', 'north_dakota.gif', '');
INSERT INTO `ncaab_teams` VALUES ('New Jersey IT', '150', 'Highlanders', 'Independent', 'njit.gif', 'NJIT');
INSERT INTO `ncaab_teams` VALUES ('Nebraska Omaha', '151', 'Mavericks', 'Independent', '', '');
INSERT INTO `ncaab_teams` VALUES ('Houston Baptist', '152', 'Huskies', 'Independent', 'houston_baptist.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Longwood', '153', 'Lancers', 'Independent', 'longwood.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Texas Pan American', '154', 'Broncs', 'Independent', 'tx_pan_american.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Seattle', '155', 'Redhawks', 'Independent', '', '');
INSERT INTO `ncaab_teams` VALUES ('Chicago State', '156', 'Cougars', 'Independent', 'chicago_st.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Harvard', '157', 'Crimson', 'Ivy League', 'harvard.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Pennsylvania', '158', 'Quakers', 'Ivy League', 'pennsylvania.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Cornell', '159', 'Big Red', 'Ivy League', 'cornell.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Yale', '160', 'Bulldogs', 'Ivy League', 'yale.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Brown', '161', 'Bears', 'Ivy League', 'brown.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Columbia', '162', 'Lions', 'Ivy League', 'columbia.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Princeton', '163', 'Tigers', 'Ivy League', 'princeton.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Dartmouth', '164', 'Big Green', 'Ivy League', 'dartmouth.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Iona', '165', 'Gaels', 'Metro Atlantic Athletic', 'iona.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Loyola (MD)', '166', 'Greyhounds', 'Metro Atlantic Athletic', 'loyola_md.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Manhattan', '167', 'Jaspers', 'Metro Atlantic Athletic', 'manhattan.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Siena', '168', 'Saints', 'Metro Atlantic Athletic', 'siena.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Fairfield', '169', 'Stags', 'Metro Atlantic Athletic', 'fairfield.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Rider', '170', 'Broncos', 'Metro Atlantic Athletic', 'rider.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Marist', '171', 'Red Foxes', 'Metro Atlantic Athletic', 'marist.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Niagara', '172', 'Purple Eagles', 'Metro Atlantic Athletic', 'niagara.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Saint Peters', '173', 'Peacocks', 'Metro Atlantic Athletic', 'st_peters.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Canisius', '174', 'Golden Griffins', 'Metro Atlantic Athletic', 'canisius.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Akron', '175', 'Zips', 'Mid American', 'akron.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Ohio', '176', 'Bobcats', 'Mid American', 'ohio.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Kent State', '177', 'Golden Flashes', 'Mid American', 'kent_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Buffalo', '178', 'Bulls', 'Mid American', 'buffalo.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Bowling Green', '179', 'Falcons', 'Mid American', 'bowling_green.gif', 'BGSU');
INSERT INTO `ncaab_teams` VALUES ('Miami (OH)', '180', 'RedHawks', 'Mid American', 'miami_oh.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Ball State', '181', 'Cardinals', 'Mid American', 'ball_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Central Michigan', '182', 'Chippewas', 'Mid American', 'central_michigan.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Western Michigan', '183', 'Broncos', 'Mid American', 'western_michigan.gif', '');
INSERT INTO `ncaab_teams` VALUES ('East Michigan', '184', 'Eagles', 'Mid American', 'eastern_michigan.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Toledo', '185', 'Rockets', 'Mid American', 'toledo.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Northern Illinois', '186', 'Huskies', 'Mid American', 'northern_illinois.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Norfolk State', '187', 'Spartans', 'Mid Eastern', 'norfolk_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Savannah State', '188', 'Tigers', 'Mid Eastern', 'savannah_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('North Carolina Central', '189', 'Eagles', 'Mid Eastern', 'nc_central.gif', 'NC Central');
INSERT INTO `ncaab_teams` VALUES ('Coppin State', '190', 'Eagles', 'Mid Eastern', 'coppin_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Hampton', '191', 'Pirates', 'Mid Eastern', 'hampton.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Bethune Cookman', '192', 'Wildcats', 'Mid Eastern', 'bethune_cookman.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Delaware State', '193', 'Hornets', 'Mid Eastern', 'delaware_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Morgan State', '194', 'Golden Bears', 'Mid Eastern', 'morgan_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('North Carolina A&T', '195', 'Aggies', 'Mid Eastern', 'nc_at.gif', 'NC A&T');
INSERT INTO `ncaab_teams` VALUES ('Florida A&M', '196', 'Rattlers', 'Mid Eastern', 'florida_am.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Howard', '197', 'Bison', 'Mid Eastern', 'howard.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Maryland Eastern Shore', '198', 'Hawks', 'Mid Eastern', 'md_eastern_shore.gif', 'MD Eastern Shore');
INSERT INTO `ncaab_teams` VALUES ('South Carolina State', '199', 'Bulldogs', 'Mid Eastern', 'south_carolina_state.gif', 'SC State');
INSERT INTO `ncaab_teams` VALUES ('Creighton', '200', 'Bluejays', 'Missouri Valley', 'creighton.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Wichita State', '201', 'Shockers', 'Missouri Valley', 'wichita_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Missouri State', '202', 'Bears', 'Missouri Valley', 'missouri_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Northern Iowa', '203', 'Panthers', 'Missouri Valley', 'northern_iowa.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Illinois State', '204', 'Redbirds', 'Missouri Valley', 'illinois_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Drake', '205', 'Bulldogs', 'Missouri Valley', 'drake.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Southern Illinois', '206', 'Salukis', 'Missouri Valley', 'southern_illinois.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Indiana State', '207', 'Sycamores', 'Missouri Valley', 'indiana_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Evansville', '208', 'Aces', 'Missouri Valley', 'evansville.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Bradley', '209', 'Braves', 'Missouri Valley', 'bradley.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Nevada Las Vegas', '210', 'Runnin Rebels', 'Mountain West', 'unlv.gif', 'UNLV');
INSERT INTO `ncaab_teams` VALUES ('New Mexico', '211', 'Lobos', 'Mountain West', 'new_mexico.gif', '');
INSERT INTO `ncaab_teams` VALUES ('San Diego State', '212', 'Aztecs', 'Mountain West', 'san_diego_state.gif', 'SDSU');
INSERT INTO `ncaab_teams` VALUES ('Wyoming', '213', 'Cowboys', 'Mountain West', 'wyoming.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Colorado State', '214', 'Rams', 'Mountain West', 'colorado_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Air Force', '215', 'Falcons', 'Mountain West', 'air_force.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Boise State', '216', 'Broncos', 'Mountain West', 'boise_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Texas Christian', '217', 'Horned Frogs', 'Mountain West', 'tcu.gif', 'TCU');
INSERT INTO `ncaab_teams` VALUES ('Long Island', '218', 'Blackbirds', 'Northeast', 'long_island.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Central Connecticut State', '219', 'Blue Devils', 'Northeast', 'central_connecticut_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Wagner', '220', 'Seahawks', 'Northeast', 'wagner.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Saint Francis (NY)', '221', 'Terriers', 'Northeast', 'st_francis_ny.gif', 'St Francis');
INSERT INTO `ncaab_teams` VALUES ('Robert Morris', '222', 'Colonials', 'Northeast', 'robert_morris.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Quinnipiac', '223', 'Bobcats', 'Northeast', 'quinnipiac.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Sacred Heart', '224', 'Pioneers', 'Northeast', 'sacred_heart.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Saint Francis (PA)', '225', 'Red Flash', 'Northeast', 'st_francis.gif', 'St Francis');
INSERT INTO `ncaab_teams` VALUES ('Mount Saint Marys', '226', 'Mountaineers', 'Northeast', 'mount_st_marys.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Monmouth', '227', 'Hawks', 'Northeast', 'monmouth.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Bryant', '228', 'Bulldogs', 'Northeast', 'bryant.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Fairleigh Dickinson', '229', 'Knights', 'Northeast', 'fairleigh_dickinson.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Murray State', '230', 'Racers', 'Ohio Valley', 'murray_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Southeast Missouri State', '231', 'Redhawks', 'Ohio Valley', 'se_missouri_state.gif', 'SE Missouri State');
INSERT INTO `ncaab_teams` VALUES ('Tennessee Tech', '232', 'Golden Eagles', 'Ohio Valley', 'tennessee_tech.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Eastern Kentucky', '233', 'Colonels', 'Ohio Valley', 'eastern_kentucky.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Eastern Illinois', '234', 'Panthers', 'Ohio Valley', 'eastern_illinois.gif', '');
INSERT INTO `ncaab_teams` VALUES ('SIU Edwardsville', '235', 'Cougars', 'Ohio Valley', '', 'Southern Illinois Edwardsville');
INSERT INTO `ncaab_teams` VALUES ('Tennessee State', '236', 'Tigers', 'Ohio Valley', 'tennessee_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Morehead State', '237', 'Eagles', 'Ohio Valley', 'morehead_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Austin Peay', '238', 'Governors', 'Ohio Valley', 'austin_peay.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Jacksonville State', '239', 'Gamecocks', 'Ohio Valley', 'jacksonville_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Tennessee Martin', '240', 'Skyhawks', 'Ohio Valley', 'tennessee_martin.gif', 'Tenn Martin');
INSERT INTO `ncaab_teams` VALUES ('Stanford', '241', 'Cardinal', 'Pac 12', 'stanford.gif', '');
INSERT INTO `ncaab_teams` VALUES ('California', '242', 'Golden Bears', 'Pac 12', 'california.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Arizona', '243', 'Wildcats', 'Pac 12', 'arizona.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Colorado', '244', 'Buffaloes', 'Pac 12', 'colorado.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Washington', '245', 'Huskies', 'Pac 12', 'washington.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Oregon', '246', 'Ducks', 'Pac 12', 'oregon.gif', '');
INSERT INTO `ncaab_teams` VALUES ('UCLA', '247', 'Bruins', 'Pac 12', 'ucla.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Washington State', '248', 'Cougars', 'Pac 12', 'washington_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Arizona State', '249', 'Sun Devils', 'Pac 12', 'arizona_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Utah', '250', 'Runnin Utes', 'Pac 12', 'utah.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Oregon State', '251', 'Beavers', 'Pac 12', 'oregon_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Southern California', '252', 'Trojans', 'Pac 12', 'usc.gif', 'USC');
INSERT INTO `ncaab_teams` VALUES ('Bucknell', '253', 'Bison', 'Patriot League', 'bucknell.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Holy Cross', '254', 'Crusaders', 'Patriot League', 'holy_cross.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Lafayette', '255', 'Leopards', 'Patriot League', 'lafayette.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Lehigh', '256', 'Mountain Hawks', 'Patriot League', 'lehigh.gif', '');
INSERT INTO `ncaab_teams` VALUES ('American', '257', 'Eagles', 'Patriot League', 'american.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Army', '258', 'Black Knights', 'Patriot League', 'army.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Colgate', '259', 'Raiders', 'Patriot League', 'colgate.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Navy', '260', 'Midshipmen', 'Patriot League', 'navy.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Kentucky', '261', 'Wildcats', 'Southeastern', 'kentucky.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Alabama', '262', 'Crimson Tide', 'Southeastern', 'alabama.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Vanderbilt', '263', 'Commodores', 'Southeastern', 'vanderbilt.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Mississippi State', '264', 'Bulldogs', 'Southeastern', 'mississippi_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Florida', '265', 'Gators', 'Southeastern', 'florida.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Arkansas', '266', 'Razorbacks', 'Southeastern', 'arkansas.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Louisiana State', '267', 'Tigers', 'Southeastern', 'louisiana_state.gif', 'LSU');
INSERT INTO `ncaab_teams` VALUES ('Mississippi', '268', 'Rebels', 'Southeastern', 'ole_miss.gif', 'Ole Miss');
INSERT INTO `ncaab_teams` VALUES ('Tennessee', '269', 'Volunteers', 'Southeastern', 'tennessee.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Auburn', '270', 'Tigers', 'Southeastern', 'auburn.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Georgia', '271', 'Bulldogs', 'Southeastern', 'georgia.gif', '');
INSERT INTO `ncaab_teams` VALUES ('South Carolina', '272', 'Gamecocks', 'Southeastern', 'south_carolina.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Elon', '273', 'Phoenix', 'Southern', 'elon.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Chattanooga', '274', 'Mocs', 'Southern', 'chattanooga.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Western Carolina', '275', 'Catamounts', 'Southern', 'western_carolina.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Appalachian State', '276', 'Mountaineers', 'Southern', 'appalachian_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('North Carolina Greensboro', '277', 'Spartans', 'Southern', 'unc_greensboro.gif', 'UNC Greensboro');
INSERT INTO `ncaab_teams` VALUES ('Samford', '278', 'Bulldogs', 'Southern', 'samford.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Davidson', '279', 'Wildcats', 'Southern', 'davidson.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Georgia Southern', '280', 'Eagles', 'Southern', 'georgia_southern.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Charleston', '281', 'Cougars', 'Southern', 'charleston.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Wofford', '282', 'Terriers', 'Southern', 'wofford.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Furman', '283', 'Paladins', 'Southern', 'furman.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Citadel', '284', 'Bulldogs', 'Southern', 'citadel.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Northwestern State', '285', 'Demons', 'Southland', 'northwestern_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('McNeese State', '286', 'Cowboys', 'Southland', 'mcneese_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Lamar', '287', 'Cardinals', 'Southland', 'lamar.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Southeast Louisiana', '288', 'Lions', 'Southland', 'se_louisiana.gif', 'SE Louisiana');
INSERT INTO `ncaab_teams` VALUES ('Central Arkansas', '289', 'Bears', 'Southland', 'central_arkansas.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Nicholls', '290', 'Colonels', 'Southland', 'nicholls.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Texas Arlington', '291', 'Mavericks', 'Southland', 'texas_arlington.gif', 'TX Arlington');
INSERT INTO `ncaab_teams` VALUES ('Stephen F Austin', '292', 'Lumberjacks', 'Southland', 'stephen_f_austin.gif', '');
INSERT INTO `ncaab_teams` VALUES ('UTSA', '293', 'Roadrunners', 'Southland', 'utsa.gif', '');
INSERT INTO `ncaab_teams` VALUES ('TAMU Corpus Christy', '294', 'Islanders', 'Southland', 'tamu_corpus_christy.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Texas State', '295', 'Bobcats', 'Southland', 'texas_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Sam Houston State', '296', 'Bearkats', 'Southland', 'sam_houston_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Texas Southern', '297', 'Tigers', 'Southwestern Athletic', 'texas_southern.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Mississippi Valley State', '298', 'Delta Devils', 'Southwestern Athletic', 'mississippi_valley_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Southern', '299', 'Jaguars', 'Southwestern Athletic', 'southern.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Alabama State', '300', 'Hornets', 'Southwestern Athletic', 'alabama_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Grambling State', '301', 'Tigers', 'Southwestern Athletic', 'grambling_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Prairie View A&M', '302', 'Panthers', 'Southwestern Athletic', 'prairie_view_am.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Alabama A&M', '303', 'Bulldogs', 'Southwestern Athletic', 'alabama_am.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Alcorn State', '304', 'Braves', 'Southwestern Athletic', 'alcorn_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Jackson State', '305', 'Tigers', 'Southwestern Athletic', 'jackson_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Arkansas Pine Bluff', '306', 'Golden Lions', 'Southwestern Athletic', 'ak_pine_bluff.gif', 'AR Pine Bluff');
INSERT INTO `ncaab_teams` VALUES ('Oral Roberts', '307', 'Golden Eagles', 'Summit', 'oral_roberts.gif', '');
INSERT INTO `ncaab_teams` VALUES ('South Dakota State', '308', 'Jackrabbits', 'Summit', 'south_dakota_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('North Dakota State', '309', 'Bison', 'Summit', 'north_dakota_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Western Illinois', '310', 'Leathernecks', 'Summit', 'western_illinois.gif', '');
INSERT INTO `ncaab_teams` VALUES ('IPFW', '311', 'Mastodons', 'Summit', 'ipfw.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Oakland', '312', 'Golden Grizzlies', 'Summit', 'oakland.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Southern Utah', '313', 'Thunderbirds', 'Summit', 'southern_utah.gif', '');
INSERT INTO `ncaab_teams` VALUES ('IUPUI', '314', 'Jaguars', 'Summit', 'iupui.gif', '');
INSERT INTO `ncaab_teams` VALUES ('South Dakota', '315', 'Coyotes', 'Summit', '', '');
INSERT INTO `ncaab_teams` VALUES ('Missouri Kansas City', '316', 'Kangaroos', 'Summit', 'missouri_kc.gif', 'UMKC');
INSERT INTO `ncaab_teams` VALUES ('Middle Tennessee State', '317', 'Blue Raiders', 'Sun Belt', 'middle_tennessee.gif', 'Mid Tenn St');
INSERT INTO `ncaab_teams` VALUES ('Florida Atlantic', '318', 'Owls', 'Sun Belt', 'florida_atlantic.gif', 'FAU');
INSERT INTO `ncaab_teams` VALUES ('South Alabama', '319', 'Jaguars', 'Sun Belt', 'south_alabama.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Troy', '320', 'Trojans', 'Sun Belt', 'troy.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Florida International', '321', 'Golden Panthers', 'Sun Belt', 'florida_international.gif', 'FL Intl');
INSERT INTO `ncaab_teams` VALUES ('Western Kentucky', '322', 'Hilltoppers', 'Sun Belt', 'western_kentucky.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Arkansas Little Rock', '323', 'Trojans', 'Sun Belt', 'ar_little_rock.gif', 'AR Little Rock');
INSERT INTO `ncaab_teams` VALUES ('Denver', '324', 'Pioneers', 'Sun Belt', 'denver.gif', '');
INSERT INTO `ncaab_teams` VALUES ('North Texas', '325', 'Mean Green', 'Sun Belt', 'north_texas.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Louisiana Lafayette', '326', 'Ragin Cajuns', 'Sun Belt', 'la_lafayette.gif', 'LA Lafayette');
INSERT INTO `ncaab_teams` VALUES ('Arkansas State', '327', 'Red Wolves', 'Sun Belt', 'arkansas_st.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Louisiana Monroe', '328', 'Warhawks', 'Sun Belt', 'la_monroe.gif', 'LA Monroe');
INSERT INTO `ncaab_teams` VALUES ('Saint Marys', '329', 'Gaels', 'West Coast', 'saint_marys.gif', 'St Marys');
INSERT INTO `ncaab_teams` VALUES ('Gonzaga', '330', 'Bulldogs', 'West Coast', 'gonzaga.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Brigham Young', '331', 'Cougars', 'West Coast', 'byu.gif', 'BYU');
INSERT INTO `ncaab_teams` VALUES ('Loyola Marymount', '332', 'Lions', 'West Coast', 'loyola_marymount.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Portland', '333', 'Pilots', 'West Coast', 'portland.gif', '');
INSERT INTO `ncaab_teams` VALUES ('San Diego', '334', 'Toreros', 'West Coast', 'san_diego.gif', '');
INSERT INTO `ncaab_teams` VALUES ('San Francisco', '335', 'Dons', 'West Coast', 'san_francisco.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Pepperdine', '336', 'Waves', 'West Coast', 'pepperdine.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Santa Clara', '337', 'Broncos', 'West Coast', 'santa_clara.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Nevada', '338', 'Wolf Pack', 'Western Athletic', 'nevada.gif', '');
INSERT INTO `ncaab_teams` VALUES ('New Mexico State', '339', 'Aggies', 'Western Athletic', 'new_mexico_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Hawaii', '340', 'Warriors', 'Western Athletic', 'hawaii.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Idaho', '341', 'Vandals', 'Western Athletic', 'idaho.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Utah State', '342', 'Aggies', 'Western Athletic', 'utah_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Louisiana Tech', '343', 'Bulldogs', 'Western Athletic', 'louisiana_tech.gif', '');
INSERT INTO `ncaab_teams` VALUES ('San Jose State', '344', 'Spartans', 'Western Athletic', 'san_jose_state.gif', '');
INSERT INTO `ncaab_teams` VALUES ('Fresno State', '345', 'Bulldogs', 'Western Athletic', 'fresno_state.gif', '');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `email` varchar(128) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `validation_code` varchar(24) NOT NULL,
  `validated` tinyint(1) NOT NULL DEFAULT '0',
  `bracket` text NOT NULL,
  `bracket_score` int(5) NOT NULL,
  `last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
