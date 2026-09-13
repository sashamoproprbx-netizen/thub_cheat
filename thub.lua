local p = game.Players.LocalPlayer
local pg = p:WaitForChild("PlayerGui")
local tween = game:GetService("TweenService")
local info = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local sgui = Instance.new("ScreenGui", pg)
sgui.ResetOnSpawn = false
local t = Instance.new("TextLabel", sgui)
t.Position = UDim2.new(-0.181, 0, 0.437, 0)
t.Size = UDim2.new(0.176, 0, 0.148, 0)
t.TextColor3 = Color3.fromRGB(0, 126, 0) 
t.Font = Enum.Font.GothamBlack
t.TextScaled = true
t.BackgroundTransparency = 1 
t.Text = "Hi! [THub]" 
anim = tween:Create(t, info, {Position = UDim2.new(0.002, 0, 0.437, 0)})
anim:Play()
anim2 = tween:Create(t, info, {Position = UDim2.new(-1.7, 0, 0.437, 0)})
task.wait(3)
anim2:Play()
task.wait(1)
t:Destroy()
task.wait(1)
local sound = Instance.new("Sound", workspace)
sound.Looped = true
sound.Volume = 1
sound.Playing = true
local panel = Instance.new("Frame", sgui)
panel.Position = UDim2.new(0.178, 0, 0.064, 0)
panel.Size = UDim2.new(0.621, 0, 0.852, 0)
panel.BorderSizePixel = 0 
panel.BackgroundColor3 = Color3.fromRGB(103, 163, 97)
local corner = Instance.new("UICorner", panel)
corner.CornerRadius = UDim.new(0, 8)
local pt = Instance.new("TextLabel", panel)
pt.Font = Enum.Font.FredokaOne
pt.Text = "THub 🍃"
pt.TextScaled = true 
pt.Size = UDim2.new(1, 0, 0.1, 0)
pt.BackgroundTransparency = 1
pt.TextColor3 = Color3.fromRGB(255, 255, 255)
local setm = Instance.new("TextLabel", panel)
setm.Position = UDim2.new(0.033, 0, 0.237, 0)
setm.Size = UDim2.new(0.413, 0, 0.111, 0)
setm.TextScaled = true
setm.TextColor3 = Color3.fromRGB(255, 255, 255)
setm.Text = "Поставить музыку" 
setm.BackgroundTransparency = 1
setm.Font = Enum.Font.GothamBold
local close = Instance.new("TextButton", sgui)
close.Position = UDim2.new(0.182, 0, 0.07, 0) 
close.Size = UDim2.new(0.097, 0, 0.089, 0)
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.BackgroundColor3 = Color3.fromRGB(0, 127, 0)
local cls = true
close.Text = "Скрыть" 
close.Font = Enum.Font.GothamBold
close.BorderSizePixel = 0
close.TextScaled = true
close.MouseButton1Click:Connect(function()
    if cls then
        panel.Visible = false
        cls = false 
        close.Text = "Показать"
    else
        panel.Visible = true 
        cls = true
        close.Text = "Скрыть"
    end
end)
local tb = Instance.new("TextBox", panel)
tb.Position = UDim2.new(0.458, 0, 0.264, 0)
tb.Size = UDim2.new(0.305, 0, 0.079, 0)
tb.BackgroundColor3 = Color3.fromRGB(0, 127, 0)
tb.Font = Enum.Font.GothamBold
tb.PlaceholderText = "Music ID"
tb.Text = ""
tb.BorderSizePixel = 0
tb.TextScaled = true
tb.TextColor3 = Color3.fromRGB(255, 255, 255)
tb.PlaceholderColor3 = Color3.fromRGB(202, 202, 202)
local enter = Instance.new("TextButton", panel)
enter.Position = UDim2.new(0.783, 0, 0.263, 0) 
enter.Size = UDim2.new(0.168, 0, 0.079, 0)
enter.TextColor3 = Color3.fromRGB(255, 255, 255)
enter.BorderSizePixel = 0 
enter.BackgroundColor3 = Color3.fromRGB(0, 127, 0)
enter.TextScaled = true
enter.Font = Enum.Font.GothamBold
enter.Text = "Enter"
enter.MouseButton1Click:Connect(function()
    sound.SoundId = "rbxassetid://" .. tb.Text
end) 
local stop = Instance.new("TextButton", panel)
stop.Position = UDim2.new(0.772, 0, 0.345, 0)
stop.Size = UDim2.new(0.18, 0, 0.064, 0) 
stop.Font = Enum.Font.GothamBold
stop.BackgroundColor3 = Color3.fromRGB(0, 127, 0)
stop.BorderSizePixel = 0
stop.Text = "Stop"
stop.TextColor3 = Color3.fromRGB(255, 255, 255)
stop.TextScaled = true
stop.MouseButton1Click:Connect(function()
    sound.SoundId = ""
    sound:Stop() 
    sound:Play()
end)
local sit = Instance.new("TextButton", panel)
sit.Position = UDim2.new(0.03, 0, 0.334, 0)
sit.Size = UDim2.new(0.141, 0, 0.082, 0)
sit.BackgroundColor3 = Color3.fromRGB(0, 127, 0)
sit.TextColor3 = Color3.fromRGB(255, 255, 255)
sit.Font = Enum.Font.GothamBold
sit.BorderSizePixel = 0
sit.Text = "Сесть"
sit.TextScaled = true 
sit.MouseButton1Click:Connect(function()
    p.Character.Humanoid.Sit = true    
end)
