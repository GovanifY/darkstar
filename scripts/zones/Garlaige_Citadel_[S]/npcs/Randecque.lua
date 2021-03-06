-----------------------------------
-- Area: Garlaige Citadel [S]
--  NPC: Randecque
-- @pos 61 -6 137 164
-- Notes: Gives Red Letter required to start "Steamed Rams"
-----------------------------------
package.loaded["scripts/zones/Garlaige_Citadel_[S]/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/zones/Garlaige_Citadel_[S]/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (player:getCampaignAllegiance() > 0) then
        player:startEvent(0x0003);
    elseif (player:hasKeyItem(RED_RECOMMENDATION_LETTER) == true) then
        player:startEvent(0x0002);
    elseif (player:hasKeyItem(RED_RECOMMENDATION_LETTER) == false) then
        player:startEvent(0x0001);
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    if (csid == 0x0001 and option == 0) then
        player:addKeyItem(RED_RECOMMENDATION_LETTER);
        player:messageSpecial(KEYITEM_OBTAINED, RED_RECOMMENDATION_LETTER);
    end
end;