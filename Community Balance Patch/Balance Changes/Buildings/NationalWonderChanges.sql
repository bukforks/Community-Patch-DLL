-- NATIONAL WONDERS

-- Guilds - now buildable in three Cities, give a bit more stuff
UPDATE BuildingClasses
SET MaxPlayerInstances = '3'
WHERE Type = 'BUILDINGCLASS_WRITERS_GUILD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE BuildingClasses
SET MaxPlayerInstances = '3'
WHERE Type = 'BUILDINGCLASS_ARTISTS_GUILD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE BuildingClasses
SET MaxPlayerInstances = '3'
WHERE Type = 'BUILDINGCLASS_MUSICIANS_GUILD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

-- Reduce flavors for these a bit.
UPDATE Building_Flavors
SET Flavor = '60'
WHERE BuildingType = 'BUILDING_MUSICIANS_GUILD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Building_Flavors
SET Flavor = '50'
WHERE BuildingType = 'BUILDING_ARTISTS_GUILD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Building_Flavors
SET Flavor = '40'
WHERE BuildingType = 'BUILDING_WRITERS_GUILD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

-- National Epic -- Change Name, give art
UPDATE Buildings
SET GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT'
WHERE Type = 'BUILDING_NATIONAL_EPIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

-- Heroic Epic

UPDATE Buildings
SET CitySupplyModifier = '10'
WHERE Type = 'BUILDING_HEROIC_EPIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PrereqTech = 'TECH_IRON_WORKING'
WHERE Type = 'BUILDING_HEROIC_EPIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits)
SELECT 'BUILDING_HEROIC_EPIC' , 'UNIT_GREAT_GENERAL' , '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );



-- National College -- Now called School of Philosophy

UPDATE Buildings
SET GreatWorkSlotType = 'GREAT_WORK_SLOT_LITERATURE'
WHERE Type = 'BUILDING_NATIONAL_COLLEGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET SpecialistType = 'SPECIALIST_SCIENTIST'
WHERE Type = 'BUILDING_NATIONAL_COLLEGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET GreatPeopleRateChange = '2'
WHERE Type = 'BUILDING_NATIONAL_COLLEGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET GreatWorkCount = '1'
WHERE Type = 'BUILDING_NATIONAL_COLLEGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Building_YieldChanges
Set Yield = '5'
WHERE BuildingType = 'BUILDING_NATIONAL_COLLEGE' AND YieldType = 'YIELD_SCIENCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NoUnhappfromXSpecialists = '1'
WHERE Type = 'BUILDING_NATIONAL_COLLEGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

-- East India Co.
UPDATE Buildings
SET ExtraLuxuries = '1'
WHERE Type = 'BUILDING_NATIONAL_TREASURY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET ResourceDiversityModifier = '25'
WHERE Type = 'BUILDING_NATIONAL_TREASURY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Building_ClassesNeededInCity
SET BuildingClassType = 'BUILDINGCLASS_MINT'
WHERE BuildingType = 'BUILDING_NATIONAL_TREASURY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET AdvancedActionGold = '10'
WHERE Type = 'BUILDING_NATIONAL_TREASURY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Circus Maximus

UPDATE Buildings
SET PrereqTech = 'TECH_METAL_CASTING'
WHERE Type = 'BUILDING_CIRCUS_MAXIMUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET UnmoddedHappiness = '0'
WHERE Type = 'BUILDING_CIRCUS_MAXIMUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET Happiness = '2'
WHERE Type = 'BUILDING_CIRCUS_MAXIMUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

INSERT INTO Building_BuildingClassYieldChanges
	(BuildingType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BUILDING_CIRCUS_MAXIMUS', 'BUILDINGCLASS_COLOSSEUM', 'YIELD_GOLD', 2);

-- National Intelligence Agency

UPDATE Buildings
SET AdvancedActionGP = '10'
WHERE Type = 'BUILDING_INTELLIGENCE_AGENCY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Oxford University

-- Ironworks
UPDATE Building_ClassesNeededInCity
Set BuildingClassType = 'BUILDINGCLASS_FORGE'
WHERE BuildingType = 'BUILDING_IRONWORKS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Building_YieldChanges
Set Yield = '10'
WHERE BuildingType = 'BUILDING_IRONWORKS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

INSERT INTO Building_ResourceQuantity
	(BuildingType, ResourceType, Quantity)
VALUES
	('BUILDING_IRONWORKS', 'RESOURCE_IRON', 2);

-- Grand Temple
UPDATE Buildings
SET GreatWorkSlotType = 'GREAT_WORK_SLOT_MUSIC'
WHERE Type = 'BUILDING_GRAND_TEMPLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET GreatWorkCount = '1'
WHERE Type = 'BUILDING_GRAND_TEMPLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

-- Moved NIA

UPDATE Buildings
SET PrereqTech = 'TECH_COMPUTERS'
WHERE Type = 'BUILDING_INTELLIGENCE_AGENCY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

-- Palace Defense Bump

UPDATE Buildings
SET NoUnhappfromXSpecialists = '1'
WHERE Type = 'BUILDING_PALACE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );


UPDATE Buildings
SET Defense = '500'
WHERE Type = 'BUILDING_PALACE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

-- Hermitage Remove Culture Mod
UPDATE Buildings
SET CultureRateModifier = '10'
WHERE Type = 'BUILDING_HERMITAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

-- Oxford Change

UPDATE Buildings
SET FreeTechs = '0'
WHERE Type = 'BUILDING_OXFORD_UNIVERSITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Building_YieldChanges
SET Yield = '3'
WHERE BuildingType = 'BUILDING_OXFORD_UNIVERSITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits)
SELECT 'BUILDING_OXFORD_UNIVERSITY' , 'UNIT_SCIENTIST' , '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

-- Spy Agency
UPDATE Buildings
SET EspionageModifier = '-15'
WHERE Type = 'BUILDING_INTELLIGENCE_AGENCY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

-- Visitor Center
UPDATE Buildings
SET GlobalLandmarksTourismPercent = '25'
WHERE Type = 'BUILDING_TOURIST_CENTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET GlobalGreatWorksTourismModifier = '25'
WHERE Type = 'BUILDING_TOURIST_CENTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET GoldMaintenance = '0'
WHERE Type = 'BUILDING_TOURIST_CENTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET LandmarksTourismPercent = '0'
WHERE Type = 'BUILDING_TOURIST_CENTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );



UPDATE Buildings
SET GreatWorksTourismModifier = '0'
WHERE Type = 'BUILDING_TOURIST_CENTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

INSERT INTO Building_ClassesNeededInCity (BuildingClassType, BuildingType) VALUES
('BUILDINGCLASS_HOTEL', 'BUILDING_TOURIST_CENTER');

-- Building Requirement

DELETE FROM Building_PrereqBuildingClasses
WHERE BuildingType = 'BUILDING_HEROIC_EPIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

DELETE FROM Building_PrereqBuildingClasses
WHERE BuildingType = 'BUILDING_NATIONAL_EPIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

DELETE FROM Building_PrereqBuildingClasses
WHERE BuildingType = 'BUILDING_CIRCUS_MAXIMUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

DELETE FROM Building_PrereqBuildingClasses
WHERE BuildingType = 'BUILDING_NATIONAL_TREASURY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

DELETE FROM Building_PrereqBuildingClasses
WHERE BuildingType = 'BUILDING_NATIONAL_COLLEGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

DELETE FROM Building_PrereqBuildingClasses
WHERE BuildingType = 'BUILDING_IRONWORKS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

DELETE FROM Building_PrereqBuildingClasses
WHERE BuildingType = 'BUILDING_OXFORD_UNIVERSITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

DELETE FROM Building_PrereqBuildingClasses
WHERE BuildingType = 'BUILDING_HERMITAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

DELETE FROM Building_PrereqBuildingClasses
WHERE BuildingType = 'BUILDING_INTELLIGENCE_AGENCY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

DELETE FROM Building_PrereqBuildingClasses
WHERE BuildingType = 'BUILDING_GRAND_TEMPLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

DELETE FROM Building_PrereqBuildingClasses
WHERE BuildingType = 'BUILDING_TOURIST_CENTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

-- Pop Requirement

UPDATE Buildings
SET NationalPopRequired = '20'
WHERE Type = 'BUILDING_HEROIC_EPIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NationalPopRequired = '25'
WHERE Type = 'BUILDING_NATIONAL_EPIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NationalPopRequired = '25'
WHERE Type = 'BUILDING_CIRCUS_MAXIMUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NationalPopRequired = '40'
WHERE Type = 'BUILDING_NATIONAL_TREASURY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NationalPopRequired = '25'
WHERE Type = 'BUILDING_NATIONAL_COLLEGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NationalPopRequired = '40'
WHERE Type = 'BUILDING_IRONWORKS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NationalPopRequired = '40'
WHERE Type = 'BUILDING_OXFORD_UNIVERSITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NationalPopRequired = '45'
WHERE Type = 'BUILDING_HERMITAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NationalPopRequired = '70'
WHERE Type = 'BUILDING_INTELLIGENCE_AGENCY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NationalPopRequired = '35'
WHERE Type = 'BUILDING_GRAND_TEMPLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NationalPopRequired = '70'
WHERE Type = 'BUILDING_TOURIST_CENTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

-- City-Based Cost 

-- Pop Requirement

UPDATE Buildings
SET NumCityCostMod = '10'
WHERE Type = 'BUILDING_HEROIC_EPIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NumCityCostMod = '10'
WHERE Type = 'BUILDING_NATIONAL_EPIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NumCityCostMod = '10'
WHERE Type = 'BUILDING_CIRCUS_MAXIMUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NumCityCostMod = '10'
WHERE Type = 'BUILDING_NATIONAL_TREASURY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NumCityCostMod = '10'
WHERE Type = 'BUILDING_NATIONAL_COLLEGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NumCityCostMod = '10'
WHERE Type = 'BUILDING_IRONWORKS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NumCityCostMod = '10'
WHERE Type = 'BUILDING_OXFORD_UNIVERSITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NumCityCostMod = '10'
WHERE Type = 'BUILDING_HERMITAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NumCityCostMod = '10'
WHERE Type = 'BUILDING_INTELLIGENCE_AGENCY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NumCityCostMod = '10'
WHERE Type = 'BUILDING_GRAND_TEMPLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

UPDATE Buildings
SET NumCityCostMod = '10'
WHERE Type = 'BUILDING_TOURIST_CENTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_WONDERS' AND Value= 1 );

-- NEW

INSERT INTO Building_YieldChangesPerPop
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_HERMITAGE', 'YIELD_CULTURE', 25);

INSERT INTO Building_YieldFromBirth
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_NATIONAL_EPIC', 'YIELD_CULTURE', 15);

INSERT INTO Building_BuildingClassYieldChanges
	(BuildingType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BUILDING_GRAND_TEMPLE', 'BUILDINGCLASS_TEMPLE', 'YIELD_CULTURE', 2),
	('BUILDING_GRAND_TEMPLE', 'BUILDINGCLASS_TEMPLE', 'YIELD_FAITH', 2);

INSERT INTO Building_YieldFromSpyAttack
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_INTELLIGENCE_AGENCY', 'YIELD_SCIENCE', 100),
	('BUILDING_INTELLIGENCE_AGENCY', 'YIELD_GOLD', 100),
	('BUILDING_WHITE_TOWER', 'YIELD_SCIENCE', 40),
	('BUILDING_WHITE_TOWER', 'YIELD_GOLD', 40);

INSERT INTO Building_YieldFromSpyDefense
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_WHITE_TOWER', 'YIELD_SCIENCE', 25),
	('BUILDING_WHITE_TOWER', 'YIELD_GOLD', 25);

INSERT INTO Building_BuildingClassYieldChanges
	(BuildingType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BUILDING_WHITE_TOWER', 'BUILDINGCLASS_CONSTABLE', 'YIELD_CULTURE', 3),
	('BUILDING_WHITE_TOWER', 'BUILDINGCLASS_ARMORY', 'YIELD_CULTURE', 3),
	('BUILDING_WHITE_TOWER', 'BUILDINGCLASS_CASTLE', 'YIELD_CULTURE', 3);

INSERT INTO Building_YieldFromTech
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_OXFORD_UNIVERSITY', 'YIELD_CULTURE', 50);

INSERT INTO Building_GoldenAgeYieldMod
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_NATIONAL_COLLEGE', 'YIELD_SCIENCE', 20);

INSERT INTO Building_WLTKDYieldMod
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_CIRCUS_MAXIMUS', 'YIELD_CULTURE', 10),
	('BUILDING_CIRCUS_MAXIMUS', 'YIELD_GOLD', 10);

INSERT INTO Building_YieldFromConstruction
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_IRONWORKS', 'YIELD_SCIENCE', 25);

INSERT INTO Building_YieldFromPolicyUnlock
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_NATIONAL_EPIC', 'YIELD_GOLDEN_AGE_POINTS', 50);