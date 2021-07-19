local module = {}

function module.request(request, value)
  if string.lower(request) == "debugprint" then
    print("DEBUG:", value)
  else
    warn("Request",  request, "not found.")
  end
end

function module:KillPlayer(player)
  local Players = game:GetService("Players")
  if Players:FindFirstChild(player.Name) then
    local Character = player.Character
    local Humanoid = Character:FindFirstChild("Humanoid")
    if Humanoid then
      Humanoid:TakeDamage(100)
    else
      warn("Humanoid not found.")
    end
  else
    warn("Player not found.")
  end
end

return module
