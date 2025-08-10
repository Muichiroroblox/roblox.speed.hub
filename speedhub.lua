-- Script KRNL para Steal a Brainrot: cambiar velocidad con hub simple

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

-- Crear ScreenGui en CoreGui para KRNL
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SpeedHub"
ScreenGui.Parent = game.CoreGui

-- Crear Frame
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 220, 0, 80)
Frame.Position = UDim2.new(0, 10, 0, 10)
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui
Frame.Active = true
Frame.Draggable = true

-- Título
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 25)
Title.BackgroundTransparency = 1
Title.Text = "Speed Hub - Steal a Brainrot"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18
Title.Parent = Frame

-- Label velocidad
local SpeedLabel = Instance.new("TextLabel")
SpeedLabel.Position = UDim2.new(0, 10, 0, 30)
SpeedLabel.Size = UDim2.new(0, 100, 0, 20)
SpeedLabel.BackgroundTransparency = 1
SpeedLabel.Text = "Velocidad:"
SpeedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedLabel.Font = Enum.Font.SourceSans
SpeedLabel.TextSize = 16
SpeedLabel.Parent = Frame

-- TextBox para velocidad
local SpeedBox = Instance.new("TextBox")
SpeedBox.Position = UDim2.new(0, 110, 0, 30)
SpeedBox.Size = UDim2.new(0, 100, 0, 20)
SpeedBox.Text = tostring(Humanoid.WalkSpeed)
SpeedBox.ClearTextOnFocus = false
SpeedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SpeedBox.Parent = Frame

-- Botón para aplicar velocidad
local SpeedButton = Instance.new("TextButton")
SpeedButton.Position = UDim2.new(0, 10, 0, 55)
SpeedButton.Size = UDim2.new(0, 200, 0, 20)
SpeedButton.Text = "Aplicar velocidad"
SpeedButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedButton.Parent = Frame

SpeedButton.MouseButton1Click:Connect(function()
    local speed = tonumber(SpeedBox.Text)
    if speed and speed > 0 and speed <= 500 then
        Humanoid.WalkSpeed = speed
    else
        SpeedBox.Text = tostring(Humanoid.WalkSpeed)
    end
end)
