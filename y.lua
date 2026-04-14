-- ZASZ HUB v13 UNIVERSAL - SEXY NAKED GIRL EDITION
-- Works on ALL executors + ALL Roblox games

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ZASZ_HUB_V13"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = gui

-- MAIN FRAME
local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(10,10,20)
Main.Position = UDim2.new(0.5, -220, 0.5, -280)
Main.Size = UDim2.new(0,440,0,560)
Main.Active = true
Main.Draggable = true

-- CORNER
local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0,15)
Corner.Parent = Main

-- STROKE
local Stroke = Instance.new("UIStroke")
Stroke.Color = Color3.fromRGB(0,255,255)
Stroke.Thickness = 2
Stroke.Parent = Main

-- SEXY NAKED GIRL BACKGROUND (UNIVERSAL ASSETS)
local GirlBG = Instance.new("ImageLabel")
GirlBG.Name = "SexyNakedGirl"
GirlBG.Parent = Main
GirlBG.BackgroundTransparency = 1
GirlBG.Size = UDim2.new(1,0,1,0)
GirlBG.Image = "rbxassetid://13160473083"  -- Sexy hot naked girl
GirlBG.ImageTransparency = 0.7
GirlBG.ScaleType = Enum.ScaleType.Crop
GirlBG.SliceCenter = Rect.new(100, 100, 100, 100)

-- OVERLAY FOR TEXT VISIBILITY
local Overlay = Instance.new("Frame")
Overlay.Parent = Main
Overlay.BackgroundColor3 = Color3.fromRGB(0,0,0)
Overlay.BackgroundTransparency = 0.4
Overlay.Size = UDim2.new(1,0,1,0)
Overlay.ZIndex = 2

-- TITLE BAR
local TitleBar = Instance.new("Frame")
TitleBar.Name = "Title"
TitleBar.Parent = Main
TitleBar.BackgroundColor3 = Color3.fromRGB(20,20,40)
TitleBar.Size = UDim2.new(1,0,0,50)
TitleBar.ZIndex = 10

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0,15)
TitleCorner.Parent = TitleBar

local TitleText = Instance.new("TextLabel")
TitleText.Parent = TitleBar
TitleText.BackgroundTransparency = 1
TitleText.Size = UDim2.new(1,0,1,0)
TitleText.Position = UDim2.new(0,15,0,0)
TitleText.Text = "ZASZ HUB v13 | UNIVERSAL"
TitleText.TextColor3 = Color3.fromRGB(0,255,255)
TitleText.TextScaled = true
TitleText.Font = Enum.Font.GothamBold
TitleText.TextXAlignment = Enum.TextXAlignment.Left
TitleText.ZIndex = 11

-- CLOSE BUTTON
local CloseBtn = Instance.new("TextButton")
CloseBtn.Parent = TitleBar
CloseBtn.BackgroundColor3 = Color3.fromRGB(255,50,50)
CloseBtn.Size = UDim2.new(0,40,0,40)
CloseBtn.Position = UDim2.new(1,-50,0,5)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255,255,255)
CloseBtn.TextScaled = true
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.ZIndex = 11

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0,10)
CloseCorner.Parent = CloseBtn

-- SCROLL FRAME
local Scroll = Instance.new("ScrollingFrame")
Scroll.Parent = Main
Scroll.BackgroundTransparency = 1
Scroll.BorderSizePixel = 0
Scroll.Position = UDim2.new(0,10,0,60)
Scroll.Size = UDim2.new(1,-20,1,-70)
Scroll.ScrollBarThickness = 6
Scroll.ScrollBarImageColor3 = Color3.fromRGB(0,255,255)
Scroll.CanvasSize = UDim2.new(0,0,0,800)
Scroll.ZIndex = 3

-- UNIVERSAL TOGGLES
local function MakeToggle(ypos, text, callback)
    local Frame = Instance.new("Frame")
    Frame.Parent = Scroll
    Frame.BackgroundTransparency = 1
    Frame.Size = UDim2.new(1,0,0,50)
    Frame.Position = UDim2.new(0,0,0,ypos)
    
    local Label = Instance.new("TextLabel")
    Label.Parent = Frame
    Label.BackgroundTransparency = 1
    Label.Size = UDim2.new(1,-80,1,0)
    Label.Position = UDim2.new(0,10,0,0)
    Label.Text = text
    Label.TextColor3 = Color3.fromRGB(255,255,255)
    Label.TextScaled = true
    Label.Font = Enum.Font.Gotham
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.ZIndex = 4
    
    local Btn = Instance.new("TextButton")
    Btn.Parent = Frame
    Btn.BackgroundColor3 = Color3.fromRGB(255,100,100)
    Btn.Size = UDim2.new(0,70,0,35)
    Btn.Position = UDim2.new(1,-80,0.15,0)
    Btn.Text = "OFF"
    Btn.TextColor3 = Color3.fromRGB(255,255,255)
    Btn.TextScaled = true
    Btn.Font = Enum.Font.GothamBold
    Btn.ZIndex = 4
    
    local BtnCorner = Instance.new("UICorner")
    BtnCorner.CornerRadius = UDim.new(0,10)
    BtnCorner.Parent = Btn
    
    local enabled = false
    Btn.MouseButton1Click:Connect(function()
        enabled = not enabled
        Btn.BackgroundColor3 = enabled and Color3.fromRGB(0,255,100) or Color3.fromRGB(255,100,100)
        Btn.Text = enabled and "ON" or "OFF"
        callback(enabled)
    end)
end

-- FEATURES
MakeToggle(10, "🌟 Speed Hack", function(on)
    if on then
        spawn(function()
            while player.Character and player.Character:FindFirstChild("Humanoid") do
                player.Character.Humanoid.WalkSpeed = 100
                wait(0.1)
            end
        end)
    end
end)

MakeToggle(70, "🦘 Jump Hack", function(on)
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.JumpPower = on and 200 or 50
    end
end)

MakeToggle(130, "👻 Noclip", function(on)
    spawn(function()
        while on do
            if player.Character then
                for i,v in pairs(player.Character:GetChildren()) do
                    if v:IsA("BasePart") then v.CanCollide = false end
                end
            end
            wait(0.1)
        end
    end)
end)

MakeToggle(190, "✈️ Fly (X/Z)", function(on)
    local BV = Instance.new("BodyVelocity")
    BV.MaxForce = Vector3.new(9e9,9e9,9e9)
    BV.Velocity = Vector3.new()
    if on and player.Character then
        BV.Parent = player.Character.HumanoidRootPart
        spawn(function()
            while on do
                local cam = workspace.CurrentCamera.CFrame
                if UserInputService:IsKeyDown(Enum.KeyCode.X) then
                    BV.Velocity = Vector3.new(0,50,0)
                elseif UserInputService:IsKeyDown(Enum.KeyCode.Z) then
                    BV.Velocity = Vector3.new(0,-50,0)
                else
                    BV.Velocity = Vector3.new(0,0,0)
                end
                wait()
            end
        end)
    else
        BV:Destroy()
    end
end)

MakeToggle(250, "🌈 Rainbow BG", function(on)
    if on then
        spawn(function()
            while on do
                GirlBG.ImageColor3 = Color3.fromHSV(tick()%5/5,1,1)
                Stroke.Color = Color3.fromHSV(tick()%5/5,1,1)
                wait(0.1)
            end
            GirlBG.ImageColor3 = Color3.new(1,1,1)
            Stroke.Color = Color3.fromRGB(0,255,255)
        end)
    end
end)

MakeToggle(310, "🔥 Neon Glow", function(on)
    Stroke.Thickness = on and 4 or 2
end)

-- ANIMATION
spawn(function()
    while wait(0.05) do
        local alpha = 0.65 + math.sin(tick()*3)*0.1
        GirlBG.ImageTransparency = alpha
        Overlay.BackgroundTransparency = alpha + 0.1
    end
end)

-- CLOSE
CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

print("💋 ZASZ HUB v13 UNIVERSAL - SEXY NAKED GIRL LOADED!")
