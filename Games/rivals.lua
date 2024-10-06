print("Loading Rivals Script hub")

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Script Hub - Rivals",
    LoadingTitle = "Powered by Rayfield Interface Suite",
    LoadingSubtitle = "by UnboundedScripts",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = rhuda21, -- Create a custom folder for your hub/game
       FileName = "HubRivals"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Rivals Hub | Key",
       Subtitle = "",
       Note = "😢",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {""} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local MainTab = Window:CreateTab("🔑 | Key Scripts", nil) -- Title, Image
 local MainSection = MainTab:CreateSection("Main") 

 Rayfield:Notify({
    Title = "Script Executed",
    Content = "RIVALS",
    Duration = 3.2,
    Image = nil,
    Actions = { -- Notification Buttons
       Ignore = {
          Name = "Okay!",
          Callback = function()
          print("rIVALS HUB WORKING :)")
       end
    },
 },
 })

 local Button = MainTab:CreateButton({
    Name = "Load Venox",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/venoxcc/universalscripts/main/rivals/venoxware"))()
    end,
 })


 local Dropdown = MainTab:CreateDropdown({
    Name = "Reset Scripts",
    Options = {"A","B"},
    CurrentOption = {"A"},
    MultipleOptions = false,
    Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
    -- The function that takes place when the selected option is changed
    -- The variable (Option) is a table of strings for the current selected options
    end,
 })

 local KeylessTab = Window:CreateTab("🔓 | Keyless", nil) -- Title, Image
 local Section = KeylessTab:CreateSection("Main")

 local Button = KeylessTab:CreateButton({
    Name = "Load Tbao Hub",
    Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/R3TH-PRIV/R3THPRIV/main/loader.lua'))()
    end,
 })

 local MiscTab = Window:CreateTab("☑ | Misc", nil) -- Title, Image
 local Section = MiscTab:CreateSection("Other Scripts")

 local Button = MiscTab:CreateButton({
    Name = "NO SCRIPT",
    Callback = function()
    -- placeolder      
    end,
})

 local Button = MiscTab:CreateButton({
    Name = "🔃Rejoin Server DO /rejoin IN CHAT TO ACTIVATE",
    Callback = function()
    loadstring(game:HttpGet(""))()
    end,
})



 local Toggle = MiscTab:CreateToggle({
    Name = "Toggle Example",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    print("toggle holder")
    end,
 })