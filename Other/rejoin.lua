-- Wait until the game is fully loaded
repeat wait() until game:IsLoaded()

-- Get the TeleportService
local teleportService = game:GetService("TeleportService")

-- Get the current place ID and job ID
local placeId = game.PlaceId
local jobId = game.JobId

-- Function to rejoin the current server
local function rejoinServer()
    teleportService:TeleportToPlaceInstance(placeId, jobId)
    
end

-- Example of how you might trigger the rejoin function
-- This could be tied to a button click or a chat command
game.Players.LocalPlayer.Chatted:Connect(function(message)
    if message == "reload" then
        rejoinServer()
    end
end)


