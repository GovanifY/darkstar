-----------------------------------
-- Area: Port San d'Oria
-- NPC: Portaure
-- Standard Info NPC
-----------------------------------

package.loaded["scripts/zones/Port_San_dOria/TextIDs"] = nil;
require("scripts/zones/Port_San_dOria/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	if(player:getQuestStatus(SANDORIA,FLYERS_FOR_REGINE) ==QUEST_ACCEPTED)then
if(trade:hasItemQty(532,1) and trade:getItemCount() == 1 and player:getVar("tradePortaure") == 0)then 
player:messageSpecial(7121);
player:setVar("FFR",player:getVar("FFR") - 1);
player:setVar("tradePortaure",1);
player:messageSpecial(7122,17 - player:getVar("FFR"));
trade:complete();
elseif(player:getVar("tradePortaure") ==1)then
player:messageSpecial(7120);
 
end
end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
player:startEvent(0x28b);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



