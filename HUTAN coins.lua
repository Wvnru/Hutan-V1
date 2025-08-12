local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local StarterGui = game:GetService("StarterGui")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
if not PlayerGui then return end

-- link webhook untuk feedback aq tau. JANGAN JUDGE SCRIPT AKU! ðŸ˜¡

-- W
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "FeedbackUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

-- Main Frame Ejen Ali! 
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(176, 183, 249)
Frame.Parent = ScreenGui
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

-- button enter
local SubmitButton = Instance.new("TextButton")
SubmitButton.Size = UDim2.new(0.4, 0, 0.2, 0)
SubmitButton.Position = UDim2.new(0.3, 0, 0.75, 0)
SubmitButton.BackgroundColor3 = Color3.fromRGB(86, 97, 201)
SubmitButton.Text = "Send"
SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitButton.Font = Enum.Font.SourceSansBold
SubmitButton.TextSize = 18
SubmitButton.Parent = Frame

local SubmitUICorner = Instance.new("UICorner")
SubmitUICorner.CornerRadius = UDim.new(0, 10)
SubmitUICorner.Parent = SubmitButton

-- Button Destroy
local DestroyButton = Instance.new("TextButton")
DestroyButton.Size = UDim2.new(0.15, 0, 0.15, 0)
DestroyButton.Position = UDim2.new(0.85, 0, 0, 0)
DestroyButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
DestroyButton.Text = "X"
DestroyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DestroyButton.Font = Enum.Font.SourceSansBold
DestroyButton.TextSize = 18
DestroyButton.Parent = Frame

local DestroyUICorner = Instance.new("UICorner")
DestroyUICorner.CornerRadius = UDim.new(0, 10)
DestroyUICorner.Parent = DestroyButton

-- Yamaite
local userId = Players:GetUserIdFromNameAsync("ajjajaiaiaiaka")
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420
local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

-- AKU GANTENG! 
DestroyButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

-- Get
local userId = Players:GetUserIdFromNameAsync("Zoro_N1nja")
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420

-- Info
local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

-- Notice
StarterGui:SetCore("SendNotification", {
    Title = "Wanru",
    Text = "Fuck Your Mother",
    Icon = content,
    Duration = 5
})

local Players=game:GetService("Players")local UserInputService=game:GetService("UserInputService")local RunService=game:GetService("RunService")local LocalPlayer=Players.LocalPlayer local PlayerGui=LocalPlayer:FindFirstChildOfClass("PlayerGui")if not PlayerGui then return end local ScreenGui=Instance.new("ScreenGui")ScreenGui.Name="AutoSellUI"ScreenGui.ResetOnSpawn=false ScreenGui.Parent=PlayerGui local ToggleButton=Instance.new("TextButton")ToggleButton.Size=UDim2.new(0,150,0,50)ToggleButton.Position=UDim2.new(0.5,-75,0.5,-25)ToggleButton.BackgroundColor3=Color3.fromRGB(176,183,249)ToggleButton.TextColor3=Color3.fromRGB(86,97,201)ToggleButton.Font=Enum.Font.SourceSansBold ToggleButton.TextSize=18 ToggleButton.Text="Auto: OFF"ToggleButton.Parent=ScreenGui local UICorner=Instance.new("UICorner")UICorner.CornerRadius=UDim.new(0,10)UICorner.Parent=ToggleButton local dragging,dragInput,dragStart,startPos local function update(input)local delta=input.Position-dragStart ToggleButton.Position=UDim2.new(startPos.X.Scale,startPos.X.Offset+delta.X,startPos.Y.Scale,startPos.Y.Offset+delta.Y)end ToggleButton.InputBegan:Connect(function(input)if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then dragging=true dragStart=input.Position startPos=ToggleButton.Position input.Changed:Connect(function()if input.UserInputState==Enum.UserInputState.End then dragging=false end end)end end)ToggleButton.InputChanged:Connect(function(input)if input.UserInputType==Enum.UserInputType.MouseMovement or input.UserInputType==Enum.UserInputType.Touch then dragInput=input end end)UserInputService.InputChanged:Connect(function(input)if dragging and input==dragInput then update(input)end end)local AutoSellEnabled=false local function bringPrompt()local promptPart=workspace:FindFirstChild("Prompt")if promptPart and LocalPlayer.Character then local hrp=LocalPlayer.Character:FindFirstChild("HumanoidRootPart")if hrp then promptPart.CFrame=hrp.CFrame*CFrame.new(0,0,-2)end end end local VirtualInputManager=game:GetService("VirtualInputManager")local function pressE()while AutoSellEnabled do VirtualInputManager:SendKeyEvent(true,Enum.KeyCode.E,false,nil)VirtualInputManager:SendKeyEvent(false,Enum.KeyCode.E,false,nil)task.wait()end end local function touchSell()while AutoSellEnabled do local character=LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()local hrp=character:WaitForChild("HumanoidRootPart")local sellPart=workspace:FindFirstChild("Sell")if sellPart and sellPart:IsA("BasePart")then firetouchinterest(hrp,sellPart,0)firetouchinterest(hrp,sellPart,1)end wait()end end ToggleButton.MouseButton1Click:Connect(function()AutoSellEnabled=not AutoSellEnabled ToggleButton.Text=AutoSellEnabled and "Auto: ON"or "Auto: OFF"if AutoSellEnabled then task.spawn(function()while AutoSellEnabled do bringPrompt()pressE()end end)task.spawn(touchSell)end end)local prompt=workspace:FindFirstChild("Prompt")if prompt and prompt:FindFirstChild("ProximityPrompt")then prompt.ProximityPrompt.HoldDuration=0 end
local userId = Players:GetUserIdFromNameAsync("Zoro_N1nja")
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420

-- Info
local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

-- Notice
StarterGui:SetCore("SendNotification", {
    Title = "Wansuey Salakau",
    Text = "Welcome To Hell NIGGERS",
    Icon = content,
    Duration = 5
})