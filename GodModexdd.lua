-- Da Hood Auto Invisible Godmode Script (Delta Compatible)

local plr = game:GetService("Players").LocalPlayer

-- Function to apply invisible ForceField (godmode)
local function applyGodmode(char)
    -- Wait for HumanoidRootPart to load
    local hrp = char:FindFirstChild("HumanoidRootPart") or char:WaitForChild("HumanoidRootPart")

    -- Remove any existing ForceField
    local existingFF = char:FindFirstChildOfClass("ForceField")
    if existingFF then
        existingFF:Destroy()
    end

    -- Create invisible ForceField
    local ff = Instance.new("ForceField")
    ff.Name = "GodmodeBubble"
    ff.Visible = false -- stays invisible
    ff.Parent = char

    print("✅ Auto Invisible Godmode applied.")
end

-- Run on current character
if plr.Character then
    applyGodmode(plr.Character)
end

-- Reapply godmode automatically on every respawn
plr.CharacterAdded:Connect(function(newChar)
    newChar:WaitForChild("HumanoidRootPart")
    applyGodmode(newChar)
end)
