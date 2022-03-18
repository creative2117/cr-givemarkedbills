QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add('givemarkedbills', 'Give marked bills to a player', {{name='id', help='Player id'}, {name='worth', help='Worth of the marked bills'}}, true, function(source, args)
    local src = source
    local targetPlayer = QBCore.Functions.GetPlayer(tonumber(args[1])) -- Get the target player from Player ID
    if targetPlayer then
        local info = {
            worth = tonumber(args[2]) -- Get the worth of the marked bills
        }
        targetPlayer.Functions.AddItem("markedbills", 1, false, info)
    end
end, 'admin') -- Only admins can use this commands