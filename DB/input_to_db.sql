
-- Items
INSERT INTO item VALUES ("Limbo Prime", "72 hours", true);
INSERT INTO item VALUES ("Forma", "24 hours",  false);
INSERT INTO item VALUES ("Limbo Prime Neuroptics", "11 hours", true);
INSERT INTO item VALUES ("Limbo Prime System", "11 hours", true);
INSERT INTO item VALUES ("Limbo Prime Blueprint", "11 hours", true);
INSERT INTO item VALUES ("Limbo Prime Chassi", "11 hours", true);

-- Reseources
INSERT INTO resources VALUES ("Neural Sensors");
INSERT INTO resources VALUES ("Argon Crystal");
INSERT INTO resources VALUES ("Nitain Extract");
INSERT INTO resources VALUES ("Cryotic");
INSERT INTO resources VALUES ("Morphic");
INSERT INTO resources VALUES ("Tellurium");
INSERT INTO resources VALUES ("Rubedo");
INSERT INTO resources VALUES ("Alloy Plates");
INSERT INTO resources VALUES ("Salvage");
INSERT INTO resources VALUES ("Nano Spores");
INSERT INTO resources VALUES ("Circuit");
INSERT INTO resources VALUES ("Plastid");
INSERT INTO resources VALUES ("Forma Blueprint");

INSERT INTO item_resources VALUES ("Limbo Prime Neuroptics", "Neural Sensors", 2); 
INSERT INTO item_resources VALUES ("Limbo Prime Neuroptics", "Argon Crystal", 2); 
INSERT INTO item_resources VALUES ("Limbo Prime Neuroptics", "Niatain Extract", 2); 

INSERT INTO worlds VALUES ("Earth");
INSERT INTO worlds VALUES ("Venus");
INSERT INTO worlds VALUES ("Mecury");
INSERT INTO worlds VALUES ("Mars");
INSERT INTO worlds VALUES ("Ceres");
INSERT INTO worlds VALUES ("Jupiter");
INSERT INTO worlds VALUES ("Europa");
INSERT INTO worlds VALUES ("Saturn");
INSERT INTO worlds VALUES ("Uranus");
INSERT INTO worlds VALUES ("Sedna");
INSERT INTO worlds VALUES ("Eris");
INSERT INTO worlds VALUES ("Pluto");
INSERT INTO worlds VALUES ("Void");
INSERT INTO worlds VALUES ("Orokin Derelict");
INSERT INTO worlds VALUES ("Neptune");

-- World locations

-- Resource Location
-- resource_location (resource_name, world) 
INSERT INTO resource_location VALUES ("Nano Spores", "Saturn");
INSERT INTO resource_location VALUES ("Nano Spores", "Neptune");
INSERT INTO resource_location VALUES ("Nano Spores", "Eris");
INSERT INTO resource_location VALUES ("Nano Spores", "Orokin Derelict");
INSERT INTO resource_location VALUES ("Orokin Cells" "Saturn");

-- Factions
INSERT INTO factions VALUES ("Grineers");
INSERT INTO factions VALUES ("Infected");
INSERT INTO factions VALUES ("Corpus");

-- Missions
INSERT INTO missions VALUES ("Interception");

-- Mission stats
INSERT INTO mission_stats VALUES ("Interception", "Grinners", 1); 

-- Relics
INSERT INTO relics VALUES ("AXI L2", 3);
INSERT INTO relics VALUES ("AXI L3", 3);

-- Relics Locations
INSERT INTO relic_location VALUES ("AXI L2", "Sedna", "Grineer Shipyar", "Interception");
INSERT INTO relic_location VALUES ("AXI L2", "Sedna", "Grineer Shipyar", "Survival");
INSERT INTO relic_location VALUES ("AXI L3", "Sedna", "Grineer Shipyar", "Interception");
INSERT INTO relic_location VALUES ("AXI L3", "Sedna", "Grineer Shipyar", "Survival");

-- Relic Stats
INSERT INTO relic_stats VALUES ("AXI L2", "Barton Prime Blueprint", "Common", 25.3);
INSERT INTO relic_stats VALUES ("AXI L2", "Nami Skyla Prime Blueprint", "Common", 25.3);
INSERT INTO relic_stats VALUES ("AXI L2", "Orthos Prime Blueprint", "Common", 25.3);
INSERT INTO relic_stats VALUES ("AXI L2", "Limbo Prime Neuroptics", "Rare", 2);
INSERT INTO relic_stats VALUES ("AXI L2", "Tiberon Prime Blueprint", "Uncommon", 11);
INSERT INTO relic_stats VALUES ("AXI L2", "Forma Bluepring", "Uncommon", 11);




