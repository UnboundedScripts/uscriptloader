local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

local function rejoinServer()
    local player = Players.LocalPlayer
    local placeId = game.PlaceId
    local jobId = game.JobId
    TeleportService:TeleportToPlaceInstance(placeId, jobId, player)
end

rejoinServer()
