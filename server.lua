local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('signrobbery:server:delete')
AddEventHandler('signrobbery:server:delete', function()
        local coordFrom = GetEntityCoords(GetPlayerPed(source)) -- Get the position of the source.
        for k,v in pairs(GetAllObjects()) do -- Do a loop of all the known server-side objects.
            local objCoord = GetEntityCoords(v) -- Get the coord of the object found
            print("test")
            if Config.ModelHash[GetEntityModel(obj)] then
                DeleteEntity(obj) -- Delete the entity
                    print("test4")
            end
        end
    end)

RegisterNetEvent("qb-signrobbery:server:StopSign", function()
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(tonumber(src))

	xPlayer.Functions.AddItem("stopsign", 1, false)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['stopsign'], "add")
end)

RegisterNetEvent("qb-signrobbery:server:WalkingManSign", function()
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(tonumber(src))

	xPlayer.Functions.AddItem("walkingmansign", 1, false)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['walkingmansign'], "add")
end)

RegisterNetEvent("qb-signrobbery:server:DontBlockIntersectionSign", function()
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(tonumber(src))

	xPlayer.Functions.AddItem("dontblockintersectionsign", 1, false)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['dontblockintersectionsign'], "add")
end)

RegisterNetEvent("qb-signrobbery:server:UTurnSign", function()
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(tonumber(src))

	xPlayer.Functions.AddItem("uturnsign", 1, false)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['uturnsign'], "add")
end)


---------------------
--- Usable Signs ----
---------------------


QBCore.Functions.CreateUseableItem("stopsign", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('qb-signrobbery:use:StopSign', src, item)
end)

QBCore.Functions.CreateUseableItem("walkingmansign", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('qb-signrobbery:use:WalkingManSign', src, item)
end)

QBCore.Functions.CreateUseableItem("dontblockintersectionsign", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('qb-signrobbery:use:DontBlockIntersectionSign', src, item)
end)

QBCore.Functions.CreateUseableItem("uturnsign", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('qb-signrobbery:use:UturnSign', src, item)
end)
