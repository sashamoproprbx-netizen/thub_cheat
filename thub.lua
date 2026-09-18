local runs = game:GetService("RunService")
local spinning = false
local spins = true
local p = game.Players.LocalPlayer
local char = p.Character
local hrp = char:WaitForChild("HumanoidRootPart")
local hum = char:WaitForChild("Humanoid")
p.CharacterAdded:Connect(function() 
    char = p.Character
    hrp = char:WaitForChild("HumanoidRootPart") 
    hum = char:WaitForChild("Humanoid")
end) 
local cs = true
local pg = p:WaitForChild("PlayerGui")
local sgui = Instance.new("ScreenGui", pg)
sgui.ResetOnSpawn = false
local panel = Instance.new("Frame", sgui)
panel.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
panel.BorderSizePixel = 0
panel.Position = UDim2.new(0.196, 0, 0.014, 0)
panel.Size = UDim2.new(0.603, 0, 0.926, 0)
local corner1 = Instance.new("UICorner", panel)
corner1.CornerRadius = UDim.new(0.1, 0)
local name = Instance.new("TextLabel", panel)
name.Position = UDim2.new(0, 0, 0, 0)
name.Size = UDim2.new(1, 0, 0.1, 0)
name.BackgroundTransparency = 1
name.Text = "THub"
name.TextScaled = true
name.TextColor3 = Color3.fromRGB(255, 255, 255)
name.Font = Enum.Font.GothamBold
local close = Instance.new("TextButton", sgui)
close.Position = UDim2.new(0.077, 0, 0.033, 0)
close.Size = UDim2.new(0.106, 0, 0.063, 0)
close.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
close.BorderSizePixel = 0
close.TextScaled = true
close.Font = Enum.Font.GothamBold
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.Text = "Close"
close.MouseButton1Click:Connect(function()
    if cs then
        panel.Visible = false
        close.Text = "Open"
        cs = false
    else
        panel.Visible = true 
        close.Text = "Close"
        cs = true
    end
end)
local corner2 = Instance.new("UICorner", close) 
corner2.CornerRadius = UDim.new(0.3, 0)
local sit = Instance.new("TextButton", panel)
sit.Position = UDim2.new(0.038, 0, 0.188, 0)
sit.Size = UDim2.new(0.151, 0, 0.079, 0)
sit.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
sit.BorderSizePixel = 0
sit.TextScaled = true
sit.Font = Enum.Font.GothamBold
sit.Text = "Sit"
sit.TextColor3 = Color3.fromRGB(255, 255, 255) 
sit.MouseButton1Click:Connect(function()
    hum.Sit = true
end)
local corner3 = Instance.new("UICorner", sit)
corner3.CornerRadius = UDim.new(0.3, 0) 
runs.Heartbeat:Connect(function(dt)
    if spinning then
        hrp.CFrame = hrp.CFrame * CFrame.Angles(math.rad(999), math.rad(9999999999) * dt, math.rad(999))
        hum.Sit = true
    end
end)
local spin = Instance.new("TextButton", panel)
spin.Position = UDim2.new(0.222, 0, 0.187, 0) 
spin.Size = UDim2.new(0.15, 0, 0.079, 0)
spin.BorderSizePixel = 0 
spin.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
spin.TextScaled = true 
spin.TextColor3 = Color3.fromRGB(255, 255, 255)
spin.Font = Enum.Font.GothamBold
spin.Text = "Fling"
spin.MouseButton1Click:Connect(function()
    if spins then
        spins = false
        spinning = true
        spin.Text = "Unfling"
    else 
        spins = true
        spinning = false
        spin.Text = "Fling" 
    end
end) 
local corner4 = Instance.new("UICorner", spin)
corner4.CornerRadius = UDim.new(0.3, 0)

