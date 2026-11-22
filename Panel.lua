
local p = game.Players.LocalPlayer
local g = Instance.new("ScreenGui", p.PlayerGui)
g.Name = "KeylessPVP"

local f = Instance.new("Frame", g)
f.Size = UDim2.fromOffset(260, 220)
f.Position = UDim2.new(.5,-130,.5,-110)
f.BackgroundColor3 = Color3.fromRGB(20,20,25)

Instance.new("UICorner",f).CornerRadius = UDim.new(0,12)

local s = Instance.new("UIStroke",f)
s.Color = Color3.fromRGB(0,255,100)

local t = Instance.new("TextLabel",f)
t.Size = UDim2.new(1,0,0,45)
t.BackgroundTransparency = 1
t.Text = "KEYLESS PVP"
t.TextColor3 = Color3.fromRGB(0,255,100)
t.TextSize = 20

local function btn(name,y,callback)
    local b = Instance.new("TextButton",f)
    b.Size = UDim2.new(1,-20,0,38)
    b.Position = UDim2.fromOffset(10,y)
    b.Text = name
    b.TextColor3 = Color3.new(1,1,1)
    b.BackgroundColor3 = Color3.fromRGB(35,60,45)
    Instance.new("UICorner",b)
    b.MouseButton1Click:Connect(callback)
end

btn("⚔ Combo Trainer",55,function()
    t.Text = "COMBO PRACTICE"
end)

btn("🎯 Practice Mode",100,function()
    t.Text = "PRACTICE READY"
end)

btn("❌ Close",145,function()
    g.Enabled = false
end)
