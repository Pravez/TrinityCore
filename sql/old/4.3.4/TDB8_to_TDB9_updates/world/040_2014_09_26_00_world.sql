DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=13 AND  `SourceEntry` IN(60532,60545,60456);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 3, 60532, 0, 0, 31, 0, 3, 32184, 0, 0, 0, 0, '', 'Heart Explosion Effects effects 1 & 2 Target the Lich King'),
(13, 3, 60532, 0, 1, 31, 0, 3, 32272, 0, 0, 0, 0, '', 'Heart Explosion Effects effects 1 & 2 Target High Invoker Basaleph'),
(13, 4, 60532, 0, 0, 31, 0, 3, 32272, 0, 0, 0, 0, '', 'Heart Explosion Effects effect 3 Targets High Invoker Basaleph'),
(13, 1, 60545, 0, 0, 31, 0, 3, 32175, 0, 0, 0, 0, '', 'Koltiras Revenge targets Chosen Zealot'),
(13, 1, 60456, 0, 0, 31, 0, 3, 32184, 0, 0, 0, 0, '', 'Tirion Smashes Heart targets The Lich King');

DELETE FROM `spell_target_position` WHERE `id`=60585;
INSERT INTO `spell_target_position` (`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `VerifiedBuild`) VALUES 
(60585, 0, 571, 6488.41, 411.684, 481.937, 4.74, 0);

DELETE FROM `creature_text` WHERE `entry` IN(32239,32311,32312,32184,32241);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`,`BroadcastTextID`) VALUES
(32239, 0, 0, 'It is time.  May the Light give us strength.', 12, 0, 100, 0, 0, 0, 'Highlord Tirion Fordring',32578),
(32239, 1, 0, 'Keep your heads down and follow my lead.', 12, 0, 100, 0, 0, 0, 'Highlord Tirion Fordring',32616),
(32239, 2, 0, 'Here it comes.  Stand ready.', 12, 0, 100, 0, 0, 0, 'Highlord Tirion Fordring',32619),
(32239, 3, 0, 'Something''s wrong... I sense a dark presence.', 12, 0, 100, 0, 0, 0, 'Highlord Tirion Fordring',32620),
(32239, 4, 0, 'The Lich King is here.  May the Light guide our blades.', 12, 0, 100, 0, 0, 0, 'Highlord Tirion Fordring',32621),
(32239, 5, 0, 'You sound a little too confident.  Especially considering the way our last encounter ended.', 12, 0, 100, 25, 0, 0, 'Highlord Tirion Fordring',32592),
(32239, 6, 0, 'That might be, but I don''t need to stand on holy ground to run that disembodied heart of yours with the Ashbringer.', 12, 0, 100, 1, 0, 0, 'Highlord Tirion Fordring',32589),
(32239, 7, 0, 'The heart... the last remaining vestige of your humanity.  I had to stop it from being destroyed.  I had to see for myself.  And at last I''m sure...', 12, 0, 100, 1, 0, 0, 'Highlord Tirion Fordring',32590),
(32239, 8, 0, 'Only shadows from the past remain.  There''s nothing left to redeem!', 12, 0, 100, 0, 0, 0, 'Highlord Tirion Fordring',32595),
(32311, 0, 0, 'Take courage, crusaders.  You do not fight alone!', 14, 0, 100, 0, 0, 0, 'Koltira Deathweaver',32708),
(32311, 1, 0, 'The Lich King is badly hurt.  We ought to stay behind and finish him.', 12, 0, 100, 0, 0, 0, 'Koltira Deathweaver',32725),
(32312, 0, 0, 'Quick, through the portal!  He won''t stay down for long.', 12, 0, 100, 0, 0, 0, 'Highlord Darion Mograine',32707),
(32312, 1, 0, 'Patience... we will get our chance soon enough.  Be content that for once, it is Tirion who is in our debt.', 12, 0, 100, 0, 0, 0, 'Highlord Darion Mograine',32726),
(32184, 0, 0, 'Uninvited guests!  Did you think you''d go unnoticed inside my dominion?', 12, 0, 100, 1, 0, 0, 'The Lich King',32582),
(32184, 1, 0, 'I must confess... you were not altogether unexpected.  I hope you find your final resting place... to your liking.', 12, 0, 100, 1, 0, 0, 'The Lich King',32585),
(32184, 2, 0, 'Last time we met, you had the advantage of fighting on holy ground.  You''ll find that our situation has been... reversed.', 12, 0, 100, 11, 0, 0, 'The Lich King',32588),
(32184, 3, 0, 'I call your bluff.  You''re a paladin after all.  Your obsession with redemption goes beyond the inane.', 12, 0, 100, 1, 0, 0, 'The Lich King',32593),
(32184, 4, 0, 'You surely wouldn''t destroy humanity''s only chance to redeem its most wayward son.  You''d sooner die!', 12, 0, 100, 1, 0, 0, 'The Lich King',32594),
(32184, 5, 0, 'Arrrrggggggggggh!!!!', 14, 0, 100, 34, 0, 0, 'The Lich King',32694),
(32184, 6, 0, 'You... will pay for that, old man.  Slay them all!', 14, 0, 100, 0, 0, 0, 'The Lich King',32698),
(32241, 0, 0, 'Tirion''s down!  Defend him with your lives!', 14, 0, 100, 0, 0, 0, 'Disguised Crusader',32687);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN(32239,32241,32184,24042,32175,32312,32309,32310,32311);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(32239,32241,-74513,-74514,-74515,32184,24042,32175,32312,32309,32310,32311) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(3223900,3218400,3217500,3217501,3217502,3217503,3217504,3217505,3231200) AND `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3231200, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 61487, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - Script - Cast Tirions Gambit Event Credit'),
(3231200, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - Script - Say Line 0'),
(3231200, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - Script - Say Line 0'),
(3231200, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - Script - Say Line 0'),
(3231200, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - Script - Say Line 0'),
(3231200, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 50, 193941, 120, 0, 0, 0, 0, 8, 0, 0, 0, 6133.566, 2757.817, 573.914, 0, 'Highlord Darion Mograine - On Data Set 2 2 - Cast Tirions Gambit Event Credit'),
(3231200, 9, 6, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, 32311, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - Script - Say Line 1 on Koltira Deathweaver'),
(3231200, 9, 7, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - Script - Say Line 1 on Darion Mograine'),
(3231200, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 6, 6, 0, 0, 0, 0, 19, 32239, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - Script - Set Data on Highlord Tirion Fordring'),
(3231200, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 19, 32310, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - Script - Set Data on Highlord Tirion Fordring'),
(3231200, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 19, 32311, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - Script - Set Data on Highlord Tirion Fordring'),
(3231200, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 9, 32309, 0, 200, 0, 0, 0, 0, 'Highlord Darion Mograine - Script - Set Data on Highlord Tirion Fordring'),
(3231200, 9, 12, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 4, 4, 0, 0, 0, 0, 9, 32241, 0, 200, 0, 0, 0, 0, 'Highlord Darion Mograine - Script - Set Data on Disguised Crusader'),
(3231200, 9, 13, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 45, 6, 6, 0, 0, 0, 0, 9, 32241, 0, 200, 0, 0, 0, 0, 'Highlord Darion Mograine - Script - Set Data on Disguised Crusader'),
(3231200, 9, 14, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 60000, 6, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - Script - Despawn'),
(3231200, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 32184, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - Script - Despawn'),
(3217500, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 29, 4, 1, 0, 0, 0, 0, 21, 200, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - Script 1 - Follow Player'),
(3217501, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 29, 4, 2, 0, 0, 0, 0, 21, 200, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - Script 1 - Follow Player'),
(3217502, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 29, 4, 3, 0, 0, 0, 0, 21, 200, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - Script 1 - Follow Player'),
(3217503, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 29, 4, 4, 0, 0, 0, 0, 21, 200, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - Script 1 - Follow Player'),
(3217504, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 29, 4, 5, 0, 0, 0, 0, 21, 200, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - Script 1 - Follow Player'),
(3217505, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 29, 4, 6, 0, 0, 0, 0, 21, 200, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - Script 1 - Follow Player'),
(3223900, 9, 0, 0, 0, 0, 100, 0, 15000, 15000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - Script - Say Line 2'),
(3223900, 9, 1, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - Script - Say Line 3'),
(3223900, 9, 2, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - Script - Say Line 4'),
(3223900, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 32184, 1, 300000, 0, 0, 0, 8, 0, 0, 0, 6180.305, 2657.647, 573.8704, 1.999412, 'Highlord Tirion Fordring - Script - Summon The Lich King'),
(3218400, 9, 0, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 32239, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Set Data 1 1 (Highlord Tirion Fordring)'),
(3218400, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 32239, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Face Highlord Tirion Fordring'),
(3218400, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Say Line 0'),
(3218400, 9, 3, 0, 0, 0, 100, 0, 11000, 11000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Say Line 1'),
(3218400, 9, 4, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 19, 32239, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Say Line 5 (Highlord Tirion Fordring)'),
(3218400, 9, 5, 0, 0, 0, 100, 0, 5500, 5500, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Say Line 2'),
(3218400, 9, 6, 0, 0, 0, 100, 0, 5500, 5500, 0, 0, 1, 6, 0, 0, 0, 0, 0, 19, 32239, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Say Line 6 (Highlord Tirion Fordring)'),
(3218400, 9, 7, 0, 0, 0, 100, 0, 5500, 5500, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Say Line 3'),
(3218400, 9, 8, 0, 0, 0, 100, 0, 11000, 11000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Say Line 4'),
(3218400, 9, 9, 0, 0, 0, 100, 0, 5500, 5500, 0, 0, 1, 7, 0, 0, 0, 0, 0, 19, 32239, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Say Line 7 (Highlord Tirion Fordring)'),
(3218400, 9, 10, 0, 0, 0, 100, 0, 11000, 11000, 0, 0, 1, 8, 0, 0, 0, 0, 0, 19, 32239, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Say Line 8 (Highlord Tirion Fordring)'),
(3218400, 9, 11, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 45, 2, 2, 0, 0, 0, 0, 19, 32239, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Set Data 2 2 (Highlord Tirion Fordring)'),
(3218400, 9, 12, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 9, 32241, 0, 200, 0, 0, 0, 0, 'The Lich King - Script - Set Data 2 2 (Disguised Crusader)'),
(3218400, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 19, 32239, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Set Data 3 3 (Highlord Tirion Fordring)'),
(3218400, 9, 14, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 34, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Play emote OneShotWoundCritical'),
(3218400, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Say Line 5'),
(3218400, 9, 16, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 124725, 24042, 0, 0, 0, 0, 0, 'The Lich King - Script - Set Data 1 1 (Generic Trigger LAB)'),
(3218400, 9, 17, 0, 0, 0, 100, 0, 500, 500, 0, 0, 90, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Set Bytes 1'),
(3218400, 9, 18, 0, 0, 0, 100, 0, 0, 0, 0, 0, 18, 512, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Set Immune to NPc'),
(3218400, 9, 19, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 9, 32241, 0, 200, 0, 0, 0, 0, 'The Lich King - Script - Set Data 3 3 (Disguised Crusader)'),
(3218400, 9, 20, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 32241, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Say Line 0 (Disguised Crusader)'),
(3218400, 9, 21, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 5, 5, 0, 0, 0, 0, 9, 32241, 0, 200, 0, 0, 0, 0, 'The Lich King - Script - Set Data 5 5 (Disguised Crusader)'),
(3218400, 9, 22, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Say Line 5'),
(3218400, 9, 23, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 32175, 0, 200, 0, 0, 0, 0, 'The Lich King - Script - Say Line 5'),
(3218400, 9, 24, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 12, 32312, 1, 300000, 0, 0, 0, 8, 0, 0, 0, 6173.659, 2673.544, 574.2061, 1.987102, 'The Lich King - Script - Set Data Chosen Zealot'),
(3218400, 9, 25, 0, 0, 0, 100, 0, 180000, 180000, 0, 0, 45, 2, 2, 0, 0, 0, 0, 19, 32311, 0, 0, 0, 0, 0, 0, 'The Lich King - Script - Set Data 2 2 on Koltira Deathweaver'),
(32309, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 29, 5, 0, 0, 0, 0, 0, 19, 32312, 0, 0, 0, 0, 0, 0, 'Ebon Knight - On Just Summoned - Follow  Highlord Darion Mograine'),
(32310, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 53, 0, 32310, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thassarian - On Just Summoned - Start WP'),
(32311, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 53, 0, 32311, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Koltira Deathweaver - On Just Summoned - Start WP'),
(32309, 0, 1, 2, 38, 0, 100, 0, 1, 1, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ebon Knight - On Data Set - Set Home Position'),
(32310, 0, 1, 2, 40, 0, 100, 0, 8, 32310, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thassarian - On Data Set - Set Home Position'),
(32311, 0, 1, 2, 40, 0, 100, 0, 12, 32311, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Koltira Deathweaver - On Data Set - Set Home Position'),
(32309, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ebon Knight - On Data Set - Set Hostile'),
(32310, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thassarian - On Data Set - Set Hostile'),
(32311, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Koltira Deathweaver - On Data Set - Set Hostile'),
(32311, 0, 3, 0, 38, 0, 100, 0, 2, 2, 0, 0, 11, 60545, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Koltira Deathweaver - On Data Set - Cast Koltiras Revenge'),
(32309, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 42, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ebon Knight - On Data Set - Set Invincibility HP'),
(32309, 0, 4, 5, 38, 0, 100, 0, 3, 3, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ebon Knight - On Data Set - Set Passive'),
(32310, 0, 4, 5, 38, 0, 100, 0, 3, 3, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thassarian - On Data Set - Set Passive'),
(32311, 0, 4, 5, 38, 0, 100, 0, 3, 3, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Koltira Deathweaver - On Data Set - Set Passive'),
(32309, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 41, 60000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ebon Knight - On Data Set - Despawn After 30 seconds'),
(32310, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 41, 60000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thassarian - On Data Set - Despawn After 30 seconds'),
(32311, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 41, 60000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Koltira Deathweaver - On Data Set - Despawn After 30 seconds'),
(32309, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ebon Knight - On Data Set - Evade'),
(32310, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thassarian - On Data Set - Evade'),
(32311, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Koltira Deathweaver - On Data Set - Evade'),
(24042, 0, 0, 1, 38, 0, 100, 0, 1, 1, 0, 0, 11, 60484, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Generic Trigger LAB - OLD - On Data Set - Cast Heart Explosion'),
(24042, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 60532, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Generic Trigger LAB - OLD - On Data Set - Cast Heart Explosion Effects'),
(32175, 0, 0, 1, 38, 0, 100, 0, 2, 2, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - On Data Set 2 2 - Set Aggresive'),
(32175, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 90, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - On Data Set 2 2 - Set Bytes 1'),
(32175, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - On Data Set 2 2 - Set Emote State None'),
(32175, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - On Data Set 2 2 - Evade'),
(32175, 0, 4, 5, 38, 0, 100, 0, 1, 1, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - On Data Set 1 1 - Set Passive'),
(32175, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 17, 27, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - On Data Set 2 2 - Set Emote State - STATE_READYUNARMED'),
(32175, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 91, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - On Data Set 2 2 - Set Bytes 1'),
(32175, 0, 7, 9, 61, 0, 100, 0, 0, 0, 0, 0, 87, 3217500, 3217501, 3217502, 3217503, 3217504, 3217505, 1, 0, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - On Data Set 1 1 - Run Random Script'),
(32175, 0, 8, 0, 38, 0, 100, 0, 3, 3, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - On Data Set 2 2 - Set Aggresive'),
(32175, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - On Data Set 1 1 - Set Phase 2'),
(32175, 0, 10, 0, 1, 2, 100, 0, 0, 0, 1000, 1000, 66, 0, 0, 0, 0, 0, 0, 21, 100, 0, 0, 0, 0, 0, 0, 'Chosen Zealot - OOC (Phase 2) - Set Orientation'),
(32239, 0, 0, 1, 62, 0, 100, 0, 10200, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Gossip Select - Close Gossip Menu'),
(32239, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Gossip Select - Set Npc Flags'),
(32239, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 32241, 0, 200, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Gossip Select - Set Data Disguised Crusader'),
(32239, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Gossip Select - Set Emote State 0'),
(32239, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Gossip Select - Say Line 0'),
(32239, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 53, 0, 32239, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Gossip Select - Start WP'),
(32239, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 91, 35536, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Gossip Select - Start WP'),
(32239, 0, 7, 8, 40, 0, 100, 1, 5, 32239, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Reached WP5 - Say Line 1'),
(32239, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 32272, 1, 300000, 0, 0, 0, 8, 0, 0, 0, 6131.263, 2763.725, 573.9973, 5.131268, 'Highlord Tirion Fordring - On Reached WP5 - Summon High Invoker Basaleph'),
(32239, 0, 9, 0, 40, 0, 100, 1, 13, 32239, 0, 0, 80, 3223900, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Reached WP13 - Run Script'),
(32239, 0, 10, 0, 38, 0, 100, 0, 1, 1, 0, 0, 53, 0, 3223900, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Data Set - Start WP (Path 2)'),
(32239, 0, 11, 13, 40, 0, 100, 1, 3, 3223900, 0, 0, 71, 0, 0, 13262, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Reached WP3 (Path2) - Equip Item'),
(32239, 0, 12, 0, 38, 0, 100, 0, 2, 2, 0, 0, 11, 60456, 0, 0, 0, 0, 0, 19, 32184, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Data Set - Cast Tirion Smashes Heart'),
(32239, 0, 13, 0, 61, 0, 100, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Reached WP3 (Path 2) - Set Home Position'),
(32239, 0, 14, 15, 38, 0, 100, 0, 3, 3, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 32184, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Data Set - Set Orientation'),
(32239, 0, 15, 0, 61, 0, 100, 0, 0, 0, 0, 0, 90, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Data Set - Set Bytes 1'),
(32239, 0, 16, 0, 38, 0, 100, 0, 6, 6, 0, 0, 41, 60000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Data Set - Despawn'),
(32184, 0, 0, 3, 54, 0, 100, 0, 0, 0, 0, 0, 53, 0, 32184, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - On Just Summoned - Start WP'),
(32184, 0, 1, 2, 40, 0, 100, 0, 6, 32184, 0, 0, 80, 3218400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - On Reached WP8 - Run Script'),
(32184, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - On Reached WP8 - Set Home Position'),
(32184, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 102, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - On Reached WP8 - Switch HP Regen off'),
(32184, 0, 4, 0, 38, 0, 100, 0, 1, 1, 0, 0, 41, 60000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - On Data Set - Despawn'),
(32312, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 53, 0, 32312, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - On Just Summoned - Start WP'),
(32312, 0, 1, 0, 40, 0, 100, 1, 8, 32312, 0, 0, 107, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - On Reached WP1 - Summon Group'),
(32312, 0, 2, 3, 40, 0, 100, 1, 14, 32312, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - On Reached WP9 - Set Home Position'),
(32312, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 32309, 0, 200, 0, 0, 0, 0, 'Highlord Darion Mograine - On Reached WP9 - Set Data 1 1 Ebon Knight'),
(32312, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 32310, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - On Reached WP9 - Set Data 1 1 Thassarian'),
(32312, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 32311, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - On Reached WP9 - Set Data 1 1 Koltira'),
(32312, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 32311, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - On Reached WP9 - Set Data 1 1 Koltira'),
(32312, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - On Reached WP9 - Set Hostile'),
(32312, 0, 8, 10, 61, 0, 100, 0, 0, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 9, 32175, 0, 200, 0, 0, 0, 0, 'Highlord Darion Mograine - On Reached WP9 - Set Data 3 3 Chosen Zealot'),
(32312, 0, 9, 0, 7, 2, 100, 0, 0, 0, 0, 0, 80, 3231200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - On Evade (Phase 2) - Run Script'),
(32312, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Darion Mograine - On Just Summoned - Set Phase 2'),
(-74513, 0, 0, 1, 38, 0, 100, 0, 1, 1, 0, 0, 53, 0, 3224100, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 1 - On Data Set - Start WP'),
(-74514, 0, 0, 1, 38, 0, 100, 0, 1, 1, 0, 0, 53, 0, 3224101, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 2 - On Data Set - Start WP'),
(-74515, 0, 0, 1, 38, 0, 100, 0, 1, 1, 0, 0, 53, 0, 3224102, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 3 - On Data Set - Start WP'),
(-74513, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 91, 65536, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 1 - On Data Set - Remove Bytes 1'),
(-74514, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 91, 65536, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 2 - On Data Set - Remove Bytes 1'),
(-74515, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 91, 65536, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 3 - On Data Set - Remove Bytes 1'),
(-74513, 0, 2, 0, 38, 0, 100, 0, 2, 2, 0, 0, 53, 0, 3224103, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 1 - On Data Set - Start WP Path 2'),
(-74514, 0, 2, 0, 38, 0, 100, 0, 2, 2, 0, 0, 53, 0, 3224104, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 2 - On Data Set - Start WP Path 2'),
(-74515, 0, 2, 0, 38, 0, 100, 0, 2, 2, 0, 0, 53, 0, 3224105, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 3 - On Data Set - Start WP Path 2'),
(-74513, 0, 3, 7, 40, 0, 100, 0, 3, 3224103, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 1 - On Reached WP3 (Path 2) - Set Home Position'),
(-74514, 0, 3, 7, 40, 0, 100, 0, 3, 3224104, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 2 - On Reached WP3 (Path 2) - Set Home Position'),
(-74515, 0, 3, 7, 40, 0, 100, 0, 2, 3224105, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 3 - On Reached WP1 (Path 2) - Set Home Position'),
(-74513, 0, 4, 5, 38, 0, 100, 0, 3, 3, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 32184, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 1 - On Data Set - Set Oriietation'),
(-74514, 0, 4, 5, 38, 0, 100, 0, 3, 3, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 32184, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 2 - On Data Set - Set Orientation'),
(-74515, 0, 4, 5, 38, 0, 100, 0, 3, 3, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 32184, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 3 - On Data Set - Set Orientation'),
(-74513, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 17, 375, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 1 - On Data Set - Set Emote State'),
(-74514, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 17, 375, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 2 - On Data Set - Set Emote State'),
(-74515, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 17, 375, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 3 - On Data Set - Set Emote State'),
(-74513, 0, 6, 0, 38, 0, 100, 0, 6, 6, 0, 0, 41, 60000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader - On Data Set - Despawn'),
(-74514, 0, 6, 0, 38, 0, 100, 0, 6, 6, 0, 0, 41, 60000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader - On Data Set - Despawn'),
(-74515, 0, 6, 0, 38, 0, 100, 0, 6, 6, 0, 0, 41, 60000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader - On Data Set - Despawn'),
(-74513, 0, 7, 8, 61, 0, 100, 0, 5, 5, 0, 0, 42, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 1 - On Data Set - Set Invincibility HP'),
(-74514, 0, 7, 8, 61, 0, 100, 0, 5, 5, 0, 0, 42, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 2 - On Data Set - Set Invincibilty HP'),
(-74515, 0, 7, 8, 61, 0, 100, 0, 5, 5, 0, 0, 42, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 3 - On Data Set - Set Invincibility HP'),
(-74513, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 1 - On Data Set - Set Hostile'),
(-74514, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 2 - On Data Set - Set Hostile'),
(-74515, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 3 - On Data Set - Set Hostile'),
(-74513, 0, 9, 10, 38, 0, 100, 0, 4, 4, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 1 - On Data Set - Set Passive'),
(-74514, 0, 9, 10, 38, 0, 100, 0, 4, 4, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 2 - On Data Set - Set Passive'),
(-74515, 0, 9, 10, 38, 0, 100, 0, 4, 4, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 3 - On Data Set - Set Set Passive'),
(-74513, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 1 - On Data Set - Evade'),
(-74514, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 2 - On Data Set - Evade'),
(-74515, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disguised Crusader 3 - On Data Set - Evade');


DELETE FROM `waypoints` WHERE `entry` IN(32239,3224100,3224101,3224102,3223900,3224103,3224104,3224105,32312,32184,32311,32310);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
-- Owner GUID: Full: 0xF1307DF1007193AC Type: Unit Entry: 32241 Low: 7443372
(3224100, 1,6255.6, 2654.405, 570.5411, 'Disguised Crusader 1'),
(3224100, 2,6249.35, 2645.405, 570.5411, 'Disguised Crusader 1'),
(3224100, 3,6230.1, 2629.655, 570.5411, 'Disguised Crusader 1'),
(3224100, 4,6217.1, 2622.655, 570.5411, 'Disguised Crusader 1'),
(3224100, 5,6205.6, 2622.405, 570.5411, 'Disguised Crusader 1'),
(3224100, 6,6196.85, 2623.905, 570.5411, 'Disguised Crusader 1'),
(3224100, 7,6185.403, 2647.951, 572.0817, 'Disguised Crusader 1'),
(3224100, 8,6178.403, 2662.951, 574.8317, 'Disguised Crusader 1'),
(3224100, 9,6164.403, 2693.701, 574.0817, 'Disguised Crusader 1'),
(3224100, 10,6157.653, 2708.701, 574.0817, 'Disguised Crusader 1'),
(3224100, 11,6148.903, 2727.201, 574.0817, 'Disguised Crusader 1'),
(3224100, 12,6153.403, 2736.701, 574.0817, 'Disguised Crusader 1'),
(3224100, 13,6178.653, 2749.201, 574.0817, 'Disguised Crusader 1'),
(3224100, 14,6170.568, 2762.95, 573.914, 'Disguised Crusader 1'),
-- Owner GUID: Full: 0xF1307DF1007193AC Type: Unit Entry: 32241 Low: 7443372
(3224103, 1,6162.497, 2759.066, 574.164, 'Disguised Crusader 1 Path 2'),
(3224103, 2,6151.747, 2762.066, 574.164, 'Disguised Crusader 1 Path 2'),
(3224103, 3,6140.247, 2763.566, 574.164, 'Disguised Crusader 1 Path 2'),
-- Owner GUID: Full: 0xF1307DF1007193B0 Type: Unit Entry: 32241 Low: 7443376
(3224101, 1,6237.105, 2639.326, 570.5411, 'Disguised Crusader 2'),
(3224101, 2,6230.855, 2634.076, 570.5411, 'Disguised Crusader 2'),
(3224101, 3,6218.105, 2624.826, 570.5411, 'Disguised Crusader 2'),
(3224101, 4,6198.605, 2617.576, 570.5411, 'Disguised Crusader 2'),
(3224101, 5,6188.855, 2621.576, 570.5411, 'Disguised Crusader 2'),
(3224101, 6,6176.773, 2653.593, 573.8317, 'Disguised Crusader 2'),
(3224101, 7,6168.773, 2671.843, 574.3317, 'Disguised Crusader 2'),
(3224101, 8,6159.773, 2691.343, 574.0817, 'Disguised Crusader 2'),
(3224101, 9,6148.523, 2715.593, 574.0817, 'Disguised Crusader 2'),
(3224101, 10,6140.773, 2732.093, 574.0817, 'Disguised Crusader 2'),
(3224101, 11,6159.023, 2742.843, 574.0817, 'Disguised Crusader 2'),
(3224101, 12,6174.273, 2749.343, 574.0817, 'Disguised Crusader 2'),
(3224101, 13,6168.286, 2761.969, 573.914, 'Disguised Crusader 2'),
-- Owner GUID: Full: 0xF1307DF1007193B0 Type: Unit Entry: 32241 Low: 7443376
(3224104, 1,6161.965, 2757.105, 574.164, 'Disguised Crusader 2 Path 2'),
(3224104, 2,6148.465, 2755.605, 574.164, 'Disguised Crusader 2 Path 2'),
(3224104, 3,6132.715, 2757.605, 574.164, 'Disguised Crusader 2 Path 2'),
-- Owner GUID: Full: 0xF1307DF1007193AE Type: Unit Entry: 32241 Low: 7443374
(3224102, 1,6238.134, 2664.245, 570.5411, 'Disguised Crusader 3'),
(3224102, 2,6238.134, 2651.495, 570.5411, 'Disguised Crusader 3'),
(3224102, 3,6229.384, 2629.995, 570.5411, 'Disguised Crusader 3'),
(3224102, 4,6210.384, 2622.745, 570.5411, 'Disguised Crusader 3'),
(3224102, 5,6200.634, 2631.995, 570.5411, 'Disguised Crusader 3'),
(3224102, 6,6196.85, 2623.905, 570.5411, 'Disguised Crusader 3'),
(3224102, 7,6178.815, 2677.46, 574.3317, 'Disguised Crusader 3'),
(3224102, 8,6171.315, 2691.71, 574.0817, 'Disguised Crusader 3'),
(3224102, 9,6163.565, 2707.96, 574.0817, 'Disguised Crusader 3'),
(3224102, 10,6159.815, 2715.71, 574.0817, 'Disguised Crusader 3'),
(3224102, 11,6151.315, 2733.71, 574.0817, 'Disguised Crusader 3'),
(3224102, 12,6154.565, 2737.46, 574.0817, 'Disguised Crusader 3'),
(3224102, 13,6179.565, 2751.46, 574.0817, 'Disguised Crusader 3'),
(3224102, 14,6173.314, 2764.15, 573.914, 'Disguised Crusader 3'),
-- Owner GUID: Full: 0xF1307DF1007193AE Type: Unit Entry: 32241 Low: 7443374
(3224105, 1,6158.404, 2754.641, 574.164, 'Disguised Crusader 3 Path 2'),
(3224105, 2,6134.994, 2759.132, 573.914, 'Disguised Crusader 3 Path 2'),
-- Owner GUID: Full: 0xF1307DEF007193AA Type: Unit Entry: 32239 Low: 7443370
(32239, 1,6241.011, 2653.922, 570.5411, 'Highlord Tirion Fordring'),
(32239, 2,6239.011, 2644.922, 570.5411, 'Highlord Tirion Fordring'),
(32239, 3,6224.011, 2631.422, 570.5411, 'Highlord Tirion Fordring'),
(32239, 4,6207.011, 2627.922, 570.5411, 'Highlord Tirion Fordring'), 
(32239, 5,6193.261, 2629.172, 570.5411, 'Highlord Tirion Fordring'), -- Line 2
(32239, 6,6181.6, 2656.623, 573.5817, 'Highlord Tirion Fordring'),
(32239, 7,6174.35, 2672.123, 574.3317, 'Highlord Tirion Fordring'),
(32239, 8,6164.6, 2692.873, 574.0817, 'Highlord Tirion Fordring'),
(32239, 9,6154.6, 2714.373, 574.0817, 'Highlord Tirion Fordring'),
(32239, 10,6146.1, 2732.873, 574.0817, 'Highlord Tirion Fordring'),
(32239, 11,6160.6, 2743.623, 574.0817, 'Highlord Tirion Fordring'),
(32239, 12,6170.1, 2753.873, 574.0817, 'Highlord Tirion Fordring'),
(32239, 13,6165.772, 2760.747, 573.914, 'Highlord Tirion Fordring'),
-- GUID: Full: 0xF1307DB80076BD66 Type: Unit Entry: 32184 Low: 7781734
(32184, 1,6174.985, 2669.289, 574.4298, 'The Lich King'),
(32184, 2,6164.939, 2691.6, 573.914, 'The Lich King'), 
(32184, 3,6156.291, 2709.657, 573.914, 'The Lich King'), 
(32184, 4,6147.657, 2729.304, 573.914, 'The Lich King'),
(32184, 5,6131.82, 2757.886, 573.914, 'The Lich King'),
(32184, 6,6131.82, 2757.886, 573.914, 'The Lich King'),
-- Owner GUID: Full: 0xF1307DEF007193AA Type: Unit Entry: 32239 Low: 7443370
(3223900, 1,6169.14, 2758.224, 574.164, 'Highlord Tirion Fordring Path 2'),
(3223900, 2,6163.64, 2756.224, 574.164, 'Highlord Tirion Fordring Path 2'),
(3223900, 3,6156.64, 2756.724, 574.164, 'Highlord Tirion Fordring Path 2'),
(3223900, 4,6142.507, 2757.701, 573.914, 'Highlord Tirion Fordring Path 2'),
-- GUID: Full: 0xF1307E380076C8EE Type: Unit Entry: 32312 Low: 7784686
(32312, 1,6176.699, 2666.668, 574.5868, 'Highlord Darion Mograine'),
(32312, 2,6171.327, 2678.818, 573.9142, 'Highlord Darion Mograine'),
(32312, 3,6165.052, 2693.011, 573.9141, 'Highlord Darion Mograine'),
(32312, 4,6164.547, 2694.153, 573.9141, 'Highlord Darion Mograine'),
(32312, 5,6164.547, 2694.153, 573.9141, 'Highlord Darion Mograine'),
(32312, 6,6164.982, 2693.149, 574.1641, 'Highlord Darion Mograine'),
(32312, 7,6164.482, 2694.399, 574.1641, 'Highlord Darion Mograine'),
(32312, 8,6159.982, 2704.899, 574.1641, 'Highlord Darion Mograine'),
(32312, 9,6159.232, 2706.649, 574.1641, 'Highlord Darion Mograine'),
(32312, 10,6157.982, 2709.149, 574.1641, 'Highlord Darion Mograine'),
(32312, 11,6154.946, 2715.455, 574.1641, 'Highlord Darion Mograine'),
(32312, 12,6154.196, 2717.205, 574.1641, 'Highlord Darion Mograine'),
(32312, 13,6143.353, 2738.469, 574.1641, 'Highlord Darion Mograine'),
(32312, 14,6138.019, 2754.837, 573.9141, 'Highlord Darion Mograine'),
-- GUID: Full: 0xF1307E370076C8EF Type: Unit Entry: 32311 Low: 7784687
(32311, 1,6159.867, 2705.287, 574.1641, 'Koltira Deathweaver'),
(32311, 2,6159.367, 2707.287, 574.1641, 'Koltira Deathweaver'),
(32311, 3,6158.367, 2709.537, 574.1641, 'Koltira Deathweaver'),
(32311, 4,6155.617, 2717.037, 574.1641, 'Koltira Deathweaver'),
(32311, 5,6155.117, 2718.537, 574.1641, 'Koltira Deathweaver'),
(32311, 6,6154.849, 2717.368, 574.1641, 'Koltira Deathweaver'),
(32311, 7,6154.349, 2718.368, 574.1641, 'Koltira Deathweaver'),
(32311, 8,6150.599, 2726.618, 574.1641, 'Koltira Deathweaver'),
(32311, 9,6147.419, 2732.72, 573.9141, 'Koltira Deathweaver'),
(32311, 10,6141.567, 2743.204, 574.1641, 'Koltira Deathweaver'),
(32311, 11,6139.709, 2746.204, 573.9141, 'Koltira Deathweaver'),
(32311, 12,6137.443, 2751.248, 574.1641, 'Koltira Deathweaver'),
 -- GUID: Full: 0xF1307E360076C8F0 Type: Unit Entry: 32310 Low: 7784688
(32310, 1,6159.335, 2705.071, 574.1641, 'Thassarian'),
(32310, 2,6158.585, 2706.571, 574.1641, 'Thassarian'),
(32310, 3,6157.335, 2709.071, 574.1641, 'Thassarian'),
(32310, 4,6153.585, 2717.321, 574.1641, 'Thassarian'),
(32310, 5,6153.186, 2717.784, 574.1641, 'Thassarian'),
(32310, 6,6149.186, 2726.034, 574.1641, 'Thassarian'),
(32310, 7,6146.444, 2731.355, 573.9141, 'Thassarian'),
(32310, 8,6141.1, 2740.615, 573.9141, 'Thassarian');

DELETE FROM `creature_summon_groups` WHERE `summonerId`=32312;
INSERT INTO `creature_summon_groups` (`summonerId`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `summonType`, `summonTime`) VALUES 
(32312, 0, 1, 32309, 6161.294, 2699.628, 573.9141, 1.920898, 3, 600000),
(32312, 0, 1, 32309, 6164.255, 2698.859, 573.9141, 2.01017, 3, 600000),
(32312, 0, 1, 32309, 6161.909, 2695.987, 573.914, 1.889949, 3, 600000),
(32312, 0, 1, 32309, 6163.728, 2696.768, 573.9141, 1.966068, 3, 600000),
(32312, 0, 1, 32309, 6160.207, 2698.687, 573.9141, 1.874134, 3, 600000),
(32312, 0, 1, 32309, 6164.456, 2699.853, 573.9141, 2.005516, 3, 600000),
(32312, 0, 1, 32309, 6160.355, 2698.815, 573.9141, 1.910763, 3, 600000),
(32312, 0, 1, 32310, 6162.42, 2698.646, 573.9141, 2.076199, 3, 600000),
(32312, 0, 1, 32311, 6162.563, 2699.107, 573.9141, 2.015445, 3, 600000);
