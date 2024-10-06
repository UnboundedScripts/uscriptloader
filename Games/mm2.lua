print("Loading MM2 Script hub")

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Script Hub - MM2",
    LoadingTitle = "Powered by Rayfield Interface Suite",
    LoadingSubtitle = "by ",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = , -- Create a custom folder for your hub/game
       FileName = "RHub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "MM2 Hub | Key",
       Subtitle = "",
       Note = "Obtain From ",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {""} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local MainTab = Window:CreateTab("🔥Higlight Hub", nil) -- Title, Image
 local MainSection = MainTab:CreateSection("Main") 

 Rayfield:Notify({
    Title = "Script Executed",
    Content = "Murder Mystery 2",
    Duration = 3.2,
    Image = nil,
    Actions = { -- Notification Buttons
       Ignore = {
          Name = "Alr",
          Callback = function()
          print("The user tapped Okay!")
       end
    },
 },
 })

 local Button = MainTab:CreateButton({
    Name = "Load Higlight Hub",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatSick/HighlightMM2/main/Main"))()
    end,
 })

 local MiscTab = Window:CreateTab("☑ | Misc", nil) -- Title, Image
 local Section = MiscTab:CreateSection("Other Scripts")

 
 local Button = MiscTab:CreateButton({
    Name = "🔃Rejoin Server| Type 'reload' IN CHAT TO ACTIVATE",
    Callback = function()
    loadstring(game:HttpGet(""))()
    end,
    
})

local Slider = MiscTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MiscTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})



 local Toggle = MiscTab:CreateToggle({
    Name = "Toggle Example",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    loadstring(game:HttpGet(""))()
    Callback = function(startFlying)
    end,
 })