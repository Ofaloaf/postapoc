NDefines = {

NDiplomacy = {
	PRESTIGE_LOSS_ON_SEND_GIFT_DECLINE = 10,	-- OBSOLETE
	PIETY_FROM_CHURCH_GIFTS = 3,				-- OBSOLETE
	BREAK_TRUCE_PRESTIGE_PERC_COST = 0.5,		-- Percent of current prestige lost before the base prestige cost (below)
	BREAK_TRUCE_PRESTIGE_COST = 200,			-- Base Prestige cost for breaking a truce
	MONTHS_PER_SUCCESSION_CB = 60,				-- Number of months a succession CB lasts
	ATTACKING_SOMEONE_CRUSADING_PIETY_COST = 40, -- Piety hit for attacking someone crusading
	ATTACKING_SOMEONE_DEFENDING_AGAINST_OTHER_RELIGIOUS_GROUP_PIETY_COST = 100,		-- Piety hit for attacking someone who is defending against other religious group
	ATTACKER_CALL_DECLINE_COST = 25, 			-- Prestige cost for refusing to join an offensive war
	DEFENDER_CALL_DECLINE_COST = 100, 			-- Prestige cost for refusing to join a defensive war
	TRIBAL_VASSAL_CALL_DECLINE_COST_FACTOR = 3.0, -- Prestige cost multiplier for tribal vassals
	PAPAL_INVEST_PIETY_COST_MULT = 0.5, 		-- The effect of Papal investiture on the piety cost of the special Papal actions
	SHORT_REIGN_YEARS_END = 9,
	LONG_REIGN_YEARS_START = 10,
	SHORT_REIGN_OPINION_MULT = 2,				-- Opinion penalty multiplier to short reign years
	DOW_ON_ALLY_PRESTIGE_COST = 50,
	MINIMUM_SEND_GIFT_COST = 20,
	SEND_GIFT_INCOME_SCALEFACTOR = 24, 
	RELEASE_PRISONER_PIETY = 5,
	USURP_TITLE_PRESTIGE_MULT = 0.25, 			-- Multiplier on Creation Prestige
	
	DEMESNE_BASE_MAX_SIZE = 1.0,				-- Base Max Demesne Size
	DEMESNE_MAX_SIZE_BARON_MULT = 1.0, 			-- Extra Max Demesne Size from the ruler's rank
	DEMESNE_MAX_SIZE_COUNT_MULT = 1.0, 			-- Extra Max Demesne Size from the ruler's rank
	DEMESNE_MAX_SIZE_DUKE_MULT = 1.0,			-- Extra Max Demesne Size from the ruler's rank
	DEMESNE_MAX_SIZE_KING_MULT = 3.0,			-- Extra Max Demesne Size from the ruler's rank
	DEMESNE_MAX_SIZE_EMPEROR_MULT = 4.0,		-- Extra Max Demesne Size from the ruler's rank
	DEMESNE_MAX_SIZE_GREAT_DUKE_BONUS = 1.0,	-- Extra Max Demesne Size for Dukes with more than one Duchy
	DEMESNE_MAX_SIZE_STEWARDSHIP_MULT = 0.15,	-- Extra Max Demesne Size from ruler and spouse stewardship
	DEMESNE_MAX_SIZE_PATRICIAN = 1.0,			-- Extra Max Demesne Size for Patricians (Tier effects do no not apply to Patricians!)
	DEMESNE_MAX_SIZE_PATRICIAN_DOGE = 1.0,		-- Extra Max Demesne Size for a Patrician Doge (Tier effects do no not apply to Patricians!)
	GAVELKIND_MAX_SIZE_BONUS = 0.30,			-- Max demesne size bonus from Gavelkind
	DEMESNE_MAX_SIZE_JAIN_BONUS = 3,			-- Followers of the Jain religion have extra demesne
	DEMESNE_MAX_SIZE_TRIBAL_BONUS = 2,			-- All rulers with tribal holdings as their capital have larger demesnes
	
	VASSAL_BASE_LIMIT = 1.0,					-- Base Vassal Limit
	VASSAL_LIMIT_DUKE_MULT = 10.0, 				-- Extra Vassal Limit from the ruler's rank
	VASSAL_LIMIT_KING_MULT = 20.0, 				-- Extra Vassal Limit from the ruler's rank
	VASSAL_LIMIT_EMPEROR_MULT = 30.0, 			-- Extra Vassal Limit from the ruler's rank
	VASSAL_LIMIT_GREAT_DUKE_BONUS = 5.0, 		-- Extra Vassal Limit for Dukes with more than one Duchy
	VASSAL_LIMIT_DIPLOMACY_MULT = 0.3,			-- Extra Vasal Limit from ruler and spouse diplomacy
	VASSAL_LIMIT_TRIBAL_BONUS = -10,			-- All rulers with tribal holdings as their capital have smaller demesnes
	VASSAL_LIMIT_DECADENCE_MULTIPLIER = 0.25,	-- Negative modifier, multiplied with the current decadence.
	VASSAL_LIMIT_LEVY_MULTIPLIER = 1,			-- Used for levy penalty calculation for being over vassal limit.
	VASSAL_LIMIT_LEVY_BASE = 4,					-- Used for levy penalty calculation for being over vassal limit.
	VASSAL_LIMIT_TAX_MULTIPLIER = 1,			-- Used for tax penalty calculation for being over vassal limit.
	VASSAL_LIMIT_TAX_BASE = 4,					-- Used for tax penalty calculation for being over vassal limit.
	VASSAL_LIMIT_COUNT_BARONS = 0,				-- If set to 1, baron-tier vassals will also count towards vassal limit.
	
	DIPLO_FRIEND_OPINION_THRESHOLD = 40,		-- OBSOLETE
	DIPLO_RIVAL_OPINION_THRESHOLD = -40,		-- OBSOLETE
	OBJECTIVE_DISCARD_WEIGHT_THRESHOLD = 0.05,	-- AI will not pick ambitions or plots below this evaluated weight
	CROWN_LAW_REVOLTRISK_INCREMENT = 10,		-- Revoltrisk reduction/decrease due to crown laws
	MAX_DUCHIES_LEGALLY_HELD = 2,				-- Max duchies that a king or above can hold before vassals start getting angry
	MAX_ELECTOR_TITLES_LEGALLY_HELD = 1,		-- Max elector titles that a king or above can hold before vassals start getting angry
	ASSASSINATION_COST_RANK_MULT = 100,			-- Additional cost for assassinations multiplied by rank (count = 1, emperor = 4). Also applies to children of rulers.
	WOMEN_INHERIT_PRESSED_CLAIMS = 1,			-- If set to 1, they will get pressed claims on their parents' titles
	BASTARDS_INHERIT_PRESSED_CLAIMS = 1,		-- If set to 1, they will get pressed claims on their parents' titles
	MUSLIM_LAW_CHANGE_PIETY_COST = 50,			-- Piety cost for Muslims when changing normal demesne laws
	MUSLIM_CROWN_LAW_CHANGE_PIETY_COST = 100,	-- Piety cost for Muslims when changing Crown laws
	INTER_MUSLIM_WAR_MONTHLY_PIETY_COST = 2,  	-- Monthly Piety cost for Muslims who are primary attackers against a ruler of the same religion (not civil wars)
	MUSLIM_TEMPLE_HOLDING_MONTHLY_PIETY = 0.2, 	-- Monthly Piety for Muslims for each Temple holding in the demesne
	DOWRY_MULTIPLIER = 1.0,						-- The Dowry cost for a Patrician is prestige gain from marriage * this
	PAGAN_PEACE_MONTHS = 24,					-- Months before the Peace Prestige loss kicks in for certain Pagan religions
	PAGAN_PEACE_MONTHLY_PRESTIGE_LOSS = 2.0,	-- Prestige loss for being at peace, for certain Pagan religions
	PRESTIGE_OPINION_DIV = 100,					-- Divider for prestige to vassal opinion (5x higher effect for negative prestige)
	PRESTIGE_OPINION_MAX = 20,					-- Max opinion impact of prestige (positive OR negative)
	PIETY_OPINION_DIV = 25,						-- Divider for piety to church opinion
	PIETY_OPINION_MAX = 20,						-- Max opinion impact of piety (positive OR negative)	
	MIN_PREP_INV_TARGET_HOLDINGS = 9,			-- The target must control at least this many holdings within the target kingdom to be a valid prepared invasion target
	MAX_PREP_INV_TARGET_HOLDINGS = 40,			-- The target must control at the most this many holdings within the target kingdom to be a valid prepared invasion target
	MAX_PREP_INV_ATTACKER_HOLDINGS = 40,		-- The attacker must have fewer Holdings than this in the realm (disallow Prepared Invasions for rulers who are already very powerful)
	PREP_INV_REQ_PRESTIGE = 1000,				-- Need to have this much Prestige to prepare an invasion
	BASE_REVOLT_CHANCE_MOD = 500,				-- Pre Old Gods rebel spawn chance modifier (fires on_rebel_revolt) : lower means fewer revolts. MUST NOT BE ZERO.
	TOG_REVOLT_CHANCE_MOD = 200,				-- Old Gods rebel spawn chance modifier (fires on_rebel_revolt) : lower means fewer revolts. MUST NOT BE ZERO. 
	JAIN_LIEGE_OPINION_BONUS = 30,				-- Jain Lieges Get Vassal Opinion Bonus
	MAX_DIPLO_DISTANCE = 700,					-- Most diplomacy is disallowed if two rulers are too distant
	MAX_DIPLO_DISTANCE_SAME_RELIGION = 100,		-- Bonus to max diplo distance for being of the same religion
	MAX_DIPLO_DISTANCE_SAME_RELIGION_GROUP = 0, -- Bonus to max diplo distance for being of the same religion group
	MAX_DIPLO_DISTANCE_SAME_CULTURE = 100, 		-- Bonus to max diplo distance for being of the same culture
	MAX_DIPLO_DISTANCE_SAME_CULTURE_GROUP = 100, -- Bonus to max diplo distance for being of the same culture group
	
	IMPRISON_CHARACTER_INTERACTION_MONEY = 0,
	IMPRISON_CHARACTER_INTERACTION_PIETY = 10,
	IMPRISON_CHARACTER_INTERACTION_PRESTIGE = 0,
	IMPRISON_CHARACTER_INTERACTION_THRESHOLD_FOR_NO = 0,
	IMPRISON_CHARACTER_INTERACTION_THRESHOLD_FOR_YES = 0,
	IMPRISON_CHARACTER_INTERACTION_MUST_HAVE_COST = 0,				-- Is having prestige/piety >= cost required for this action?
	IMPRISON_CHARACTER_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	RELEASE_FROM_PRISON_INTERACTION_MONEY = 0,
	RELEASE_FROM_PRISON_INTERACTION_PIETY = 0,
	RELEASE_FROM_PRISON_INTERACTION_PRESTIGE = 0,
	RELEASE_FROM_PRISON_INTERACTION_THRESHOLD_FOR_NO = 0,
	RELEASE_FROM_PRISON_INTERACTION_THRESHOLD_FOR_YES = 0,
	RELEASE_FROM_PRISON_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	RELEASE_FROM_PRISON_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	EXECUTE_IMPRISONED_INTERACTION_MONEY = 0,
	EXECUTE_IMPRISONED_INTERACTION_PIETY = 20,
	EXECUTE_IMPRISONED_INTERACTION_PRESTIGE = 0,
	EXECUTE_IMPRISONED_INTERACTION_THRESHOLD_FOR_NO = 0,
	EXECUTE_IMPRISONED_INTERACTION_THRESHOLD_FOR_YES = 0,
	EXECUTE_IMPRISONED_INTERACTION_MUST_HAVE_COST = 0,				-- Is having prestige/piety >= cost required for this action?
	EXECUTE_IMPRISONED_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	EXILE_IMPRISONED_INTERACTION_MONEY = 0,
	EXILE_IMPRISONED_INTERACTION_PIETY = 10,
	EXILE_IMPRISONED_INTERACTION_PRESTIGE = 0,
	EXILE_IMPRISONED_INTERACTION_THRESHOLD_FOR_NO = 0,
	EXILE_IMPRISONED_INTERACTION_THRESHOLD_FOR_YES = 0,
	EXILE_IMPRISONED_INTERACTION_MUST_HAVE_COST = 0,				-- Is having prestige/piety >= cost required for this action?
	EXILE_IMPRISONED_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	RETIRE_TO_MONASTERY_INTERACTION_MONEY = 0,
	RETIRE_TO_MONASTERY_INTERACTION_PIETY = 0,
	RETIRE_TO_MONASTERY_INTERACTION_PRESTIGE = 0,
	RETIRE_TO_MONASTERY_INTERACTION_THRESHOLD_FOR_NO = 0,
	RETIRE_TO_MONASTERY_INTERACTION_THRESHOLD_FOR_YES = 0,
	RETIRE_TO_MONASTERY_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	RETIRE_TO_MONASTERY_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	DEMAND_RELIGIOUS_CONVERSION_INTERACTION_MONEY = 0,
	DEMAND_RELIGIOUS_CONVERSION_INTERACTION_PIETY = 0,
	DEMAND_RELIGIOUS_CONVERSION_INTERACTION_PRESTIGE = 0,
	DEMAND_RELIGIOUS_CONVERSION_INTERACTION_THRESHOLD_FOR_NO = 0,
	DEMAND_RELIGIOUS_CONVERSION_INTERACTION_THRESHOLD_FOR_YES = 0,
	DEMAND_RELIGIOUS_CONVERSION_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	DEMAND_RELIGIOUS_CONVERSION_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	INVITE_TO_COURT_INTERACTION_MONEY = 0,
	INVITE_TO_COURT_INTERACTION_PIETY = 0,
	INVITE_TO_COURT_INTERACTION_PRESTIGE = 0,
	INVITE_TO_COURT_INTERACTION_THRESHOLD_FOR_NO = 0,
	INVITE_TO_COURT_INTERACTION_THRESHOLD_FOR_YES = 0,
	INVITE_TO_COURT_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	INVITE_TO_COURT_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	TRANSFER_VASSAL_INTERACTION_MONEY = 0,
	TRANSFER_VASSAL_INTERACTION_PIETY = 0,
	TRANSFER_VASSAL_INTERACTION_PRESTIGE = 0,
	TRANSFER_VASSAL_INTERACTION_THRESHOLD_FOR_NO = 0,
	TRANSFER_VASSAL_INTERACTION_THRESHOLD_FOR_YES = 0,
	TRANSFER_VASSAL_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	TRANSFER_VASSAL_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
		
	CLAIM_TITLE_INTERACTION_MONEY = 0,
	CLAIM_TITLE_INTERACTION_PIETY = 0,
	CLAIM_TITLE_INTERACTION_PRESTIGE = 0,
	CLAIM_TITLE_INTERACTION_THRESHOLD_FOR_NO = 0,
	CLAIM_TITLE_INTERACTION_THRESHOLD_FOR_YES = 0,
	CLAIM_TITLE_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	CLAIM_TITLE_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	REVOKE_TITLE_INTERACTION_MONEY = 0,
	REVOKE_TITLE_INTERACTION_PIETY = 0,
	REVOKE_TITLE_INTERACTION_PRESTIGE = 0,
	REVOKE_TITLE_INTERACTION_THRESHOLD_FOR_NO = 25,
	REVOKE_TITLE_INTERACTION_THRESHOLD_FOR_YES = 75,
	REVOKE_TITLE_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	REVOKE_TITLE_INTERACTION_ENABLED = 1,						-- Should this action be used at all?	
	
	AWARD_HONORARY_TITLE_INTERACTION_MONEY = 0,
	AWARD_HONORARY_TITLE_INTERACTION_PIETY = 0,
	AWARD_HONORARY_TITLE_INTERACTION_PRESTIGE = 0,
	AWARD_HONORARY_TITLE_INTERACTION_THRESHOLD_FOR_NO = 0,
	AWARD_HONORARY_TITLE_INTERACTION_THRESHOLD_FOR_YES = 0,
	AWARD_HONORARY_TITLE_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	AWARD_HONORARY_TITLE_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	REVOKE_HONORARY_TITLE_INTERACTION_MONEY = 0,
	REVOKE_HONORARY_TITLE_INTERACTION_PIETY = 0,
	REVOKE_HONORARY_TITLE_INTERACTION_PRESTIGE = 0,
	REVOKE_HONORARY_TITLE_INTERACTION_THRESHOLD_FOR_NO = 0,
	REVOKE_HONORARY_TITLE_INTERACTION_THRESHOLD_FOR_YES = 0,
	REVOKE_HONORARY_TITLE_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	REVOKE_HONORARY_TITLE_INTERACTION_ENABLED = 1,						-- Should this action be used at all?	
	
	SEND_ASSASSIN_INTERACTION_MONEY = 50,
	SEND_ASSASSIN_INTERACTION_PIETY = 0,
	SEND_ASSASSIN_INTERACTION_PRESTIGE = 0,
	SEND_ASSASSIN_INTERACTION_THRESHOLD_FOR_NO = 0,
	SEND_ASSASSIN_INTERACTION_THRESHOLD_FOR_YES = 0,
	SEND_ASSASSIN_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	SEND_ASSASSIN_INTERACTION_ENABLED = 0,						-- Should this action be used at all?
	
	DECLARE_WAR_INTERACTION_MONEY = 0,
	DECLARE_WAR_INTERACTION_PIETY = 0,
	DECLARE_WAR_INTERACTION_PRESTIGE = 0,
	DECLARE_WAR_INTERACTION_THRESHOLD_FOR_NO = 0,
	DECLARE_WAR_INTERACTION_THRESHOLD_FOR_YES = 0,
	DECLARE_WAR_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	DECLARE_WAR_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	OFFER_PEACE_INTERACTION_MONEY = 0,
	OFFER_PEACE_INTERACTION_PIETY = 0,
	OFFER_PEACE_INTERACTION_PRESTIGE = 0,
	OFFER_PEACE_INTERACTION_THRESHOLD_FOR_NO = 0,
	OFFER_PEACE_INTERACTION_THRESHOLD_FOR_YES = 0,
	OFFER_PEACE_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	OFFER_PEACE_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	SEND_GIFT_INTERACTION_MONEY = 0,
	SEND_GIFT_INTERACTION_PIETY = 0,
	SEND_GIFT_INTERACTION_PRESTIGE = 0,
	SEND_GIFT_INTERACTION_THRESHOLD_FOR_NO = 0,
	SEND_GIFT_INTERACTION_THRESHOLD_FOR_YES = 0,
	SEND_GIFT_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	SEND_GIFT_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
		
	OFFER_VASSALIZATION_INTERACTION_MONEY = 0,
	OFFER_VASSALIZATION_INTERACTION_PIETY = 0,
	OFFER_VASSALIZATION_INTERACTION_PRESTIGE = 0,
	OFFER_VASSALIZATION_INTERACTION_THRESHOLD_FOR_NO = 0,
	OFFER_VASSALIZATION_INTERACTION_THRESHOLD_FOR_YES = 0,
	OFFER_VASSALIZATION_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	OFFER_VASSALIZATION_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	ASK_FOR_VASSALIZATION_INTERACTION_MONEY = 0,
	ASK_FOR_VASSALIZATION_INTERACTION_PIETY = 0,
	ASK_FOR_VASSALIZATION_INTERACTION_PRESTIGE = 0,
	ASK_FOR_VASSALIZATION_INTERACTION_THRESHOLD_FOR_NO = 0,
	ASK_FOR_VASSALIZATION_INTERACTION_THRESHOLD_FOR_YES = 0,
	ASK_FOR_VASSALIZATION_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	ASK_FOR_VASSALIZATION_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	ARRANGE_BETROTHAL_INTERACTION_MONEY = 0,
	ARRANGE_BETROTHAL_INTERACTION_PIETY = 0,
	ARRANGE_BETROTHAL_INTERACTION_PRESTIGE = 0,
	ARRANGE_BETROTHAL_INTERACTION_THRESHOLD_FOR_NO = 0,
	ARRANGE_BETROTHAL_INTERACTION_THRESHOLD_FOR_YES = 0,
	ARRANGE_BETROTHAL_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	ARRANGE_BETROTHAL_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	BREAK_BETROTHAL_INTERACTION_MONEY = 0,
	BREAK_BETROTHAL_INTERACTION_PIETY = 0,
	BREAK_BETROTHAL_INTERACTION_PRESTIGE = 0,
	BREAK_BETROTHAL_INTERACTION_THRESHOLD_FOR_NO = 0,
	BREAK_BETROTHAL_INTERACTION_THRESHOLD_FOR_YES = 0,
	BREAK_BETROTHAL_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	BREAK_BETROTHAL_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	OFFER_SUCCESSION_MARRIGE_INTERACTION_MONEY = 0,
	OFFER_SUCCESSION_MARRIGE_INTERACTION_PIETY = 0,
	OFFER_SUCCESSION_MARRIGE_INTERACTION_PRESTIGE = 0,
	OFFER_SUCCESSION_MARRIGE_INTERACTION_THRESHOLD_FOR_NO = 0,
	OFFER_SUCCESSION_MARRIGE_INTERACTION_THRESHOLD_FOR_YES = 0,
	OFFER_SUCCESSION_MARRIGE_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	OFFER_SUCCESSION_MARRIGE_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	OFFER_MARRIGE_INTERACTION_MONEY = 0,
	OFFER_MARRIGE_INTERACTION_PIETY = 0,
	OFFER_MARRIGE_INTERACTION_PRESTIGE = 0,
	OFFER_MARRIGE_INTERACTION_THRESHOLD_FOR_NO = 0,
	OFFER_MARRIGE_INTERACTION_THRESHOLD_FOR_YES = 0,
	OFFER_MARRIGE_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	OFFER_MARRIGE_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	RANSOM_CHARACTER_INTERACTION_MONEY = 0,
	RANSOM_CHARACTER_INTERACTION_PIETY = 0,
	RANSOM_CHARACTER_INTERACTION_PRESTIGE = 0,
	RANSOM_CHARACTER_INTERACTION_THRESHOLD_FOR_NO = 0,
	RANSOM_CHARACTER_INTERACTION_THRESHOLD_FOR_YES = 0,
	RANSOM_CHARACTER_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	RANSOM_CHARACTER_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	EDUCATE_CHARACTER_INTERACTION_MONEY = 0,
	EDUCATE_CHARACTER_INTERACTION_PIETY = 0,
	EDUCATE_CHARACTER_INTERACTION_PRESTIGE = 0,
	EDUCATE_CHARACTER_INTERACTION_THRESHOLD_FOR_NO = 0,
	EDUCATE_CHARACTER_INTERACTION_THRESHOLD_FOR_YES = 0,
	EDUCATE_CHARACTER_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	EDUCATE_CHARACTER_INTERACTION_ENABLED = 1,						-- Should this action be used at all?

	ABANDON_AMBITION_INTERACTION_MONEY = 0,
	ABANDON_AMBITION_INTERACTION_PIETY = 0,
	ABANDON_AMBITION_INTERACTION_PRESTIGE = 0,
	ABANDON_AMBITION_INTERACTION_THRESHOLD_FOR_NO = 0,
	ABANDON_AMBITION_INTERACTION_THRESHOLD_FOR_YES = 0,
	ABANDON_AMBITION_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	ABANDON_AMBITION_INTERACTION_ENABLED = 1,						-- Should this action be used at all?

	STOP_BACKING_AMBITION_INTERACTION_MONEY = 0,
	STOP_BACKING_AMBITION_INTERACTION_PIETY = 0,
	STOP_BACKING_AMBITION_INTERACTION_PRESTIGE = 0,
	STOP_BACKING_AMBITION_INTERACTION_THRESHOLD_FOR_NO = 25,
	STOP_BACKING_AMBITION_INTERACTION_THRESHOLD_FOR_YES = 75,
	STOP_BACKING_AMBITION_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	STOP_BACKING_AMBITION_INTERACTION_ENABLED = 1,						-- Should this action be used at all?	

	JOIN_AMBITION_INTERACTION_MONEY = 0,
	JOIN_AMBITION_INTERACTION_PIETY = 0,
	JOIN_AMBITION_INTERACTION_PRESTIGE = 0,
	JOIN_AMBITION_INTERACTION_THRESHOLD_FOR_NO = 0,
	JOIN_AMBITION_INTERACTION_THRESHOLD_FOR_YES = 0,
	JOIN_AMBITION_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	JOIN_AMBITION_INTERACTION_ENABLED = 1,						-- Should this action be used at all?

	GRANT_LANDED_TITLE_INTERACTION_MONEY = 0,
	GRANT_LANDED_TITLE_INTERACTION_PIETY = 0,
	GRANT_LANDED_TITLE_INTERACTION_PRESTIGE = 0,
	GRANT_LANDED_TITLE_INTERACTION_THRESHOLD_FOR_NO = 0,
	GRANT_LANDED_TITLE_INTERACTION_THRESHOLD_FOR_YES = 0,
	GRANT_LANDED_TITLE_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	GRANT_LANDED_TITLE_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	GRANT_VICE_ROYALTY_INTERACTION_MONEY = 0,
	GRANT_VICE_ROYALTY_INTERACTION_PIETY = 0,
	GRANT_VICE_ROYALTY_INTERACTION_PRESTIGE = 0,
	GRANT_VICE_ROYALTY_INTERACTION_THRESHOLD_FOR_NO = 0,
	GRANT_VICE_ROYALTY_INTERACTION_THRESHOLD_FOR_YES = 0,
	GRANT_VICE_ROYALTY_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	GRANT_VICE_ROYALTY_INTERACTION_ENABLED = 1,						-- Should this action be used at all?

	APPOINT_TO_OFFICE_INTERACTION_MONEY = 0,
	APPOINT_TO_OFFICE_INTERACTION_PIETY = 0,
	APPOINT_TO_OFFICE_INTERACTION_PRESTIGE = 0,
	APPOINT_TO_OFFICE_INTERACTION_THRESHOLD_FOR_NO = 0,
	APPOINT_TO_OFFICE_INTERACTION_THRESHOLD_FOR_YES = 0,
	APPOINT_TO_OFFICE_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	APPOINT_TO_OFFICE_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	RESIGN_FROM_OFFICE_INTERACTION_MONEY = 0,
	RESIGN_FROM_OFFICE_INTERACTION_PIETY = 0,
	RESIGN_FROM_OFFICE_INTERACTION_PRESTIGE = 0,
	RESIGN_FROM_OFFICE_INTERACTION_THRESHOLD_FOR_NO = 0,
	RESIGN_FROM_OFFICE_INTERACTION_THRESHOLD_FOR_YES = 0,
	RESIGN_FROM_OFFICE_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	RESIGN_FROM_OFFICE_INTERACTION_ENABLED = 1,						-- Should this action be used at all?

	ASK_FOR_INVASION_INTERACTION_MONEY = 0,
	ASK_FOR_INVASION_INTERACTION_PIETY = 500,
	ASK_FOR_INVASION_INTERACTION_PRESTIGE = 0,
	ASK_FOR_INVASION_INTERACTION_THRESHOLD_FOR_NO = 50,
	ASK_FOR_INVASION_INTERACTION_THRESHOLD_FOR_YES = 150,
	ASK_FOR_INVASION_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	ASK_FOR_INVASION_INTERACTION_ENABLED = 1,						-- Should this action be used at all?	

	ASK_FOR_DIVORCE_INTERACTION_MONEY = 0,
	ASK_FOR_DIVORCE_INTERACTION_PIETY = 100,
	ASK_FOR_DIVORCE_INTERACTION_PRESTIGE = 0,
	ASK_FOR_DIVORCE_INTERACTION_THRESHOLD_FOR_NO = 35,
	ASK_FOR_DIVORCE_INTERACTION_THRESHOLD_FOR_YES = 75,
	ASK_FOR_DIVORCE_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	ASK_FOR_DIVORCE_INTERACTION_ENABLED = 1,						-- Should this action be used at all?	
	
	DIVORCE_INTERACTION_MONEY = 1.0, 										-- Multiplier of yearly income
	DIVORCE_INTERACTION_PIETY = 0,
	DIVORCE_INTERACTION_PRESTIGE = 0,
	DIVORCE_INTERACTION_THRESHOLD_FOR_NO = 0,
	DIVORCE_INTERACTION_THRESHOLD_FOR_YES = 0,
	DIVORCE_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	DIVORCE_INTERACTION_ENABLED = 1,						-- Should this action be used at all?
	
	ASK_FOR_EXCOMMUNICATION_INTERACTION_MONEY = 0,
	ASK_FOR_EXCOMMUNICATION_INTERACTION_PIETY = 100,
	ASK_FOR_EXCOMMUNICATION_INTERACTION_PRESTIGE = 0,
	ASK_FOR_EXCOMMUNICATION_INTERACTION_THRESHOLD_FOR_NO = 60,
	ASK_FOR_EXCOMMUNICATION_INTERACTION_THRESHOLD_FOR_YES = 150,
	ASK_FOR_EXCOMMUNICATION_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	ASK_FOR_EXCOMMUNICATION_INTERACTION_ENABLED = 1,						-- Should this action be used at all?		

	CALL_ALLY_INTERACTION_MONEY = 0,
	CALL_ALLY_INTERACTION_PIETY = 0,
	CALL_ALLY_INTERACTION_PRESTIGE = 0,
	CALL_ALLY_INTERACTION_THRESHOLD_FOR_NO = 0,
	CALL_ALLY_INTERACTION_THRESHOLD_FOR_YES = 75,
	CALL_ALLY_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	CALL_ALLY_INTERACTION_ENABLED = 1,						-- Should this action be used at all?		
	
	ASK_TO_LIFT_EXCOMMUNICATION_INTERACTION_MONEY = 0,
	ASK_TO_LIFT_EXCOMMUNICATION_INTERACTION_PIETY = 50,
	ASK_TO_LIFT_EXCOMMUNICATION_INTERACTION_PRESTIGE = 0,
	ASK_TO_LIFT_EXCOMMUNICATION_INTERACTION_THRESHOLD_FOR_NO = 50,
	ASK_TO_LIFT_EXCOMMUNICATION_INTERACTION_THRESHOLD_FOR_YES = 150,
	ASK_TO_LIFT_EXCOMMUNICATION_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	ASK_TO_LIFT_EXCOMMUNICATION_INTERACTION_ENABLED = 1,						-- Should this action be used at all?		
	
	ASK_TO_RANSOM_CHARACTER_INTERACTION_MONEY = 0,
	ASK_TO_RANSOM_CHARACTER_INTERACTION_PIETY = 0,
	ASK_TO_RANSOM_CHARACTER_INTERACTION_PRESTIGE = 0,
	ASK_TO_RANSOM_CHARACTER_INTERACTION_THRESHOLD_FOR_NO = 0,
	ASK_TO_RANSOM_CHARACTER_INTERACTION_THRESHOLD_FOR_YES = 0,
	ASK_TO_RANSOM_CHARACTER_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	ASK_TO_RANSOM_CHARACTER_INTERACTION_ENABLED = 1,						-- Should this action be used at all?		
	
	ASK_TO_JOIN_WAR_INTERACTION_MONEY = 0,
	ASK_TO_JOIN_WAR_INTERACTION_PIETY = 0,
	ASK_TO_JOIN_WAR_INTERACTION_PRESTIGE = 0,
	ASK_TO_JOIN_WAR_INTERACTION_THRESHOLD_FOR_NO = 0,
	ASK_TO_JOIN_WAR_INTERACTION_THRESHOLD_FOR_YES = 0,
	ASK_TO_JOIN_WAR_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	ASK_TO_JOIN_WAR_INTERACTION_ENABLED = 1,						-- Should this action be used at all?		
	
	RELEASE_VASSAL_INTERACTION_MONEY = 0,
	RELEASE_VASSAL_INTERACTION_PIETY = 0,
	RELEASE_VASSAL_INTERACTION_PRESTIGE = 0,
	RELEASE_VASSAL_INTERACTION_THRESHOLD_FOR_NO = 0,
	RELEASE_VASSAL_INTERACTION_THRESHOLD_FOR_YES = 0,
	RELEASE_VASSAL_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	RELEASE_VASSAL_INTERACTION_ENABLED = 1,						-- Should this action be used at all?		
	
	ASK_TO_EMBARGO_INTERACTION_MONEY = 0,
	ASK_TO_EMBARGO_INTERACTION_PIETY = 0,
	ASK_TO_EMBARGO_INTERACTION_PRESTIGE = 0,
	ASK_TO_EMBARGO_INTERACTION_THRESHOLD_FOR_NO = 0,
	ASK_TO_EMBARGO_INTERACTION_THRESHOLD_FOR_YES = 0,
	ASK_TO_EMBARGO_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	ASK_TO_EMBARGO_INTERACTION_ENABLED = 1,						-- Should this action be used at all?		
	
	PREPARE_INVASION_INTERACTION_MONEY = 0,
	PREPARE_INVASION_INTERACTION_PIETY = 0,
	PREPARE_INVASION_INTERACTION_PRESTIGE = 500,
	PREPARE_INVASION_INTERACTION_THRESHOLD_FOR_NO = 0,
	PREPARE_INVASION_INTERACTION_THRESHOLD_FOR_YES = 0,
	PREPARE_INVASION_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	PREPARE_INVASION_INTERACTION_ENABLED = 1,						-- Should this action be used at all?		
	
	MAKE_CONSORT_INTERACTION_MONEY = 0,
	MAKE_CONSORT_INTERACTION_PIETY = 0,
	MAKE_CONSORT_INTERACTION_PRESTIGE = 0,
	MAKE_CONSORT_INTERACTION_THRESHOLD_FOR_NO = 0,
	MAKE_CONSORT_INTERACTION_THRESHOLD_FOR_YES = 0,
	MAKE_CONSORT_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	MAKE_CONSORT_INTERACTION_ENABLED = 1,						-- Should this action be used at all?		
	
	DISMISS_CONSORT_INTERACTION_MONEY = 0,
	DISMISS_CONSORT_INTERACTION_PIETY = 0,
	DISMISS_CONSORT_INTERACTION_PRESTIGE = 0,
	DISMISS_CONSORT_INTERACTION_THRESHOLD_FOR_NO = 0,
	DISMISS_CONSORT_INTERACTION_THRESHOLD_FOR_YES = 0,
	DISMISS_CONSORT_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	DISMISS_CONSORT_INTERACTION_ENABLED = 1,						-- Should this action be used at all?		
	
	RETRACT_VASSAL_INTERACTION_MONEY = 0,
	RETRACT_VASSAL_INTERACTION_PIETY = 0,
	RETRACT_VASSAL_INTERACTION_PRESTIGE = 0,
	RETRACT_VASSAL_INTERACTION_THRESHOLD_FOR_NO = 25,
	RETRACT_VASSAL_INTERACTION_THRESHOLD_FOR_YES = 75,
	RETRACT_VASSAL_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	RETRACT_VASSAL_INTERACTION_ENABLED = 1,						-- Should this action be used at all?		
	
	ASK_FOR_MONEY_INTERACTION_MONEY = 0,
	ASK_FOR_MONEY_INTERACTION_PIETY = 100,
	ASK_FOR_MONEY_INTERACTION_PRESTIGE = 0,
	ASK_FOR_MONEY_INTERACTION_THRESHOLD_FOR_NO = 50,
	ASK_FOR_MONEY_INTERACTION_THRESHOLD_FOR_YES = 150,
	ASK_FOR_MONEY_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	ASK_FOR_MONEY_INTERACTION_ENABLED = 1,						-- Should this action be used at all?		
	
	ASK_FOR_CLAIM_INTERACTION_MONEY = 0,
	ASK_FOR_CLAIM_INTERACTION_PIETY = 100,
	ASK_FOR_CLAIM_INTERACTION_PRESTIGE = 0,
	ASK_FOR_CLAIM_INTERACTION_THRESHOLD_FOR_NO = 50,
	ASK_FOR_CLAIM_INTERACTION_THRESHOLD_FOR_YES = 150,
	ASK_FOR_CLAIM_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	ASK_FOR_CLAIM_INTERACTION_ENABLED = 1,						-- Should this action be used at all?		
	
	ASK_FOR_CRUSADE_INTERACTION_MONEY = 0,
	ASK_FOR_CRUSADE_INTERACTION_PIETY = 500,
	ASK_FOR_CRUSADE_INTERACTION_PRESTIGE = 0,
	ASK_FOR_CRUSADE_INTERACTION_THRESHOLD_FOR_NO = 50,
	ASK_FOR_CRUSADE_INTERACTION_THRESHOLD_FOR_YES = 150,
	ASK_FOR_CRUSADE_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	ASK_FOR_CRUSADE_INTERACTION_ENABLED = 1,						-- Should this action be used at all?		
	
	NOMINATE_BISHOP_TO_POPE_INTERACTION_MONEY = 50,
	NOMINATE_BISHOP_TO_POPE_INTERACTION_PIETY = 30,
	NOMINATE_BISHOP_TO_POPE_INTERACTION_PRESTIGE = 0,
	NOMINATE_BISHOP_TO_POPE_INTERACTION_THRESHOLD_FOR_NO = 50,
	NOMINATE_BISHOP_TO_POPE_INTERACTION_THRESHOLD_FOR_YES = 150,
	NOMINATE_BISHOP_TO_POPE_INTERACTION_MUST_HAVE_COST = 1,				-- Is having prestige/piety >= cost required for this action?
	NOMINATE_BISHOP_TO_POPE_INTERACTION_ENABLED = 1,						-- Should this action be used at all?	
	
	LANDED_SIBLING_PRESTIGE_BONUS = 5,							-- For religions with landed win prestige bonus. Is multiplied with the percentage of how many of your realm they own.
	LANDED_HALF_SIBLING_PRESTIGE_BONUS = 5,						-- For religions with landed win prestige bonus. Is multiplied with the percentage of how many of your realm they own.
	LANDED_NIECE_PRESTIGE_BONUS = 2,							-- For religions with landed win prestige bonus. Is multiplied with the percentage of how many of your realm they own.
	LANDED_CHILD_PRESTIGE_BONUS = 5,							-- For religions with landed win prestige bonus. Is multiplied with the percentage of how many of your realm they own.
	LANDED_GRAND_CHILD_PRESTIGE_BONUS = 2,						-- For religions with landed win prestige bonus. Is multiplied with the percentage of how many of your realm they own.
	LANDED_PARENT_PRESTIGE_BONUS = 5,							-- For religions with landed win prestige bonus. Is multiplied with the percentage of how many of your realm they own.
	LANDED_UNCLE_AUNT_PRESTIGE_BONUS = 3,						-- For religions with landed win prestige bonus. Is multiplied with the percentage of how many of your realm they own.
	LANDED_GRAND_PARENT_PRESTIGE_BONUS = 2,						-- For religions with landed win prestige bonus. Is multiplied with the percentage of how many of your realm they own.
	LANDED_GREAT_GRAND_PARENT_PRESTIGE_BONUS = 2,				-- For religions with landed win prestige bonus. Is multiplied with the percentage of how many of your realm they own.
	LANDED_COUSIN_PRESTIGE_BONUS = 3,							-- For religions with landed win prestige bonus. Is multiplied with the percentage of how many of your realm they own.
	
	BANISH_TAKE_WEALTH_PERCENTAGE_LANDED = 0,
	BANISH_TAKE_WEALTH_PERCENTAGE_COURTIER = 1,
	BANISH_REALM_SIZE_CHANCE_RATIO_MODIFIER = 2,
},

NCharacter = {
	MAX_AGE_BEFORE_BETROTHAL_BREAKS = 20,
	NOMINATE_CROWN_BISHOP_PIETY_COST = 15, 				-- OBSOLETE
	NOMINATE_CROWN_BISHOP_REL_AUTHORITY_CHANGE = -0.01, -- OBSOLETE
	WRONG_GOV_FORM_TAX_MOD = -0.75,
	WRONG_GOV_FORM_LEVY_MOD = -0.75,
	TRIBAL_WRONG_RELIGION_REFORM_MOD = -0.10,
	TRIBAL_WRONG_RELIGION_MOD = -0.15,
	TRIBAL_WRONG_RELIGION_GROUP_MOD = -0.25,
	TRIBAL_WRONG_CULTURE_MOD = -0.15,
	TRIBAL_WRONG_CULTURE_GROUP_MOD = -0.25,
	CHANGE_SUCC_LAW_YEARS = 10,						-- Rulers must have reigned this long before they can change succession laws
	CHANGE_AMBITION_YEARS = 3,						-- Delay between being able to pick a new ambition of plot after cancelling
	PRESTIGE_FROM_DYNASTY_ON_BIRTH_DIV = 5, 		-- Newly born characters get the dynasty prestige of their mother and father divided by this as their starting prestige
	PRESTIGE_FROM_DYNASTY_ON_MARRIAGE_DIV = 10, 	-- Characters get the dynasty prestige of the spouse divided by this on marriage
	NEED_GUARDIAN_AT_AGE = 6, 						-- The age at which children should be appointed a mentor/guardian
	ASSIGN_ACTION_DAYS = 183, 						-- Days before a Councillor can be assigned a new job in a county
	MARRIAGE_TIER_DIFF_PRESTIGE_MULT = 100, 		-- Prestige multiplier from marrying below or above your rank.
	CONSORT_TIER_PRESTIGE_MULT = 25,				-- Prestige multiplier for rank of consort	
	RAISED_TROOPS_VASSAL_OPINION_DAYS = 61,			-- After 61 days of having their troops raised, vassals will get -1 opinion more of you
	MAX_GENERATED_TRAITS_FOR_HISTORICAL = 4,		-- Generate random traits up this number for adult historical characters
	MUSLIM_NUM_WIVES_MONTHLY_PRESTIGE = 0.4,		-- The prestige effect from each extra or lacking expected wife
	PAGAN_NUM_CONSORTS_MONTHLY_PRESTIGE = 0.2,		-- The monthly prestige effect for pagans for each young Concubine
	INBRED_TRAIT_CHANCE_FACTOR = 1.0,				-- Inbreeding: Multiplier to the base chance
	LUNATIC_TRAIT_CHANCE_FACTOR = 0.2,				-- Inbreeding: Multiplier to the base chance
	INBRED_DIVINE_BLOOD_TRAIT_CHANCE_FACTOR = 0.2,	-- Inbreeding: Multiplier to the base chance
	LUNATIC_DIVINE_BLOOD_TRAIT_CHANCE_FACTOR = 1.0,	-- Inbreeding: Multiplier to the base chance
	MAX_LED_FACTIONS = 2,							-- Maximum number of led Factions
	MAX_JOINED_FACTIONS = 2,						-- Maximum number of Factions a character can be a member of (including led factions)
	PORTRAIT_ADULT_MALE_AGE_THRESHOLD = 16,			-- Male child to adult age portrait switch
	PORTRAIT_ADULT_FEMALE_AGE_THRESHOLD = 16,		-- Female child to adult age portrait switch
	PORTRAIT_MID_AGE_THRESHOLD = 30,				-- Middle age switch for character portraits
	PORTRAIT_OLD_AGE_THRESHOLD = 50,				-- Old age switch for character portraits
	AGE_OF_ADULTHOOD_MALE = 16,						-- Male can rule at this age. 
	AGE_OF_ADULTHOOD_FEMALE = 16,					-- Female can rule at this age.
	AGE_OF_MARRIAGE_MALE = 16,						-- Male allowed to marry at this age.
	AGE_OF_MARRIAGE_FEMALE = 16,					-- Female allowed to marry at this age.
	AGE_YOUNG = 20,									-- Non-child characters below this age have the 'teen' static modifier applied
	AGE_ADULT = 30,									-- Non-child characters below this age have the 'young' static modifier applied
	AGE_OLD = 50,									-- Non-child characters below this age have the 'adult' static modifier applied
	AGE_VERY_OLD = 70,								-- Non-child characters below this age have the 'old' static modifier applied
	MAX_CHILD_BIRTH_AGE = 45,						-- Female menopause age.
	CHILD_BIRTH_TO_PREGNANCY_WAIT = 3,
	BASE_NR_OF_CHILDREN_PER_COUPLE = 2,
	EXTRA_NR_OF_CHILDREN_FOR_PLAYERS = 2,
	COURT_SIZE_CHILD_PENALTY_THRESHOLD = 30,
	DYNASTY_CONTROLS_HOLY_ORDER_PRESTIGE = 2,		-- Monthly Prestige from a dynasty member as head of a Holy Order (only for counts+ and if the same religion)
	DYNASTY_CONTROLS_HOLY_ORDER_PIETY = 1,			-- Monthly Piety from a dynasty member as head of a Holy Order (only for counts+ and if the same religion)
	DYNASTY_CONTROLS_RELIGIOUS_HEAD_PRESTIGE = 2,	-- Monthly Prestige from a dynasty member as head of a religion (only for counts+ and if the same religion)
	DYNASTY_CONTROLS_RELIGIOUS_HEAD_PIETY = 1,		-- Monthly Piety from a dynasty member as head of a religion (only for counts+ and if the same religion)
	NATURAL_DEATH_CHANCE_AGE_0 = 5,					-- Natural deaths per decade out of 10000 people: Age 0-9
	NATURAL_DEATH_CHANCE_AGE_10 = 1,				-- Natural deaths per decade out of 10000 people: Age 10-19
	NATURAL_DEATH_CHANCE_AGE_20 = 15,				-- Natural deaths per decade out of 10000 people: Age 20-29
	NATURAL_DEATH_CHANCE_AGE_30 = 20,				-- Natural deaths per decade out of 10000 people: Age 30-39
	NATURAL_DEATH_CHANCE_AGE_40 = 51,				-- Natural deaths per decade out of 10000 people: Age 40-49
	NATURAL_DEATH_CHANCE_AGE_50 = 100,				-- Natural deaths per decade out of 10000 people: Age 50-59
	NATURAL_DEATH_CHANCE_AGE_60 = 400,				-- Natural deaths per decade out of 10000 people: Age 60-69
	NATURAL_DEATH_CHANCE_AGE_70 = 1400,				-- Natural deaths per decade out of 10000 people: Age 70-79
	NATURAL_DEATH_CHANCE_AGE_80 = 3500,				-- Natural deaths per decade out of 10000 people: Age 80-90
	NATURAL_DEATH_CHANCE_AGE_90 = 7000,				-- Natural deaths per decade out of 10000 people: Age 90-99
	NATURAL_DEATH_CHANCE_AGE_100 = 9000,			-- Natural deaths per decade out of 10000 people: Age 100+
	FERTILITY_BASE_MULT = 0.50,						-- Base fertility multiplier to adjust the base chance of impregnation
	SECONDARY_SPOUSE_FERTILITY_MULT = 0.50,			-- Applied to fertility of secondary spouses and concubines
	NOT_SPOUSE_FERTILITY_MULT = 0.25,				-- Applied to fertility when the two characters are not married
	MARRIED_LOVERS_FERTILITY_MULT = 1.5,			-- Applied to fertility when lovers are married
	INFANT_DEATH_CHANCE = 0.0,						-- Chance of stillbirth / death at birth
	EARLY_PORTRAIT_AND_UNIT_BEFORE_YEAR = 950,		-- Before this date, early versions of Units and Portraits will be used if available
	LATE_PORTRAIT_AND_UNIT_AFTER_YEAR = 1250,		-- After this date, late versions of Units and Portraits will be used if available
	TRIBAL_EMPTY_HOLDING_LEVY_MULTIPLIER = 0.5,
	TRIBAL_EMPTY_HOLDING_GARRISON_MULTIPLIER = 0.5,
	TRIBAL_EMPTY_HOLDING_TAX_MULTIPLIER = 0.5,
},

NTitle = {
-- Monthly prestige from vassals
	BARON_AS_VASSAL_PRESTIGE = 0.025,
	COUNT_AS_VASSAL_PRESTIGE = 0.1,
	DUKE_AS_VASSAL_PRESTIGE = 0.4,
	KING_AS_VASSAL_PRESTIGE = 1.6,
	EMPEROR_AS_VASSAL_PRESTIGE = 3.2, 	-- Impossible, but needs to be here

-- Monthly prestige from held titles
	BARON_TITLE_PRESTIGE = 0.025,
	COUNT_TITLE_PRESTIGE = 0.1,
	DUKE_TITLE_PRESTIGE = 0.2,
	KING_TITLE_PRESTIGE = 0.8,
	EMPEROR_TITLE_PRESTIGE = 1.6,
	
-- Monthly prestige LOSS from each unlanded adult son
	BARON_LANDLESS_SON_PRESTIGE = 0.025,
	COUNT_LANDLESS_SON_PRESTIGE = 0.1,
	DUKE_LANDLESS_SON_PRESTIGE = 0.4,
	KING_LANDLESS_SON_PRESTIGE = 0.8,
	EMPEROR_LANDLESS_SON_PRESTIGE = 1.0,

-- Dynasty Prestige is the sum of current and previous holdings of all living and dead members of a dynasty
	BARON_TITLE_DYNASTY_PRESTIGE = 1,
	COUNT_TITLE_DYNASTY_PRESTIGE = 5,
	DUKE_TITLE_DYNASTY_PRESTIGE = 10,
	KING_TITLE_DYNASTY_PRESTIGE = 20,
	EMPEROR_TITLE_DYNASTY_PRESTIGE = 40,

-- Piety from giving titles to the Church or Holy Orders
	BARON_GRANT_TO_CHURCH_PIETY = 25,
	COUNT_GRANT_TO_CHURCH_PIETY = 50,
	DUKE_GRANT_TO_CHURCH_PIETY = 0,
	KING_GRANT_TO_CHURCH_PIETY = 0,
	EMPEROR_GRANT_TO_CHURCH_PIETY = 0,
	
-- Title Creation Cost	
	BARON_CREATION_COST = 1, -- Unused, impossible
	COUNT_CREATION_COST = 100, -- Unused, impossible
	DUKE_CREATION_COST = 200,
	KING_CREATION_COST = 400,
	EMPEROR_CREATION_COST = 600,

-- Title Creation Prestige Gain
	BARON_CREATION_PRESTIGE = 50, -- Granted when building a new settlement
	COUNT_CREATION_PRESTIGE = 100, -- Unused, impossible
	DUKE_CREATION_PRESTIGE = 200,
	KING_CREATION_PRESTIGE = 400,
	EMPEROR_CREATION_PRESTIGE = 800,
	
-- Title Destruction Prestige Cost
	BARON_DESTRUCTION_PRESTIGE_COST = 0, -- Unused, impossible
	COUNT_DESTRUCTION_PRESTIGE_COST = 0, -- Unused, impossible
	DUKE_DESTRUCTION_PRESTIGE_COST = 200,
	KING_DESTRUCTION_PRESTIGE_COST = 400,
	EMPEROR_DESTRUCTION_PRESTIGE_COST = 800,
	
-- Title Claiming Prestige Cost
	BARON_CLAIM_PRESTIGE_COST = 150,
	COUNT_CLAIM_PRESTIGE_COST = 300,
	DUKE_CLAIM_PRESTIGE_COST = 600,
	KING_CLAIM_PRESTIGE_COST = 1200, -- Unused, impossible
	EMPEROR_CLAIM_PRESTIGE_COST = 2400, -- Unused, impossible
	
-- Title Revokation Prestige Cost
	BARON_REVOKE_PRESTIGE_COST = 25,
	COUNT_REVOKE_PRESTIGE_COST = 50,
	DUKE_REVOKE_PRESTIGE_COST = 100,
	KING_REVOKE_PRESTIGE_COST = 200,
	EMPEROR_REVOKE_PRESTIGE_COST = 400, -- Unused, impossible
	
-- Title Grant Decadence Reduction (Multiplied with current decadence)
	BARON_GRANT_DECADENCE_RED = 0.01,
	COUNT_GRANT_DECADENCE_RED = 0.02,
	DUKE_GRANT_DECADENCE_RED = 0.04,
	KING_GRANT_DECADENCE_RED = 0.1,
	EMPEROR_GRANT_DECADENCE_RED = 0.2,
	
	CLAIM_VASSAL_TITLE_COST_MOD = 0.75,
	CLAIM_DE_JURE_TITLE_COST_MOD = 0.5,
	NORMAL_LAW_CHANGE_MONTHS = 60,
	TITLE_USURP_COOLDOWN_MONTHS = 60,
	DE_JURE_ASSIMILATION_YEARS = 100,			-- Duchies a under the de facto control of another kingdom will change de jure liege after this many years
	EMPIRE_DE_JURE_ASSIMILATION_YEARS = 100,	-- Kingdoms under the de facto control of another empire will change de jure liege after this many years
	ALLOW_DE_JURE_ASSIMILATION_ANYWHERE = 1,	-- If set to 0, will only assimilate duchy titles which contain the assimilating Kingdom's capital or border existing de jure land of that title
	REQ_DUCHIES_FOR_KINGDOM_CREATION = 2, 		-- Number of held duchies required to create a kingdom (for rulers who are not already kings or emperors)
	REQ_KINGDOMS_FOR_EMPIRE_CREATION = 2, 		-- Number of held kingdoms required to create an Empire (for rulers who are not already emperors)
	TITULAR_TITLE_CREATION_COST_MULT = 2,		-- Titular titles are more expensive to create
	ENFORCE_ONE_OF_EACH_HOLDING = 1,			-- Require players to build at least one City, Temple and Castle in each province
	MAX_REPUBLIC_COUNTIES_IN_REALM = 0.1,		-- 10% of a feudal realm is allowed to be under vassal republics (affects title grants)
	MAX_THEOCRACY_COUNTIES_IN_REALM = 0.1,		-- 10% of a feudal realm is allowed to be under vassal theocracies/bishoprics (affects title grants)
	THEOCRACY_COUNTIES_CAN_BORDER = 1,			-- Can feudal lords create neighboring theocracy counties?
	REPUBLIC_COUNTIES_CAN_BORDER = 1,				-- Can feudal lords create neighboring republic counties?
	MIN_REVOKE_MONTHS_AFTER_GRANT = 12,			-- Months that must pass before you can revoke the title off someone you granted it to

-- Title creation and usurpation requirements	
	DEJURE_COUNTY_LIMIT_TO_CREATE = 0.51,			-- Fraction of de jure counties that you must control to create a non-imperial title
	DEJURE_COUNTY_LIMIT_TO_USURP = 0.51,			-- Fraction of de jure counties that you must control to usurp a non-imperial title
	EMPIRE_DEJURE_COUNTY_LIMIT_TO_CREATE = 0.8,		-- Fraction of de jure counties that you must control to create an imperial title
	EMPIRE_DEJURE_COUNTY_LIMIT_TO_USURP = 0.8,		-- Fraction of de jure counties that you must control to usurp an imperial title	
	
	CUSTOM_TITLE_COLOR_OFFSET = 0.35					-- The offset from the base title color when creating a new title
},

NReligion = {
	AUTHORITY_FROM_CROWN_LOYALIST = -0.01,
	AUTHORITY_FROM_CHURCH_LOYALIST = 0.005,
	CREATE_ANTIPOPE_PRESTIGE_COST = 500,
	CREATE_ANTIPOPE_AUTHORITY_LOSS = 0.2,
	POPE_DIPLO_TO_AUTHORITY_DIV = 10000,
	EXCOM_MIN_AUTHORITY = 0.4,
	INVASION_MIN_AUTHORITY = 0.5,
	KINGDOM_CREATION_PIETY_COST = 200,
	EMPIRE_CREATION_PIETY_COST = 400,
	CRUSADE_AUTHORITY_COST = 0.05,
	REFORM_RELIGION_MIN_AUTHORITY = 0.5,			-- Moral authority required to reform a pagan faith
	REFORM_RELIGION_MIN_HOLY_SITES = 3,				-- Number of holy sites you must control to reform a pagan faith
	REFORM_RELIGION_PIETY_COST = 750,				-- Piety cost of reforming a pagan faith
	AUTHORITY_FROM_HOLY_SITE = 0.1,					-- Authority from each holy site held
	AUTHORITY_FROM_ANTIPOPE = -0.3,					-- Authority from each antipope
	AUTHORITY_FROM_RELHEAD_PIETY = 0.02,			-- Authority from each 100 piety of religious head
	AUTHORITY_FROM_IMMORAL_HEAD = -0.1,				-- Authority from having an immoral religious head
	AUTHORITY_FROM_RELHEAD_DIPLOMACY = 0.05,		-- Authority from each 10 diplomacy of religious head
	AUTHORITY_FROM_RELHEAD_HOLY_SITE = 0.05,		-- Authority from religious head controlling a holy site (does not stack)
	AUTHORITY_FROM_ORG_RELIGION = 0.2,				-- Authority from being an organized religion§ki§
	DIVINE_BLOOD_FERTILITY_MULT = 0.25,				-- Fertility multiplier in a religious close kin marriage
	ELECTOR_TITLE_CAMPAIGN_FUND_FACTOR = 1,			-- The effect of money in the Campaign Fund when the Pope is choosing a new Cardinal (money * factor)
	ELECTOR_TITLE_OPINION_FACTOR = 3.5,
	ELECTOR_TITLE_REALM_POWER_FACTOR = 0.1,
	ELECTOR_TITLE_CULTURE_GROUP_FACTOR = 50,
	ELECTOR_TITLE_CULTURE_FACTOR = 200,
	ELECTOR_TITLE_LEARNING_FACTOR = 2,
	ELECTOR_TITLE_PIETY_FACTOR = 0.1,
	ELECTOR_TITLE_AGE_FACTOR = 2,
	ELECTOR_TITLE_AT_CAPITAL_FACTOR = 100,
	ELECTOR_FAMOUS_DYNASTY_FACTOR = 0.025,
	ELECTOR_TRAITS_FACTOR = 1.0,					-- Effect of personality traits that the church likes
	HERESY_TAKEOVER_PROVINCES = 5,					-- The number of provinces a heresy needs MORE than the current norm for it to become the new Orthodoxy
	PAPAL_SUCCESSION_PASS_ON_HOLDINGS = 1,			-- Set to zero if holdings shouldn't be passed on
	PAPAL_SUCCESSION_LOSE_MINOR_TITLES = 1			-- Set to zero if minor religious titles should be lost
},

NEconomy = {
	HOLDING_SLOT_BUILD_COST_MOD = 0.2,
	REPUBLIC_CITY_TAX_BONUS = 0.15,					-- Republics (at least Count tier) receive a tax bonus for all cities in their realm
	REPUBLIC_COASTAL_CITY_TAX_BONUS = 0.25,			-- Republics (at least Count tier) receive a tax bonus for all coastal cities in their realm
	REPUBLIC_CAPITAL_CITY_TAX_BONUS = 1.0,			-- Duke or above tier Republics receive a tax bonus for their capital city
	BISHOP_TAX_TO_POPE_FACTOR = 0.4,				-- Bishops only pay half the tax to the Pope if they are loyal to him
	BISHOP_TAX_TO_ANTI_POPE_FACTOR = 0.20,			-- Bishops only pay a quarter taxes to an Anti-Pope if they are loyal to him	
	DECADENCE_MODIFIER = 0.2,						-- Maximum effect of decadence, positive for low dec, negative for high
	DECADENCE_PER_WEEK_OF_COMBAT = -0.04,			-- Decadence lost per 7 days of combat, for each participant in the combat
	DECADENCE_PER_WEEK_OF_SIEGE = -0.008,			-- Decadence lost per 7 days of siege, for each participant in the siege
	MUSLIM_MUSLIM_PROVINCE_TAX_MOD = -0.1,			-- Muslims get less tax from muslim provinces
	MUSLIM_NONMUSLIM_PROVINCE_TAX_MOD = 0.25,		-- Muslims get more tax from non-muslim provinces
	MAX_TRIBAL_LIEGE_TAX = 0.2,						-- Default max tribal liege tax income if any
	TRADEZONE_VALUE_MULT = 0.5,						-- Multiple on trade zone value in tradezone bonus to trade posts and cities
	TRADE_ZONE_BONUS_MULTIPLIER = 0.01,				-- Trade posts get the trade zone value * 0.1 * this as a bonus
	TRADE_ZONE_BONUS_MULT_CITY = 0.005,				-- Cities gain similar bonus for a tradepost being in the province
	TRADE_CONNECTED_TO_CAPITAL_BONUS = 0.4,			-- Bonus to trade post income when connected to capital
	TRADE_POST_COST_INC_DIST = 0.003,				-- The % increase in cost due to distance to closest connected province
	TRADE_POST_OPINION_EFFECT = 0.4,				-- The bonus or penalty depending on topliege opinion
	MAX_TRADE_POSTS_BASE = 1,
	MIN_TRADE_POSTS = 4,							-- Minimum number of max trade posts per patrician	
	MIN_TRADETECH_LEVEL_FOR_TPS = 1,				-- Minimum tech level needed to build trade posts
	TRADETECH_LEVEL_FOR_BASE_TPS = 3,
	PATRICIAN_CAMPAIGN_FUND_FACTOR = 5,				-- The effect of money in the Campaign Fund on Doge elections (money * factor)
	PATRICIAN_PRESTIGE_RESPECT_FACTOR = 2,			-- The effect of Prestige on the Respect value for Doge elections (prestige * factor)
	PATRICIAN_AGE_RESPECT_FACTOR = 1,				-- The effect of Age on the Respect value for Doge elections (age * age * factor)
	DOGE_SUCC_RANDOM_FACTOR = 500,					-- The random Respect factor on actual Doge succession
	MERCHANT_REPUBLIC_SALARY_MULT = 3,				-- Councillor salaries in Merchant Republics are multiplied by this
	TRADE_POST_RAISE_LOOT_MULT = 5.0,
	PATRICIAN_FAMILY_SHARES_HEAD = 50,				-- Monthly Patrician Income, number of shares for the Patrician himself
	PATRICIAN_FAMILY_SHARES_REST = 5,				-- Monthly Patrician Income, number of shares for adult male dynasty members in the Patrician's court
	PATRICIAN_INHERITANCE_FROM_RELATIVE_MULT = 0.5,	-- When a Patrician inherits the wealth of a non-Patrician relative, this multiplier determines the part he actually gets
	PATRICIAN_GOLD_TO_MONTHLY_PRESTIGE = 0.0005,	-- Prestige that Patricians get each month from their treasury (CFixedPoint64 to support such small numbers)
	PATRICIAN_CITY_TAX_MULT = 0.5,					-- Patricians don't pay normal City Tax to their liege... (CFixedPoint64)
	OVER_MAX_DEMESNE_TAX_PENALTY = 0.20,			-- Percent penalty per county over the limit
	TAX_TO_LOOT_MULTIPLIER = 1.0,					-- Lootable gold per tax 
	FORT_LOOT_DEFENCE_MULTIPLIER = 4.0,				-- Loot protected gold per fortlevel
	LOOTABLE_GOLD_REGROWTH = 0.015,					-- Percent of max lootable gold that regrows every month
	LOOT_PERCENT_PER_LOOTTICK = 0.04,				-- Percent of max lootable gold that is looted each loot tick
	TPC_TO_LOOT_MULTIPLIER = 0.1,					-- Max loot in a navy is max troops * this
	LOOTER_SHIP_MAINT_MULT = 0.1,					-- Religions that have looting have lower ship maintenance costs
	LOOT_PRESTIGE_MULT = 1.0,						-- Whenever you gain loot you also get prestige related to the loot
	LOOT_EVERY_X_DAYS = 4,							-- Loot every this many days
	LOOT_IDEAL_MIN_TROOPS = 500,					-- Minimum troops for maximum loot, less than this scales down the amount looted
	BUILDING_COST_MULT = 0.5,						-- Increases build cost of all buildings
},

NDecadence = {
	BASE_EMPEROR_GAIN = 0.32,
	BASE_KING_GAIN = 0.24,
	BASE_DUKE_GAIN = 0.16,
	BASE_COUNT_GAIN = 0.08,
	BASE_BARON_GAIN = 0.04,
	BASE_UNLANDED_GAIN = 0.02,
	REALM_SIZE_MULTIPLIER = 0.005,
	DEMESNE_FRACTION_MULT_POS = 0.5,
	DEMESNE_FRACTION_MULT_NEG = -0.8,
}, 

NMilitary = {
	CONTROLLER_MONTHS_BEFORE_OWNER_CHANGE = 120,	-- Number of months before ownership change of province, for certain cb:s that have contested titles
	MORALE_COLLAPSE_THRESHOLD = 0.25,				-- Threshold before unit runs away
	TROOP_KILL_FACTOR = 0.015,						-- Affects the death rate in combats(higher gives bigger losses)
	MORALELOSS_FACTOR = 6,							-- Affects the morale loss rate in combats(higher gives bigger losses)
	MIN_COMBAT_DAYS = 8,							-- Minimum number of days in combat
	NUMBER_OF_RETREAT_DAYS = 4,						-- Number of days before you retreat successfully
	NUMBER_OF_TROOPS_PER_GALLEY = 100,				-- Number of men each galley can hold
	FRIENDLY_TERRITORY_LEVY_RETURN_PERCENT = 1.0,	-- Percent of subunit that returns to levy when unit is disbanded in friendly territory
	OTHER_TERRITORY_LEVY_RETURN_PERCENT = 0.5,		-- Percent of subunit that returns to levy when unit is disbanded in non-friendly territory
	LEVY_MAINTENANCE_FACTOR = 1.5,					-- General maintenance factor for levy troops
	HOLDING_LEVY_SIZE_OWNER_MARTIAL_BASE = 0.50,	
	HOLDING_LEVY_SIZE_OWNER_MARTIAL_MULT = 0.05,	-- Levy size modifier: Each point of the holding owner's Martial skill is multiplied with this and added to HOLDING_LEVY_SIZE_OWNER_MARTIAL_BASE
	MERCENARY_MAINTENANCE_FACTOR = 3.0,				-- Maintenance factor for NORMAL mercenary units
	MERCENARY_VASSAL_MAINTENANCE_FACTOR = 0.5,		-- Maintenance factor for VASSALIZED mercenary units
	MERCENARY_HIRE_COST_FACTOR = 0.1,				-- Hire cost factor for mercenary units
	HOLY_ORDER_HIRE_COST_FACTOR = 0.25,				-- Conversion of nominal gold cost to piety cost when hiring Holy Orders
	HOLY_ORDER_DYNASTY_HIRE_COST_FACTOR = 0.25,		-- Reduction of cost if the Holy Order is controlled by a dynasty member
	VASSAL_MERC_HIRE_COST_FACTOR = 0.125,			-- Fraction of nominal hire cost when hiring vassal mercenaries OR Holy Orders
	MERCENARY_HIRE_DISTANCE_THRESHOLD = 600,		-- Mercs will not be available if the province of origin is more distant from your capital
	OPINION_WHEN_MARSHAL_INSTEAD_OF_SELF = 25,		-- Below this opinion value a vassal tends to use his marshal instead of himself when someone asks to raise his troops
	OPINION_WHEN_NO_LEADER = 0,						-- Below this opinion a vassal will not supply a leader for subunits at all
	BATTLE_WARSCORE_WORTH = 75,						-- Warscore from battles are multiplied with this value
	BATTLE_WARSCORE_DEFENDER_MULTIPLIER = 1.5,		-- Defenders wins are multiplied with this value, which also means they get more prestige for a win
	BATTLE_MINIMUM_WARSCORE = 0.2,					-- Battles below this value(in actual percentage) are removed from warscore calculations
	MIN_LEVY_RAISE_OPINION_THRESHOLD = 0,			-- Below this opinion value you'll get the least amount of troops possible
	MAX_LEVY_RAISE_OPINION_THRESHOLD = 100,			-- Above this opinion value you'll get the max amount of troops possible
	MIN_LEVIES_ABOVE_OPINION_THRESHOLD = 0,			-- The minimum percentage of levies that will be provided if opinion is above threshold
	MAX_TRIBAL_LIEGE_LEVY = 0.6,					-- Default max tribal liege levy if any
	LEVY_PERCENT_BEFORE_CAN_RAISE = 0.2,			-- Needs at least this much % of full levy before we can raise it
	SIEGE_DAMAGE = 0,								-- Siege attack values are multiplied by this value(when not doing a sally)
	PERCENT_OF_GARRISON_DETACHED = 0.1,				-- This percent of the garrison is detached from the winning unit of a siege
	NUM_DAYS_BETWEEN_SIEGE_MORALE_LOSS = 12,		-- Number of days between morale loss for defender in a siege
	SIEGE_MORALE_LOSS = 0.2,						-- Monthly morale loss in a siege
	DAYS_BETWEEN_COMBAT_EVENTS = 10,				-- Combat events will happen every this many days
	BATTLE_PRESTIGE_MULTIPLIER = 10,				-- Total prestige gained in the battle will be this * ( losers losses ) / 1000
	BATTLE_TECH_MULTIPLIER = 0.5,					-- Military tech gain from battles multiplier.
	MAINLEADER_PRESTIGE_PART = 0.35,				-- The % of the total prestige gained in the battle that the center flank leader will get
	FLANKLEADER_PRESTIGE_PART = 0.125,				-- The % of the total prestige gained in the battle that each other flank leader will get
	BATTLE_UNIT_OWNER_PRESTIGE_MULT = 0.5,			-- The % of the total prestige gained in the battle that will be divided among the participating unit owners
	BATTLE_UNIT_OWNER_PIETY_MULT = 0.5,				-- The % of the total piety gained in the battle that will be divided among the participating unit owners
	REINFORCE_RATE = 0.05,							-- Reinforce rate per year
	MERC_REINFORCE_RATE = 0.015,					-- The rate at which mercenaries and holy orders reinforce in the field
	MERC_REINFORCE_RATE_WHEN_IDLE = 0.03,			-- The rate at which mercenaries and holy orders reinforce when not hired
	GARRISON_REINFORCE_RATE_MULTIPLIER = 5,			-- The rate at which the garrison reinforce
	LEVY_RAISED_REINFORCE_RATE_MULTIPLIER = 0.5,	-- The rate at which the garrison/levy reinforce when the levy is raised
	BATTLE_PIETY_MULTIPLIER = 0.5,					-- Piety gain/loss multiplier. This is based on the prestige value, so a value of 1 gives a leader as much piety as he gains prestige from combat
	SIEGE_PIETY_MULTIPLIER = 0.2,					-- Piety gain/loss multiplier for sieges
	SIEGE_WEALTH_MULTIPLIER = 1,					-- Wealth gain/loss multiplier for sieges
	CAPITAL_WARSCORE_MULTIPLIER = 1,				-- Warscore multiplier for capital(this is scaled with SETTLEMENT_WARSCORE_MULTIPLIER)
	SETTLEMENT_WARSCORE_MULTIPLIER = 0.3,			-- Warscore worth for occupied private demesne
	VASSAL_SETTLEMENT_WARSCORE_MULTIPLIER = 0.3,	-- Warscore worth for occupied vassals
	CONTESTED_TERRITORY_WARSCORE_MULTIPLIER = 1.75,	-- Multiplier for contested settlements
	DAYS_UNTIL_HOLDER_GETS_WARSCORE = 365,			-- Days until the war score of the title owner starts increasing, if he controls the Holdings
	DAYS_UNTIL_HOLDER_GETS_WARSCORE_INDEP = 0,		-- Days until the war score of the title owner starts increasing in Independence Wars, if he controls the Holdings
	CONTESTED_TITLE_OCCUPIED_WARSCORE_BONUS = 15,	-- Amount of warscore per year since attacker/defender started getting the bonus
	CONTESTED_TITLE_OCCUPIED_WARSCORE_BONUS_INDEP = 20,	-- Amount of warscore per year since attacker/defender started getting the bonus, for independence and tyranny wars (can be overridden separately in religion scripts)
	REVOLTRISK_REDUCTION_PER_YEAR = 1,
	DIFFERENT_RELIGIONGROUP_SUPPLY_PENALTY = -0.5,	-- Only 50% supply in provinces with different religios group
	MONTHS_UNTIL_REBEL_WIN = 12,					-- Number of days until province is totally conquered by rebels
	OWN_SETTLEMENT_SUPPLY_BONUS = 0.5,				-- Extra supply from being in home realm
	NEUTRAL_SETTLEMENT_SUPPLY_BONUS = 0.25,			-- Neutral supply bonus
	CONTROL_SETTLEMENT_SUPPLY_BONUS = 0.25,			-- Supply bonus from occupied settlements
	ENEMY_SETTLEMENT_SUPPLY_BONUS = -0.1,			-- Supply bonus from enemy settlements(woot!)
	HOSTILE_RELIGION_SUPPLY_MOD = -0.25,			-- Supply modifier from a hostile religion
	NEARBY_SETTLEMENT_SINGLE_SUPPLY_BONUS = 0.75,	-- Bonus for nearby settlement, if not controlling one yourself
	MAX_ATTRITION_LEADER_REDUCTION = -0.1,			-- Center leader reduces max attrition(reduction in actual percent)
	ATTRITION_LEVEL_FACTOR = 0.5,					-- A general "attrition per month" multiplier
	ATTRITION_LEVEL_FACTOR_50_OVER = 1.0,			-- A general "attrition per month" multiplier when 50% over the supply limit
	ATTRITION_LEVEL_FACTOR_100_OVER = 2.0,			-- A general "attrition per month" multiplier when 100% over the supply limit
	COASTAL_SUPPLY_BONUS = 0.5,						-- Supply bonus in coastal provinces
	PAGAN_HOME_SUPPLY_MOD = 0.12,					-- Non Pagans suffer extreme attrition in some Pagan homelands (based on province religion)
	NAVAL_ATTRITION = 0.0,							-- Attrition taken monthly by units loaded on ships
	ARMY_MOVEMENT_SPEED = 3,						-- Base movement speed of land units
	NAVY_MOVEMENT_SPEED = 15,						-- Base movement speed of naval units
	ARMY_LOAD_MOVE_COST = 20.0,						-- Movement cost for moving armies onto fleets at sea.
	ARMY_UNLOAD_MOVE_COST = 20.0,					-- Movement cost for moving armies off fleets at sea.
	OVERRUN_RATIO = 25,								-- Ratio needed for total extermination of enemy units
	DAYS_BEFORE_DEFENDER_SALLY = 7,					-- Number of days before defenders sally in a siege where they have superior numbers
	TOTAL_OCCUPATION_SCALE = 0.8,					-- The % of occupation which gives you 100% warscore
	ATTACKER_ASSULT_DAMAGE_FACTOR = 15,				-- Attacker damage scale factor when assaulting
	DEFENDER_ASSULT_DAMAGE_FACTOR = 0.6,			-- Defender damage scale factor when assaulting
	DAYS_PER_FORTLEVEL_BEFORE_ASSAULT = 30,			-- Number of days until attacker can assault
	FLANKING_DAMAGE_BONUS = 0.3,					-- Percentage bonus when flanking in combat
	LEADER_MARTIAL_DAMAGE_BONUS = 0.05,				-- Percentage bonus to damage for each point of martial the flank leader has
	WAR_CONTRIBUTION_OCCUPATION_PER_DAY = 10,		-- Occupying a Holding gives this Contribution score per day
	WAR_CONTRIBUTION_BATTLE_PER_DAY = 0.20,			-- Every day in battle, a participant gets this. (My Troops / Total Friendly Troops) * Total Enemy Troops * WAR_CONTRIBUTION_BATTLE_PER_DAY. Max is [My Troops].
	LOW_DECADENCE_MORALE_MOD = 0.5,					-- Extra Morale defence when at 0% decadence
	HIGH_DECADENCE_MORALE_MOD = 2.0,				-- Extra Morale damage taken when at 100% decadence
	CAPTURED_CLOSE_MALE_RELATIVE_WAR_SCORE = 5.0,	-- War score for holding a close male relative prisoner
	CAPTURED_HEIR_WAR_SCORE = 50.0,					-- War score for holding the heir prisoner
	
	EVENT_TROOPS_SIZE_MULT = 1.0,							-- Applied to match_mult to determine size of troops spawned from events & history
	
	OCCUPATION_PENALTY_MONTHS = 12,					-- This and below are different modifier lengths applied to settlements upon conquest
	OCCUPATION_PENALTY_MONTHS_DIFFERENT_RELIGION = 90,
	OCCUPATION_PENALTY_MONTHS_DIFFERENT_RELIGIONGROUP = 180,
	OCCUPATION_PENALTY_MONTHS_DIFFERENT_CULTURE = 60,
	OCCUPATION_PENALTY_MONTHS_DIFFERENT_CULTUREGROUP = 120,
	
	LOOTED_MODIFIER_MONTHS = 36,					-- How long pagan looting lasts
	LOOT_TAX_MULTIPLIER = 1.5,						-- Base gold looted from raided holdings is (tax * LOOT_TAX_MULTIPLIER) + (total building value * LOOT_BUILDING_MULTIPLIER)
	LOOT_BUILDING_MULTIPLIER = 0.02,				-- Extra gold looted from raided holdings, from buildings (LOOT_BUILDING_MULTIPLIER * building built cost)
	LOOT_HOLDING_DEST_MIN_SAFE = 4,					-- there is a 1 in LOOT_HOLDING_DESTRUCTION_ODDS chance that
	LOOT_HOLDING_DESTRUCTION_ODDS = 20,				-- a holding with less than LOOT_HOLDING_DEST_MIN_SAFE buildings will be destroyed by looting
	LOOT_HOLDING_BUILDING_DEST_ODDS = 10,			-- there is a 1 in this chance a random building is destroyed when looted
	
	RETINUE_FROM_REALMSIZE = 2.0,
	RETINUE_TITLE_MODIFIER = 0.5,
	RETINUE_INCREASE_PER_TECH = 1.5,
	RETINUE_HIRE_COST_MULTIPLIER = 0.14,			-- Retinues are free to hire atm, but they cost alot to reinforce
	RETINUE_REINFORCE_RATE = 0.025,
	RETINUE_REINFORCE_COST = 3.0,					-- Retinues cost while reinforcing.
	RETINUE_CONSTANT_COST = 0.25, 					-- Retinues cost at all times.
	MIN_RETINUE = 0,								-- Minimum retinue ( Disabled for now, can be enabled by mods )
	
	TERRAIN_SPEC_BONUS = 0.2,						-- Bonus to fighting in this terrain if you have that terrain as your
													-- terrain specialization ( gained through combat events in that terrrain )
	MAX_LEADERSHIP_TRAITS = 2,
	
	LIEGE_LEVY_REINF_RATE = 0.05,
	LIEGE_LEVY_SIZE_MULTIPLIER = 0.5,				-- The Size of the liege levy will be the total troops in the vassal subrealm * this
	LIEGE_FLEET_SIZE_MULTIPLIER = 1.0,				-- As above but for galleys
	LIEGE_LEVY_COST_MULTIPLIER = 1.0,				-- The vassal will pay regular maintenance * this for the liege levy
	LIEGE_LEVY_SUBUNIT_SIZE_CUTOFF = 3000,			-- The max size of each liege levy subunit.
	LIEGE_LEVY_SUBUNIT_SIZE_MIN = 500,				-- The min size before liege levy subunits start splitting.
	LIEGE_LEVY_VICE_ROYALTY_MULTIPLIER = 0.8,		-- Liege levy multiplier for viceroy vassals
	
	LIGHT_INFANTRY_MORALE = 2,
	LIGHT_INFANTRY_MAINTENANCE = 0.70,
	LIGHT_INFANTRY_PHASE_SKIRMISH_ATTACK = 2,
	LIGHT_INFANTRY_PHASE_MELEE_ATTACK = 3,
	LIGHT_INFANTRY_PHASE_PURSUE_ATTACK = 3,
	LIGHT_INFANTRY_PHASE_SKIRMISH_DEFENSE = 2.5,
	LIGHT_INFANTRY_PHASE_MELEE_DEFENSE = 2,
	LIGHT_INFANTRY_PHASE_PURSUE_DEFENSE = 3,
	LIGHT_INFANTRY_GRAPHICAL_FACTOR = 1,

	HEAVY_INFANTRY_MORALE = 4,
	HEAVY_INFANTRY_MAINTENANCE = 3,
	HEAVY_INFANTRY_PHASE_SKIRMISH_ATTACK = 0.25,
	HEAVY_INFANTRY_PHASE_MELEE_ATTACK = 6,
	HEAVY_INFANTRY_PHASE_PURSUE_ATTACK = 1,
	HEAVY_INFANTRY_PHASE_SKIRMISH_DEFENSE = 3,
	HEAVY_INFANTRY_PHASE_MELEE_DEFENSE = 4,
	HEAVY_INFANTRY_PHASE_PURSUE_DEFENSE = 1,
	HEAVY_INFANTRY_GRAPHICAL_FACTOR = 1.25,

	PIKEMEN_MORALE = 6,
	PIKEMEN_MAINTENANCE = 2,
	PIKEMEN_PHASE_SKIRMISH_ATTACK = 0.1,
	PIKEMEN_PHASE_MELEE_ATTACK = 5,
	PIKEMEN_PHASE_PURSUE_ATTACK = 0.2,
	PIKEMEN_PHASE_SKIRMISH_DEFENSE = 3,
	PIKEMEN_PHASE_MELEE_DEFENSE = 6,
	PIKEMEN_PHASE_PURSUE_DEFENSE = 2,
	PIKEMEN_GRAPHICAL_FACTOR = 1.5,

	LIGHT_CAVALRY_MORALE = 3,
	LIGHT_CAVALRY_MAINTENANCE = 3,
	LIGHT_CAVALRY_PHASE_SKIRMISH_ATTACK = 2.5,
	LIGHT_CAVALRY_PHASE_MELEE_ATTACK = 3,
	LIGHT_CAVALRY_PHASE_PURSUE_ATTACK = 10,
	LIGHT_CAVALRY_PHASE_SKIRMISH_DEFENSE = 5,
	LIGHT_CAVALRY_PHASE_MELEE_DEFENSE = 3,
	LIGHT_CAVALRY_PHASE_PURSUE_DEFENSE = 8,
	LIGHT_CAVALRY_GRAPHICAL_FACTOR = 1,
	
	KNIGHTS_MORALE = 10,
	KNIGHTS_MAINTENANCE = 6,
	KNIGHTS_PHASE_SKIRMISH_ATTACK = 0.5,
	KNIGHTS_PHASE_MELEE_ATTACK = 10,
	KNIGHTS_PHASE_PURSUE_ATTACK = 6,
	KNIGHTS_PHASE_SKIRMISH_DEFENSE = 8,
	KNIGHTS_PHASE_MELEE_DEFENSE = 8,
	KNIGHTS_PHASE_PURSUE_DEFENSE = 4,
	KNIGHTS_GRAPHICAL_FACTOR = 3,

	ARCHERS_MORALE = 1,
	ARCHERS_MAINTENANCE = 1,
	ARCHERS_PHASE_SKIRMISH_ATTACK = 5,
	ARCHERS_PHASE_MELEE_ATTACK = 1,
	ARCHERS_PHASE_PURSUE_ATTACK = 2,
	ARCHERS_PHASE_SKIRMISH_DEFENSE = 3,
	ARCHERS_PHASE_MELEE_DEFENSE = 1,
	ARCHERS_PHASE_PURSUE_DEFENSE = 2,
	ARCHERS_GRAPHICAL_FACTOR = 1,
	
	SPECIAL_TROOPS_MORALE = 5,
	SPECIAL_TROOPS_MAINTENANCE = 2,
	SPECIAL_TROOPS_PHASE_SKIRMISH_ATTACK = 4,
	SPECIAL_TROOPS_PHASE_MELEE_ATTACK = 3,
	SPECIAL_TROOPS_PHASE_PURSUE_ATTACK = 7,
	SPECIAL_TROOPS_PHASE_SKIRMISH_DEFENSE = 4,
	SPECIAL_TROOPS_PHASE_MELEE_DEFENSE = 4,
	SPECIAL_TROOPS_PHASE_PURSUE_DEFENSE = 7,
	SPECIAL_TROOPS_GRAPHICAL_FACTOR = 20.0,

	GALLEYS_MORALE = 1,
	GALLEYS_MAINTENANCE = 300,
	GALLEYS_PHASE_SKIRMISH_ATTACK = 1,
	GALLEYS_PHASE_MELEE_ATTACK = 1,
	GALLEYS_PHASE_PURSUE_ATTACK = 1,
	GALLEYS_PHASE_SKIRMISH_DEFENSE = 1,
	GALLEYS_PHASE_MELEE_DEFENSE = 1,
	GALLEYS_PHASE_PURSUE_DEFENSE = 1,
	GALLEYS_GRAPHICAL_FACTOR = 1,
	
	COMMAND_MODIFIER_MARTIAL_MULTIPLIER = 0.05,
	
	MAX_RIVER_MOVEMENT_FORT_LEVEL = 10.0,
	BOTTLENECK_SIZE_MODIFIER = 1.0,
	BOTTLENECK_DEFENDER_MARTIAL_MODIFIER = 1.0,
	BOTTLENECK_ATTACKER_MARTIAL_MODIFIER = 1.0,
	BOTTLENECK_CHANCE_LEADER_CAP = 95,
	BOTTLENECK_CHANCE_MAX = 100,
	BOTTLENECK_CHOKE_TROOP_CAP = 300,		-- THIS IS SPARTAAAAAAAAA!!!!
	
	REBEL_LEADER_MINIMUM_LIEGE_LEVY_MULT = 1, 	-- Leader of a civil war will always get at least this multiplier of levies from fellow rebels
	CAPITAL_COUNTY_VASSAL_COUNT_LEVY_MULT = 1,	-- Used instead of CAPITAL_COUNTY_LEVY_MULT for vassal counts
	CAPITAL_COUNTY_VASSAL_LEVY_MULT = 1.25,		-- Used instead of CAPITAL_COUNTY_LEVY_MULT for non-count vassals
	CAPITAL_COUNTY_LEVY_MULT = 1.5,				-- Multiplier to direct levies in the capital county
	CAPITAL_COUNTY_LIEGE_LEVY_MULT = 1,			-- Multiplier to liege levies in the capital county
	CAPITAL_DUCHY_VASSAL_LEVY_MULT = 1.15,		-- Used instead of CAPITAL_DUCHY_LEVY_MULT for non-count vassals
	CAPITAL_DUCHY_LEVY_MULT = 1.25,
	CAPITAL_DUCHY_LIEGE_LEVY_MULT = 0.75,
	CAPITAL_KINGDOM_LEVY_MULT = 1,
	CAPITAL_KINGDOM_LIEGE_LEVY_MULT = 0.5,
	CAPITAL_EMPIRE_LEVY_MULT = 1,
	CAPITAL_EMPIRE_LIEGE_LEVY_MULT = 0.35,
	OUTSIDE_LEVY_MULT = 1,						-- Multiplier to direct levies outside all capital regions
	OUTSIDE_LIEGE_LEVY_MULT = 0.25,				-- Multiplier to liege levies outside all capital regions
	
	SUPPLY_CAPACITY = 31,						-- Amount of days of worth supply that a unit can hold.
	OUT_OF_SUPPLY_ATTRITION_BASE = 0.001,		-- The attrition a unit that is out of supply takes.
	OUT_OF_SUPPLY_ATTRITION_INCREASE = 0.0001,	-- The increase per tick of attrition a unit that is out of supply takes.
	OUT_OF_SUPPLY_ATTRITION_TICK = 1,			-- The amount of days per tick for increase of attrition.
	FORAGING_PILLAGE_MODIFIER = 0.15,			-- Modifies how much loot the army takes when re-supplying itself in enemy territory},
	
	MONTHS_OF_UNDECIDED_WAR = 36,				-- Number of months before a war can be won by an attacker unless a major battle is won
	MAJOR_BATTLE_WARSCORE = 5.0					-- The minium warscore gain needed for a battle to be considered major
},

NTechnology = {
	DONT_EXECUTE_TECH_BEFORE = 769,				-- Set this to your earliest starting year
	POINTS_PER_ATTRIBUTE = 0.04,

	BASE_NEIGHBOUR_SPREAD_BONUS = 0.03, 		-- bonus for each neighbour with the tech
	NEIGHBOUR_SAME_RELIGON_GROUP_MULT = 2.0, 	-- multiplier to the above bonus if neighbour is of your religious group
	BASE_DEMESNE_SPREAD_BONUS = 0.06, 			-- bonus for each other province in demesne with the tech
	MAX_DEMESNE_BONUS = 0.3, 					-- maximum bonus from demesne
	FOCUS_BONUS = 2.0, 							-- bonus for the tech in each group set as the focus
	TRADEPOST_SPREAD_BONUS = 0.002, 			-- Spread from trade posts
	SPYACTION_SPREAD_BONUS = 0.006,				-- Spread from the target of the study technology spymaster action
	
	IDEAL_YEAR_LEVEL_0 = 700, 					-- the chance to get a progress to this level will increase after this date and decrease before it
	IDEAL_YEAR_LEVEL_8 = 1500,
	IDEAL_YEAR_AHEAD_PENALTY = -0.2,			-- UNUSED
	IDEAL_YEAR_AHEAD_PENALTY_INVEST = 0.6,		-- Percent increase in cost pre level ahead of ideal date
	
	PAGAN_HOME_ATTRITION_REMOVAL_LEVEL = 4.0,
},  

NDisease = {
	SMALL_TOWN_INCOME = 11.0, -- A coastal town with this income has no chance of starting an outbreak
	BIG_TOWN_INCOME = 30.0, -- A coastal town with this income is always a canditate for starting an outbreak
	MIN_OUTBREAK_CHANCE = 0.1, -- Min chance that an outbreak will happen in a particular town
},

NGraphics = {
	PORT_SHIP_OFFSET = 3.0,
	CITY_SPRAWL_SHRINK_DISTANCE = 150.0, -- Start shrinking at this distance
	CITY_SPRAWL_DRAW_DISTANCE = 200.0, -- Remove at this distance
	CITY_SPRAWL_AMOUNT = 1, -- Size of cities, higher gives larger cities
	CITY_SPRAWL_NUDGE_TAX_VALUE = 50, -- Debug flag
	PROVINCE_NAME_DRAW_DISTANCE = 500.0, -- Remove province names beyond this distance
	MILD_WINTER_VALUE = 90,
	NORMAL_WINTER_VALUE = 145,
	SEVERE_WINTER_VALUE = 255
},

NEngine = {
	EVENT_PROCESS_OFFSET = 20, 	-- Events are checked every X day per character or province (1 is ideal, but CPU heavy)
},

NAI =
{
	INTERACTION_THRESHOLD_FOR_NO = 25,						-- Interactions with chance below this will always be declined
	INTERACTION_THRESHOLD_FOR_YES = 25,						-- Interactions with chance above this will always be accepted
	INTERACTION_MIN_DAYS_REJECTED = 365,					-- AI will remember a rejection at least this time
	INTERACTION_DAYS_REJECTED_RANDOM = 730,					-- Max random extra days AI will reject offer
	INTERACTION_OPINION_CHANGE_TO_DISCARD_REJECTION = 20,	-- AI will reevalute offers if opinion has changed by at least this amount, regardless of time left
	PEACEAI_INITIAL_WARSCORE_RELUCTANCE = -50,				-- Initial (warscore) reluctance for accepting whitepeace
	PEACEAI_STALLED_WAR_WARSCORE_INCREMENT = 70,			-- Warscore reluctance decrease over time
	PEACEAI_STALLED_WAR_WARSCORE_MONTHS = 120,				-- Months until total warscore decrease takes full effect(linear)
	PEACEAI_INITIAL_DEFENDER_WARSCORE_RELUCTANCE = -10,		-- Initial defender (warscore) reluctance for accepting whitepeace
	MIL_AI_COUNTER_INVADE_DISTANCE_THRESHOLD = 120,			-- Defenders in wars will not counter invade past this distance
	CRUSADE_CREATION_MONTH_DELAY = 360,						-- Months from the end of one Crusade before the AI will call a new one
	NAVAL_INVASION_RANGE = 100,								-- Factor which increase AI invasion range if set higher
	DOW_AGGRESSION_FACTOR = 0.5,							-- General aggressiveness declarations of war
	REVOLT_AGGRESSION_FACTOR = 0.75,						-- General aggressiveness for revolts against the liege
	REVOLT_DISTANCE_FACTOR = 1.0,							-- Multiplier for how much distance from capital affects independence minded revolters
	REVOLT_OTHER_INDEP_RISK = 10,							-- Each ongoing other independence revolt increases revolt risk by this amount for all independence-minded revolters
	REVOLT_OTHER_INDEP_RISK_CAP = 50,						-- Cap to the total risk from the above
	MARRIAGE_AI_PRESTIGE_VALUE = 0.33,						-- Multiplier for how highly AI values prestige when arranging marriages and evaluating marriage offers
	MAX_KING_TITLES_TO_CREATE = 0,							-- AI will not seek to create/usurp more King-level titles than this (0 for unlimited)
	MAX_EMPIRE_TITLES_TO_CREATE = 0,						-- AI will not seek to create/usurp more Empire-level titles than this (0 for unlimited)
	AI_EMPEROR_CREATES_KINGDOMS = 0,						-- If set to 1, AI Emperors will create King-level titles
	AI_EMPEROR_CREATES_VICE_ROYALTY_KINGDOMS = 1,			-- If set to 1, AI Emperors with the kingdom viceroyalty law will create King-level titles regardless of the setting above
	AI_ALWAYS_CREATES_DUCHIES = 0,							-- If set to 1, AI will always create Duchy titles even if it has Gavelkind etc
	AI_ASSAULT_RATIO = 10,									-- AI will launch assaults at this ratio of attackers to defenders
	HARD_DIFF_AI_ATTRITION = 0.5,							-- AI attrition multiplier at Hard difficulty
	V_HARD_DIFF_AI_ATTRITION = 0.25,						-- AI attrition multiplier at Very Hard difficulty
	MINIMUM_IMPRISONED_YEARS = 2,							-- AI will keep a newly imprisoned character locked up at least this long before releasing them (reduced for important characters)
	BASE_AI_ARMY_SIZE = 10000,								-- Base size that AI will use when forming armies (multiplied by supply tech)
	DESIRED_CONSORTS = 0,									-- AI will always want at least this many concubines, if they lack sons
	RAID_MAX_REALM_SIZE = 24,								-- Realms with more holdings than this will never go on Raids
	RAID_AGGRESSION = 18,									-- General frequency of raids. A LOWER number means more often!
	RAID_PREP_INV_SPARE_SAME_CULTURE = 1,					-- AI of religions that allow prepared invasions will not raid provinces in their own culture group (to prevent intra-Scandinavian raids)
	RAID_SPARE_ACCEPTED_RELIGIONS = 1,						-- AI will not raid rulers of other religions in the same religion group, unless heresy vs parent religion
	TRIBAL_VASSAL_EXTRA_CALL_CHANCE = 40,					-- Extra AI willingness to join calls from their liege if they are tribal vassals
	
	TRIBAL_REPUBLIC_THRESHOLD = 60,							-- Determines if AI chooses to become republic or not
	TRIBAL_REPUBLIC_STEWARDSHIP_MODIFIER = 5,				-- How much each stewardship counts toward the threshold above
	TRIBAL_REPUBLIC_GREEDY_MODIFIER = 10,					-- How much the greedy trait counts toward the threshold above
	TRIBAL_REPUBLIC_CHARITABLE_MODIFIER = -10,				-- How much the charitable trait counts toward the threshold above
	TRIBAL_REPUBLIC_INDULGENT_WASTREL_MODIFIER = 5,			-- How much the indulgent wastrel trait counts toward the threshold above
	TRIBAL_REPUBLIC_THRIFTY_CLERK_MODIFIER = 10,			-- How much the thrifty clerk trait counts toward the threshold above
	TRIBAL_REPUBLIC_FORTUNE_BUILDER_MODIFIER = 15,			-- How much the fortune builder trait counts toward the threshold above
	TRIBAL_REPUBLIC_MIDAS_TOUCHED_MODIFIER = 20,			-- How much the midas touched trait counts toward the threshold above
	TRIBAL_PRESTIGE_CALL_TRESHOLD = -100, 					-- The treshold needed for the AI to start considering answering call to not take the prestige hit
},

NFrontend = 
{
	CAMERA_LOOKAT_X = 790.0, 			-- Rotation point in main menu
	CAMERA_LOOKAT_Y = 0.0,
	CAMERA_LOOKAT_Z = 1000.0,
	CAMERA_LOOKAT_SETTINGS_X = 1400.0,  -- Rotation point in settings
	CAMERA_LOOKAT_SETTINGS_Y = 0.0,		-- Y is height
	CAMERA_LOOKAT_SETTINGS_Z = 648.0,
	CAMERA_START_X = 790.0,				-- Initial position in main menu
	CAMERA_START_Y = 150.0,				-- Y is height
	CAMERA_START_Z = 500.0,
	CAMERA_END_X = 790.0,				-- Move to position in main menu
	CAMERA_END_Y = 500.0,
	CAMERA_END_Z = 600.0,
	CAMERA_MIN_DIST_FOR_ROTATE = 800.0, -- Controlls when rotation starts. When camera is close enought it starts
	TIME_FROZEN = 1.0,  				-- Time before initial animation starts (some deylay here so it should NOT be 0, then the animation starts before you can see it)
	TIME_UNTIL_ROTATE = 1.5, 			-- Time when rotation start (from begining of time)
	CAMERA_SPEED_START = 0.04,  			-- Initial animation speed
	CAMERA_SPEED_ROTATE = 0.04,			-- Rotation speed
	GUI_MOVE_SPEED = 300,				-- How fast sliding gui objects move ( pixels/s )
	
	FADE_IN_DONE_TIME = 2.2,
	GUI_START_MOVE_TIME = 1.4,
	CAMERA_START_MOVE_TIME = 3.0,
	
	CAMERA_SPEED_IN_MENUS = 0.1,
	
	FRONTEND_POS_X = 790.0,
	FRONTEND_POS_Y = 500.0,
	FRONTEND_POS_Z = 600.0,
	FRONTEND_LOOK_X = 790.0,
	FRONTEND_LOOK_Y = 0.0,
	FRONTEND_LOOK_Z = 1000.0,
	
	SETTINGS_POS_X = 790.0,
	SETTINGS_POS_Y = 500.0,
	SETTINGS_POS_Z = 400.0,
	SETTINGS_LOOK_X = 1400.0,
	SETTINGS_LOOK_Y = 0.0,		
	SETTINGS_LOOK_Z = 648.0,
	
	MP_OPTIONS_POS_X = 360.0,
	MP_OPTIONS_POS_Y = 200.0,
	MP_OPTIONS_POS_Z = 848.0,
	MP_OPTIONS_LOOK_X = 490.0,
	MP_OPTIONS_LOOK_Y = 0.0,	
	MP_OPTIONS_LOOK_Z = 1200.0,
	
	TUTORIAL_POS_X = 600.0,
	TUTORIAL_POS_Y = 150.0,
	TUTORIAL_POS_Z = 1248.0,
	TUTORIAL_LOOK_X = 450.0,
	TUTORIAL_LOOK_Y = 0.0,	
	TUTORIAL_LOOK_Z = 1398.0,
	
	CREDITS_POS_X = 1000.0,
	CREDITS_POS_Y = 200.0,
	CREDITS_POS_Z = 1308.0,
	CREDITS_LOOK_X = 900.0,
	CREDITS_LOOK_Y = 0.0,	
	CREDITS_LOOK_Z = 1450.0,
},

NEndGame = 
{
	DYN1_SCORE = 100000,
	DYN1_ID = 743,
	DYN2_SCORE = 90000,
	DYN2_ID = 51,
	DYN3_SCORE = 80000,
	DYN3_ID = 705,
	DYN4_SCORE = 70000,
	DYN4_ID = 681,
	DYN5_SCORE = 60000,
	DYN5_ID = 699,
	DYN6_SCORE = 50000,
	DYN6_ID = 634,
	DYN7_SCORE = 40000,
	DYN7_ID = 106,
	DYN8_SCORE = 30000,
	DYN8_ID = 487,
	DYN9_SCORE = 20000,
	DYN9_ID = 155,
	DYN10_SCORE = 15000,
	DYN10_ID = 650,
	DYN11_SCORE = 10000,
	DYN11_ID = 100239,
	DYN12_SCORE = 7500,
	DYN12_ID = 261,
	DYN13_SCORE = 5000,
	DYN13_ID = 4003,
	DYN14_SCORE = 2000,
	DYN14_ID = 756,
	DYN15_SCORE = 1000,
	DYN15_ID = 7290,
},

NRulerDesigner =
{
	BASE_ATTRIB = 5,
	BASE_AGE = 16,
	BASE_FERTILITY = 0.5,
	BASE_HEALTH = 5.0,
	COST_ATTRIB = 1.0,
	COST_SON = 3.0,
	COST_DAUGHTER = 2.0,
	COST_MARRIED = 2.0,
	COST_FERTILITY = 20.0,
	COST_HEALTH = 10.0,
	COST_MONTHLY_PRESTIGE = 10.0,
	COST_MONTHLY_PIETY = 20.0,
	COST_MONTHLY_WEALTH = 10.0,
	COST_GLOBAL_TAX = 50.0,
	COST_CHURCH_OPINION = 0.5,
	COST_SPOUCE_OPINION = 0.5,
	COST_SEXAPPEAL_OPINION = 0.5,
	COST_DYNASTY_OPINION = 0.5,
	COST_VASSAL_OPINION = 1.0,
	COST_LIEGE_OPINION = 0.0,
	COST_INFIDEL_OPINION = 0.0,
	COST_OPPOSITE_TRAIT_OPINION = 0.5,
	COST_SAME_TRAIT_OPINION = 0.5,
	COST_SAME_RELIGION_OPINION = 0.5,
	COST_AMBITION_OPINION = 0.0,
	COST_TRIBAL_OPINION = 0.0,
	COST_GENERAL_OPINION = 1.0,
	COST_MUSLIM_OPINION = 0.25,
	COST_JEWISH_OPINION = 0.25,
	COST_CHRISTIAN_OPINION = 0.25,
    COST_ZOROASTRIAN_OPINION = 0.25,
	COST_MORALE_OFFENCE = 50.0,
	COST_MORALE_DEFENCE = 50.0,
	COST_DEFENCE = 50.0,
	MAX_AGE = 50
},

NLearningScenario = 
{
	START_YEAR = 1066,
	START_MONTH = 8,
	START_DAY = 14,
	START_CHARACTER = 108500,
	FIRST_EVENT = 107000,
	HAS_WIFE_EVENT = 107100,
	ANGRY_VASSAL = 108510,
	REVOLT_PROVINCE = 192,
	REVOLT_EVENT = 107201,
	TOG_REVOLT_EVENT = 107200,
	COMBAT_EVENT = 107202,
	AFTER_REVOLT_EVENT = 107250,
	FABRICATE_CLAIM_EVENT = 913,
	HAS_CLAIM_EVENT = 107300,
	WAR_EVENT = 107301,
	SIEGE_EVENT = 107306,
	CAN_PEACE_EVENT = 107310,
	PEACE_TRETIES_EVENT = 107311,
	AFTER_PEACE_EVENT = 107320,
	FIRST_INTRIGUE_CHARACTER = 107500,
	FIRST_INTRIGUE_EVENT = 107340,
	SECOND_INTRIGUE_CHARACTER = 109500,
	SECOND_INTRIGUE_EVENT = 107343,
	AFTER_INTRIGUE_EVENT = 107344,
	FACTION_CHARACTER = 108501,
	FACTION_EVENT = 107345,
	OVER_DEMESNE_LIMIT_EVENT = 107325,
	OVER_VASSAL_LIMIT_EVENT = 107326,
	TECHNOLOGY_EVENT = 107332,
	HAS_SON_EVENT = 107330,
	HAS_DAUGHTER_EVENT = 107331,
	HAS_SON_AFTER_DAUGHTER_EVENT = 107333,
	DEATH_AGE = 40,
	DEATH_EVENT = 107350,
	INCAPABLE_EVENT = 107360,
	CAN_EDUCATE_HEIR_EVENT = 107334
}

}
