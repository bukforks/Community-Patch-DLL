-- Tech Progression for Bonus Resources (a la Civ 4)

	--- 1

	UPDATE Resources
	SET TechReveal = 'TECH_TRAPPING'
	WHERE Type = 'RESOURCE_DEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

	UPDATE Resources
	SET TechReveal = 'TECH_TRAPPING'
	WHERE Type = 'RESOURCE_BISON'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

	UPDATE Resources
	SET TechReveal = 'TECH_TRAPPING'
	WHERE Type = 'RESOURCE_FISH'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

	UPDATE Resources
	SET TechReveal = 'TECH_ANIMAL_HUSBANDRY'
	WHERE Type = 'RESOURCE_COW'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);
	
	UPDATE Resources
	SET TechReveal = 'TECH_ANIMAL_HUSBANDRY'
	WHERE Type = 'RESOURCE_SHEEP'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

	UPDATE Resources
	SET TechReveal = 'TECH_THE_WHEEL'
	WHERE Type = 'RESOURCE_STONE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

	UPDATE Resources
	SET TechReveal = 'TECH_POTTERY'
	WHERE Type = 'RESOURCE_BANANA'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

	UPDATE Resources
	SET TechReveal = 'TECH_AGRICULTURE'
	WHERE Type = 'RESOURCE_WHEAT'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

	----- 2
	UPDATE Resources
	SET TechReveal = 'TECH_OPTICS'
	WHERE Type = 'RESOURCE_WHALE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_SAILING'
	WHERE Type = 'RESOURCE_PEARLS'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_HORSEBACK_RIDING'
	WHERE Type = 'RESOURCE_GOLD'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_HORSEBACK_RIDING'
	WHERE Type = 'RESOURCE_SILVER'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_HORSEBACK_RIDING'
	WHERE Type = 'RESOURCE_GEMS'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_MASONRY'
	WHERE Type = 'RESOURCE_MARBLE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_TRAPPING'
	WHERE Type = 'RESOURCE_IVORY'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_TRAPPING'
	WHERE Type = 'RESOURCE_FUR'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_DRAMA'
	WHERE Type = 'RESOURCE_DYE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_CALENDAR'
	WHERE Type = 'RESOURCE_SPICES'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_DRAMA'
	WHERE Type = 'RESOURCE_SILK'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_CALENDAR'
	WHERE Type = 'RESOURCE_SUGAR'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_MACHINERY'
	WHERE Type = 'RESOURCE_COTTON'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_CALENDAR'
	WHERE Type = 'RESOURCE_COCOA'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_POTTERY'
	WHERE Type = 'RESOURCE_WINE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_THEOLOGY'
	WHERE Type = 'RESOURCE_INCENSE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_MINING'
	WHERE Type = 'RESOURCE_COPPER'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_MINING'
	WHERE Type = 'RESOURCE_SALT'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_SAILING'
	WHERE Type = 'RESOURCE_CRAB'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_ANIMAL_HUSBANDRY'
	WHERE Type = 'RESOURCE_TRUFFLES'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_CALENDAR'
	WHERE Type = 'RESOURCE_CITRUS'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	----- 3

	UPDATE Resources
	SET TechReveal = 'TECH_TRAPPING'
	WHERE Type = 'RESOURCE_DEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_TRAPPING'
	WHERE Type = 'RESOURCE_BISON'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_TRAPPING'
	WHERE Type = 'RESOURCE_FISH'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_ANIMAL_HUSBANDRY'
	WHERE Type = 'RESOURCE_COW'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);
	
	UPDATE Resources
	SET TechReveal = 'TECH_ANIMAL_HUSBANDRY'
	WHERE Type = 'RESOURCE_SHEEP'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_THE_WHEEL'
	WHERE Type = 'RESOURCE_STONE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_POTTERY'
	WHERE Type = 'RESOURCE_BANANA'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_AGRICULTURE'
	WHERE Type = 'RESOURCE_WHEAT'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_OPTICS'
	WHERE Type = 'RESOURCE_WHALE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_SAILING'
	WHERE Type = 'RESOURCE_PEARLS'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_HORSEBACK_RIDING'
	WHERE Type = 'RESOURCE_GOLD'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_HORSEBACK_RIDING'
	WHERE Type = 'RESOURCE_SILVER'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_HORSEBACK_RIDING'
	WHERE Type = 'RESOURCE_GEMS'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_MASONRY'
	WHERE Type = 'RESOURCE_MARBLE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_TRAPPING'
	WHERE Type = 'RESOURCE_IVORY'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_TRAPPING'
	WHERE Type = 'RESOURCE_FUR'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_DRAMA'
	WHERE Type = 'RESOURCE_DYE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_CALENDAR'
	WHERE Type = 'RESOURCE_SPICES'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_CALENDAR'
	WHERE Type = 'RESOURCE_COCOA'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_DRAMA'
	WHERE Type = 'RESOURCE_SILK'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_CALENDAR'
	WHERE Type = 'RESOURCE_SUGAR'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_MACHINERY'
	WHERE Type = 'RESOURCE_COTTON'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_POTTERY'
	WHERE Type = 'RESOURCE_WINE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_THEOLOGY'
	WHERE Type = 'RESOURCE_INCENSE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_MINING'
	WHERE Type = 'RESOURCE_COPPER'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_MINING'
	WHERE Type = 'RESOURCE_SALT'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_SAILING'
	WHERE Type = 'RESOURCE_CRAB'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_ANIMAL_HUSBANDRY'
	WHERE Type = 'RESOURCE_TRUFFLES'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_CALENDAR'
	WHERE Type = 'RESOURCE_CITRUS'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);
