### Features ###

- Add Login panel after enter in the server
- Block the acces (can't move)
- Ask correct and match Login / Password
- Can disconnect by button
- Display Error or successful in notification
- Register by simple php script in website

## Features to add ##

- Add a SkyCam so you dont Spawn with a random Ped while logging in

## License ##

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE.md](LICENSE.md) file for details


## Author ##

@BubbleDude#1448

## Installation ##

You need to do some Stuff to make it work!

## General ##

DO NOT CHANGE THE NAME OF THE SCRIPT IF YOU DONT KNOW WHAT YOU ARE DOING!

No The PHP files are not a FiveM Script if you dont have a Webspace or Xampp on your Server this Script is useless!

1. Insert the phplogin.sql into your FiveM Database!
2. Place your Database data into all php files!

## QBCore ##

We are going to start the Login script before Qb-Multicharacter because the UIs will overlap otherwise

1. Go to QB-Multicharacter/main/main.lua and remove this

CreateThread(function()
	while true do
		Wait(0)
		if NetworkIsSessionStarted() then
			TriggerEvent('qb-multicharacter:client:chooseChar')
			return
		end
	end
end)

2. You are Done! Lol

## ESX ##
1. Go to esx_multicharacter/client/main.lua an change this:

	CreateThread(function()
		while not ESX.PlayerLoaded do
			Wait(0)
			if NetworkIsPlayerActive(PlayerId()) then
				exports.spawnmanager:setAutoSpawn(false)
				DoScreenFadeOut(0)
				while not GetResourceState('esx_context') == 'started' do
					Wait(0)
				end
				-- TriggerEvent("esx_multicharacter:SetupCharacters")
				break
			end
		end
	end)

2. To this:

	CreateThread(function()
		while not GetResourceState('esx_context') == 'started' do
			Wait(0)
			break
		end
	end)

3. This should be Done!
