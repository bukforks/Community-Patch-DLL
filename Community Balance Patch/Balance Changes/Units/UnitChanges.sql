-- CIVILIANS AND GREAT PEOPLE

	-- Moved SS Parts to last 4 techs - makes Science Victory as difficult as other victories.
	UPDATE Units SET PrereqTech = 'TECH_NUCLEAR_FUSION' WHERE Type = 'UNIT_SS_BOOSTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_GLOBALIZATION' WHERE Type = 'UNIT_SS_COCKPIT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Caravans moved to Pottery
	UPDATE Units SET PrereqTech = 'TECH_HORSEBACK_RIDING' WHERE Type = 'UNIT_CARAVAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET MilitarySupport = '0' WHERE Type = 'UNIT_CARAVAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Cargo Ship -- Move to Optics

	UPDATE Units SET PrereqTech = 'TECH_OPTICS' WHERE Type = 'UNIT_CARGO_SHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET MilitarySupport = '0' WHERE Type = 'UNIT_CARGO_SHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	

	-- Settler moved to Pottery
	UPDATE Units SET PrereqTech = 'TECH_POTTERY' WHERE Type = 'UNIT_SETTLER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Unit_Flavors SET Flavor = '25' WHERE UnitType = 'UNIT_SETTLER';

	-- Workers Reduced Work Rate to slow down early growth
	UPDATE Units SET WorkRate = '90' WHERE Type = 'UNIT_WORKER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Great Prophets no longer capturable
	UPDATE Units Set Capture = NULL WHERE Type = 'UNIT_PROPHET' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Great Writer culture boost lowered slightly.

	UPDATE Units SET BaseCultureTurnsToCount = '5' WHERE Type = 'UNIT_WRITER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Writer added scaling bonus for num owned GWS
	UPDATE Units SET ScaleFromNumGWs = '3' WHERE Type = 'UNIT_WRITER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Great Scientist science boost lowered slightly.

	UPDATE Units SET BaseBeakersTurnsToCount = '5' WHERE Type = 'UNIT_SCIENTIST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Admiral movement buff, ability addition
	UPDATE Units SET Moves = '5' WHERE Type = 'UNIT_GREAT_ADMIRAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET NumFreeLux = '2' WHERE Type = 'UNIT_GREAT_ADMIRAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	--Great General Supply Buff
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_GREAT_ADMIRAL' , 'PROMOTION_SUPPLY_BOOST' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_GREAT_GENERAL' , 'PROMOTION_SUPPLY_BOOST' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MONGOLIAN_KHAN' , 'PROMOTION_SUPPLY_BOOST' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	-- Merchant gold boosted, CS ability buff

	UPDATE Units SET NumGoldPerEra = '110' WHERE Type = 'UNIT_MERCHANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Reduced base golden age turns of artist 
	UPDATE Units SET GoldenAgeTurns = '4' WHERE Type = 'UNIT_ARTIST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	-- Writer added scaling bonus for num themed GWs
	UPDATE Units SET ScaleFromNumThemes = '20' WHERE Type = 'UNIT_ARTIST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Engineer production boost nerfed slightly.

	UPDATE Units SET BaseHurry = '100' WHERE Type = 'UNIT_ENGINEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET HurryMultiplier = '20' WHERE Type = 'UNIT_ENGINEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Musician changes
	UPDATE Units SET OneShotTourismPercentOthers = '0' WHERE Type = 'UNIT_MUSICIAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET OneShotTourism = '10' WHERE Type = 'UNIT_MUSICIAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- work boat sight penalty
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_WORKBOAT' , 'PROMOTION_SIGHT_PENALTY' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET BaseSightRange = '1' WHERE Type = 'UNIT_WORKBOAT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Moves = '2' WHERE Type = 'UNIT_WORKBOAT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET MilitarySupport = '0' WHERE Type = 'UNIT_WORKBOAT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units
	SET RequiresFaithPurchaseEnabled = '1'
	WHERE Type = 'UNIT_ARCHAEOLOGIST';

	-- cap for archaeologists
	UPDATE UnitClasses SET MaxPlayerInstances = '3' WHERE Type = 'UNITCLASS_ARCHAEOLOGIST';
--modder please note customs_house_venice still does +2 turns just like custom house, but weird bug i dont ask why.
INSERT INTO Unit_ScalingFromOwnedImprovements
	(UnitType, ImprovementType, Amount)
VALUES
	('UNIT_SCIENTIST', 'IMPROVEMENT_ACADEMY', '10'),
	('UNIT_ENGINEER', 'IMPROVEMENT_MANUFACTORY', '20'),
	('UNIT_MERCHANT', 'IMPROVEMENT_CUSTOMS_HOUSE', '10'),
	('UNIT_MERCHANT', 'IMPROVEMENT_CUSTOMS_HOUSE_VENICE', '10'),
	('UNIT_VENETIAN_MERCHANT',	'IMPROVEMENT_CUSTOMS_HOUSE',	'10'),
	('UNIT_VENETIAN_MERCHANT',	'IMPROVEMENT_CUSTOMS_HOUSE_VENICE',	'10');

INSERT INTO Unit_AITypes
	(UnitType, UnitAIType)
VALUES
	('UNIT_GATLINGGUN', 'UNITAI_DEFENSE'),
	('UNIT_BAZOOKA', 'UNITAI_DEFENSE'),
	('UNIT_MACHINE_GUN', 'UNITAI_DEFENSE'),
	('UNIT_GATLINGGUN', 'UNITAI_RANGED'),
	('UNIT_BAZOOKA', 'UNITAI_RANGED'),
	('UNIT_IRONCLAD', 'UNITAI_EXPLORE_SEA'),
	('UNIT_FRIGATE', 'UNITAI_EXPLORE_SEA'),
	('UNIT_ENGLISH_SHIPOFTHELINE', 'UNITAI_EXPLORE_SEA'),
	('UNIT_BATTLESHIP', 'UNITAI_EXPLORE_SEA'),
	('UNIT_SUBMARINE', 'UNITAI_EXPLORE_SEA'),
	('UNIT_NUCLEAR_SUBMARINE', 'UNITAI_EXPLORE_SEA'),
	('UNIT_MISSILE_CRUISER', 'UNITAI_EXPLORE_SEA'),
	('UNIT_BYZANTINE_DROMON', 'UNITAI_EXPLORE_SEA'),
	('UNIT_GALLEASS', 'UNITAI_EXPLORE_SEA'),
	('UNIT_VENETIAN_GALLEASS', 'UNITAI_EXPLORE_SEA'),
	('UNIT_CRUISER', 'UNITAI_EXPLORE_SEA');

INSERT INTO Missions
	(Type, Description, Help, DisabledHelp, EntityEventType, Time, Target, Build, Sound, HotKey, AltDown, ShiftDown, CtrlDown, HotKeyPriority, HotKeyAlt, AltDownAlt, ShiftDownAlt, CtrlDownAlt, HotKeyPriorityAlt, OrderPriority, Visible, IconIndex, IconAtlas)
VALUES
	('MISSION_FREE_LUXURY', 'TXT_KEY_MISSION_FREE_LUXURY', 'TXT_KEY_MISSION_FREE_LUXURY_HELP', 'TXT_KEY_MISSION_FREE_LUXURY_HELP_DISABLED', 'ENTITY_EVENT_GREAT_EVENT', 20, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 199, 1, 16, 'UNIT_ACTION_ATLAS');

INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_NUCLEAR_MISSILE' , 'PROMOTION_NUCLEAR_SILO' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- All civs start with a pathfinder

--Replace Starting Warrior with a Pathfinder
UPDATE Eras SET StartingDefenseUnits='0' Where Type='ERA_ANCIENT';
UPDATE Eras SET StartingExploreUnits='1' Where Type='ERA_ANCIENT';
