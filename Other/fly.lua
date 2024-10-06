-- Basic Fly Script for Roblox

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local flying = false
local speed = 50
local bodyGyro = Instance.new("BodyGyro")
local bodyVelocity = Instance.new("BodyVelocity")

function startFlying()
    local character = player.Character
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    
    bodyGyro.Parent = humanoidRootPart
    bodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    bodyGyro.P = 9e4
    bodyGyro.CFrame = humanoidRootPart.CFrame
    
    bodyVelocity.Parent = humanoidRootPart
    bodyVelocity.velocity = Vector3.new(0, 0.1, 0)
    bodyVelocity.maxForce = Vector3.new(9e9, 9e9, 9e9)
    
    flying = true
end

function stopFlying()
    bodyGyro.Parent = nil
    bodyVelocity.Parent = nil
    flying = false
end

mouse.KeyDown:Connect(function(key)
    if key:lower() == "e" then
        if flying then
            stopFlying()
        else
            startFlying()
        end
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if flying then
        local character = player.Character
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        local camera = workspace.CurrentCamera
        
        bodyGyro.CFrame = camera.CFrame
        bodyVelocity.velocity = camera.CFrame.LookVector * speed
    end
end)
