ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('lostsky:Pistolet SNS')
AddEventHandler('lostsky:Pistolet SNS', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addWeapon('WEAPON_SNSPISTOL', 1)
         TriggerClientEvent('esx:showNotification', source, "~o~Vous avez reçu ~r~1 un pistolet_sns")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~r~ $"..price-xMoney.."~w~ .")
    end
end)

RegisterNetEvent('lostsky:Pistolet')
AddEventHandler('lostsky:Pistolet', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 15000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addWeapon('weapon_pistol', 1)
    TriggerClientEvent('esx:showNotification', source, "~o~Vous avez reçu ~r~1 un pistolet")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~r~ $"..price-xMoney.."~w~ .")
    end
end)

RegisterNetEvent('lostsky:Pistolet cal50')
AddEventHandler('lostsky:Pistolet cal50', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 20000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addWeapon('weapon_combatpistol', 1)
         TriggerClientEvent('esx:showNotification', source, "~o~Vous avez reçu ~r~1 un Cal50")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~r~ $"..price-xMoney.."~w~ .")
    end
end)

RegisterNetEvent('lostsky:SMG')
AddEventHandler('lostsky:SMG', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 150000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addWeapon('weapon_smg', 1)
         TriggerClientEvent('esx:showNotification', source, "~o~Vous avez reçu ~r~1 une SMG")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~r~ $"..price-xMoney.."~w~ .")
    end
end)

RegisterNetEvent('lostsky:Chargeur')
AddEventHandler('lostsky:Chargeur', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('clip', 1)
        TriggerClientEvent('esx:showNotification', source, "~o~Vous avez reçu ~r~1 un Chargeur ")
    else
         TriggerClientEvent('esx:showNotification', source, "~o~Il vous ~r~manque~r~ $"..price-xMoney.."~w~ .")
    end
end)

RegisterNetEvent('lostsky:Assault Smg')
AddEventHandler('lostsky:Assault Smg', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 250000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addWeapon('weapon_assaultsmg', 1)
         TriggerClientEvent('esx:showNotification', source, "~o~Vous avez reçu ~r~1 un Assault Smg")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~r~ $"..price-xMoney.."~w~ .")
    end
end)

RegisterNetEvent('lostsky:SMG scorpion')
AddEventHandler('lostsky:SMG scorpion', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 200000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addWeapon('weapon_minismg', 1)
         TriggerClientEvent('esx:showNotification', source, "~o~Vous avez reçu ~r~1 un Mini SMG")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~r~ $"..price-xMoney.."~w~ .")
    end
end)

RegisterNetEvent('lostsky:ak47')
AddEventHandler('lostsky:ak47', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 500000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addWeapon('weapon_assaultrifle', 1)
         TriggerClientEvent('esx:showNotification', source, "~o~Vous avez reçu ~r~1 une ak47")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~r~ $"..price-xMoney.."~w~ .")
    end
end)

RegisterNetEvent('lostsky:ak47 mini')
AddEventHandler('lostsky:ak47 mini', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 300000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addWeapon('weapon_compactrifle', 1)
         TriggerClientEvent('esx:showNotification', source, "~o~Vous avez reçu ~r~1 une ak47 mini")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~r~ $"..price-xMoney.."~w~ .")
    end
end)

RegisterNetEvent('lostsky:m4')
AddEventHandler('lostsky:m4', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 400000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addWeapon('weapon_carbinerifle', 1)
         TriggerClientEvent('esx:showNotification', source, "~o~Vous avez reçu ~r~1 une m4")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~r~ $"..price-xMoney.."~w~ .")
    end
end)