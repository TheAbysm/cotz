--[[
  --TestJob
  local tempJob = {}

  tempJob.name = "Kill Say sneed %d times."                  --Name that will be shown in dialogue when selecting tasks
  tempJob.desc = "I need you to sneed %d times for me." --Description of task, will be shown to the player when deciding to take quest or not
  tempJob.icon = "stalker/questpaper_item.png"          --Icon, unused?
  tempJob.tier = 1                                      --Tier, unused?
  tempJob.listenTrigger = "chatSayTest"                 --trigger word to listen for in the ix_JobTrigger hook, see sh_listeners
  tempJob.numberRec = 5                                 --integer amount of times the listenTrigger must be run through the ix_JobTrigger hook
  tempJob.reward = {{"tokarev"}}                     --table of item ids for rewarding the player with
  tempJob.rewardCount = 1                               --how many items should the player get
  tempJob.repReward = 80                                --how much reputation should be awarded for completion
  tempJob.categories = {"mutantkilleasy"}               --table of category identifiers, used for when npc gets tasks
  tempJob.moneyReward = {2000,4000} OR 3000             --for adding money to the player, can technically be done through itemreward as well

  ix.jobs.register(tempJob, "TestJob")                  --If item delivery quest, the final part of the quest identifier should read "_<uniqueid>" for proper operation

]]--



do
  --random amount of mutants
  local tempJob = {}

  tempJob.name = "Kill %d mutants."
  tempJob.desc = "%d mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "mutantKilled"
  tempJob.numberRec = 12
  tempJob.reward = {{"762x25", { ["quantity"] = 25 }}, {"22lr", { ["quantity"] = 35 }}, {"9x18", { ["quantity"] = 25 }}, {"9x19", { ["quantity"] = 25 }}, {"45acp", { ["quantity"] = 25 }}}
  tempJob.rewardCount = 2
  tempJob.repReward = 25
  tempJob.moneyReward = {1500, 1800}
  tempJob.categories = {"mutantkillgroupeasy"}

  ix.jobs.register(tempJob, "killMutantsLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d mutants."
  tempJob.desc = "%d mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "mutantKilled"
  tempJob.numberRec = 24
  tempJob.reward = {{"skorpion", {["durability"] = 60}}, "kit_ammo_m_low"}
  tempJob.rewardCount = 1
  tempJob.repReward = 35
  tempJob.moneyReward = {2800, 3200}
  tempJob.categories = {"mutantkillgroupeasy"}

  ix.jobs.register(tempJob, "killMutantsMid")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d mutants."
  tempJob.desc = "%d mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "mutantKilled"
  tempJob.numberRec = 40
  tempJob.reward = {{"mp153", {["durability"] = 60}}, "kit_ammo_med"}
  tempJob.rewardCount = 1
  tempJob.repReward = 50
  tempJob.moneyReward = {5000, 5800}
  tempJob.categories = {"mutantkillgroupeasy"}

  ix.jobs.register(tempJob, "killMutantsHigh")

  tempJob = nil


  -- Humanoid Mutants
  local tempJob = {}

  tempJob.name = "Kill %d humanoid mutants."
  tempJob.desc = "%d humanoid mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "groupHumanoidKilled"
  tempJob.numberRec = 5
  tempJob.reward = {{"kit_ammo_low"}}
  tempJob.rewardCount = 1
  tempJob.repReward = 20
  tempJob.moneyReward = {800, 1200}
  tempJob.categories = {"mutantkillgroupeasy"}

  ix.jobs.register(tempJob, "killHumanoidsLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d humanoid mutants."
  tempJob.desc = "%d humanoid mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "groupHumanoidKilled"
  tempJob.numberRec = 9
  tempJob.reward = {{"kit_ammo_low"}}
  tempJob.rewardCount = 1
  tempJob.repReward = 35
  tempJob.moneyReward = {1200, 1600}
  tempJob.categories = {"mutantkillgroupeasy"}

  ix.jobs.register(tempJob, "killHumanoidsMid")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d humanoid mutants."
  tempJob.desc = "%d humanoid mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "groupHumanoidKilled"
  tempJob.numberRec = 15
  tempJob.reward = {{"kit_ammo_med"}}
  tempJob.rewardCount = 1
  tempJob.repReward = 50
  tempJob.moneyReward = {1600, 2000}
  tempJob.categories = {"mutantkillgroupeasy"}

  ix.jobs.register(tempJob, "killHumanoidsHigh")

  tempJob = nil

  -- Predator Mutants
  local tempJob = {}

  tempJob.name = "Kill %d predator mutants."
  tempJob.desc = "%d predator mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "groupPredatorKilled"
  tempJob.numberRec = 2
  tempJob.reward = {{"kit_ammo_low"}, 0}
  tempJob.rewardCount = 1
  tempJob.repReward = 20
  tempJob.moneyReward = {500, 600}
  tempJob.categories = {"mutantkillgroupmedium"}

  ix.jobs.register(tempJob, "killPredatorsLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d predator mutants."
  tempJob.desc = "%d predator mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "groupPredatorKilled"
  tempJob.numberRec = 4
  tempJob.reward = {{"kit_ammo_low"}, 0}
  tempJob.rewardCount = 2
  tempJob.repReward = 25
  tempJob.moneyReward = {900, 1100}
  tempJob.categories = {"mutantkillgroupmedium"}

  ix.jobs.register(tempJob, "killPredatorsMid")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d predator mutants."
  tempJob.desc = "%d predator mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "groupPredatorKilled"
  tempJob.numberRec = 6
  tempJob.reward = {{"kit_ammo_low"}, {"kit_ammo_low"}, 0}
  tempJob.rewardCount = 2
  tempJob.repReward = 30
  tempJob.moneyReward = {1300, 1500}
  tempJob.categories = {"mutantkillgroupmedium"}

  ix.jobs.register(tempJob, "killPredatorsHigh")

  tempJob = nil


  -- Canine Mutants
  local tempJob = {}

  tempJob.name = "Kill %d canine mutants."
  tempJob.desc = "%d canine mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "groupCanineKilled"
  tempJob.numberRec = 5
  tempJob.reward = {{"kit_ammo_low"}, {"kit_ammo_low"}, 0}
  tempJob.rewardCount = 1
  tempJob.repReward = 15
  tempJob.moneyReward = {350, 460}
  tempJob.categories = {"mutantkillgroupeasy"}

  ix.jobs.register(tempJob, "killCaninesLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d canine mutants."
  tempJob.desc = "%d canine mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "groupCanineKilled"
  tempJob.numberRec = 9
  tempJob.reward = {{"kit_ammo_low"}, {"kit_ammo_low"}, 0}
  tempJob.rewardCount = 1
  tempJob.repReward = 20
  tempJob.moneyReward = {600, 800}
  tempJob.categories = {"mutantkillgroupeasy"}

  ix.jobs.register(tempJob, "killCaninesMid")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d canine mutants."
  tempJob.desc = "%d canine mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "groupCanineKilled"
  tempJob.numberRec = 13
  tempJob.reward = {{"kit_ammo_low"}, {"kit_ammo_low"}, 0}
  tempJob.rewardCount = 2
  tempJob.repReward = 25
  tempJob.moneyReward = {800, 1000}
  tempJob.categories = {"mutantkillgroupeasy"}

  ix.jobs.register(tempJob, "killCaninesHigh")

  tempJob = nil

  -- Meat Mutants
  local tempJob = {}

  tempJob.name = "Kill %d meat mutants."
  tempJob.desc = "%d meat mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "groupMeatKilled"
  tempJob.numberRec = 4
  tempJob.reward = {{"kit_ammo_low"}, 0}
  tempJob.rewardCount = 1
  tempJob.repReward = 5
  tempJob.moneyReward = {150, 250}
  tempJob.categories = {"mutantkillgroupeasy"}

  ix.jobs.register(tempJob, "killMeatsLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d meat mutants."
  tempJob.desc = "%d meat mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "groupMeatKilled"
  tempJob.numberRec = 8
  tempJob.reward = {{"kit_ammo_low"}, 0}
  tempJob.rewardCount = 1
  tempJob.repReward = 10
  tempJob.moneyReward = {190, 370}
  tempJob.categories = {"mutantkillgroupeasy"}

  ix.jobs.register(tempJob, "killMeatsMid")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d meat mutants."
  tempJob.desc = "%d meat mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "groupMeatKilled"
  tempJob.numberRec = 14
  tempJob.reward = {{"kit_ammo_low"}, 0}
  tempJob.rewardCount = 2
  tempJob.repReward = 15
  tempJob.moneyReward = {470, 770}
  tempJob.categories = {"mutantkillgroupeasy"}

  ix.jobs.register(tempJob, "killMeatsHigh")

  tempJob = nil

  -- Psychic Mutants
  local tempJob = {}

  tempJob.name = "Kill %d psychic mutants."
  tempJob.desc = "%d psychic mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "groupPsyKilled"
  tempJob.numberRec = 2
  tempJob.reward = {{"kit_ammo_rare"}, 0}
  tempJob.rewardCount = 1
  tempJob.repReward = 50
  tempJob.moneyReward = {2500, 4500}
  tempJob.categories = {"mutantkillgroupmedium"}

  ix.jobs.register(tempJob, "killPsyLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d psychic mutants."
  tempJob.desc = "%d psychic mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "groupPsyKilled"
  tempJob.numberRec = 4
  tempJob.reward = {{"kit_ammo_rare"}, 0}
  tempJob.rewardCount = 1
  tempJob.repReward = 85
  tempJob.moneyReward = {3500, 6500}
  tempJob.categories = {"mutantkillgroupmedium"}

  ix.jobs.register(tempJob, "killPsyMid")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d psychic mutants."
  tempJob.desc = "%d psychic mutants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "groupPsyKilled"
  tempJob.numberRec = 6
  tempJob.reward = {{"kit_ammo_rare"}, 0}
  tempJob.rewardCount = 2
  tempJob.repReward = 120
  tempJob.moneyReward = {4500, 7500}
  tempJob.categories = {"mutantkillgroupmedium"}

  ix.jobs.register(tempJob, "killPsyHigh")

  tempJob = nil

--rodents

  local tempJob = {}

  tempJob.name = "Kill %d rodents."
  tempJob.desc = "%d rodents."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "rodentKilled"
  tempJob.numberRec = 4
  tempJob.reward = {{"kit_ammo_low"}}
  tempJob.rewardCount = 1
  tempJob.repReward = 5
  tempJob.moneyReward = {120, 180}
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killRodentsLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d rodents."
  tempJob.desc = "%d rodents."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "rodentKilled"
  tempJob.numberRec = 8
  tempJob.reward = {{"kit_ammo_low"}}
  tempJob.rewardCount = 1
  tempJob.repReward = 10
  tempJob.moneyReward = {260, 420}
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killRodentsMid")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d rodents."
  tempJob.desc = "%d rodents."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "rodentKilled"
  tempJob.numberRec = 13
  tempJob.reward = {{"kit_ammo_low"}}
  tempJob.rewardCount = 1
  tempJob.repReward = 17
  tempJob.moneyReward = {320, 490}
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killRodentsHigh")

  tempJob = nil


-- REWARD REWORK BOOKMARK

-- Zombies

  local tempJob = {}

  tempJob.name = "Kill %d zombies."
  tempJob.desc = "%d zombies."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "zombieKilled"
  tempJob.numberRec = 3
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 10
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killZombiesLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d zombies."
  tempJob.desc = "%d zombies."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "zombieKilled"
  tempJob.numberRec = 7
  tempJob.reward = {{"m1911"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 15
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killZombiesMid")

  tempJob = nil    

  local tempJob = {}

  tempJob.name = "Kill %d zombies."
  tempJob.desc = "%d zombies."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "zombieKilled"
  tempJob.numberRec = 12
  tempJob.reward = {{"skorpion"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killZombiesHigh")

  tempJob = nil   

-- Cats

  local tempJob = {}

  tempJob.name = "Kill %d cats."
  tempJob.desc = "%d cats."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "catKilled"
  tempJob.numberRec = 1
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 10
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killCatsLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d cats."
  tempJob.desc = "%d cats."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "catKilled"
  tempJob.numberRec = 2
  tempJob.reward = {{"m1911"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 15
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killCatsMid")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d cats."
  tempJob.desc = "%d cats."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "catKilled"
  tempJob.numberRec = 4
  tempJob.reward = {{"skorpion"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killCatsHigh")

  tempJob = nil

-- bloodsuckers

  local tempJob = {}

  tempJob.name = "Kill %d bloodsuckers."
  tempJob.desc = "%d bloodsuckers."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "bloodsuckerKilled"
  tempJob.numberRec = 1
  tempJob.reward = {{"m1911"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 10
  tempJob.categories = {"mutantkillmedium"}

  ix.jobs.register(tempJob, "killBloodsuckersLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d bloodsuckers."
  tempJob.desc = "%d bloodsuckers."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "bloodsuckerKilled"
  tempJob.numberRec = 2
  tempJob.reward = {{"m1911"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 15
  tempJob.categories = {"mutantkillmedium"}

  ix.jobs.register(tempJob, "killBloodsuckersMid")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d bloodsuckers."
  tempJob.desc = "%d bloodsuckers."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "bloodsuckerKilled"
  tempJob.numberRec = 4
  tempJob.reward = {{"skorpion"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20
  tempJob.categories = {"mutantkillmedium"}

  ix.jobs.register(tempJob, "killBloodsuckersHigh")

  tempJob = nil

-- boars

  local tempJob = {}

  tempJob.name = "Kill %d boars."
  tempJob.desc = "%d boars."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "boarKilled"
  tempJob.numberRec = 1
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 10
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killBoarsLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d boars."
  tempJob.desc = "%d boars."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "boarKilled"
  tempJob.numberRec = 3
  tempJob.reward = {{"m1911"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 15
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killBoarsMid")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d boars."
  tempJob.desc = "%d boars."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "boarKilled"
  tempJob.numberRec = 6
  tempJob.reward = {{"skorpion"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killBoarsHigh")

  tempJob = nil

/*
-- Burers
  local tempJob = {}

  tempJob.name = "Kill %d burers."
  tempJob.desc = "%d burers."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 3
  tempJob.listenTrigger = "burerKilled"
  tempJob.numberRec = {1,1}
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 15
  tempJob.categories = {"mutantkillhard"}

  ix.jobs.register(tempJob, "killBurersLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d burers."
  tempJob.desc = "%d burers."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 3
  tempJob.listenTrigger = "burerKilled"
  tempJob.numberRec = {2,3}
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20
  tempJob.categories = {"mutantkillhard"}

  ix.jobs.register(tempJob, "killBurersHigh")

  tempJob = nil
*/
/*
-- Chimeras
  local tempJob = {}

  tempJob.name = "Kill %d chimeras."
  tempJob.desc = "%d chimeras."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 3
  tempJob.listenTrigger = "chimeraKilled"
  tempJob.numberRec = {1,1}
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 15
  tempJob.categories = {"mutantkillhard"}

  ix.jobs.register(tempJob, "killChimerasLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d chimeras."
  tempJob.desc = "%d chimeras."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 4
  tempJob.listenTrigger = "chimeraKilled"
  tempJob.numberRec = {2,3}
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20
  tempJob.categories = {"mutantkillhard"}

  ix.jobs.register(tempJob, "killChimerasHigh")

  tempJob = nil

-- Controllers

  local tempJob = {}

  tempJob.name = "Kill %d controllers."
  tempJob.desc = "%d controllers."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "controllerKilled"
  tempJob.numberRec = {1,1}
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 15
  tempJob.categories = {"mutantkillhard"}

  ix.jobs.register(tempJob, "killControllersLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d controllers."
  tempJob.desc = "%d controllers."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 3
  tempJob.listenTrigger = "controllerKilled"
  tempJob.numberRec = {2,3}
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20

  ix.jobs.register(tempJob, "killControllersHigh")
*/
-- dogs

  local tempJob = {}

  tempJob.name = "Kill %d blind dogs."
  tempJob.desc = "%d blind dogs."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "blinddogKilled"
  tempJob.numberRec = 2
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 10
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killDogsLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d blind dogs."
  tempJob.desc = "%d blind dogs."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "blinddogKilled"
  tempJob.numberRec = 5
  tempJob.reward = {{"m1911"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 15
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killDogsMid")

  tempJob = nil 

  local tempJob = {}

  tempJob.name = "Kill %d blind dogs."
  tempJob.desc = "%d blind dogs."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "blinddogKilled"
  tempJob.numberRec = 8
  tempJob.reward = {{"skorpion"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killDogsHigh")

  tempJob = nil  

--fleshes

  local tempJob = {}

  tempJob.name = "Kill %d fleshes."
  tempJob.desc = "%d fleshes."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "fleshKilled"
  tempJob.numberRec = 2
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 10
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killFleshesLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d fleshes."
  tempJob.desc = "%d fleshes."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "fleshKilled"
  tempJob.numberRec = 5
  tempJob.reward = {{"m1911"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 15
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killFleshesMid")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d fleshes."
  tempJob.desc = "%d fleshes."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "fleshKilled"
  tempJob.numberRec = 10
  tempJob.reward = {{"m1911"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killFleshesHigh")

  tempJob = nil

-- pseudodogs

  local tempJob = {}

  tempJob.name = "Kill %d pseudodogs."
  tempJob.desc = "%d pseudodogs."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "pseudodogKilled"
  tempJob.numberRec = 1
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 10
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killPseudodogsLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d pseudodogs."
  tempJob.desc = "%d pseudodogs."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "pseudodogKilled"
  tempJob.numberRec = 2
  tempJob.reward = {{"m1911"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 15
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killPseudodogsMid")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d pseudodogs."
  tempJob.desc = "%d pseudodogs."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "pseudodogKilled"
  tempJob.numberRec = 3
  tempJob.reward = {{"skorpion"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killPseudodogsHigh")

  tempJob = nil


  local tempJob = {}

  tempJob.name = "Kill %d snorks."
  tempJob.desc = "%d snorks."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "snorkKilled"
  tempJob.numberRec = 1
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20
  tempJob.categories = {"mutantkillmedium"}

  ix.jobs.register(tempJob, "killSnorksLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d snorks."
  tempJob.desc = "%d snorks."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "snorkKilled"
  tempJob.numberRec = 2
  tempJob.reward = {{"m1911"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 25
  tempJob.categories = {"mutantkillmedium"}

  ix.jobs.register(tempJob, "killSnorksMid")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d snorks."
  tempJob.desc = "%d snorks."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "snorkKilled"
  tempJob.numberRec = 4
  tempJob.reward = {{"skorpion"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 30
  tempJob.categories = {"mutantkillmedium"}

  ix.jobs.register(tempJob, "killSnorksHigh")

  tempJob = nil

-- psydogs
/*
  local tempJob = {}

  tempJob.name = "Kill %d psydogs."
  tempJob.desc = "%d psydogs."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 2
  tempJob.listenTrigger = "psydogKilled"
  tempJob.numberRec = {1,1}
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 15

  ix.jobs.register(tempJob, "killPsydogsLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d psydogs."
  tempJob.desc = "%d psydogs."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 3
  tempJob.listenTrigger = "psydogKilled"
  tempJob.numberRec = {2,3}
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20

  ix.jobs.register(tempJob, "killPsydogsLow")

  tempJob = nil

-- Pseudogiants

  local tempJob = {}

  tempJob.name = "Kill %d pseudogiants."
  tempJob.desc = "%d pseudogiants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 3
  tempJob.listenTrigger = "pseudogiantKilled"
  tempJob.numberRec = {1,2}
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 15

  ix.jobs.register(tempJob, "killPseudogiantsLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d pseudogiants."
  tempJob.desc = "%d pseudogiants."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 4
  tempJob.listenTrigger = "pseudogiantKilled"
  tempJob.numberRec = {2,3}
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20

  ix.jobs.register(tempJob, "killPseudogiantsHigh")

  tempJob = nil
*/

  local tempJob = {}

  tempJob.name = "Kill %d izloms."
  tempJob.desc = "%d izloms."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "izlomKilled"
  tempJob.numberRec = 1
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20
  tempJob.categories = {"mutantkillmedium"}

  ix.jobs.register(tempJob, "killIzlomsLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d spiders."
  tempJob.desc = "%d spiders."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "spiderKilled"
  tempJob.numberRec = 1
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20
  tempJob.categories = {"mutantkillmedium"}

  ix.jobs.register(tempJob, "killSpidersLow")

  tempJob = nil


  local tempJob = {}

  tempJob.name = "Kill %d spiders."
  tempJob.desc = "%d spiders."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "spiderKilled"
  tempJob.numberRec = 2
  tempJob.reward = {{"m1911"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 25
  tempJob.categories = {"mutantkillmedium"}

  ix.jobs.register(tempJob, "killSpidersMid")

  tempJob = nil


  local tempJob = {}

  tempJob.name = "Kill %d spiders."
  tempJob.desc = "%d spiders."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "spiderKilled"
  tempJob.numberRec = 3
  tempJob.reward = {{"skorpion"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 30
  tempJob.categories = {"mutantkillmedium"}

  ix.jobs.register(tempJob, "killSpidersHigh")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d tarks."
  tempJob.desc = "%d tarks."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "tarkKilled"
  tempJob.numberRec = 1
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 15
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killTarksLow")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d tarks."
  tempJob.desc = "%d tarks."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "tarkKilled"
  tempJob.numberRec = 2
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 20
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killTarksMid")

  tempJob = nil

  local tempJob = {}

  tempJob.name = "Kill %d tarks."
  tempJob.desc = "%d tarks."
  tempJob.icon = "propic/event/mutanthunt"
  tempJob.tier = 1
  tempJob.listenTrigger = "tarkKilled"
  tempJob.numberRec = 4
  tempJob.reward = {{"tokarev"}}
  tempJob.rewardCount = {1,1}
  tempJob.repReward = 25
  tempJob.categories = {"mutantkilleasy"}

  ix.jobs.register(tempJob, "killTarksHigh")

  tempJob = nil

end
