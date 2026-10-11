-- Ѕоurсе Соԁe Dеоbfuѕсatеd Bу LеаκD
-- https://discord.gg/AwGHNh7Z7T

local players = game:GetService("Players")
local tweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")
local workspaceService = game:GetService("Workspace")
local runService = game:GetService("RunService")
local replicatedStorage = game:GetService("ReplicatedStorage")
local textChatService = game:GetService("TextChatService")
local lighting = game:GetService("Lighting")
local coreGui = game:GetService("CoreGui")
local localPlayer = players.LocalPlayer

pcall(function()
  if coreGui:FindFirstChild("EmanuelHub") then
    coreGui.EmanuelHub:Destroy()
  end

  if localPlayer.PlayerGui:FindFirstChild("EmanuelHub") then
    localPlayer.PlayerGui.EmanuelHub:Destroy()
  end
end)

local emanuelHub = Instance.new("ScreenGui")
emanuelHub.Name = "EmanuelHub"
emanuelHub.ResetOnSpawn = false

if not pcall(function() emanuelHub.Parent = coreGui end) or not emanuelHub.Parent then
  emanuelHub.Parent = localPlayer:FindFirstChildOfClass("PlayerGui")
    or localPlayer:WaitForChild("PlayerGui", 3)
end

local main = Instance.new("Frame")
main.Name = "Main"
main.Size = UDim2.new(0, 500, 0, 320)
main.Position = UDim2.new(0.5, -250, 0.5, -160)
main.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
main.BackgroundTransparency = 0.05
main.ClipsDescendants = true
main.Visible = true
main.Parent = emanuelHub

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 12)
uiCorner.Parent = main

local uiStroke = Instance.new("UIStroke")
uiStroke.Color = Color3.fromRGB(170, 0, 255)
uiStroke.Thickness = 2
uiStroke.Transparency = 0.15
uiStroke.Parent = main

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0, 200, 0, 45)
textLabel.Position = UDim2.new(0, 15, 0, 5)
textLabel.BackgroundTransparency = 1
textLabel.Text = "EmanuelHub [TCS]"
textLabel.TextColor3 = Color3.fromRGB(220, 150, 255)
textLabel.TextSize = 22
textLabel.Font = Enum.Font.GothamBold
textLabel.TextXAlignment = Enum.TextXAlignment.Left
textLabel.ZIndex = 10
textLabel.Parent = main

local textButton = Instance.new("TextButton")
textButton.Size = UDim2.new(0, 40, 0, 35)
textButton.Position = UDim2.new(1, -90, 0, 5)
textButton.BackgroundColor3 = Color3.fromRGB(40, 0, 55)
textButton.Text = "−"
textButton.TextColor3 = Color3.fromRGB(220, 150, 255)
textButton.TextSize = 22
textButton.Font = Enum.Font.GothamBold
textButton.ZIndex = 10
textButton.Parent = main

Instance.new("UICorner", textButton).CornerRadius = UDim.new(0, 8)

local textButton2 = Instance.new("TextButton")
textButton2.Size = UDim2.new(0, 40, 0, 35)
textButton2.Position = UDim2.new(1, -45, 0, 5)
textButton2.BackgroundColor3 = Color3.fromRGB(60, 0, 70)
textButton2.Text = "×"
textButton2.TextColor3 = Color3.fromRGB(220, 150, 255)
textButton2.TextSize = 22
textButton2.Font = Enum.Font.GothamBold
textButton2.ZIndex = 10
textButton2.Parent = main

Instance.new("UICorner", textButton2).CornerRadius = UDim.new(0, 8)

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 125, 1, -60)
frame.Position = UDim2.new(0, 10, 0, 55)
frame.BackgroundTransparency = 1
frame.ZIndex = 5
frame.Parent = main

local v1 = {}

local function f1(p1, position)
  local textButton3 = Instance.new("TextButton")
  textButton3.Size = UDim2.new(1, 0, 0, 30)
  textButton3.Position = position
  textButton3.BackgroundColor3 = Color3.fromRGB(25, 0, 35)
  textButton3.Text = p1
  textButton3.TextColor3 = Color3.fromRGB(220, 170, 255)
  textButton3.TextSize = 11
  textButton3.Font = Enum.Font.GothamBold
  textButton3.ZIndex = 6
  textButton3.Parent = frame

  Instance.new("UICorner", textButton3).CornerRadius = UDim.new(0, 8)
  v1[p1] = textButton3
  return textButton3
end

local v2 = f1("Balls", UDim2.new(0, 0, 0, 0))
local v3 = f1("GK", UDim2.new(0, 0, 0, 34))
local v4 = f1("Hitbox", UDim2.new(0, 0, 0, 68))
local v5 = f1("Gráfico", UDim2.new(0, 0, 0, 102))
local v6 = f1("Player", UDim2.new(0, 0, 0, 136))
local v7 = f1("Char", UDim2.new(0, 0, 0, 170))
local v8 = f1("Configurações", UDim2.new(0, 0, 0, 204))

local frame2 = Instance.new("Frame")
frame2.Size = UDim2.new(1, -155, 1, -70)
frame2.Position = UDim2.new(0, 145, 0, 60)
frame2.BackgroundColor3 = Color3.fromRGB(8, 0, 12)
frame2.BackgroundTransparency = 0.25
frame2.ZIndex = 4
frame2.Parent = main

Instance.new("UICorner", frame2).CornerRadius = UDim.new(0, 10)

local textLabel2 = Instance.new("TextLabel")
textLabel2.Size = UDim2.new(1, -20, 0, 35)
textLabel2.Position = UDim2.new(0, 10, 0, 5)
textLabel2.BackgroundTransparency = 1
textLabel2.Text = "Balls"
textLabel2.TextColor3 = Color3.fromRGB(220, 150, 255)
textLabel2.TextSize = 18
textLabel2.Font = Enum.Font.GothamBold
textLabel2.TextXAlignment = Enum.TextXAlignment.Left
textLabel2.ZIndex = 6
textLabel2.Parent = frame2

local frame3 = Instance.new("Frame")
frame3.Size = UDim2.new(1, -20, 1, -45)
frame3.Position = UDim2.new(0, 10, 0, 40)
frame3.BackgroundTransparency = 1
frame3.ZIndex = 6
frame3.Parent = frame2

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.58, 0, 0, 30)
textBox.Position = UDim2.new(0.02, 0, 0, 0)
textBox.BackgroundColor3 = Color3.fromRGB(25, 0, 35)
textBox.PlaceholderText = "Texture ID..."
textBox.Text = ""
textBox.TextColor3 = Color3.new(1, 1, 1)
textBox.Font = Enum.Font.Gotham
textBox.TextSize = 11
textBox.ZIndex = 8
textBox.Parent = frame3

Instance.new("UICorner", textBox).CornerRadius = UDim.new(0, 6)

local textBox2 = Instance.new("TextBox")
textBox2.Size = UDim2.new(0.58, 0, 0, 30)
textBox2.Position = UDim2.new(0.02, 0, 0, 36)
textBox2.BackgroundColor3 = Color3.fromRGB(25, 0, 35)
textBox2.PlaceholderText = "Mesh ID..."
textBox2.Text = ""
textBox2.TextColor3 = Color3.new(1, 1, 1)
textBox2.Font = Enum.Font.Gotham
textBox2.TextSize = 11
textBox2.ZIndex = 8
textBox2.Parent = frame3

Instance.new("UICorner", textBox2).CornerRadius = UDim.new(0, 6)

local textButton4 = Instance.new("TextButton")
textButton4.Size = UDim2.new(0.35, 0, 0, 30)
textButton4.Position = UDim2.new(0.63, 0, 0, 18)
textButton4.BackgroundColor3 = Color3.fromRGB(70, 0, 95)
textButton4.Text = "Aplicar"
textButton4.TextColor3 = Color3.new(1, 1, 1)
textButton4.TextSize = 11
textButton4.Font = Enum.Font.GothamBold
textButton4.ZIndex = 8
textButton4.Parent = frame3

local instance = Instance.new("UICorner", textButton4)
local udim = UDim.new(0, 6)

local function f2(p2)
  if not p2 or p2 == "" then
    return ""
  else
    local v9 = string.match(p2, "%d+")
    return v9 and "rbxassetid://" .. v9 or p2
  end
end

instance.CornerRadius = udim

local function f3()
  local v10 = {}

  for key, value in pairs(workspaceService:GetDescendants()) do
    if value:IsA("BasePart") then
      local v11 = string.lower(value.Name)

      if v11 == "football" or v11 == "ball" or v11 == "soccerball" or v11 == "tps"
        or v11 == "hitbox" or v11 == "bola" or string.find(v11, "tcs") then
        table.insert(v10, value)
      end
    end
  end

  return v10
end

local function f4(p3, p4)
  local v12 = f2(p3)
  local v13 = f2(p4)

  for key2, value2 in pairs(f3()) do
    local v14 = value2

    pcall(function()
      local specialMesh = v14:FindFirstChildOfClass("SpecialMesh")

      if v13 ~= "" then
        if v14:IsA("MeshPart") then
          v14.MeshId = v13
        else
          if not specialMesh then
            specialMesh = Instance.new("SpecialMesh")
            specialMesh.Parent = v14
          end

          specialMesh.MeshType = Enum.MeshType.FileMesh
          specialMesh.MeshId = v13
        end
      end

      if v12 ~= "" then
        if v14:IsA("MeshPart") then
          v14.TextureID = v12
        end

        if specialMesh then
          specialMesh.TextureId = v12
        end

        for key3, value3 in pairs(v14:GetChildren()) do
          if value3:IsA("Decal") or value3:IsA("Texture") then
            value3.Texture = v12
          end
        end
      end
    end)
  end
end

textButton4.MouseButton1Click:Connect(function()
  f4(textBox.Text, textBox2.Text)
  textButton4.Text = "Aplicado ✓"

  task.delay(1, function()
    if textButton4.Parent then
      textButton4.Text = "Aplicar"
    end
  end)
end)

local function f5(text, position2, backgroundColor3, p5, p6)
  local textButton5 = Instance.new("TextButton")
  textButton5.Size = UDim2.new(0.95, 0, 0, 28)
  textButton5.Position = position2
  textButton5.BackgroundColor3 = backgroundColor3
  textButton5.Text = text
  textButton5.TextColor3 = Color3.new(1, 1, 1)
  textButton5.TextSize = 11
  textButton5.Font = Enum.Font.GothamBold
  textButton5.ZIndex = 8
  textButton5.Parent = frame3

  Instance.new("UICorner", textButton5).CornerRadius = UDim.new(0, 6)

  textButton5.MouseButton1Click:Connect(function()
    textBox.Text = p5
    textBox2.Text = p6
    f4(p5, p6)
  end)
end

f5(
  "🟠 Champions Laranja", UDim2.new(0.02, 0, 0, 75), Color3.fromRGB(90, 40, 0),
  "http://www.roblox.com/asset/?id=6631296730", "rbxassetid://4545270159"
)

f5(
  "🔵 Champions Azul", UDim2.new(0.02, 0, 0, 108), Color3.fromRGB(0, 45, 90),
  "rbxassetid://8108082224", "rbxassetid://4454597214"
)

f5(
  "⚪ Champions Branca", UDim2.new(0.02, 0, 0, 141), Color3.fromRGB(65, 65, 70),
  "http://www.roblox.com/asset/?id=7897839361", "rbxassetid://4761031195"
)

local followWidget = Instance.new("Frame")
followWidget.Name = "FollowWidget"
followWidget.Size = UDim2.new(0, 160, 0, 65)
followWidget.Position = UDim2.new(0, 20, 0.5, -30)
followWidget.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
followWidget.BackgroundTransparency = 0.1
followWidget.Visible = false
followWidget.ZIndex = 50
followWidget.Parent = emanuelHub

Instance.new("UICorner", followWidget).CornerRadius = UDim.new(0, 10)

local instance2 = Instance.new("UIStroke", followWidget)
instance2.Color = Color3.fromRGB(170, 0, 255)
instance2.Thickness = 2
instance2.Transparency = 0.2

local textLabel3 = Instance.new("TextLabel")
textLabel3.Size = UDim2.new(1, -25, 0, 22)
textLabel3.Position = UDim2.new(0, 8, 0, 4)
textLabel3.BackgroundTransparency = 1
textLabel3.Text = "⚽ Seguir Bola"
textLabel3.TextColor3 = Color3.fromRGB(220, 150, 255)
textLabel3.TextSize = 12
textLabel3.Font = Enum.Font.GothamBold
textLabel3.TextXAlignment = Enum.TextXAlignment.Left
textLabel3.ZIndex = 51
textLabel3.Parent = followWidget

local textButton6 = Instance.new("TextButton")
textButton6.Size = UDim2.new(0, 18, 0, 18)
textButton6.Position = UDim2.new(1, -22, 0, 5)
textButton6.BackgroundColor3 = Color3.fromRGB(60, 0, 70)
textButton6.Text = "×"
textButton6.TextColor3 = Color3.fromRGB(220, 150, 255)
textButton6.TextSize = 12
textButton6.Font = Enum.Font.GothamBold
textButton6.ZIndex = 52
textButton6.Parent = followWidget

Instance.new("UICorner", textButton6).CornerRadius = UDim.new(0, 4)
textButton6.MouseButton1Click:Connect(function() followWidget.Visible = false end)

local textButton7 = Instance.new("TextButton")
textButton7.Size = UDim2.new(0.85, 0, 0, 26)
textButton7.Position = UDim2.new(0.075, 0, 0, 30)
textButton7.BackgroundColor3 = Color3.fromRGB(120, 30, 50)
textButton7.Text = "Status: OFF"
textButton7.TextColor3 = Color3.new(1, 1, 1)
textButton7.TextSize = 11
textButton7.Font = Enum.Font.GothamBold
textButton7.ZIndex = 51
textButton7.Parent = followWidget

Instance.new("UICorner", textButton7).CornerRadius = UDim.new(0, 6)
local v15, position3, position4

followWidget.InputBegan:Connect(function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then
    v15 = true
    position3 = input.Position
    position4 = followWidget.Position

    input.Changed:Connect(function()
      if input.UserInputState == Enum.UserInputState.End then
        v15 = false
      end
    end)
  end
end)

userInputService.InputChanged:Connect(function(input2)
  if v15
    and (input2.UserInputType == Enum.UserInputType.MouseMovement
      or input2.UserInputType == Enum.UserInputType.Touch) then
    local v16 = input2.Position - position3

    followWidget.Position = UDim2.new(
      position4.X.Scale, position4.X.Offset + v16.X, position4.Y.Scale,
      position4.Y.Offset + v16.Y
    )
  end
end)

local frame4 = Instance.new("Frame")
frame4.Size = UDim2.new(1, -20, 1, -45)
frame4.Position = UDim2.new(0, 10, 0, 40)
frame4.BackgroundTransparency = 1
frame4.Visible = false
frame4.ZIndex = 6
frame4.Parent = frame2

local textButton8 = Instance.new("TextButton")
textButton8.Size = UDim2.new(0.95, 0, 0, 35)
textButton8.Position = UDim2.new(0.02, 0, 0, 5)
textButton8.BackgroundColor3 = Color3.fromRGB(70, 0, 95)
textButton8.Text = "⚽ Seguir Bola: DESATIVADO"
textButton8.TextColor3 = Color3.new(1, 1, 1)
textButton8.TextSize = 11
textButton8.Font = Enum.Font.GothamBold
textButton8.ZIndex = 8
textButton8.Parent = frame4

Instance.new("UICorner", textButton8).CornerRadius = UDim.new(0, 8)
local v17 = false

local function f6(p7)
  v17 = p7
  followWidget.Visible = true

  if v17 then
    textButton8.Text = "⚽ Seguir Bola: ATIVADO ✓"
    textButton8.BackgroundColor3 = Color3.fromRGB(30, 120, 50)

    textButton7.Text = "Status: ON"
    textButton7.BackgroundColor3 = Color3.fromRGB(30, 120, 50)
  else
    textButton8.Text = "⚽ Seguir Bola: DESATIVADO"
    textButton8.BackgroundColor3 = Color3.fromRGB(70, 0, 95)

    textButton7.Text = "Status: OFF"
    textButton7.BackgroundColor3 = Color3.fromRGB(120, 30, 50)

    pcall(function()
      local character = localPlayer.Character

      if character and character:FindFirstChildOfClass("Humanoid") then
        character:FindFirstChildOfClass("Humanoid"):Move(Vector3.zero, false)
      end
    end)
  end
end

textButton8.MouseButton1Click:Connect(function() f6(not v17) end)
textButton7.MouseButton1Click:Connect(function() f6(not v17) end)

local function f7()
  local character2 = localPlayer.Character

  if not character2 then
    return nil
  else
    local humanoidRootPart = character2:FindFirstChild("HumanoidRootPart")

    if not humanoidRootPart then
      return nil
    else
      local v18 = nil
      local huge = math.huge

      for index, value4 in ipairs(workspaceService:GetDescendants()) do
        if value4:IsA("BasePart") or value4:IsA("MeshPart") then
          if not value4:IsDescendantOf(character2) then
            local v19 = string.lower(value4.Name)

            if v19 == "tps" or v19 == "ball" or v19 == "bola" or string.find(v19, "soccerball")
              or string.find(v19, "football") then
              local model = value4:FindFirstAncestorOfClass("Model")

              if not (model and model:FindFirstChildOfClass("Humanoid")) then
                local size = value4.Size

                if size.X >= 0.5 and size.X <= 8 then
                  local magnitude = (value4.Position - humanoidRootPart.Position).Magnitude

                  if magnitude < huge then
                    huge = magnitude
                    v18 = value4
                  end
                end
              end
            end
          end
        end
      end

      return v18
    end
  end
end

local function f8()
  return userInputService:IsKeyDown(Enum.KeyCode.W)
    or userInputService:IsKeyDown(Enum.KeyCode.A) or userInputService:IsKeyDown(Enum.KeyCode.S)
    or userInputService:IsKeyDown(Enum.KeyCode.D)
end

runService.PreRender:Connect(function()
  if not v17 then
    return
  else
    local character3 = localPlayer.Character

    if not character3 then
      return
    else
      local humanoidRootPart2 = character3:FindFirstChild("HumanoidRootPart")
      local v20 = not humanoidRootPart2
      local humanoid = character3:FindFirstChildOfClass("Humanoid")

      if v20 or not humanoid then
        return
      else
        local v21 = f7()

        if v21 and not f8() then
          local v22 = v21.Position - humanoidRootPart2.Position
          local vector = Vector3.new(v22.X, 0, v22.Z)

          if vector.Magnitude > 0.5 then
            humanoid:Move(vector.Unit, false)
          end
        end

        return
      end
    end
  end
end)

local frame5 = Instance.new("Frame")
frame5.Size = UDim2.new(1, -20, 1, -45)
frame5.Position = UDim2.new(0, 10, 0, 40)
frame5.BackgroundTransparency = 1
frame5.Visible = false
frame5.ZIndex = 6
frame5.Parent = frame2

local textButton9 = Instance.new("TextButton")
textButton9.Size = UDim2.new(0.95, 0, 0, 35)
textButton9.Position = UDim2.new(0.02, 0, 0, 10)
textButton9.BackgroundColor3 = Color3.fromRGB(70, 0, 95)
textButton9.Text = "🧤 Executar Script GK"
textButton9.TextColor3 = Color3.new(1, 1, 1)
textButton9.TextSize = 12
textButton9.Font = Enum.Font.GothamBold
textButton9.ZIndex = 8
textButton9.Parent = frame5

Instance.new("UICorner", textButton9).CornerRadius = UDim.new(0, 8)

textButton9.MouseButton1Click:Connect(function()
  textButton9.Text = "⏳ Carregando..."

  local v23, v24 = pcall(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/N7B1dQqr"))()
  end)

  if v23 then
    textButton9.Text = "✅ Executado com Sucesso!"
    textButton9.BackgroundColor3 = Color3.fromRGB(30, 120, 50)
  else
    textButton9.Text = "❌ Erro ao Executar"
    textButton9.BackgroundColor3 = Color3.fromRGB(150, 0, 50)
    warn("Erro GK Script:", v24)
  end

  task.delay(1.5, function()
    if textButton9.Parent then
      textButton9.Text = "🧤 Executar Script GK"
      textButton9.BackgroundColor3 = Color3.fromRGB(70, 0, 95)
    end
  end)
end)

local frame6 = Instance.new("Frame")
frame6.Size = UDim2.new(1, -20, 1, -45)
frame6.Position = UDim2.new(0, 10, 0, 40)
frame6.BackgroundTransparency = 1
frame6.Visible = false
frame6.ZIndex = 6
frame6.Parent = frame2

local textButton10 = Instance.new("TextButton")
textButton10.Size = UDim2.new(0.95, 0, 0, 35)
textButton10.Position = UDim2.new(0.02, 0, 0, 10)
textButton10.BackgroundColor3 = Color3.fromRGB(70, 0, 95)
textButton10.Text = "Ativar Hitbox"
textButton10.TextColor3 = Color3.new(1, 1, 1)
textButton10.TextSize = 12
textButton10.Font = Enum.Font.GothamBold
textButton10.ZIndex = 8
textButton10.Parent = frame6

local instance3 = Instance.new("UICorner", textButton10)
local udim2 = UDim.new(0, 8)

local function f9()
  for key4, value5 in pairs(players:GetPlayers()) do
    if value5 ~= localPlayer and value5.Character then
      for key5, value6 in pairs(value5.Character:GetChildren()) do
        if value6.Name == "EmanuelHubHitbox" or value6:IsA("Highlight")
          or value6:IsA("BasePart") and value6.Name == "Hitbox" then
          value6.Transparency = 0.5

          if value6:IsA("BasePart") then
            value6.Color = uiStroke.Color
          end
        end
      end
    end
  end
end

-- https://discord.gg/AwGHNh7Z7T
instance3.CornerRadius = udim2
local v25 = false

local function f10()
  if not v25 then
    f9()
    return
  end

  pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/iigkB5FJ"))() end)
end

textButton10.MouseButton1Click:Connect(function()
  v25 = not v25

  if v25 then
    textButton10.Text = "Hitbox Ativada ✓"
    textButton10.BackgroundColor3 = Color3.fromRGB(30, 120, 50)
    f10()
  else
    textButton10.Text = "Ativar Hitbox"
    textButton10.BackgroundColor3 = Color3.fromRGB(70, 0, 95)
    f9()
  end
end)

local frame7 = Instance.new("Frame")
frame7.Size = UDim2.new(1, -20, 1, -45)
frame7.Position = UDim2.new(0, 10, 0, 40)
frame7.BackgroundTransparency = 1
frame7.Visible = false
frame7.ZIndex = 6
frame7.Parent = frame2

local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, 0, 1, 0)
scrollingFrame.Position = UDim2.new(0, 0, 0, 0)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame.ScrollBarThickness = 4
scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(170, 0, 255)
scrollingFrame.ZIndex = 7
scrollingFrame.Parent = frame7

local function f11(p8, name)
  for key6, value7 in pairs(lighting:GetChildren()) do
    if value7:IsA("Sky") then
      value7:Destroy()
    end
  end

  local sky = Instance.new("Sky")
  sky.Name = name
  sky.Parent = lighting
  sky.SkyboxBk = p8.Bk
  sky.SkyboxDn = p8.Dn
  sky.SkyboxFt = p8.Ft
  sky.SkyboxLf = p8.Lf
  sky.SkyboxRt = p8.Rt
  sky.SkyboxUp = p8.Up
  sky.StarCount = 3000
  sky.CelestialBodiesShown = true

  lighting.Brightness = p8.Brightness or 2
  lighting.Ambient = p8.Ambient or Color3.fromRGB(40, 30, 70)
  lighting.OutdoorAmbient = p8.Outdoor or Color3.fromRGB(60, 50, 90)
  lighting.FogColor = p8.Fog or Color3.fromRGB(20, 15, 40)
  lighting.FogEnd = 100000
end

local total = 0

for index2, value8 in ipairs({
  {
    Name = "Nebula Roxa",
    Color = Color3.fromRGB(180, 120, 255),
    Data = {
      Bk = "rbxassetid://159454299",
      Dn = "rbxassetid://159454296",
      Ft = "rbxassetid://159454293",
      Lf = "rbxassetid://159454286",
      Rt = "rbxassetid://159454300",
      Up = "rbxassetid://159454288",
      Ambient = Color3.fromRGB(40, 30, 70),
      Outdoor = Color3.fromRGB(60, 50, 90),
      Fog = Color3.fromRGB(20, 15, 40),
    },
  },
  {
    Name = "Vaporwave",
    Color = Color3.fromRGB(255, 120, 210),
    Data = {
      Bk = "rbxassetid://1417494030",
      Dn = "rbxassetid://1417494146",
      Ft = "rbxassetid://1417494253",
      Lf = "rbxassetid://1417494402",
      Rt = "rbxassetid://1417494499",
      Up = "rbxassetid://1417494643",
      Ambient = Color3.fromRGB(60, 20, 80),
      Outdoor = Color3.fromRGB(100, 40, 120),
      Fog = Color3.fromRGB(40, 10, 60),
    },
  },
  {
    Name = "Espaço Escuro",
    Color = Color3.fromRGB(130, 140, 200),
    Data = {
      Bk = "rbxassetid://570555736",
      Dn = "rbxassetid://570555964",
      Ft = "rbxassetid://570555800",
      Lf = "rbxassetid://570555840",
      Rt = "rbxassetid://570555882",
      Up = "rbxassetid://570555929",
      Ambient = Color3.fromRGB(15, 15, 25),
      Outdoor = Color3.fromRGB(25, 25, 40),
      Fog = Color3.fromRGB(5, 5, 15),
    },
  },
  {
    Name = "Noite Clássica",
    Color = Color3.fromRGB(130, 170, 255),
    Data = {
      Bk = "rbxassetid://12064107",
      Dn = "rbxassetid://12064152",
      Ft = "rbxassetid://12064121",
      Lf = "rbxassetid://12063984",
      Rt = "rbxassetid://12064115",
      Up = "rbxassetid://12064131",
      Ambient = Color3.fromRGB(30, 40, 70),
      Outdoor = Color3.fromRGB(40, 50, 90),
      Fog = Color3.fromRGB(10, 15, 30),
    },
  },
  {
    Name = "Galáxia Laranja",
    Color = Color3.fromRGB(255, 160, 80),
    Data = {
      Bk = "rbxassetid://171560994",
      Dn = "rbxassetid://171561019",
      Ft = "rbxassetid://171560968",
      Lf = "rbxassetid://171561065",
      Rt = "rbxassetid://171561026",
      Up = "rbxassetid://171561009",
      Ambient = Color3.fromRGB(50, 25, 15),
      Outdoor = Color3.fromRGB(80, 40, 20),
      Fog = Color3.fromRGB(30, 15, 5),
    },
  },
}) do
  local v26 = value8

  local textButton11 = Instance.new("TextButton")
  textButton11.Size = UDim2.new(0.95, 0, 0, 30)
  textButton11.Position = UDim2.new(0.02, 0, 0, total)
  textButton11.BackgroundColor3 = Color3.fromRGB(25, 0, 35)
  textButton11.Text = v26.Name
  textButton11.TextColor3 = v26.Color
  textButton11.TextSize = 11
  textButton11.Font = Enum.Font.GothamBold
  textButton11.ZIndex = 8
  textButton11.Parent = scrollingFrame

  Instance.new("UICorner", textButton11).CornerRadius = UDim.new(0, 6)
  textButton11.MouseButton1Click:Connect(function() f11(v26.Data, v26.Name) end)
  total = total + 35
end

local textButton12 = Instance.new("TextButton")
textButton12.Size = UDim2.new(0.95, 0, 0, 30)
textButton12.Position = UDim2.new(0.02, 0, 0, total + 5)
textButton12.BackgroundColor3 = Color3.fromRGB(60, 15, 25)
textButton12.Text = "Resetar Skybox"
textButton12.TextColor3 = Color3.fromRGB(255, 120, 120)
textButton12.TextSize = 11
textButton12.Font = Enum.Font.GothamBold
textButton12.ZIndex = 8
textButton12.Parent = scrollingFrame

Instance.new("UICorner", textButton12).CornerRadius = UDim.new(0, 6)

textButton12.MouseButton1Click:Connect(function()
  for key7, value9 in pairs(lighting:GetChildren()) do
    if value9:IsA("Sky") then
      value9:Destroy()
    end
  end

  lighting.Brightness = 1
  lighting.Ambient = Color3.fromRGB(128, 128, 128)
  lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
  lighting.FogEnd = 100000
end)

scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, total + 45)

local frame8 = Instance.new("Frame")
frame8.Size = UDim2.new(1, -20, 1, -45)
frame8.Position = UDim2.new(0, 10, 0, 40)
frame8.BackgroundTransparency = 1
frame8.Visible = false
frame8.ZIndex = 6
frame8.Parent = frame2

local function f12(p9)
  local v27 = false

  for key8, value10 in pairs(replicatedStorage:GetDescendants()) do
    local v28 = value10

    if v28:IsA("RemoteEvent")
      and (string.find(string.lower(v28.Name), "global")
        or string.find(string.lower(v28.Name), "messenger")
        or string.find(string.lower(v28.Name), "chat")
        or string.find(string.lower(v28.Name), "say")) then
      pcall(function()
        v28:FireServer(p9)
        v27 = true
      end)

      if v27 then
        return true
      end
    end
  end

  pcall(function()
    local textChannels = textChatService:FindFirstChild("TextChannels")

    if textChannels then
      local global = textChannels:FindFirstChild("Global")
        or textChannels:FindFirstChild("RBXGeneral")

      if global then
        global:SendAsync(p9)
        v27 = true
      end
    end
  end)

  if v27 then
    return true
  else
    local defaultChatSystemChatEvents = replicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")

    if defaultChatSystemChatEvents then
      local sayMessageRequest = defaultChatSystemChatEvents:FindFirstChild("SayMessageRequest")

      if sayMessageRequest then
        sayMessageRequest:FireServer(p9, "All")
        return true
      end

      return false
    end

    return false
  end
end

local scrollingFrame2 = Instance.new("ScrollingFrame")
scrollingFrame2.Size = UDim2.new(1, 0, 1, -40)
scrollingFrame2.Position = UDim2.new(0, 0, 0, 0)
scrollingFrame2.BackgroundColor3 = Color3.fromRGB(18, 5, 25)
scrollingFrame2.BackgroundTransparency = 0.5
scrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame2.ScrollBarThickness = 4
scrollingFrame2.ScrollBarImageColor3 = Color3.fromRGB(170, 0, 255)
scrollingFrame2.ZIndex = 7
scrollingFrame2.Parent = frame8

Instance.new("UICorner", scrollingFrame2).CornerRadius = UDim.new(0, 6)

local v29 = {
  ":char beastsxc", ":char feliiou", ":char feliou244", ":char feliou23", ":char tottxii",
  ":char bonsoiban", ":char lokiczbh", ":char hel", ":char prime", ":char iambroke8173",
  ":char 0bviouslyKiera", ":char iStroompey", ":char Gio2Flee", ":char ADRI_ROBLOX2",
  ":char xTrickedgix", ":char andre091215", ":char newtester272", ":char fortnitereal123",
  ":char NoSoyEIRIAN", ":char jellyfisheslol", ":char vvsonme", ":char jtkkk",
  ":char MonkeyyGOD", ":char whyareublack", ":char romiseason", ":char angelyemma",
  ":char chinchongl", ":char Axolotlzzs", ":char jaydeniskool54", ":char alsxganteng",
  ":char mumbobro", ":char Kindaboi", ":char vlaoone", ":char iuyyfiytytfytyf",
  ":char blehhdizzy",
}

local v30 = 5

for index3, value11 in ipairs(v29) do
  local v31 = value11

  local textButton13 = Instance.new("TextButton")
  textButton13.Size = UDim2.new(0.96, 0, 0, 26)
  textButton13.Position = UDim2.new(0, 0, 0, v30)
  textButton13.BackgroundColor3 = Color3.fromRGB(35, 10, 50)
  textButton13.Text = v31
  textButton13.TextColor3 = Color3.fromRGB(220, 180, 255)
  textButton13.TextSize = 11
  textButton13.Font = Enum.Font.GothamBold
  textButton13.ZIndex = 8
  textButton13.Parent = scrollingFrame2

  Instance.new("UICorner", textButton13).CornerRadius = UDim.new(0, 6)

  textButton13.MouseButton1Click:Connect(function()
    if f12(v31) then
      textButton13.BackgroundColor3 = Color3.fromRGB(30, 120, 50)
      textButton13.Text = "✅ " .. v31
    else
      textButton13.BackgroundColor3 = Color3.fromRGB(150, 0, 50)
      textButton13.Text = "❌ " .. v31
    end

    task.wait(0.2)

    textButton13.BackgroundColor3 = Color3.fromRGB(35, 10, 50)
    textButton13.Text = v31
  end)

  v30 = v30 + 30
end

scrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, v30 + 5)

local textButton14 = Instance.new("TextButton")
textButton14.Size = UDim2.new(1, 0, 0, 32)
textButton14.Position = UDim2.new(0, 0, 1, -32)
textButton14.BackgroundColor3 = Color3.fromRGB(70, 0, 95)
textButton14.Text = "🌐 Enviar Todos os Nicks"
textButton14.TextColor3 = Color3.new(1, 1, 1)
textButton14.TextSize = 11
textButton14.Font = Enum.Font.GothamBold
textButton14.ZIndex = 8
textButton14.Parent = frame8

Instance.new("UICorner", textButton14).CornerRadius = UDim.new(0, 6)

textButton14.MouseButton1Click:Connect(function()
  textButton14.Text = "⏳ Enviando..."
  local v32 = #v29
  local count = 0

  for index4, value12 in ipairs(v29) do
    if f12(value12) then
      count = count + 1
    end

    task.wait(0.05)
  end

  textButton14.Text = "✅ " .. count .. "/" .. v32
  task.wait(1)
  textButton14.Text = "🌐 Enviar Todos os Nicks"
end)

local frame9 = Instance.new("Frame")
frame9.Size = UDim2.new(1, -20, 1, -45)
frame9.Position = UDim2.new(0, 10, 0, 40)
frame9.BackgroundTransparency = 1
frame9.Visible = false
frame9.ZIndex = 6
frame9.Parent = frame2

local textLabel4 = Instance.new("TextLabel")
textLabel4.Size = UDim2.new(1, 0, 0, 30)
textLabel4.Position = UDim2.new(0, 0, 0, 5)
textLabel4.BackgroundTransparency = 1
textLabel4.Text = "✨ Créditos: Bia / Larper"
textLabel4.TextColor3 = Color3.fromRGB(220, 180, 255)
textLabel4.TextSize = 14
textLabel4.Font = Enum.Font.GothamBold
textLabel4.TextXAlignment = Enum.TextXAlignment.Left
textLabel4.ZIndex = 8
textLabel4.Parent = frame9

local textLabel5 = Instance.new("TextLabel")
textLabel5.Size = UDim2.new(1, 0, 0, 25)
textLabel5.Position = UDim2.new(0, 0, 0, 45)
textLabel5.BackgroundTransparency = 1
textLabel5.Text = "🎨 Cor do Tema do Hub:"
textLabel5.TextColor3 = Color3.fromRGB(180, 180, 180)
textLabel5.TextSize = 12
textLabel5.Font = Enum.Font.Gotham
textLabel5.TextXAlignment = Enum.TextXAlignment.Left
textLabel5.ZIndex = 8
textLabel5.Parent = frame9

local frame10 = Instance.new("Frame")
frame10.Size = UDim2.new(1, 0, 0, 130)
frame10.Position = UDim2.new(0, 0, 0, 75)
frame10.BackgroundTransparency = 1
frame10.ZIndex = 8
frame10.Parent = frame9

local v33 = {
  {
    Name = "🟣 Roxo",
    MainColor = Color3.fromRGB(170, 0, 255),
    TextColor = Color3.fromRGB(220, 150, 255),
    BtnBg = Color3.fromRGB(40, 0, 55),
  },
  {
    Name = "🔵 Azul",
    MainColor = Color3.fromRGB(0, 140, 255),
    TextColor = Color3.fromRGB(150, 200, 255),
    BtnBg = Color3.fromRGB(0, 40, 75),
  },
  {
    Name = "🔴 Vermelho",
    MainColor = Color3.fromRGB(255, 40, 40),
    TextColor = Color3.fromRGB(255, 150, 150),
    BtnBg = Color3.fromRGB(75, 10, 10),
  },
  {
    Name = "🟢 Verde",
    MainColor = Color3.fromRGB(0, 220, 100),
    TextColor = Color3.fromRGB(150, 255, 180),
    BtnBg = Color3.fromRGB(0, 60, 25),
  },
  {
    Name = "🩷 Rosa",
    MainColor = Color3.fromRGB(255, 80, 180),
    TextColor = Color3.fromRGB(255, 180, 220),
    BtnBg = Color3.fromRGB(75, 15, 50),
  },
  {
    Name = "🖤 Preto",
    MainColor = Color3.fromRGB(70, 70, 70),
    TextColor = Color3.fromRGB(220, 220, 220),
    BtnBg = Color3.fromRGB(30, 30, 30),
  },
}

local v34 = v33[1]

local function f13(p10)
  v34 = p10
  uiStroke.Color = p10.MainColor
  instance2.Color = p10.MainColor
  textLabel.TextColor3 = p10.TextColor
  textLabel3.TextColor3 = p10.TextColor
  textLabel2.TextColor3 = p10.TextColor
  textLabel4.TextColor3 = p10.TextColor

  textButton.TextColor3 = p10.TextColor
  textButton.BackgroundColor3 = p10.BtnBg

  textButton2.TextColor3 = p10.TextColor
  textButton2.BackgroundColor3 = p10.BtnBg

  textButton6.TextColor3 = p10.TextColor
  textButton6.BackgroundColor3 = p10.BtnBg

  scrollingFrame.ScrollBarImageColor3 = p10.MainColor
  scrollingFrame2.ScrollBarImageColor3 = p10.MainColor

  for key9, value13 in pairs(v1) do
    value13.TextColor3 = p10.TextColor

    if textLabel2.Text == key9 then
      value13.BackgroundColor3 = p10.MainColor
    end
  end
end

local total2 = 0

for index5, value14 in ipairs(v33) do
  local v35 = value14

  local textButton15 = Instance.new("TextButton")
  textButton15.Size = UDim2.new(0.48, 0, 0, 30)

  local v36 = index5 % 2 == 1 and 0 or 0.52

  if index5 % 2 == 1 and index5 > 1 then
    total2 = total2 + 36
  end

  textButton15.Position = UDim2.new(v36, 0, 0, total2)
  textButton15.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
  textButton15.Text = v35.Name
  textButton15.TextColor3 = v35.TextColor
  textButton15.TextSize = 11
  textButton15.Font = Enum.Font.GothamBold
  textButton15.ZIndex = 9
  textButton15.Parent = frame10

  Instance.new("UICorner", textButton15).CornerRadius = UDim.new(0, 6)

  local instance4 = Instance.new("UIStroke", textButton15)
  instance4.Color = v35.MainColor
  instance4.Thickness = 1
  instance4.Transparency = 0.5

  textButton15.MouseButton1Click:Connect(function() f13(v35) end)
end

local function f14(p11)
  textLabel2.Text = p11

  for key10, value15 in pairs(v1) do
    value15.BackgroundColor3 = Color3.fromRGB(25, 0, 35)
    value15.TextColor3 = v34.TextColor
  end

  frame3.Visible = false
  frame5.Visible = false
  frame6.Visible = false
  frame7.Visible = false
  frame4.Visible = false
  frame8.Visible = false
  frame9.Visible = false

  if v1[p11] then
    v1[p11].BackgroundColor3 = v34.MainColor
  end

  if p11 == "Balls" then
    frame3.Visible = true
  elseif p11 == "GK" then
    frame5.Visible = true
  elseif p11 == "Hitbox" then
    frame6.Visible = true
  elseif p11 == "Gráfico" then
    frame7.Visible = true
  elseif p11 == "Player" then
    frame4.Visible = true
  elseif p11 == "Char" then
    frame8.Visible = true
  elseif p11 == "Configurações" then
    frame9.Visible = true
  end
end

v2.MouseButton1Click:Connect(function() f14("Balls") end)
v3.MouseButton1Click:Connect(function() f14("GK") end)
v4.MouseButton1Click:Connect(function() f14("Hitbox") end)
v5.MouseButton1Click:Connect(function() f14("Gráfico") end)
v6.MouseButton1Click:Connect(function() f14("Player") end)
v7.MouseButton1Click:Connect(function() f14("Char") end)
v8.MouseButton1Click:Connect(function() f14("Configurações") end)
local v37 = false

textButton.MouseButton1Click:Connect(function()
  v37 = not v37

  if v37 then
    textButton.Text = "+"
    tweenService:Create(main, TweenInfo.new(0.2), { Size = UDim2.new(0, 500, 0, 50) }):Play()
    frame.Visible = false
    frame2.Visible = false
  else
    textButton.Text = "−"
    tweenService:Create(main, TweenInfo.new(0.2), { Size = UDim2.new(0, 500, 0, 320) }):Play()
    task.wait(0.1)
    frame.Visible = true
    frame2.Visible = true
  end
end)

textButton2.MouseButton1Click:Connect(function() emanuelHub:Destroy() end)

local textButton16 = Instance.new("TextButton")
textButton16.Size = UDim2.new(1, -140, 0, 50)
textButton16.Position = UDim2.new(0, 0, 0, 0)
textButton16.BackgroundTransparency = 1
textButton16.Text = ""
textButton16.ZIndex = 7
textButton16.Parent = main

local v38, position5, position6

textButton16.InputBegan:Connect(function(input3)
  if input3.UserInputType == Enum.UserInputType.MouseButton1
    or input3.UserInputType == Enum.UserInputType.Touch then
    v38 = true
    position5 = input3.Position
    position6 = main.Position

    input3.Changed:Connect(function()
      if input3.UserInputState == Enum.UserInputState.End then
        v38 = false
      end
    end)
  end
end)

userInputService.InputChanged:Connect(function(input4)
  if v38
    and (input4.UserInputType == Enum.UserInputType.MouseMovement
      or input4.UserInputType == Enum.UserInputType.Touch) then
    local v39 = input4.Position - position5

    main.Position = UDim2.new(
      position6.X.Scale, position6.X.Offset + v39.X, position6.Y.Scale,
      position6.Y.Offset + v39.Y
    )
  end
end)

f14("Balls")

-- https://discord.gg/AwGHNh7Z7T
