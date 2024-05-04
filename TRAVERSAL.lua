local upval0 = game.Players.LocalPlayer
local upval1 = upval0.Character or script.Parent
local upval2 = upval1:WaitForChild("Humanoid")
local upval3 = upval1:WaitForChild("HumanoidRootPart")
local upval4 = upval2:FindFirstChildOfClass("Animator")
if not upval4 then
   local var0 = script.Parent
end
local upval5 = workspace.CurrentCamera
local upval6 = upval0.PlayerGui
local upval7 = game:GetService("RunService")
local upval8 = game:GetService("ContextActionService")
local upval9 = game:GetService("UserInputService")
local upval10 = game:GetService("TweenService")
local upval11 = game:GetService("ReplicatedStorage")
local upval12 = game:GetService("CollectionService")
local var0 = game:GetService("ProximityPromptService")
local upval13 = upval1:WaitForChild("Head")
local upval14 = upval1:WaitForChild("Left_Arm")
local upval15 = upval1:WaitForChild("Right_Arm")
local upval16 = upval1:WaitForChild("Left Leg")
local upval17 = upval1:WaitForChild("Right Leg")
local upval18 = upval1:WaitForChild("Right Arm")
local upval19 = upval1:WaitForChild("BackAttachment")
local upval20 = upval1:WaitForChild("TorsoAttachment")
local upval21 = upval1.Torso
local upval22 = upval3.RootJoint
local upval23 = upval21.Left Hip
local upval24 = upval21.Right Hip
local upval25 = upval21.Neck
local upval26 = upval1:WaitForChild("Head")
local upval27 = upval22.C0
local upval28 = upval23.C0
local upval29 = upval24.C0
local var1 = upval21Right Shoulder
local var2 = upval21.Left Shoulder
local var3 = upval25.C0
local var4 = upval11:WaitForChild("Modules")
local upval30 = require(var4:WaitForChild("BridgeNet"))
local var5 = require(var4:WaitForChild("ReplicatedAnimating"))
local upval31 = require(var4:WaitForChild("ProximityPrompt"))
local upval32 = require(var4:WaitForChild("Particles"))
local upval33 = upval30.CreateBridge("HiddenValue")
local upval34 = upval30.CreateBridge("Alert_Event")
local upval35 = upval30.CreateBridge("Takedown_Event")
local upval36 = upval30.CreateBridge("LightValueEvent")
local upval37 = upval30.CreateBridge("stunEvent")
local var6 = upval30.CreateBridge("pickUpWeapon")
local upval38 = upval30.CreateBridge("equipWeapon")
local upval39 = upval30.CreateBridge("UnequipWeapon")
local upval40 = upval30.CreateBridge("DropEvent")
local upval41 = upval30.CreateBridge("DropWeapon")
local upval42 = upval30.CreateBridge("weaponAttackValue")
local upval43 = upval30.CreateBridge("BlockValue")
local upval44 = upval30.CreateBridge("blockedEvent")
local upval45 = upval30.CreateBridge("CounterAttackEnemy")
local upval46 = upval30.CreateBridge("ragdollEvent")
local upval47 = upval30.CreateBridge("DoorEvent")
local upval48 = upval30.CreateBridge("FootstepEvent")
local upval49 = upval30.CreateBridge("SoundEvent")
local upval50 = upval30.CreateBridge("TextureEvent")
local upval51 = upval30.CreateBridge("DestroyEvent")
local upval52 = upval30.CreateBridge("healingEvent")
local upval53 = upval6:WaitForChild("VisibilityHud")
local var7 = upval53.Frame:WaitForChild("ViewportFrame")
local var198 = {}
var198.ImageColor3 = Color3.fromRGB(42, 44, 50)
local upval54 = upval10:Create(var7, TweenInfo.new(0.75, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var198)
local var212 = {}
var212.ImageColor3 = var7.ImageColor3
local upval55 = upval10:Create(var7, TweenInfo.new(0.75, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var212)
local upval56 = upval53.Frame:WaitForChild("Arrow")
local upval57 = upval53.Frame:WaitForChild("StaminaBar"):WaitForChild("Bar")
local upval58 = upval53.Frame:WaitForChild("HealthBar"):WaitForChild("Bar")
local upval59 = false
local upval60 = nil
local upval61 = nil
local upval62 = false
local upval63 = false
local upval64 = false
local upval65 = false
local upval66 = false
local upval67 = false
local upval68 = false
local var243 = false
local upval69 = upval2.WalkSpeed
local upval70 = upval2.WalkSpeed * 2
local upval71 = 100
local upval72 = nil
local upval73 = false
local upval74 = false
local upval75 = nil
local upval76 = false
local upval77 = 0
local upval78 = math.random(1, 4)
local upval79 = nil
local upval80 = nil
local upval81 = nil
local upval82 = nil
local upval83 = upval18.PrimaryHandle
local upval84 = upval18.SecondaryHandle
local upval85 = nil
local upval86 = nil
local upval87 = nil
local upval88 = nil
local upval89 = nil
local upval90 = nil
local upval91 = nil
local upval92 = nil
local upval93 = nil
local upval94 = nil
local upval95 = nil
local upval96 = nil
local upval97 = script:WaitForChild("Animations")
local var282 = upval97:WaitForChild("WalkForward")
local upval98 = upval4:LoadAnimation()
local var287 = upval97:WaitForChild("WalkLeft")
local upval99 = upval4:LoadAnimation()
local var292 = upval97:WaitForChild("WalkForwardLeft")
local upval100 = upval4:LoadAnimation()
local var297 = upval97:WaitForChild("WalkForwardRight")
local upval101 = upval4:LoadAnimation()
local var302 = upval97:WaitForChild("WalkRight")
local upval102 = upval4:LoadAnimation()
local var307 = upval97:WaitForChild("WalkBackwards")
local upval103 = upval4:LoadAnimation()
local var312 = upval97:WaitForChild("Sprint")
local upval104 = upval4:LoadAnimation()
local var317 = upval97:WaitForChild("Idle")
local upval105 = upval4:LoadAnimation()
local var322 = upval97:WaitForChild("SprintBackwards")
local upval106 = upval4:LoadAnimation()
local var327 = upval97:WaitForChild("SprintRight")
local upval107 = upval4:LoadAnimation()
local var332 = upval97:WaitForChild("SprintLeft")
local upval108 = upval4:LoadAnimation()
local var337 = upval97:WaitForChild("SprintForwardRight")
local upval109 = upval4:LoadAnimation()
local var342 = upval97:WaitForChild("SprintForwardLeft")
local upval110 = upval4:LoadAnimation()
local var348 = upval97.Injured:WaitForChild("WalkForward")
local upval111 = upval4:LoadAnimation()
local var354 = upval97.Injured:WaitForChild("WalkLeft")
local upval112 = upval4:LoadAnimation()
local var360 = upval97.Injured:WaitForChild("WalkRight")
local upval113 = upval4:LoadAnimation()
local var366 = upval97.Injured:WaitForChild("WalkForwardRight")
local upval114 = upval4:LoadAnimation()
local var372 = upval97.Injured:WaitForChild("WalkForwardLeft")
local upval115 = upval4:LoadAnimation()
local var378 = upval97.Injured:WaitForChild("Idle")
local upval116 = upval4:LoadAnimation()
local var383 = upval97:WaitForChild("Crouch")
local upval117 = upval4:LoadAnimation()
local var388 = upval97:WaitForChild("PeakRight")
local upval118 = upval4:LoadAnimation()
local var393 = upval97:WaitForChild("PeakLeft")
local upval119 = upval4:LoadAnimation()
local var398 = upval97:WaitForChild("LookLeft")
local upval120 = upval4:LoadAnimation()
local var403 = upval97:WaitForChild("LookRight")
local upval121 = upval4:LoadAnimation()
local var408 = upval97:WaitForChild("Pickup")
local upval122 = upval4:LoadAnimation()
local var413 = upval97:WaitForChild("PickupIdle")
local upval123 = upval4:LoadAnimation()
local var418 = upval97:WaitForChild("SlowWalk")
local upval124 = upval4:LoadAnimation()
local var423 = upval97:WaitForChild("ItemMovement")
local upval125 = upval4:LoadAnimation()
upval5.FieldOfView = 49
if not upval12:HasTag(upval1, "Spectate") then
   local var0 = script.Parent
end
upval2.CameraOffset = {0, 2, -0.2}
upval2:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
upval2:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
upval9.MouseIconEnabled = false
local upval126 = false
local upval127 = false
local upval128 = Instance.new("AlignOrientation")
upval128.Mode = Enum.OrientationAlignmentMode.OneAttachment
upval128.Attachment0 = upval3.Attachment
upval128.Responsiveness = 15
upval128.Parent = upval3
local upval129 = upval5.CFrame
local upval130 = upval6:WaitForChild("TutorialPrompts")
upval53.Enabled = false
upval30.CreateBridge("Cutscene"):Connect(function(arg1)
   if arg1 == "Spawn" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "LevelTwo" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "LevelFour" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "LevelFive" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "LevelSeven" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "LevelEight" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "LevelNine" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "SpectateStart" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "SpectateStop" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "TutorialOne" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "TutorialTwo" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "TutorialThree" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "TutorialFour" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "TutorialFive" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "Ending" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "CameraChange" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
   if arg1 == "Credits" then
      upval127 = true
      local var461 = upval4:LoadAnimation(upval11.Animations.CutsceneAnimations:WaitForChild("Spawn"))
      local var463 = upval11.Music.LevelOne
      local var468 = upval5.CFrame
      local var477 = upval6:WaitForChild("Title"):WaitForChild("Frame"):WaitForChild("ImageLabel")
      upval53.Enabled = false
      local var482 = upval6.Cutscene:WaitForChild("Frame")
      var482.BackgroundTransparency = 0
      game.Lighting.LoadingScreen.Brightness = 0
      game.Lighting.Ambient = Color3.fromRGB(61, 61, 61)
      game.Lighting.ClockTime = 0
      game.Lighting.Brightness = 1
      upval5.CameraType = Enum.CameraType.Scriptable
      upval2.WalkSpeed = 0
      var461:Play()
      var461:AdjustSpeed(0)
      local var509 = workspace:WaitForChild("LevelOne").Cameras:WaitForChild("One")
      upval5.CFrame = var509.CFrame
      upval5.FieldOfView = 40
      task.wait(1)
      var509 = var482
      local var519 = {}
      var519.BackgroundTransparency = 1
      upval10:Create(var509, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var519):Play()
      task.wait(1)
      local var531 = {}
      var531.ImageTransparency = 0
      upval10:Create(var477, TweenInfo.new(5, Enum.EasingStyle.Linear), var531):Play()
      task.wait(8)
      local var543 = {}
      var543.ImageTransparency = 1
      upval10:Create(var477, TweenInfo.new(10, Enum.EasingStyle.Linear), var543):Play()
      var463.Volume = 0
      local var554 = {}
      var554.Volume = 0.5
      upval10:Create(var463, TweenInfo.new(7, Enum.EasingStyle.Linear), var554):Play()
      var463:Play()
      var461:AdjustSpeed(1)
      task.wait(2)
      upval5.CameraType = Enum.CameraType.Custom
      repeat
         upval5.FieldOfView = 49
         task.wait()
      until not var461.IsPlaying
      upval2.WalkSpeed = upval69
      upval127 = false
      upval53.Enabled = true
      task.spawn(function()
         task.wait(9)
         if 
-- Unluau failed to decompile this binary operation.
         upval9.GamepadEnabled ==  then
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         else
            upval130.Two.TextLabel.Text = "PRESS DPADRIGHT TO VIEW CONTROLS"
         end
         task.wait(5)
         upval130.Two.TextLabel.Text = " "
      end)
      return 
   end
end)
function unEquipPrimary()
   if upval87 == nil then
      if upval87.IsPlaying then
         return 
      end
   end
   upval74 = false
   upval87:Play()
   upval87.TimePosition = upval87.Length
   if upval63 then
      if upval87.IsPlaying then
         return 
      end
   elseif upval87.IsPlaying then
      return 
   end
   upval86.Looped = false
   upval86:Stop()
   primaryEquipAnimConnection = upval87.Stopped:Connect(function()
      primaryEquipAnimConnection:Disconnect()
      upval39:Fire(upval83, upval19)
   end)
end

function unEquipSecondary()
   if upval87 == nil then
      if upval87.IsPlaying then
         return 
      end
   end
   upval76 = false
   upval87:Play()
   upval87.TimePosition = upval87.Length
   if upval63 then
      if upval87.IsPlaying then
         return 
      end
   elseif upval87.IsPlaying then
      return 
   end
   upval86.Looped = false
   upval86:Stop()
   primaryEquipAnimConnection = upval87.Stopped:Connect(function()
      primaryEquipAnimConnection:Disconnect()
      upval39:Fire(upval84, upval20)
   end)
end

local upval131 = nil
local upval132 = nil
local upval133 = nil
local upval134 = upval11.Animations.CounterAnimations
local upval135 = nil
local upval136 = nil
local upval137 = nil
local upval138 = false
local function upval139()
   if not upval74 then
      while upval76 do
         while not upval87.IsPlaying do
            if upval133 == nil then
               upval133:Stop()
            end
            if upval132 == nil then
               upval133:Stop()
            end
            upval59 = false
            upval43:Fire("True")
            stopPrimaryAttackAnimations()
            upval94:Play()
            repeat
               task.spawn(function()
                  task.wait(0.35)
                  upval43:Fire("False")
               end)
               upval2.WalkSpeed = 0
               task.wait()
            until not upval94.IsPlaying
         end
      end
   end
   if upval133 == nil then
      while upval76 do
         while not upval87.IsPlaying do
            if upval133 == nil then
               upval133:Stop()
            end
            if upval132 == nil then
               upval133:Stop()
            end
            upval59 = false
            upval43:Fire("True")
            stopPrimaryAttackAnimations()
            upval94:Play()
            repeat
               task.spawn(function()
                  task.wait(0.35)
                  upval43:Fire("False")
               end)
               upval2.WalkSpeed = 0
               task.wait()
            until not upval94.IsPlaying
         end
      end
   end
   if upval132 == nil then
      while upval76 do
         while not upval87.IsPlaying do
            if upval133 == nil then
               upval133:Stop()
            end
            if upval132 == nil then
               upval133:Stop()
            end
            upval59 = false
            upval43:Fire("True")
            stopPrimaryAttackAnimations()
            upval94:Play()
            repeat
               task.spawn(function()
                  task.wait(0.35)
                  upval43:Fire("False")
               end)
               upval2.WalkSpeed = 0
               task.wait()
            until not upval94.IsPlaying
         end
      end
   end
   upval59 = false
   upval43:Fire("True")
   stopPrimaryAttackAnimations()
   upval94:Play()
   repeat
      task.spawn(function()
         task.wait(0.35)
         upval43:Fire("False")
      end)
      upval2.WalkSpeed = 0
      task.wait()
   until not upval94.IsPlaying
end

local upval140 = nil
local upval141 = nil
local upval142 = false
function handleAction(arg1, arg2, arg3)
   if arg1 == "RequestSprint" then
      local var0 = Enum.UserInputState.Begin
      if arg2 == "Begin" then
         if not upval62 then
            upval62 = true
         else
            upval62 = true
         end
      elseif not upval62 then
         upval62 = true
      else
         upval62 = true
      end
   end
   if arg1 == "RequestCover" then
      local var0 = Enum.UserInputState.Begin
      if arg2 == "Begin" then
         if not upval62 then
            upval62 = true
         else
            upval62 = true
         end
      elseif not upval62 then
         upval62 = true
      else
         upval62 = true
      end
   end
   if arg1 == "EquipPrimary" then
      local var0 = Enum.UserInputState.Begin
      if arg2 == "Begin" then
         if not upval62 then
            upval62 = true
         else
            upval62 = true
         end
      elseif not upval62 then
         upval62 = true
      else
         upval62 = true
      end
   end
   if arg1 == "EquipSecondary" then
      local var0 = Enum.UserInputState.Begin
      if arg2 == "Begin" then
         if not upval62 then
            upval62 = true
         else
            upval62 = true
         end
      elseif not upval62 then
         upval62 = true
      else
         upval62 = true
      end
   end
   if arg1 == "RequestAttack" then
      local var0 = Enum.UserInputState.Begin
      if arg2 == "Begin" then
         if not upval62 then
            upval62 = true
         else
            upval62 = true
         end
      elseif not upval62 then
         upval62 = true
      else
         upval62 = true
      end
   end
   if arg1 == "Drop" then
      local var0 = Enum.UserInputState.Begin
      if arg2 == "Begin" then
         if not upval62 then
            upval62 = true
         else
            upval62 = true
         end
      elseif not upval62 then
         upval62 = true
      else
         upval62 = true
      end
   end
   if arg1 == "DropWeapon" then
      local var0 = Enum.UserInputState.Begin
      if arg2 == "Begin" then
         if not upval62 then
            upval62 = true
         else
            upval62 = true
         end
      elseif not upval62 then
         upval62 = true
      else
         upval62 = true
      end
   end
   if arg1 == "Crouch" then
      local var0 = Enum.UserInputState.Begin
      if arg2 == "Begin" then
         if not upval62 then
            upval62 = true
         else
            upval62 = true
         end
      elseif not upval62 then
         upval62 = true
      else
         upval62 = true
      end
   end
   if arg1 == "Block" then
      local var0 = Enum.UserInputState.Begin
      if arg2 == "Begin" then
         if not upval62 then
            upval62 = true
         else
            upval62 = true
         end
      elseif not upval62 then
         upval62 = true
      else
         upval62 = true
      end
   end
   if arg1 == "UseHealing" then
      local var0 = Enum.UserInputState.Begin
      if arg2 == "Begin" then
         if not upval62 then
            upval62 = true
         else
            upval62 = true
         end
      elseif not upval62 then
         upval62 = true
      else
         upval62 = true
      end
   end
   if arg1 == "Kick" then
      local var0 = Enum.UserInputState.Begin
      if arg2 == "Begin" then
         if not upval62 then
            upval62 = true
         else
            upval62 = true
         end
      elseif not upval62 then
         upval62 = true
      else
         upval62 = true
      end
   end
   if arg1 == "Deactivate" then
      local var0 = Enum.UserInputState.Begin
      if arg2 == "Begin" then
         if not upval62 then
            upval62 = true
         else
            upval62 = true
         end
      elseif not upval62 then
         upval62 = true
      else
         upval62 = true
      end
   end
   if arg1 == "ControlsMenu" then
      local var0 = Enum.UserInputState.Begin
      if arg2 == "Begin" then
         if not upval62 then
            upval62 = true
         else
            upval62 = true
         end
      elseif not upval62 then
         upval62 = true
      else
         upval62 = true
      end
   end
   if arg1 == "GamepassMenu" then
      local var0 = Enum.UserInputState.Begin
      if arg2 == "Begin" then
         if not upval62 then
            upval62 = true
         else
            upval62 = true
         end
      elseif not upval62 then
         upval62 = true
      else
         upval62 = true
      end
   end
end

upval8:BindAction("RequestSprint", handleAction, true, Enum.KeyCode.LeftShift, Enum.KeyCode.ButtonL3)
upval8:BindAction("RequestCover", handleAction, true, Enum.KeyCode.F, Enum.KeyCode.ButtonY)
upval8:BindAction("EquipPrimary", handleAction, true, Enum.KeyCode.One, Enum.KeyCode.DPadUp)
upval8:BindAction("EquipSecondary", handleAction, true, Enum.KeyCode.Two, Enum.KeyCode.DPadDown)
upval8:BindAction("UseHealing", handleAction, true, Enum.KeyCode.Three, Enum.KeyCode.ButtonB)
upval8:BindAction("DropWeapon", handleAction, true, Enum.KeyCode.Backspace, Enum.KeyCode.DPadLeft)
upval8:BindAction("Block", handleAction, true, Enum.UserInputType.MouseButton2, Enum.KeyCode.ButtonL2)
upval8:BindAction("RequestAttack", handleAction, true, Enum.UserInputType.MouseButton1, Enum.KeyCode.ButtonR2)
upval8:BindAction("Crouch", handleAction, true, Enum.KeyCode.C, Enum.KeyCode.ButtonL1)
upval8:BindAction("Kick", handleAction, true, Enum.KeyCode.R, Enum.KeyCode.ButtonR1)
upval8:BindAction("ControlsMenu", handleAction, false, Enum.KeyCode.Tab, Enum.KeyCode.DPadRight)
upval8:BindAction("GamepassMenu", handleAction, false, Enum.KeyCode.M)
local upval143 = false
local upval144 = upval6:WaitForChild("GamepassMenu")
local function upval145(arg1, arg2)
   local upval0 = false
   if not pcall(function()
      upval0 = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(upval0.UserId, arg1)
   end) then
      warn("Error while checking if player has pass: " .. tostring(var737))
      return 
   end
   if upval0 then
      warn("Error while checking if player has pass: " .. tostring(var737))
      return 
   else
      warn("Error while checking if player has pass: " .. tostring(var737))
      return 
   end
end

function gamePassMenu()
   if 
-- Unluau failed to decompile this binary operation.
   upval144.Enabled ==  then
      upval144.Enabled = false
      upval143 = false
      upval9.MouseIconEnabled = false
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
      return 
   end
   if 
-- Unluau failed to decompile this binary operation.
   upval144.Enabled ==  then
      upval144.Enabled = false
      upval143 = false
      upval9.MouseIconEnabled = false
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
      return 
   end
end

upval144:WaitForChild("Frame").SmileMaskButton.MouseButton1Click:Connect(function()
   print("smile mask")
   local var754 = game
   var754 = var754.ReplicatedStorage.Gamepasses.SmileMask
   upval145(781582326, var754)
end)
upval144:WaitForChild("Frame").ClownMaskButton.MouseButton1Click:Connect(function()
   print("clown mask")
   local var767 = game
   var767 = var767.ReplicatedStorage.Gamepasses.ClownMask
   upval145(781402937, var767)
end)
upval144:WaitForChild("Frame").TenguMaskButton.MouseButton1Click:Connect(function()
   print("tengu mask")
   local var780 = game
   var780 = var780.ReplicatedStorage.Gamepasses.TenguMask
   upval145(782596903, var780)
end)
function stopAnimations()
   for var790, var791 in pairs(upval4:GetPlayingAnimationTracks()) do
      var791:Stop()
   end
end

upval1:GetAttributeChangedSignal("Takedown"):Connect(function()
   if 
-- Unluau failed to decompile this binary operation.
   upval1:GetAttribute("Takedown") ==  then
      upval68 = true
      upval131 = time()
      upval66 = true
      if not upval74 then
         if upval76 then
            stopPrimaryAttackAnimations()
         end
      end
      stopPrimaryAttackAnimations()
      if upval132 == nil then
         if upval76 then
            stopPrimaryAttackAnimations()
         end
      end
      if upval133 == nil then
         if upval76 then
            stopPrimaryAttackAnimations()
         end
      end
      if upval3:FindFirstChild("BodyPosition") == nil then
         if upval76 then
            stopPrimaryAttackAnimations()
         end
      end
      if upval3:FindFirstChild("DashForce") == nil then
         if upval76 then
            stopPrimaryAttackAnimations()
         end
      end
      if upval3:FindFirstChild("BodyVelocity") == nil then
         if upval76 then
            stopPrimaryAttackAnimations()
         end
      end
      upval2.WalkSpeed = 0
      local var0 = upval3.Position
      local var823 = {}
      var823.CameraOffset = {0, 0, -3}
      local var1 = upval10:Create(upval2, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, true), var823):Play()
      local var836 = {}
      var836.FieldOfView = 45
      local var2 = upval10:Create(upval5, TweenInfo.new(1.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, true), var836):Play()
      if upval128 == nil then
         if upval76 then
            stopPrimaryAttackAnimations()
         end
      end
      task.wait()
      upval2.WalkSpeed = 0
      while 0 >= upval2.Health do
         if upval76 then
            stopPrimaryAttackAnimations()
         end
      end
      upval66 = false
   end
end)
local upval146 = nil
function canSeeTarget(arg1, arg2, arg3)
   if arg3 then
      local var0 = RaycastParams.new()
      local var863 = workspace.Light_Zones
      local var865 = workspace.Ignore
      local var867 = workspace.DebrisObjects
      var0.FilterDescendantsInstances = { upval60, workspace.Light_Zones, workspace.Ignore, workspace.DebrisObjects }
      var0.FilterType = Enum.RaycastFilterType.Exclude
      var863 = arg1.Position
      var865 = arg3.PrimaryPart.Position - arg1.Position.unit * arg2
      var867 = var0
      local var1 = workspace:Raycast(var863, var865, var867)
      if var1 then
         if var1.Instance:IsDescendantOf(arg3) then
            if 0 < arg3.Humanoid.Health then
               return true
               return 
               return false
            end
         end
      end
      return false
   end
end

function findTarget(arg1, arg2)
   if arg1 == nil then
      35 = arg1
   else
      35 = arg1
   end
   local var0 = nil
   local var1 = nil
   local var2 = pairs(workspace.Enemies:GetChildren())
   for var895, var896 in  do
      35 = arg1
   end
   return nil
end

local upval147 = RaycastParams.new()
upval147.FilterDescendantsInstances = { upval1, workspace.Ignore, workspace.Corpses }
upval147.FilterType = Enum.RaycastFilterType.Exclude
function equipWeaponClientFunction(arg1)
   if upval86 == nil then
      upval86.Looped = false
      upval86:Stop()
   end
   if upval12:HasTag(arg1, "Primary") then
      upval86.Looped = false
      upval86:Stop()
   else
      upval86.Looped = false
      upval86:Stop()
   end
   upval81 = upval75.PrimaryPart
   upval82 = upval75:WaitForChild("Hitbox")
   local var919 = upval75:WaitForChild("Idle")
   upval85 = upval4:LoadAnimation()
   local var924 = upval75:WaitForChild("Hold")
   upval86 = upval4:LoadAnimation()
   local var929 = upval75:WaitForChild("Equip")
   upval87 = upval4:LoadAnimation()
   local var934 = upval75:WaitForChild("Takedown_Player")
   upval88 = upval4:LoadAnimation()
   local var939 = upval75:WaitForChild("Takedown2_Player")
   upval89 = upval4:LoadAnimation()
   local var944 = upval75:WaitForChild("AttackOne")
   upval90 = upval4:LoadAnimation()
   local var949 = upval75:WaitForChild("AttackTwo")
   upval91 = upval4:LoadAnimation()
   local var954 = upval75:WaitForChild("AttackThree")
   upval92 = upval4:LoadAnimation()
   local var959 = upval75:WaitForChild("AttackFour")
   upval93 = upval4:LoadAnimation()
   local var964 = upval75:WaitForChild("Block")
   upval94 = upval4:LoadAnimation()
   local var969 = upval75:WaitForChild("Blocked")
   upval95 = upval4:LoadAnimation()
   upval140 = upval88:GetMarkerReachedSignal("Ragdoll"):Connect(function()
      upval140:Disconnect()
      upval35:Fire(upval60, "Ragdoll")
      upval146 = findTarget()
      if findTarget() then
         if upval146 ~= upval60 then
            upval34:Fire(upval146)
         end
      end
      if upval75.Name == "Chainsaw" then
         if upval146 ~= upval60 then
            upval34:Fire(upval146)
         end
      end
   end)
   upval140 = upval89:GetMarkerReachedSignal("Ragdoll"):Connect(function()
      upval140:Disconnect()
      upval35:Fire(upval60, "Ragdoll")
      upval146 = findTarget()
      if findTarget() then
         if upval146 ~= upval60 then
            upval34:Fire(upval146)
         end
      end
      if upval75.Name == "Chainsaw" then
         if upval146 ~= upval60 then
            upval34:Fire(upval146)
         end
      end
   end)
   upval140 = upval89:GetMarkerReachedSignal("Push"):Connect(function()
      upval140:Disconnect()
      upval35:Fire(upval60, "Push")
   end)
   upval140 = upval88:GetMarkerReachedSignal("Swing"):Connect(function()
      upval140:Disconnect()
      upval49:Fire(upval75.PrimaryPart.Swing)
   end)
   upval140 = upval89:GetMarkerReachedSignal("Swing"):Connect(function()
      upval140:Disconnect()
      upval49:Fire(upval75.PrimaryPart.Swing)
   end)
   upval140 = upval88:GetMarkerReachedSignal("Impact"):Connect(function()
      upval140:Disconnect()
      local var0 = upval75.ImpactSounds:GetChildren()
      upval49:Fire(var0[math.random(1, var0)])
      if 
-- Unluau failed to decompile this binary operation.
      upval75:GetAttribute("Heavy") ==  then
         local var0 = upval11.Sounds.Takedown.Heavy:GetChildren()
         upval49:Fire(nil, nil, var0[math.random(1, var0)], upval60.PrimaryPart)
      else
         local var0 = upval11.Sounds.Takedown.Heavy:GetChildren()
         upval49:Fire(nil, nil, var0[math.random(1, var0)], upval60.PrimaryPart)
      end
      if upval75.Name == "Chainsaw" then
         local var0 = upval11.Sounds.Takedown.Heavy:GetChildren()
         upval49:Fire(nil, nil, var0[math.random(1, var0)], upval60.PrimaryPart)
      end
      if upval60 then
         local var0 = upval11.Sounds.Takedown.Heavy:GetChildren()
         upval49:Fire(nil, nil, var0[math.random(1, var0)], upval60.PrimaryPart)
      end
   end)
   upval140 = upval89:GetMarkerReachedSignal("Impact"):Connect(function()
      upval140:Disconnect()
      local var0 = upval75.ImpactSounds:GetChildren()
      upval49:Fire(var0[math.random(1, var0)])
      if upval75.Name == "Chainsaw" then
         upval49:Fire(upval75.PrimaryPart.Swing)
      end
      if upval60 then
         upval49:Fire(upval75.PrimaryPart.Swing)
      end
   end)
   upval140 = upval90:GetMarkerReachedSignal("HitboxStart"):Connect(function()
      upval140:Disconnect()
      if not upval94.IsPlaying then
         if not upval95.IsPlaying then
            upval59 = true
         end
      end
   end)
   upval140 = upval90:GetMarkerReachedSignal("Swing"):Connect(function()
      upval140:Disconnect()
      upval49:Fire(upval75.PrimaryPart.Swing)
   end)
   upval140 = upval91:GetMarkerReachedSignal("Swing"):Connect(function()
      upval140:Disconnect()
      upval49:Fire(upval75.PrimaryPart.Swing)
   end)
   upval140 = upval92:GetMarkerReachedSignal("Swing"):Connect(function()
      upval140:Disconnect()
      upval49:Fire(upval75.PrimaryPart.Swing)
   end)
   upval140 = upval93:GetMarkerReachedSignal("Swing"):Connect(function()
      upval140:Disconnect()
      upval49:Fire(upval75.PrimaryPart.Swing)
   end)
   upval140 = upval90:GetMarkerReachedSignal("HitboxStop"):Connect(function()
      upval140:Disconnect()
      upval59 = false
   end)
   upval140 = upval91:GetMarkerReachedSignal("HitboxStart"):Connect(function()
      upval140:Disconnect()
      if not upval94.IsPlaying then
         if not upval95.IsPlaying then
            upval59 = true
         end
      end
   end)
   upval140 = upval91:GetMarkerReachedSignal("HitboxStop"):Connect(function()
      upval140:Disconnect()
      upval59 = false
   end)
   upval140 = upval92:GetMarkerReachedSignal("HitboxStart"):Connect(function()
      upval140:Disconnect()
      if not upval94.IsPlaying then
         if not upval95.IsPlaying then
            upval59 = true
         end
      end
   end)
   upval140 = upval92:GetMarkerReachedSignal("HitboxStop"):Connect(function()
      upval140:Disconnect()
      upval59 = false
   end)
   upval140 = upval93:GetMarkerReachedSignal("HitboxStart"):Connect(function()
      upval140:Disconnect()
      if not upval94.IsPlaying then
         if not upval95.IsPlaying then
            upval59 = true
         end
      end
   end)
   upval140 = upval93:GetMarkerReachedSignal("HitboxStop"):Connect(function()
      upval140:Disconnect()
      upval59 = false
   end)
   upval140 = upval90.Stopped:Connect(function()
      upval140:Disconnect()
      upval59 = false
   end)
   upval140 = upval91.Stopped:Connect(function()
      upval140:Disconnect()
      upval59 = false
   end)
   upval140 = upval92.Stopped:Connect(function()
      upval140:Disconnect()
      upval59 = false
   end)
   upval140 = upval93.Stopped:Connect(function()
      upval140:Disconnect()
      upval59 = false
   end)
end

upval1:GetAttributeChangedSignal("Outside"):Connect(function()
   if 
-- Unluau failed to decompile this binary operation.
   upval1:GetAttribute("Outside") ==  then
      upval11.Music.Wind:Play()
      if upval11.Music:FindFirstChild("Rain") == nil then
         upval11.Music.Rain:Play()
         return 
         if 
-- Unluau failed to decompile this binary operation.
         upval1:GetAttribute("Outside") ==  then
            if upval11.Music:FindFirstChild("Rain") == nil then
               upval11.Music.Rain:Stop()
            end
            upval11.Music.Wind:Stop()
         end
      end
   end
   if 
-- Unluau failed to decompile this binary operation.
   upval1:GetAttribute("Outside") ==  then
      upval11.Music.Wind:Play()
      if upval11.Music:FindFirstChild("Rain") == nil then
         upval11.Music.Rain:Play()
         return 
         if 
-- Unluau failed to decompile this binary operation.
         upval1:GetAttribute("Outside") ==  then
            if upval11.Music:FindFirstChild("Rain") == nil then
               upval11.Music.Rain:Stop()
            end
            upval11.Music.Wind:Stop()
         end
      end
   end
end)
upval30.CreateBridge("equipWeaponClient"):Connect(function(arg1, arg2)
   if upval12:HasTag(arg1, "Secondary") then
      upval80 = arg1
   end
   if upval12:HasTag(arg1, "Primary") then
      upval80 = arg1
   end
   if 
-- Unluau failed to decompile this binary operation.
   arg2 ==  then
      upval80 = arg1
   end
end)
local upval148 = upval30.CreateBridge("carryPickup")
local upval149 = nil
upval122:GetMarkerReachedSignal("Pickup"):Connect(function()
   if 
-- Unluau failed to decompile this binary operation.
   upval126 ==  then
      if upval12:HasTag(upval149, "Carry") then
         upval148:Fire(upval149, upval149.PrimaryPart)
         return 
      end
   end
   upval126 = false
   upval8:UnbindAction("Drop")
end)
local upval150 = nil
var0.PromptShown:Connect(function(arg1)
   if arg1.Parent == nil then
      if arg1.Name == "CarryPrompt" then
         if arg1.Parent.Name == "Waypoint" then
            local upval236 = upval31
            upval236 = arg1.Parent.Parent
            upval236.PromptShown(upval236)
            upval150 = arg1.Parent
         end
      end
   end
end)
var0.PromptHidden:Connect(function(arg1)
   if arg1.Parent == nil then
      if arg1.Name == "CarryPrompt" then
         if arg1.Parent.Name == "Waypoint" then
            local upval237 = upval31
            upval237 = arg1.Parent.Parent
            upval237.PromptHidden(upval237)
            upval150 = nil
         end
      end
   end
end)
var0.PromptTriggered:Connect(function(arg1)
   local var0 = arg1.Parent.Parent
   if upval12:HasTag(var0, "Carry") then
      if 
-- Unluau failed to decompile this binary operation.
      upval126 ==  then
         if not upval122.IsPlaying then
            if not upval73 then
               if not upval68 then
                  if not upval127 then
                     if not upval64 then
                        upval126 = true
                        upval127 = true
                        upval149 = var0
                        upval2.WalkSpeed = 0
                        enableAutoRotate()
                        upval128.CFrame = CFrame.lookAt(upval3.Position, var0.PrimaryPart.Position)
                        if not upval74 then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                        repeat
                           if upval74 then
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           else
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           end
                           task.wait()
                           if not upval74 then
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           end
                        until upval68
                        if upval12:HasTag(var1306, "Carry") then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                        upval126 = false
                        upval127 = false
                        upval149 = nil
                        if not upval68 then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                     end
                  end
               end
            end
         end
      end
   end
   if not upval12:HasTag(arg1, "Door") then
      if 
-- Unluau failed to decompile this binary operation.
      upval126 ==  then
         if not upval122.IsPlaying then
            if not upval73 then
               if not upval68 then
                  if not upval127 then
                     if not upval64 then
                        upval126 = true
                        upval127 = true
                        upval149 = var0
                        upval2.WalkSpeed = 0
                        enableAutoRotate()
                        upval128.CFrame = CFrame.lookAt(upval3.Position, var0.PrimaryPart.Position)
                        if not upval74 then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                        repeat
                           if upval74 then
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           else
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           end
                           task.wait()
                           if not upval74 then
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           end
                        until upval68
                        if upval12:HasTag(var1306, "Carry") then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                        upval126 = false
                        upval127 = false
                        upval149 = nil
                        if not upval68 then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                     end
                  end
               end
            end
         end
      end
   end
   if upval12:HasTag(arg1, "Checkpoint") then
      if 
-- Unluau failed to decompile this binary operation.
      upval126 ==  then
         if not upval122.IsPlaying then
            if not upval73 then
               if not upval68 then
                  if not upval127 then
                     if not upval64 then
                        upval126 = true
                        upval127 = true
                        upval149 = var0
                        upval2.WalkSpeed = 0
                        enableAutoRotate()
                        upval128.CFrame = CFrame.lookAt(upval3.Position, var0.PrimaryPart.Position)
                        if not upval74 then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                        repeat
                           if upval74 then
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           else
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           end
                           task.wait()
                           if not upval74 then
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           end
                        until upval68
                        if upval12:HasTag(var1306, "Carry") then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                        upval126 = false
                        upval127 = false
                        upval149 = nil
                        if not upval68 then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                     end
                  end
               end
            end
         end
      end
   end
   if upval12:HasTag(arg1, "Locked") then
      if 
-- Unluau failed to decompile this binary operation.
      upval126 ==  then
         if not upval122.IsPlaying then
            if not upval73 then
               if not upval68 then
                  if not upval127 then
                     if not upval64 then
                        upval126 = true
                        upval127 = true
                        upval149 = var0
                        upval2.WalkSpeed = 0
                        enableAutoRotate()
                        upval128.CFrame = CFrame.lookAt(upval3.Position, var0.PrimaryPart.Position)
                        if not upval74 then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                        repeat
                           if upval74 then
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           else
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           end
                           task.wait()
                           if not upval74 then
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           end
                        until upval68
                        if upval12:HasTag(var1306, "Carry") then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                        upval126 = false
                        upval127 = false
                        upval149 = nil
                        if not upval68 then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                     end
                  end
               end
            end
         end
      end
   end
   if upval12:HasTag(arg1, "OpenAnimation") then
      if 
-- Unluau failed to decompile this binary operation.
      upval126 ==  then
         if not upval122.IsPlaying then
            if not upval73 then
               if not upval68 then
                  if not upval127 then
                     if not upval64 then
                        upval126 = true
                        upval127 = true
                        upval149 = var0
                        upval2.WalkSpeed = 0
                        enableAutoRotate()
                        upval128.CFrame = CFrame.lookAt(upval3.Position, var0.PrimaryPart.Position)
                        if not upval74 then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                        repeat
                           if upval74 then
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           else
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           end
                           task.wait()
                           if not upval74 then
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           end
                        until upval68
                        if upval12:HasTag(var1306, "Carry") then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                        upval126 = false
                        upval127 = false
                        upval149 = nil
                        if not upval68 then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                     end
                  end
               end
            end
         end
      end
   end
   if upval12:HasTag(arg1, "Door") then
      if 
-- Unluau failed to decompile this binary operation.
      upval126 ==  then
         if not upval122.IsPlaying then
            if not upval73 then
               if not upval68 then
                  if not upval127 then
                     if not upval64 then
                        upval126 = true
                        upval127 = true
                        upval149 = var0
                        upval2.WalkSpeed = 0
                        enableAutoRotate()
                        upval128.CFrame = CFrame.lookAt(upval3.Position, var0.PrimaryPart.Position)
                        if not upval74 then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                        repeat
                           if upval74 then
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           else
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           end
                           task.wait()
                           if not upval74 then
                              while upval76 do
                                 repeat
                                    if upval74 then
                                       unEquipPrimary()
                                    else
                                       unEquipPrimary()
                                    end
                                    task.wait()
                                    if not upval74 then
                                       unEquipPrimary()
                                    end
                                 until upval68
                              end
                           end
                        until upval68
                        if upval12:HasTag(var1306, "Carry") then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                        upval126 = false
                        upval127 = false
                        upval149 = nil
                        if not upval68 then
                           while upval76 do
                              repeat
                                 if upval74 then
                                    unEquipPrimary()
                                 else
                                    unEquipPrimary()
                                 end
                                 task.wait()
                                 if not upval74 then
                                    unEquipPrimary()
                                 end
                              until upval68
                           end
                        end
                     end
                  end
               end
            end
         end
      end
   end
end)
var0.PromptTriggerEnded:Connect(function(arg1)
   local var0 = arg1.Parent.Parent
   if upval12:HasTag(arg1, "Checkpoint") then
      local upval264 = upval31
      upval264 = arg1
      upval264.Ended(upval264, var0.Parent)
      return 
   end
   local upval265 = upval31
   upval265 = arg1
   upval265.Ended(upval265, var0)
end)
local upval151 = nil
local upval152 = nil
function disableAutoRotate()
   upval128.Enabled = false
end

function enableAutoRotate()
   upval128.Enabled = true
end

function dropWeaponEvent(arg1)
   stopPrimaryAttackAnimations()
   local upval268 = upval79
   if arg1 == "Stop" then
      if upval74 then
         upval74 = false
         upval86:Stop()
         upval85:Stop()
         local upval0 = upval80
         if arg1 == "Stop" then
            if upval76 then
               upval76 = false
               upval86:Stop()
               upval85:Stop()
            end
         end
      end
   elseif upval74 then
      upval74 = false
      upval86:Stop()
      upval85:Stop()
      local upval0 = upval80
      if arg1 == "Stop" then
         if upval76 then
            upval76 = false
            upval86:Stop()
            upval85:Stop()
         end
      end
   end
   upval8:UnbindAction("Deactivate")
   for var1365, var1366 in pairs(upval4:GetPlayingAnimationTracks()) do
      if upval74 then
         upval74 = false
         upval86:Stop()
         upval85:Stop()
         local upval0 = upval80
         if arg1 == "Stop" then
            if upval76 then
               upval76 = false
               upval86:Stop()
               upval85:Stop()
            end
         end
      end
   end
   upval41:Fire(arg1)
end

upval0:GetMouse().TargetFilter = upval1
function stopRunAnimations(arg1)
   if upval104.IsPlaying then
      upval104:Stop(arg1)
   end
   if upval106.IsPlaying then
      upval104:Stop(arg1)
   end
   if upval107.IsPlaying then
      upval104:Stop(arg1)
   end
   if upval108.IsPlaying then
      upval104:Stop(arg1)
   end
   if upval110.IsPlaying then
      upval104:Stop(arg1)
   end
   if upval109.IsPlaying then
      upval104:Stop(arg1)
   end
end

function stopWalkAnimations(arg1)
   if upval99.IsPlaying then
      upval99:Stop(arg1)
   end
   if upval102.IsPlaying then
      upval99:Stop(arg1)
   end
   if upval98.IsPlaying then
      upval99:Stop(arg1)
   end
   if upval100.IsPlaying then
      upval99:Stop(arg1)
   end
   if upval101.IsPlaying then
      upval99:Stop(arg1)
   end
   if upval103.IsPlaying then
      upval99:Stop(arg1)
   end
   if upval111.IsPlaying then
      upval99:Stop(arg1)
   end
   if upval115.IsPlaying then
      upval99:Stop(arg1)
   end
   if upval114.IsPlaying then
      upval99:Stop(arg1)
   end
   if upval113.IsPlaying then
      upval99:Stop(arg1)
   end
   if upval112.IsPlaying then
      upval99:Stop(arg1)
   end
end

local upval153 = nil
local upval154 = nil
local upval155 = nil
local upval156 = 0
local upval157 = 0
local upval158 = false
local upval159 = nil
local upval160 = nil
function stopPrimaryAttackAnimations()
   if not upval74 then
      if upval76 then
         upval90:Stop()
         upval91:Stop()
         upval92:Stop()
         upval93:Stop()
         upval94:Stop()
         upval95:Stop()
      end
   end
   upval90:Stop()
   upval91:Stop()
   upval92:Stop()
   upval93:Stop()
   upval94:Stop()
   upval95:Stop()
end

local upval161 = nil
upval30.CreateBridge("CounterAttack"):Connect(function(arg1, arg2)
   if upval133 == nil then
      if not upval133.IsPlaying then
         if upval66 then
            return 
         end
      end
   end
   if upval66 then
      if not upval133.IsPlaying then
         if upval66 then
            return 
         end
      end
   end
   upval68 = true
   upval131 = time()
   upval2.WalkSpeed = 0
   upval59 = false
   if not upval74 then
      if not upval133.IsPlaying then
         if upval66 then
            return 
         end
      end
   end
   stopPrimaryAttackAnimations()
   if upval132 == nil then
      if not upval133.IsPlaying then
         if upval66 then
            return 
         end
      end
   end
   if upval3:FindFirstChild("BodyVelocity") then
      if not upval133.IsPlaying then
         if upval66 then
            return 
         end
      end
   end
   if upval3:FindFirstChild("DashForce") then
      if not upval133.IsPlaying then
         if upval66 then
            return 
         end
      end
   end
   disableAutoRotate()
   local var1438 = {}
   var1438.CameraOffset = {0, 0, -2}
   local var0 = upval10:Create(upval2, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, true), var1438):Play()
   local var1451 = {}
   var1451.FieldOfView = 45
   local var1 = upval10:Create(upval5, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, true), var1451):Play()
   if arg1 == "Front" then
      if not upval133.IsPlaying then
         if upval66 then
            return 
         end
      end
   elseif not upval133.IsPlaying then
      if upval66 then
         return 
      end
   end
   upval2.WalkSpeed = upval69
   upval68 = false
end)
local var39 = require(var4.Ragdoll)
local upval162 = nil
upval30.CreateBridge("RespawnEvent"):Connect(function()
   local var0 = upval6.Cutscene:WaitForChild("Frame")
   var0.BackgroundTransparency = 0
   local var1477 = {}
   var1477.BackgroundTransparency = 1
   if upval162 == nil then
      upval162:Cancel()
   end
   var0.Visible = true
   if not upval12:HasTag(upval1, "Spectate") then
      upval162:Cancel()
   end
   upval5.FieldOfView = 49
   upval2.WalkSpeed = 0
   upval53.Enabled = true
   task.wait(2)
   upval10:Create(var0, TweenInfo.new(3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var1477):Play()
   upval2.WalkSpeed = upval69
end)
local var1495 = upval97:WaitForChild("Falling")
local upval163 = upval4:LoadAnimation()
local var1500 = upval97:WaitForChild("Landing")
local upval164 = upval4:LoadAnimation()
upval2.StateChanged:Connect(function(arg1, arg2)
   local var0 = Enum.HumanoidStateType.Landed
   if arg2 == "Landed" then
      upval127 = true
      upval163:Stop()
      upval164:Play()
      upval2.WalkSpeed = 0
      task.wait()
      while upval164.IsPlaying do
         repeat
         until upval68
      end
      upval164:Stop()
      if not upval68 then
         repeat
         until upval68
      end
      upval127 = false
   end
end)
upval2.Died:Connect(function()
   local upval0 = upval6.Cutscene:WaitForChild("Frame")
   upval5.CameraType = Enum.CameraType.Scriptable
   local var1527 = {}
   var1527.CFrame = CFrame.new(upval5.CFrame.Position, upval26.Position)
   upval162 = upval10:Create(upval5, TweenInfo.new(2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var1527):Play()
   hideStealthObject()
   task.spawn(function()
      local var1544 = {}
      var1544.BackgroundTransparency = 0
      task.wait(0.5)
      upval10:Create(upval0, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var1544):Play()
   end)
   stopAnimations()
   if upval79 == nil then
      upval39:Fire(upval83, upval18, true, upval79)
   end
   if upval80 == nil then
      upval39:Fire(upval83, upval18, true, upval79)
   end
   if upval141 == nil then
      upval39:Fire(upval83, upval18, true, upval79)
   end
   upval80 = nil
   upval79 = nil
   upval141 = nil
   upval30.CreateBridge("CharacterRemoved"):Fire()
   if 
-- Unluau failed to decompile this binary operation.
   upval1:GetAttribute("Takedown") ==  then
      upval39:Fire(upval83, upval18, true, upval79)
   end
end)
upval11.ParticleEvent.OnClientEvent:Connect(function(arg1, arg2)
   local var0 = RaycastParams.new()
   var0.FilterDescendantsInstances = { upval1, workspace.Ignore, upval60, workspace.Shadows, workspace.DebrisObjects }
   var0.FilterType = Enum.RaycastFilterType.Exclude
   local upval364 = upval32
   upval364 = arg1
   upval364.Blood(upval364, math.random(2, 7), var0, "Default")
end)
upval30.CreateBridge("PlayerStunEvent"):Connect(function(arg1, arg2, arg3)
   if 0 >= upval2.Health then
      if upval133 == nil then
         if upval133.IsPlaying then
            return 
         end
      end
   end
   return 
   if upval131 == nil then
      if upval133 == nil then
         if upval133.IsPlaying then
            return 
         end
      end
   end
   if not upval66 then
      if upval133 == nil then
         if upval133.IsPlaying then
            return 
         end
      end
   end
   return 
   upval68 = true
   upval131 = time()
   if upval132 == nil then
      if upval133 == nil then
         if upval133.IsPlaying then
            return 
         end
      end
   end
   upval2.WalkSpeed = 0
   disableAutoRotate()
   if upval3:FindFirstChild("BodyVelocity") then
      if upval133 == nil then
         if upval133.IsPlaying then
            return 
         end
      end
   end
   if upval3:FindFirstChild("DashForce") then
      if upval133 == nil then
         if upval133.IsPlaying then
            return 
         end
      end
   end
   if upval126 then
      if upval133 == nil then
         if upval133.IsPlaying then
            return 
         end
      end
   end
   if upval3:FindFirstChild("BodyVelocity") then
      if upval133 == nil then
         if upval133.IsPlaying then
            return 
         end
      end
   end
   if upval3:FindFirstChild("DashForce") then
      if upval133 == nil then
         if upval133.IsPlaying then
            return 
         end
      end
   end
   local var0 = Instance.new("BodyVelocity")
   var0.P = 5000
   var0.MaxForce = {10000, 0, 10000}
   if not upval74 then
      if upval133 == nil then
         if upval133.IsPlaying then
            return 
         end
      end
   end
   stopPrimaryAttackAnimations()
   upval59 = false
   if upval146 then
      if upval133 == nil then
         if upval133.IsPlaying then
            return 
         end
      end
   end
   local upval379 = upval3
   upval379 = upval3.CFrame.LookVector
   local var1 = upval11.Animations.DamageAnimations:WaitForChild("MediumDamage")
   if math.deg(math.acos(arg3.Position - upval379.Position.Unit:Dot(upval379))) < 100 then
      if upval133 == nil then
         if upval133.IsPlaying then
            return 
         end
      end
   elseif upval133 == nil then
      if upval133.IsPlaying then
         return 
      end
   end
   upval68 = false
   if not upval63 then
      if upval133 == nil then
         if upval133.IsPlaying then
            return 
         end
      end
   end
end)
upval44:Connect(function()
   if not upval74 then
      while upval76 do
         upval68 = true
         upval59 = false
         upval131 = time()
         upval94:Stop()
         upval95:Play()
         if upval75.Name == "Axe" then
            upval95:AdjustSpeed(0.85)
         end
         if upval75.Name == "Katana" then
            upval95:AdjustSpeed(0.85)
         end
         upval2.WalkSpeed = 0
         local var1650 = Instance.new("BodyPosition")
         var1650.Name = "DashForce"
         var1650.MaxForce = {50000, 0, 50000}
         var1650.D = 600
         var1650.P = 800
         local var1662 = upval3.CFrame.LookVector * math.random(-7, -3)
         var1650.Position = upval3.Position + var1662
         var1650.Parent = upval3
         var1662 = var1650
         game.Debris:AddItem(var1662, 0.5)
         upval49:Fire(upval75.PrimaryPart.Block)
         upval72 = time()
         upval71 = upval71 + 20
         repeat
            sparkParticles(upval75)
            task.wait()
         until not upval95.IsPlaying
      end
   end
   upval68 = true
   upval59 = false
   upval131 = time()
   upval94:Stop()
   upval95:Play()
   if upval75.Name == "Axe" then
      while upval76 do
         upval68 = true
         upval59 = false
         upval131 = time()
         upval94:Stop()
         upval95:Play()
         if upval75.Name == "Axe" then
            upval95:AdjustSpeed(0.85)
         end
         if upval75.Name == "Katana" then
            upval95:AdjustSpeed(0.85)
         end
         upval2.WalkSpeed = 0
         local var1650 = Instance.new("BodyPosition")
         var1650.Name = "DashForce"
         var1650.MaxForce = {50000, 0, 50000}
         var1650.D = 600
         var1650.P = 800
         local var1662 = upval3.CFrame.LookVector * math.random(-7, -3)
         var1650.Position = upval3.Position + var1662
         var1650.Parent = upval3
         var1662 = var1650
         game.Debris:AddItem(var1662, 0.5)
         upval49:Fire(upval75.PrimaryPart.Block)
         upval72 = time()
         upval71 = upval71 + 20
         repeat
            sparkParticles(upval75)
            task.wait()
         until not upval95.IsPlaying
      end
   end
   if upval75.Name == "Katana" then
      while upval76 do
         upval68 = true
         upval59 = false
         upval131 = time()
         upval94:Stop()
         upval95:Play()
         if upval75.Name == "Axe" then
            upval95:AdjustSpeed(0.85)
         end
         if upval75.Name == "Katana" then
            upval95:AdjustSpeed(0.85)
         end
         upval2.WalkSpeed = 0
         local var1650 = Instance.new("BodyPosition")
         var1650.Name = "DashForce"
         var1650.MaxForce = {50000, 0, 50000}
         var1650.D = 600
         var1650.P = 800
         local var1662 = upval3.CFrame.LookVector * math.random(-7, -3)
         var1650.Position = upval3.Position + var1662
         var1650.Parent = upval3
         var1662 = var1650
         game.Debris:AddItem(var1662, 0.5)
         upval49:Fire(upval75.PrimaryPart.Block)
         upval72 = time()
         upval71 = upval71 + 20
         repeat
            sparkParticles(upval75)
            task.wait()
         until not upval95.IsPlaying
      end
   end
   upval2.WalkSpeed = 0
   local var1688 = Instance.new("BodyPosition")
   var1688.Name = "DashForce"
   var1688.MaxForce = {50000, 0, 50000}
   var1688.D = 600
   var1688.P = 800
   local var1700 = upval3.CFrame.LookVector * math.random(-7, -3)
   var1688.Position = upval3.Position + var1700
   var1688.Parent = upval3
   var1700 = var1688
   game.Debris:AddItem(var1700, 0.5)
   upval49:Fire(upval75.PrimaryPart.Block)
   upval72 = time()
   upval71 = upval71 + 20
   repeat
      sparkParticles(upval75)
      task.wait()
   until not upval95.IsPlaying
   upval68 = false
   if not upval63 then
      while upval76 do
         upval68 = true
         upval59 = false
         upval131 = time()
         upval94:Stop()
         upval95:Play()
         if upval75.Name == "Axe" then
            upval95:AdjustSpeed(0.85)
         end
         if upval75.Name == "Katana" then
            upval95:AdjustSpeed(0.85)
         end
         upval2.WalkSpeed = 0
         local var1650 = Instance.new("BodyPosition")
         var1650.Name = "DashForce"
         var1650.MaxForce = {50000, 0, 50000}
         var1650.D = 600
         var1650.P = 800
         local var1662 = upval3.CFrame.LookVector * math.random(-7, -3)
         var1650.Position = upval3.Position + var1662
         var1650.Parent = upval3
         var1662 = var1650
         game.Debris:AddItem(var1662, 0.5)
         upval49:Fire(upval75.PrimaryPart.Block)
         upval72 = time()
         upval71 = upval71 + 20
         repeat
            sparkParticles(upval75)
            task.wait()
         until not upval95.IsPlaying
      end
   end
end)
local upval165 = nil
local upval166 = nil
local upval167 = nil
local upval168 = nil
function hideStealthObject()
   if upval166 == nil then
      local var1726 = {}
      var1726.ImageTransparency = 1
      upval10:Create(upval168, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var1726):Play()
      upval166 = nil
      upval167 = nil
      upval168 = nil
   end
end

local upval169 = nil
local upval170 = nil
function floorMaterial()
   local var0 = upval11.Sounds.Footstep
   if upval2.FloorMaterial ~= Enum.Material.Concrete then
      if upval2.FloorMaterial ~= Enum.Material.Slate then
         if upval2.FloorMaterial ~= Enum.Material.Plastic then
            local var0 = Enum.Material.SmoothPlastic
            if upval2.FloorMaterial == "FloorMaterial" then
               local var0 = var0.Concrete:GetChildren()
               upval170 = var0[math.random(1, var0)]
               if not upval63 then
                  upval142 = false
               end
            end
         end
      end
   end
   local var1757 = var0.Concrete:GetChildren()
   upval170 = var1757[math.random(1, var1757)]
   if not upval63 then
      if upval2.FloorMaterial ~= Enum.Material.Slate then
         if upval2.FloorMaterial ~= Enum.Material.Plastic then
            local var0 = Enum.Material.SmoothPlastic
            if upval2.FloorMaterial == "FloorMaterial" then
               local var0 = var0.Concrete:GetChildren()
               upval170 = var0[math.random(1, var0)]
               if not upval63 then
                  upval142 = false
               end
            end
         end
      end
   end
   if upval2.FloorMaterial ~= Enum.Material.Wood then
      if upval2.FloorMaterial ~= Enum.Material.Slate then
         if upval2.FloorMaterial ~= Enum.Material.Plastic then
            local var0 = Enum.Material.SmoothPlastic
            if upval2.FloorMaterial == "FloorMaterial" then
               local var0 = var0.Concrete:GetChildren()
               upval170 = var0[math.random(1, var0)]
               if not upval63 then
                  upval142 = false
               end
            end
         end
      end
   end
   local var1767 = var0.Wood:GetChildren()
   upval170 = var1767[math.random(1, var1767)]
   if not upval138 then
      if upval2.FloorMaterial ~= Enum.Material.Slate then
         if upval2.FloorMaterial ~= Enum.Material.Plastic then
            local var0 = Enum.Material.SmoothPlastic
            if upval2.FloorMaterial == "FloorMaterial" then
               local var0 = var0.Concrete:GetChildren()
               upval170 = var0[math.random(1, var0)]
               if not upval63 then
                  upval142 = false
               end
            end
         end
      end
   elseif upval2.FloorMaterial ~= Enum.Material.Slate then
      if upval2.FloorMaterial ~= Enum.Material.Plastic then
         local var0 = Enum.Material.SmoothPlastic
         if upval2.FloorMaterial == "FloorMaterial" then
            local var0 = var0.Concrete:GetChildren()
            upval170 = var0[math.random(1, var0)]
            if not upval63 then
               upval142 = false
            end
         end
      end
   end
   if upval2.FloorMaterial ~= Enum.Material.Metal then
      if upval2.FloorMaterial ~= Enum.Material.Slate then
         if upval2.FloorMaterial ~= Enum.Material.Plastic then
            local var0 = Enum.Material.SmoothPlastic
            if upval2.FloorMaterial == "FloorMaterial" then
               local var0 = var0.Concrete:GetChildren()
               upval170 = var0[math.random(1, var0)]
               if not upval63 then
                  upval142 = false
               end
            end
         end
      end
   end
   local var1777 = var0.Metal:GetChildren()
   upval170 = var1777[math.random(1, var1777)]
   if not upval138 then
      if upval2.FloorMaterial ~= Enum.Material.Slate then
         if upval2.FloorMaterial ~= Enum.Material.Plastic then
            local var0 = Enum.Material.SmoothPlastic
            if upval2.FloorMaterial == "FloorMaterial" then
               local var0 = var0.Concrete:GetChildren()
               upval170 = var0[math.random(1, var0)]
               if not upval63 then
                  upval142 = false
               end
            end
         end
      end
   elseif upval2.FloorMaterial ~= Enum.Material.Slate then
      if upval2.FloorMaterial ~= Enum.Material.Plastic then
         local var0 = Enum.Material.SmoothPlastic
         if upval2.FloorMaterial == "FloorMaterial" then
            local var0 = var0.Concrete:GetChildren()
            upval170 = var0[math.random(1, var0)]
            if not upval63 then
               upval142 = false
            end
         end
      end
   end
   local var1784 = Enum.Material.DiamondPlate
   if upval2.FloorMaterial == "FloorMaterial" then
      if upval2.FloorMaterial ~= Enum.Material.Slate then
         if upval2.FloorMaterial ~= Enum.Material.Plastic then
            local var0 = Enum.Material.SmoothPlastic
            if upval2.FloorMaterial == "FloorMaterial" then
               local var0 = var0.Concrete:GetChildren()
               upval170 = var0[math.random(1, var0)]
               if not upval63 then
                  upval142 = false
               end
            end
         end
      end
   end
   local var1786 = Enum.Material.Mud
   if upval2.FloorMaterial == "FloorMaterial" then
      if upval2.FloorMaterial ~= Enum.Material.Slate then
         if upval2.FloorMaterial ~= Enum.Material.Plastic then
            local var0 = Enum.Material.SmoothPlastic
            if upval2.FloorMaterial == "FloorMaterial" then
               local var0 = var0.Concrete:GetChildren()
               upval170 = var0[math.random(1, var0)]
               if not upval63 then
                  upval142 = false
               end
            end
         end
      end
   end
   local var1788 = Enum.Material.Fabric
   if upval2.FloorMaterial == "FloorMaterial" then
      if upval2.FloorMaterial ~= Enum.Material.Slate then
         if upval2.FloorMaterial ~= Enum.Material.Plastic then
            local var0 = Enum.Material.SmoothPlastic
            if upval2.FloorMaterial == "FloorMaterial" then
               local var0 = var0.Concrete:GetChildren()
               upval170 = var0[math.random(1, var0)]
               if not upval63 then
                  upval142 = false
               end
            end
         end
      end
   end
   local var7 = Enum.Material.Grass
   if upval2.FloorMaterial == "FloorMaterial" then
      if upval2.FloorMaterial ~= Enum.Material.Slate then
         if upval2.FloorMaterial ~= Enum.Material.Plastic then
            local var0 = Enum.Material.SmoothPlastic
            if upval2.FloorMaterial == "FloorMaterial" then
               local var0 = var0.Concrete:GetChildren()
               upval170 = var0[math.random(1, var0)]
               if not upval63 then
                  upval142 = false
               end
            end
         end
      end
   end
   if upval170 == nil then
      if upval2.FloorMaterial ~= Enum.Material.Slate then
         if upval2.FloorMaterial ~= Enum.Material.Plastic then
            local var0 = Enum.Material.SmoothPlastic
            if upval2.FloorMaterial == "FloorMaterial" then
               local var0 = var0.Concrete:GetChildren()
               upval170 = var0[math.random(1, var0)]
               if not upval63 then
                  upval142 = false
               end
            end
         end
      end
   end
end

local upval171 = nil
function generateSound(arg1, arg2)
   local var0 = arg1:GetChildren()
   local var1 = Instance.new("Sound")
   if arg2 == nil then
      var1.Volume = arg2
   else
      var1.Volume = arg2
   end
   var1.SoundId = "rbxassetid://" .. var0[math.random(1, var0)].Value
   var1.PlaybackSpeed = math.random(850, 1200) / 1000
   var1.Parent = upval3
   var1:Play()
   game.Debris:AddItem(var1, 2)
end

function leftFoot()
   local var0 = workspace:Raycast(upval16.Position, upval16.CFrame.UpVector * -3, upval147)
   local var1 = RaycastParams.new()
   var1.FilterDescendantsInstances = { upval1, workspace.Ignore, workspace.Shadows, workspace.DebrisObjects }
   var1.FilterType = Enum.RaycastFilterType.Exclude
   local var1838 = upval16.CFrame.UpVector
   var1838 = var1
   local var2 = workspace:Raycast(upval16.Position, var1838 * -3, var1838)
   if var0 then
      if var2 then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if var0.Instance.Name == "Debris" then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if var0.Instance.Name == "Dust" then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if var0.Instance.Name == "Glass" then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if var0.Instance.Name == "Sticks" then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if upval63 then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if var0.Instance.Name == "Dirt" then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if math.random(1, 6) == 3 then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if 
-- Unluau failed to decompile this binary operation.
      var0.Instance.Anchored ==  then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
   end
end

function rightFoot()
   local var0 = workspace:Raycast(upval17.Position, upval17.CFrame.UpVector * -3, upval147)
   local var1 = RaycastParams.new()
   var1.FilterDescendantsInstances = { upval1, workspace.Ignore, workspace.Shadows, workspace.DebrisObjects }
   var1.FilterType = Enum.RaycastFilterType.Exclude
   local var1885 = upval17.CFrame.UpVector
   var1885 = var1
   local var2 = workspace:Raycast(upval17.Position, var1885 * -3, var1885)
   if var0 then
      if var2 then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if var0.Instance.Name == "Debris" then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if var0.Instance.Name == "Dust" then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if var0.Instance.Name == "Glass" then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if var0.Instance.Name == "Sticks" then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if var0.Instance.Name == "Dirt" then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if var0.Instance.Name == "Sticks" then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if upval63 then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if math.random(1, 6) == 3 then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
      if 
-- Unluau failed to decompile this binary operation.
      var0.Instance.Anchored ==  then
         if var2.Instance.Name == "Puddle" then
            upval171 = time()
            generateSound(upval11.Sounds.Water)
         end
      end
   end
end

function walkAnimationEvents()
   upval98:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval98:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
   upval100:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval100:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
   upval101:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval101:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
   upval102:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval102:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
   upval99:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval99:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
   upval103:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval103:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
end

function injuredwalkAnimationEvents()
   upval111:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval111:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
   upval115:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval115:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
   upval114:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval114:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
   upval113:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval113:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
   upval112:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval112:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
end

function sprintingAnimationEvents()
   upval104:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval104:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
   upval110:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval110:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
   upval109:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval109:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
   upval107:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval107:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
   upval108:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval108:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
   upval106:GetMarkerReachedSignal("Left"):Connect(function()
      floorMaterial()
      leftFoot()
   end)
   upval106:GetMarkerReachedSignal("Right"):Connect(function()
      floorMaterial()
      rightFoot()
   end)
end

walkAnimationEvents()
injuredwalkAnimationEvents()
sprintingAnimationEvents()
local upval172 = nil
function damageParticles()
   if upval75:FindFirstChild("DamageParticles") == nil then
      local var0 = upval75:WaitForChild("DamageParticles")
      local var1 = var0:WaitForChild("Attachment")
      var0.CFrame = upval75.Hitbox.CFrame
      local var2137 = math.random(10, 35)
      var1.One:Emit()
      local var2143 = math.random(35, 65)
      var1.Two:Emit()
      local var4 = math.random(25, 45)
      var1.Three:Emit()
   end
end

function impactParticles(arg1)
   if upval75:FindFirstChild("ParticlePart") == nil then
      local var0 = arg1:WaitForChild("ParticlePart")
      local var1 = var0:WaitForChild("ImpactParticles")
      var0.CFrame = upval75.Hitbox.CFrame
      local var2167 = math.random(5, 25)
      var1.Sparks:Emit()
      local var3 = math.random(15, 35)
      var1.Texture:Emit()
   end
end

function sparkParticles(arg1)
   if arg1:FindFirstChild("ParticlePart") == nil then
      local var0 = arg1:WaitForChild("ParticlePart")
      local var1 = var0:WaitForChild("Attachment")
      var0.CFrame = upval75.Hitbox.CFrame
      var1.Spark:Emit(50)
      local var2194 = math.random(75, 105)
      var1.Sparks:Emit()
      local var2200 = math.random(25, 45)
      var1.Texture:Emit()
      var1.PointLight.Brightness = math.random(3, 5)
      var1.PointLight.Enabled = true
      local var2215 = {}
      var2215.Brightness = 0
      upval10:Create(var1.PointLight, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), var2215):Play()
   end
end

function primaryAttack()
   if not upval73 then
      if not upval68 then
         if upval75:GetAttribute("StaminaCost") <= upval71 then
            if upval131 == nil then
               if time() - upval131 < 0.5 then
                  return 
               end
            end
            if upval87 == nil then
               if time() - upval131 < 0.5 then
                  return 
               end
            end
            upval73 = true
            upval42:Fire("True")
            upval2.WalkSpeed = 0
            enableAutoRotate()
            upval128.CFrame = CFrame.new(upval3.CFrame.Position, upval3.CFrame.Position + Vector3.new(upval5.CFrame.LookVector.X, 0, upval5.CFrame.LookVector.Z))
            upval59 = false
            task.spawn(function()
               task.wait(0.5)
               upval42:Fire("False")
            end)
            if workspace:Raycast(upval3.Position, upval3.CFrame.LookVector * 5) then
               if time() - upval131 < 0.5 then
                  return 
               end
            elseif time() - upval131 < 0.5 then
               return 
            end
            local var2263 = Instance.new("BodyPosition")
            var2263.Name = "DashForce"
            var2263.MaxForce = {50000, 0, 50000}
            var2263.D = 300
            var2263.P = 500
            local var2271 = upval5.CFrame.LookVector * nil
            var2263.Position = upval3.Position + var2271
            var2263.Parent = upval3
            var2271 = var2263
            game.Debris:AddItem(var2271, 0.5)
            upval72 = time()
            upval71 = upval71 - upval75:GetAttribute("StaminaCost")
            if upval78 == 1 then
               if time() - upval131 < 0.5 then
                  return 
               end
            elseif time() - upval131 < 0.5 then
               return 
            end
            repeat
               upval77 = upval78
               upval78 = math.random(1, 4)
               task.wait()
               if upval78 ~= upval77 then
                  if time() - upval131 < 0.5 then
                     return 
                  end
               end
            until upval68
            if not upval68 then
               if time() - upval131 < 0.5 then
                  return 
               end
            end
            upval169 = nil
            upval73 = false
            upval59 = false
            upval136 = time()
            return 
         end
      end
   end
end

game.Lighting.Blur.Enabled = true
local upval173 = nil
local upval174 = nil
upval7.RenderStepped:Connect(function(arg1)
   if not upval143 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if upval2.Health <= 100 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if not upval68 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if upval2.WalkSpeed == 0 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if not upval12:HasTag(upval1, "Spectate") then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if upval173 == nil then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if upval173 == nil then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   upval154 = upval3.AssemblyLinearVelocity * {1, 0, 1}
   if 0.25 < upval154.Magnitude then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   else
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if upval138 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   else
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if upval63 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   else
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if not upval74 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if upval74 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   else
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if upval59 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   else
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if upval67 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if upval75 == nil then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   else
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   local upval539 = upval3
   local var0 = upval3.CFrame:Inverse() * (upval3.Position + upval539.AssemblyLinearVelocity)
   upval539 = math.atan2(var0.X, var0.Z)
   local var1 = math.ceil(math.deg(upval539) - 0.5)
   if upval71 < 30 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if upval3.AssemblyLinearVelocity.Magnitude <= 0.5 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   else
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if not upval64 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   local var2335 = Enum.Material.Air
   if upval2.FloorMaterial == "Health" then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   else
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if upval62 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   else
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if upval63 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   else
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if not upval73 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if 100 < upval71 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   else
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
   if upval64 then
      upval9.MouseBehavior = Enum.MouseBehavior.LockCenter
   end
end)
