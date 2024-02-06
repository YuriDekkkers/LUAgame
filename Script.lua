--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--



function story(aName)
	if(aName == "start") then
		setBackground("BlackScreen.png")
		createTextfield("...")
		createButton("awake", "(wake up)")
	end

	if(aName == 'awake') then
	CLS()
		playMusic("bg1.wav")
		setBackground("bedroom.jpg")
		createTextfield("its a beautfull day outside")
		createButton("intro1", "next")
	end

	if(aName == 'intro1') then
	CLS()
		createTextfield("its another boring school day, as any other.")
		createButton("intro2", "next")
	end
		
	if(aName == 'intro2') then
	CLS()
		createTextfield("but, somehow you feel this day will not go as planned.")
		createButton("schoolPath", "go to school")
		createButton("homePath", "stay home")
	end

	if(aName == 'schoolPath') then
	CLS()
		setBackground("classroom.jpg")
		createTextfield("you decided to go to school")
	end
end