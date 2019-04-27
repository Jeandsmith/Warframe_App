DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS resources;
DROP TABLE IF EXISTS item_resources;
DROP TABLE IF EXISTS worlds;
DROP TABLE IF EXISTS world_locations;
DROP TABLE IF EXISTS resource_location;
DROP TABLE IF EXISTS mission_tiers;
DROP TABLE IF EXISTS missions;
DROP TABLE IF EXISTS factions;
DROP TABLE IF EXISTS mission_stats;
DROP TABLE IF EXISTS relics;
DROP TABLE IF EXISTS relic_location;
DROP TABLE IF EXISTS relic_stats;

CREATE TABLE item (
    item_name 	CHAR(60) PRIMARY KEY,
    build_time  CHAR(10) NOT NULL,
    isPrime		BOOL NOT NULL
);

CREATE TABLE resources(
	resource_name 	CHAR(60) PRIMARY KEY
);

-- Relationship of components and items
CREATE TABLE item_resources(
	item_name	 	CHAR(120) REFERENCES item(item_name),
    resource_name 	CHAR(60) REFERENCES resources(resource_name),
    count			INTEGER	CHECK(count > 0)
);

CREATE TABLE worlds(
	world_name 			CHAR(50) PRIMARY KEY
);

CREATE TABLE world_locations(
	world_name 				CHAR(50) REFERENCES worlds(world_name),
	locations_in_world 		CHAR(50) PRIMARY KEY
);

CREATE TABLE resource_location (
	resource_name 	CHAR(120) REFERENCES resources(resource_name),
    world			CHAR(120) REFERENCES world_locations(world_name)
);

CREATE TABLE mission_tiers(
	tier 		INTEGER CHECK (tier > 0 AND tier <= 3),
    tier_level 	INTEGER	CHECK (tier_level > 0)
);

CREATE TABLE missions (
	mission_name	CHAR(50) PRIMARY KEY
);

CREATE TABLE factions(
	faction_name 	CHAR(20) PRIMARY KEY
);

CREATE TABLE mission_stats(
	mission_name 	CHAR (50) NOT NULL REFERENCES missions(mission_name),
    faction			CHAR(50) NOT NULL REFERENCES factions(faction_name),
	mission_tier	INTEGER REFERENCES mission_tiers(tier)
);

CREATE TABLE relics(
	relic_name 	CHAR(20) PRIMARY KEY,
    tier		INTEGER REFERENCES mission_tiers(tier) 
);

CREATE TABLE relic_location (
	relic_name 		CHAR(20)  NOT NULL REFERENCES relics(relic_name),
    world_location	CHAR(120) NOT NULL REFERENCES world_locations(world_name),
    location		CHAR(120) NOT NULL REFERENCES world_locations(location_in_world),
    mission 		CHAR(120) NOT NULL REFERENCES missions(mission_name)
);

CREATE TABLE relic_stats (
	relic_name			CHAR(120) NOT NULL REFERENCES relics(relicname),
    relic_item_name 	CHAR(120) NOT NULL REFERENCES item(item_name),
    rarity				CHAR(120) NOT NULL CHECK(rarity IN ("Common", "Uncommon", "Rare")),
    drop_chance			FLOAT
);

