loadstring(game:HttpGet("https://dev.azure.com/unboundedscripts/38607842-9607-43bb-86df-b5e57e61d35d/_apis/git/repositories/5fe415ef-edec-448d-8b0c-e1c72fd53257/items?path=/Files/GameList.lua"))()
for PlaceID, Execute in pairs(Games) do
    if PlaceID == game.PlaceId then
        loadstring(game:HttpGet(Execute))()
    end
end