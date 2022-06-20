local charhum = game.Players.LocalPlayer.Character.HumanoidRootPart
local m = workspace.Map

getgenv().tofToggle = true
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stebulous/solaris-ui-lib/main/source.lua"))()

local map1 = m.FirstSegment.start.CFrame
local map2 = m["2"].start.CFrame
local map3 = m["3"].start.CFrame
local map4 = m["4"].start.CFrame
local map5 = m["5"].start.CFrame
local map6 = m["6"].start.CFrame
local map7 = m["7"].start.CFrame
local map8 = m["8"].start.CFrame
local mapEnd = m["End"].stop.CFrame
local mapArray = {map1,map2,map3,map4,map5,map6,map7,map8}

if m:FindFirstChild("9") then 
    table.insert(mapArray, m["9"].start.CFrame)
end

if m:FindFirstChild("10") then 
    table.insert(mapArray, m["10"].start.CFrame)
end

table.insert(mapArray, mapEnd)
task.wait()

local win = ui:New({
    Name = "Tower of Fun - Ripull",
    FolderToSave = "TOFR"
})

local mT = win:Tab("Main")

local mTS = mT:Section("Main Features")

mTS:Button("Finish Tower", function()
    getgenv().tofToggle = true
    for i in pairs(mapArray) do
        if getgenv().tofToggle then
            charhum.CFrame = CFrame.new(mapArray[i].X, mapArray[i].Y + 6, mapArray[i].Z)
            task.wait(6)
        end 
    end
end)

mTS:Button("Stop Finishing",function()
    getgenv().tofToggle = false
end)
