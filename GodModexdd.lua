local plr = game:GetService("Players").LocalPlayer

local function applyGodmode(char)
    local hrp = char:FindFirstChild("HumanoidRootPart") or char:WaitForChild("HumanoidRootPart")

    local existingFF = char:FindFirstChildOfClass("ForceField")
    if existingFF then
        existingFF:Destroy()
    end

    local ff = Instance.new("ForceField")
    ff.Name = "GodmodeBubble"
    ff.Parent = char

    print("✅ Auto Invisible Godmode applied.")
end

if plr.Character then
    applyGodmode(plr.Character)
end

plr.CharacterAdded:Connect(function(newChar)
    newChar:WaitForChild("HumanoidRootPart")
    applyGodmode(newChar)
end)
