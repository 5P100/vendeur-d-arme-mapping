ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(500)
  end
end)

Lostsky              = {}
Lostsky.DrawDistance = 100
Lostsky.Size         = {x = 0.1, y = 0.5, z = 0.1}
Lostsky.Color        = {r = 255, g = 0, b = 0}
Lostsky.Type         = 22

local shops = {
	Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 0, 0}, Title = "Vendeur d armes" },
	Data = { currentMenu = "Bernard voudrais vous vendre une arme", "Vendeur d armes" },
    Events = {
		onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result)


            if btn.name == "Pistolet SNS" then
                TriggerServerEvent('lostsky:Pistolet SNS')
            end

            if btn.name == "Pistolet" then
                TriggerServerEvent('lostsky:Pistolet')
            end
                
            if btn.name == "Pistolet cal50" then
                TriggerServerEvent('lostsky:Pistolet cal50')
            end

            if btn.name == "choix Pistolet" then
                OpenMenu("choix Pistolet")
            end

            if btn.name == "Assault Smg" then
                TriggerServerEvent('lostsky:Assault Smg')
            end

            if btn.name == "SMG scorpion" then
                TriggerServerEvent('lostsky:SMG scorpion')
            end

            if btn.name == "choix SMG" then
                OpenMenu("choix SMG")
            end

            if btn.name == "ak47" then
                TriggerServerEvent('lostsky:ak47')
            end

            if btn.name == "choix Assault rafale" then
                OpenMenu("choix Assault rafale")
            end

            if btn.name == "Divers" then
                OpenMenu("Divers")
            end

            if btn.name == "SMG" then
                TriggerServerEvent('lostsky:SMG')
            end

            if btn.name == "ak47 mini" then
                TriggerServerEvent('lostsky:ak47 mini')
            end

            if btn.name == "m4" then
                TriggerServerEvent('lostsky:m4')
            end

            if btn.name == "Chargeur" then
                TriggerServerEvent("lostsky:Chargeur")
            end

            end,
    },

	Menu = {
		["Bernard voudrais vous vendre une arme"] = {
			b = {
                {name = "choix Pistolet", ask = "~r~>>>", askX = true},
                {name = "choix SMG", ask = "~r~>>>", askX = true},
                {name = "choix Assault rafale", ask = "~r~>>>", askX = true},
                {name = "Divers", ask = "~r~>>>", askX = true},
			}
		},

        ["choix Pistolet"] = {
			b = {
                {name = "Pistolet SNS", ask = "~r~10000$", askX = true},
                {name = "Pistolet", ask = "~r~15000$", askX = true},
                {name = "Pistolet cal50", ask = "~r~20000$", askX = true},
			}
		},

        ["choix SMG"] = {
			b = {
                {name = "SMG scorpion", ask = "~r~150000$", askX = true},
                {name = "SMG", ask = "~r~200000$", askX = true},
                {name = "Assault Smg", ask = "~r~250000$", askX = true},
			}
		},

        ["choix Assault rafale"] = {
			b = {
                {name = "ak47", ask = "~r~500000$", askX = true},
                {name = "ak47 mini", ask = "~r~300000$", askX = true},
                {name = "m4", ask = "~r~400000$", askX = true},
			}
		},

        ["Divers"] = {
			b = {
                {name = "Chargeur", ask = "~r~5000$", askX = true},
			}
	    }
	}
}


local position = {
    {x = -82.45, y = 116.1969, z = -95.6816},
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(position) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 1.0 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour parler ~o~au vendeur d Armes.")
				if IsControlJustPressed(1,51) then 					
                    CreateMenu(shops) 
				end
            end
        end
    end  
end)
--------------ped-------------------------
Citizen.CreateThread(function()
    local hash = GetHashKey("cs_orleans")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("Cutscene", "cs_orleans", -83.45, 116.1969, -96.6816, 277.00, true, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
end)

local v1 = vector3(-83.45, 116.1969, -96.6816, 277.00)

function Draw3DText(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov
    if onScreen then
        SetTextScale(0.0, 0.35)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

--------------------------------------------------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local coords = GetEntityCoords(PlayerPedId()), true

        for k in pairs(position) do
            if (Lostsky.Type ~= -1 and GetDistanceBetweenCoords(coords, position[k].x, position[k].y, position[k].z, true) < Lostsky.DrawDistance) then
                DrawMarker(Lostsky.Type, position[k].x, position[k].y, position[k].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Lostsky.Size.x, Lostsky.Size.y, Lostsky.Size.z, Lostsky.Color.r, Lostsky.Color.g, Lostsky.Color.b, 100, false, true, 2, false, false, false, false)
                letSleep = false
			end
        end
    end
end)