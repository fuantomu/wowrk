local turnOrder = {}
local stats = {id=1,name="The Boss",level=10,hpmax=100,hpcurr=100,resmax=0,rescurr=0,str=1,agi=1,sta=1000,int=50,spr=50,armor=41,icon="hws010"}
local abilities = 	{
					{id=1,name="Punch",type="Melee",element="PHY",targets="RANDOM:1:{2,4}",elemtype="NAT",attr="STR", mult=100, cast=5.0},
					{id=2,name="Kick",type="Melee",element="PHY",targets="ALL",elemtype="NAT",attr="AGI", mult=200, cast=4.5},
					{id=3,name="Throw",type="Ranged",element="PHY",targets="RANDOM:5:{1,3,5}",elemtype="NAT",attr="STR", mult=100, cast=2.5}
					}
table.insert(turnOrder, {turn=1, action="Skip"})
--table.insert(turnOrder, {turn=2, action="Attack", actionVal={abilities[3]}, chance={1.0}})
--table.insert(turnOrder, {turn=3, action="Attack", actionVal={abilities[2],abilities[3]}, chance={0.5,0.5}})
--table.insert(turnOrder, {turn=4, action="Attack", actionVal={abilities[3]}, chance={1.0}})
table.insert(turnOrder, {turn=2, action="Attack", actionVal={abilities[1],abilities[2],abilities[3]}, chance={0.1,0.4,0.5}})


return {stats=stats,turnOrder=turnOrder,abilities=abilities}