--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--

keyFound = false;

hasSword = false;

hasEntered = false;


function story(aName)
    
	if(aName == "start") then
	CLS()
		playMusic("silence.wav")
		setBackground("BlackScreen.png")
		createTextfield("...")
		createButton("awake", "(wake up)")
	end
	
	if(aName == "awake") then
	CLS()
		playMusic("bg1.wav")
		setBackground("bedroom.jpg")
		createTextfield("its a beautfull day outside")
		createButton("intro1", "next")
	end

	if(aName == "intro1") then
	CLS()
		createTextfield("its another boring school day, as any other.")
		createButton("intro2", "next")
	end
		
	if(aName == "intro2") then
	CLS()
		createTextfield("but, somehow you feel this day will not go as planned.")
		createButton("schoolPath", "go to school")
		createButton("homePath", "stay home")
	end

	if(aName == "schoolPath") then
	CLS()
		createTextfield("you decided to go to school, probably for the best anyway")
		createButton("school1", "next")
	end

	if(aName == "school1") then
	CLS()
		setBackground("classroom.jpg")
		createTextfield("When you arrive at school you notice the many empty halls.")
		createButton("school2", "next")
	end
	
	if(aName == "school2") then
	CLS()
		createTextfield("everyone seems to have dissapeared...")
		createButton("school3", "next")
	end
	
	if(aName == "school3") then
	CLS()
		createTextfield("suddenly you hear an evil voice echoing in your head.")
		createButton("school4", "next")
	end
	
	if(aName == "school4") then
	CLS()
		playMusic("tense.wav")
		createTextfield("you will never beat me, muahahahaha.")
		createButton("school5", "next")
	end
	
	if(aName == "school4") then
	CLS()
		createTextfield("you will never beat me, muahahahaha.")
		createButton("school5", "next")
	end
	
	if(aName == "school5") then
	CLS()
		setBackground("hallway.jpg")
		createTextfield("you have to stop him, find a weapon somewhere in the school!.")
		
		createButton("bossRoom1", "continue to boss")
		createButton("class2", "right classroom")
		createButton("class1", "left classroom")
	end
	
	if(aName == "class1") then
	CLS()
		if(hasEntered == false) then
			setBackground("hallway.jpg")
			createTextfield("locked, there has to be a key somewhere")
		end
			
		if(keyFound == true) then
			createButton("class1Enter", "Enter")
			hasEntered = true;
		end

		createButton("school5", "back")

		if(hasEntered == true) then
			aName = "class1Enter"
		end
	end
	
	if(aName == "class1Enter") then
	CLS()
		hasSword = true;

		setBackground("classroom.jpg")
		createTextfield("a sword? who keeps a sword in a school? whatever, it's a                              weapon at least.")
		createButton("school5", "back")
	end

	if(aName == "class2") then
	CLS()
		setBackground("classroom.jpg")
		if(keyFound == false) then
			createTextfield("It's a golden key, probably to open a room.")
			createButton("collectKey", "pick up key")
			keyFound = true;
		else
			createTextfield("just an emtpy room now.")
			createButton("school5", "back")
		end
	end

	if(aName == "collectKey") then
	CLS()
		setBackground("classroom.jpg")
		if(keyFound == false) then
			createTextfield("It's a golden key, probably to open a room.")
			keyFound = true;
		else
			createTextfield("just an emtpy room now.")
		end

		createButton("school5", "back")
	end

	if(aName == "bossRoom1") then
	CLS()
		if(hasSword == false) then
			createTextfield("i should probably get a weapon first")
			createButton("school5", "back")
		else
			createTextfield("you dare challenge me? come and meet your nightmare.")
			createButton("bossSpeech1", "enter his domain")
			createButton("ending1", "chicken out")
		end
	end

	if(aName == "bossSpeech1") then
	CLS()
		playMusic("BossMusic.wav")
		setBackground("bossHallway.png")
		createTextfield("Muahahaha, you will never survive!")
		createButton("bossAttack1", "survive")
	end	

	-- boss fight
	if(aName == "bossAttack1") then
	CLS()
		createTextfield("He attacks from the left")
		createButton("bossAttack2", "dodge")
		createButton("ending2", "block")
		createButton("ending2", "attack")
	end	

	if(aName == "bossAttack2") then
	CLS()
		createTextfield("overhead swing")
		createButton("ending2", "dodge")
		createButton("ending2", "block")
		createButton("bossAttack3", "attack")
	end

	if(aName == "bossAttack3") then
	CLS()
		createTextfield("he attacks from the right")
		createButton("bossAttack4", "dodge")
		createButton("ending2", "block")
		createButton("ending2", "attack")
	end

	if(aName == "bossAttack4") then
	CLS()
		createTextfield("he attacks from the front")
		createButton("ending2", "dodge")
		createButton("bossAttack5", "block")
		createButton("ending2", "attack")
	end

	if(aName == "bossAttack5") then
	CLS()
		createTextfield("overhead swing")
		createButton("ending2", "dodge")
		createButton("ending2", "block")
		createButton("bossAttack6", "attack")
	end

	if(aName == "bossAttack6") then
	CLS()
		createTextfield("he attacks from the left")
		createButton("bossAttack7", "dodge")
		createButton("ending2", "block")
		createButton("ending2", "attack")
	end

	if(aName == "bossAttack7") then
	CLS()
		createTextfield("he attacks from the front")
		createButton("ending2", "dodge")
		createButton("ending3", "block")
		createButton("ending2", "attack")
	end

	-- home path

	if(aName == "homePath") then
	CLS()
		createTextfield("you decide to stay home, you dont feel like school anyway")
		createButton("home1", "next")
	end

	if(aName == "home1") then
	CLS()
		createTextfield("as you spend the day at home relaxing suddenyl you hear a noise")
		createButton("home2", "next")
	end

	if(aName == "home2") then
	CLS()
		createTextfield("you run outside to see what happened, a giant black geiser                          erupting from the school in the distance")
		createButton("home3", "next")
	end

	if(aName == "home3") then
	CLS()
		playMusic("forest.wav")
		setBackground("monsterForest.png")
		createTextfield("while the world is slowly getting covered in darkness you see a                     hoard of dark creatures emerging from the woods")
		createButton("home4", "next")
	end

	if(aName == "home4") then
	CLS()
		createTextfield("you have to make a choice now, do you fight the monsters                            or do you flee to safety like a coward")
		createButton("run", "run away")
		createButton("fight", "fight for glory")
	end

	if(aName == "run") then
	CLS()
		setBackground("forest.jpg")
		createTextfield("you run like a coward, you manage to find safety in a small                         camp in the woods")
		createButton("ending4", "next")
	end

	if(aName == "fight") then
	CLS()
		setBackground("monsterForest.png")
		createTextfield("you grab the katana your from your parents collection and run                       towards the monsters slashing one after the other")
		createButton("home5", "next")
	end

	if(aName == "home5") then
	CLS()
		setBackground("manForest.png")
		createTextfield("you come across another survivor, he seems aggressive, but you have                 the potential to create an alliance here")
		createButton("attackSurvivor", "attack him")
		createButton("allySurvivor", "befriend him")
	end

	if(aName == "attackSurvivor") then
	CLS()
		playMusic("forestDark1.wav")
		setBackground("forestdark3.png")
		createTextfield("you overpower the poor soul and steal all his weapons and items,                    you are getting stronger")
		createButton("genocide1", "proceed")
	end

	if(aName == "genocide1") then
	CLS()
		playMusic("forestDark2.wav")
		setBackground("forestdark2.png")
		createTextfield("you come across more survivors, they are just in your way")
		createButton("genocide2", "proceed")
	end

	if(aName == "genocide2") then
	CLS()
		playMusic("ForestDark3.wav")
		setBackground("forestdark1.png")
		createTextfield("you destroy everyone and everything in your way")
		createButton("ending5", "proceed")
	end

	if(aName == "allySurvivor") then
	CLS()
		setBackground("friendMan.png")
		createTextfield("you attempt to calm the man down, with good success. the man                        has joined you on your journey")
	    createButton("ally1", "next")
	end

	if(aName == "ally1") then
	CLS()
		createTextfield("along your way you continue to team up with more survivors                          and you might be able to stop this madness")
	    createButton("ally2", "next")
	end

	if(aName == "ally2") then
	CLS()
		setBackground("friendsForest.png")
		createTextfield("you come across the boss with all the friends you made                              , you strike at the boss with all you have")
	    createButton("ally3", "next")
	end

	if(aName == "ally3") then
	CLS()
		createTextfield("the monster is defeated and the land returns to peace,                              the monster lets out one final cry")
	    createButton("ally4", "next")
	end

	if(aName == "ally4") then
	CLS()
		createTextfield("this wont be over, not eve. you haven't seen the last,                              of me, MUAHAHAHAHA")
	    createButton("ending6", "next")
	end

	if(aName == "ending1") then
	CLS()
		playSound("Fail.wav")
		playMusic("silence.wav")
		createTextfield("you were too scared to fight him. now he has taken over the                         world and left it in darkness")

		createButton("exitGame", "exit game")
		createButton("start", "Darkness Falls: ending 1/6  --  Retry?")
	end

	if(aName == "ending2") then
	CLS()
		playSound("Dead.wav")
		playMusic("silence.wav")
		createTextfield("you were unsuccesfull in taking down the demon and died                             the world was left in darkness")

		createButton("bossSpeech1", "You Died :(: ending 2/6  --  Retry?")
	end

	if(aName == "ending3") then
	CLS()
		playSound("Victory.wav")
		playMusic("silence.wav")
		setBackground("bossDefeated.png")
		createTextfield("you has succesfully defeated the demon, the world is now                            in peace and all your frinds return.")

		createButton("exitGame", "exit game")
		createButton("start", "You're a hero: ending 3/6  --  Retry?")
	end

	if(aName == "ending4") then
	CLS()
		playSound("Fail.wav")
		playMusic("silence.wav")
		createTextfield("you are all alone")

		createButton("exitGame", "exit game")
		createButton("start", "coward: ending 4/6   --  Retry?")
	end

	if(aName == "ending5") then
	CLS()
		playMusic("forestDarkest.wav")
		createTextfield("you killed the world")

		createButton("exitGame", "exit game")
		createButton("start", "genocide: ending 5/6  --  Retry?")
	end

	if(aName == "ending6") then
	CLS()
		playSound("Victory.wav")
		playMusic("silence.wav")
		createTextfield("the world has been saved from the demon,                                             for now...")

		createButton("exitGame", "exit game")
		createButton("start", "SuperTeam: ending 6/6  --  Retry?")
	end

	if(aName == "exitGame") then
		exitGame()
	end
end