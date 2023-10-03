RegisterServerEvent('mysto:antidupe')
AddEventHandler('mysto:antidupe', function()
  local player = source
  local license = tostring(GetPlayerIdentifier(player, 2))
  local count = 0
  for _, p in ipairs(GetPlayers()) do
    if p ~= player and tostring(GetPlayerIdentifier(p, 2)) == license then
      count = count + 1
    end
  end
  if count >= 2 then
    DropPlayer(player, "Dropped for Duping. Better luck next time buddy :)")
  end
end)