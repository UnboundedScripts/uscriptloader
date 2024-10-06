loadstring(game:HttpGet("https://raw.githubusercontent.com/UnboundedScripts/uscriptloader/refs/heads/main/Files/GameList.lua"))()
for PlaceID, Execute in pairs(Games) do
    if PlaceID == game.PlaceId then
        loadstring(game:HttpGet(Execute))()
    end
end
