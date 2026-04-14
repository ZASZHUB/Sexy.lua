--// ZASZ HUB v13 CYBER PREMIUM UI - PENTEST ENHANCED w/ BACKGROUND
-- Added: Sexy cyber girl background image

-- [All previous code before main creation remains the same...]

-- MAIN WINDOW (Updated with image support)
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 420, 0, 500)
main.Position = UDim2.new(0.5, -210, 0.5, -250)
main.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
main.Active = true
main.Draggable = true
main.ClipsDescendants = true
main.Parent = gui

-- CYBER GIRL BACKGROUND IMAGE
local bgImage = Instance.new("ImageLabel")
bgImage.Size = UDim2.new(1, 0, 1, 0)
bgImage.Position = UDim2.new(0, 0, 0, 0)
bgImage.BackgroundTransparency = 1
bgImage.Image = "rbxassetid://18416517881"  -- Cyber girl pentest background
bgImage.ImageColor3 = Color3.fromRGB(255, 255, 255)
bgImage.ImageTransparency = 0.85  -- Subtle overlay
bgImage.ScaleType = Enum.ScaleType.Crop
bgImage.Parent = main

-- Dark overlay for readability
local overlay = Instance.new("Frame")
overlay.Size = UDim2.new(1, 0, 1, 0)
overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
overlay.BackgroundTransparency = 0.4
overlay.ZIndex = 2
overlay.Parent = main

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 18)
mainCorner.Parent = main

-- Animated background effects
task.spawn(function()
    local time = 0
    RunService.Heartbeat:Connect(function(dt)
        time = time + dt * 0.5
        bgImage.ImageColor3 = Color3.fromHSV((time % 5) / 5 * 0.1, 0.3, 1)  -- Subtle color shift
    end)
end)

-- [Rest of the GUI code remains exactly the same...]

-- Update visual tab with background control
local visualPage = createTab("Visual", "👁️", 2, function(page)
    -- BACKGROUND INTENSITY SLIDER
    createSlider(page, 20, "BG Intensity", 0, 100, 15, function(val)
        bgImage.ImageTransparency = 1 - (val / 100)
        overlay.BackgroundTransparency = 0.6 - (val / 200)
    end)
    
    -- ESP WALLHACK TOGGLE
    createToggle(page, 110, "ESP Wallhack", false, function(enabled)
        -- [ESP code unchanged]
    end)
    
    createToggle(page, 170, "Rainbow Border", false, toggleRainbow)
    createToggle(page, 230, "Neon Glow", true, function(v)
        stroke.Enabled = v
    end)
end)

-- [All other features unchanged - Hitbox, Speed, JumpPower, ESP...]

print("ZASZ CYBER HUB v13 - CYBER GIRL PENTEST EDITION LOADED")
