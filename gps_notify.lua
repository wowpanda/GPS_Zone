--[[

	GPS_Zone by Bre Faby
	
	Put your coords instead of these examples!
	
	You have here some instructions: 
	
	For making the zone smaller or bigger just modify this part of the condition: " < 65.0 then",
	change the number by your needs!

	If you wanna add another zones, just copy-paste the while part and change by your needs!

]]--


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2500)
    	GPS_notify()
	end
end)

function GPS_notify()
	if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
		--SpawnMessage
		while GetDistanceBetweenCoords( -539.99591064454,-212.26376342774,37.649803161622, GetEntityCoords(GetPlayerPed(-1))) < 130.0 do
			Notify("Here is the SPAWN!","Waze - Notification")
			break
		end
		--PoliceMessage
		while GetDistanceBetweenCoords( 407.06134033204,-991.9125366211,29.266492843628, GetEntityCoords(GetPlayerPed(-1))) < 65.0 do
			Notify("Here is the POLICE!","Waze - Notification")	
			break
		end
		--PoliceMessage
		while GetDistanceBetweenCoords( -438.81671142578,6029.6284179688,31.340543746948, GetEntityCoords(GetPlayerPed(-1))) < 65.0 do
			Notify("Here is the POLICE!","Waze - Notification")	
			break
		end
		--PoliceMessage
		while GetDistanceBetweenCoords( -449.00875854492,6052.9750976563,31.340539932251, GetEntityCoords(GetPlayerPed(-1))) < 65.0 do
			Notify("Here is the POLICE!","Waze - Notification")	
			break
		end		
		--PoliceMessage
		while GetDistanceBetweenCoords( 1850.6625976563,3674.0266113281,33.76900100708, GetEntityCoords(GetPlayerPed(-1))) < 65.0 do
			Notify("Here is the POLICE!","Waze - Notification")	
			break
		end	
	end
end

-------------------------------------------------------------------------------------------------------------------------
--[[

Here you can find some base functions!

I suggest to not modify something from this part of the script!

]]

function Notify(message,title)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(message)
    SetNotificationMessage("CHAR_BUGSTARS", "CHAR_BUGSTARS", true, 1, title)
    DrawNotification(false, true)
end
