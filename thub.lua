local s = true 
local p = game.Players.LocalPlayer
local sp = 16 
task.wait(0.5)
local pg = p:WaitForChild("PlayerGui")
local sgui = Instance.new("ScreenGui", pg)
sgui.ResetOnSpawn = false
local panel = Instance.new("Frame", sgui)
panel.Position = UDim2.new(0.135, 0, 0.012, 0)
panel.Size = UDim2.new(0.587, 0, 0.878, 0)
panel.BorderSizePixel = 0
panel.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
local corner = Instance.new("UICorner", panel)
corner.CornerRadius = UDim.new(0.1, 0)
local t = Instance.new("TextLabel", panel)
t.Position = UDim2.new(0, 0, 0, 0)
t.Size = UDim2.new(1, 0, 0.1, 0)
t.TextColor3 = Color3.fromRGB(255, 255, 255)
t.BackgroundTransparency = 1
t.Font = Enum.Font.GothamBold
t.Text = "THub"
t.TextScaled = true
local close = Instance.new("TextButton", sgui)
close.Position = UDim2.new(0.032, 0, 0.648, 0)
close.Size = UDim2.new(0.091, 0, 0.063, 0)
close.BorderSizePixel = 0
close.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.Font = Enum.Font.GothamBold
close.TextScaled = true
close.Text = "Close"
local corner2 = Instance.new("UICorner", close)
corner2.CornerRadius = UDim.new(0.2, 0)
close.MouseButton1Click:Connect(function()
    if s then
        panel.Visible = false
        close.Text = "Open"
        s = false
    else
        panel.Visible = true 
        close.Text = "Close" 
        s = true 
    end
end)
local sit = Instance.new("TextButton", panel) 
sit.Position = UDim2.new(0.063, 0, 0.191, 0)
sit.Size = UDim2.new(0.173, 0, 0.098, 0)
sit.BorderSizePixel = 0
sit.Text = "Sit"
sit.Font = Enum.Font.GothamBold
sit.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
sit.TextColor3 = Color3.fromRGB(255, 255, 255) 
sit.TextScaled = true
local corner3 = Instance.new("UICorner", sit)
corner3.CornerRadius = UDim.new(0.3, 0)
sit.MouseButton1Click:Connect(function()
    p.Character.Humanoid.Sit = true
end)
local speedtb = Instance.new("TextBox", panel)
speedtb.Size = UDim2.new(0.172, 0, 0.097, 0)
speedtb.Position = UDim2.new(0.28, 0, 0.188, 0)
speedtb.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
speedtb.TextColor3 = Color3.fromRGB(255, 255, 255)
speedtb.PlaceholderColor3 = Color3.fromRGB(183, 183, 183)
speedtb.BorderSizePixel = 0
speedtb.TextScaled = true 
speedtb.Font = Enum.Font.GothamBold
speedtb.Text = "" 
speedtb.PlaceholderText = "Speed (classic: 16)"
local corner4 = Instance.new("UICorner", speedtb)
corner4.CornerRadius = UDim.new(0.3, 0)
local speedb = Instance.new("TextButton", panel)
speedb.Position = UDim2.new(0.493, 0, 0.187, 0)
speedb.Size = UDim2.new(0.172, 0, 0.098, 0)
speedb.TextColor3 = Color3.fromRGB(255, 255, 255)
speedb.BorderSizePixel = 0
speedb.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
speedb.Font = Enum.Font.GothamBold
speedb.TextScaled = true
speedb.Text = "Set speed"
local corner5 = Instance.new("UICorner", speedb)
corner5.CornerRadius = UDim.new(0.3, 0) 
speedb.MouseButton1Click:Connect(function()
    sp = speedtb.Text
end)
local sound = Instance.new("Sound", workspace)
sound.SoundId = "rbxassetid://131912852031166"
sound:Play() 
task.wait(2)
sound:Destroy()

while task.wait(0.01) do
    p.Character.Humanoid.WalkSpeed = sp
end
