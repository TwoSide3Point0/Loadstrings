if game.PlaceId == 537413528 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Build%20A%20Boat%20For%20Treasure/BABFT"))()
elseif game.PlaceId == 606849621 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Jailbreak/Script.lua"))()
elseif game.PlaceId == 4623386862 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Piggy/Piggy"))()
elseif game.PlaceId == 155615604 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Prison%20Life/Script.lua"))()
elseif game.PlaceId == 1962086868 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Tower%20of%20Hell/Tower%20of%20Hell"))()
elseif game.PlaceId == 2788229376 then
  loadstring(game:HttpGet('https://raw.githubusercontent.com/compwnter/destiny/main/loader'))();
elseif game.PlaceId == 6447798030 then
  local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua"))()
 local message = Instance.new("Message", workspace)
        message.Text = "Loaded! If the script is not working, press 'F9' to check for any errors."
        wait(4.5)
        message:Destroy()
elseif game.PlaceId == 3101667897 then
  loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/LOOF-sys/Roblox-Shit/main/LegendsOfSpeed.lua",true))()
elseif game.PlaceId == 3623096087 then
  loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/LOOF-sys/Roblox-Shit/main/MuscleLegends.lua"))()
elseif game.PlaceId == 6243699076 then
  loadstring(game:HttpGet('https://raw.githubusercontent.com/KTollT/Limited/main/README.md'))()
elseif game.PlaceId == 654732683 then
  _G.Executed = true
repeat wait() until game:IsLoaded()

--=======\Variables\
local Players = game:GetService("Players");     
local Lighting = game:GetService("Lighting");
local ReplicatedStorage = game:GetService("ReplicatedStorage");
local CoreGui = game:GetService("CoreGui");
local ScriptContext = game:GetService("ScriptContext");
local VRService = game:GetService("VRService");
local VirtualUser = game:GetService("VirtualUser");
local RunService = game:GetService("RunService");
local HttpService = game:GetService("HttpService");
local UserInputService = game:GetService("UserInputService");
local MarketplaceService = game:GetService("MarketplaceService");
local VirtualInputManager = game:GetService("VirtualInputManager")
local CurrentCamera = workspace.CurrentCamera;

local LocalPlayer = Players.LocalPlayer;
local PlayerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
local Mouse = LocalPlayer:GetMouse();
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait(); 

local inGroup = LocalPlayer:IsInGroup(2726951) and true or false
local VIP = MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 2465866) and true or false

local VehicleInformation = ReplicatedStorage:FindFirstChild("VehicleInformation");
local HelicopterContainer = ReplicatedStorage:FindFirstChild("HelicopterContainer")
local CarCollection = workspace:FindFirstChild("CarCollection");
local rF = ReplicatedStorage:FindFirstChild("rF");
local rE = ReplicatedStorage:FindFirstChild("rE");

--\Libraries\
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/saucekid/UI-Libraries/main/NotificationLib.lua"))()
function err(txt)
    Notification.Notify("Error", txt, "rbxassetid://1491260682", {
        Duration = 3,
        TitleSettings = {
            BackgroundColor3 = Color3.fromRGB(200, 200 , 200),
            TextColor3 = Color3.fromRGB(255, 0, 0),
            TextScaled = true,
            TextWrapped = true,
            TextSize = 14,
            Font = Enum.Font.SourceSansBold,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Center
        },
        DescriptionSettings = {
            BackgroundColor3 = Color3.fromRGB(200, 200 ,200),
            TextColor3 = Color3.fromRGB(240, 240, 240),
            TextScaled = true,
            TextWrapped = true,
            TextSize = 14,
            Font = Enum.Font.SourceSansBold,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top,
        },
        IconSettings = {
            BackgroundTransparency = 1,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),               
        },
        GradientSettings = {
            GradientEnabled = false,
            SolidColorEnabled = true,
            SolidColor = Color3.fromRGB(255,0,0),
            Retract = true,
            Extend = false,
        },
        Main = {
            BorderColor3 = Color3.fromRGB(255, 0, 0),
            BackgroundColor3 = Color3.fromRGB(30, 30, 30),
            BackgroundTransparency = 0.05,
            Rounding = false,
            BorderSizePixel = 1
        }
    })
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/saucekid/UI-Libraries/main/hub-lib.lua"))()
library.theme = {
    fontsize = 15,
    font = Enum.Font.Code,
    background = "rbxassetid://0",
    backgroundcolor = Color3.fromRGB(20, 20, 20),
    tabstextcolor = Color3.fromRGB(230, 230, 230),
    bordercolor = Color3.fromRGB(60, 60, 60),
    accentcolor = Color3.fromRGB(160,32,240),
    accentcolor2 = Color3.fromRGB(255, 255, 255),
    outlinecolor = Color3.fromRGB(60, 60, 60),
    outlinecolor2 = Color3.fromRGB(0, 0, 0),
    sectorcolor = Color3.fromRGB(30, 30, 30),
    toptextcolor = Color3.fromRGB(255, 255, 255),
    topheight = 48,
    topcolor = Color3.fromRGB(30, 30, 30),
    topcolor2 = Color3.fromRGB(30, 30, 30), -- Color3.fromRGB(12, 12, 12),
    buttoncolor = Color3.fromRGB(49, 49, 49),
    buttoncolor2 = Color3.fromRGB(39, 39, 39),
    itemscolor = Color3.fromRGB(170, 170, 170),
    itemscolor2 = Color3.fromRGB(200, 200, 200)
}

if not CarCollection or not rF or not rE then return err("Wrong game") else Notification.Notify("Car Crushers 2", "made by saucekid", Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)); wait(1) end -- check

if ReplicatedStorage:FindFirstChild("ClientError") then
    ReplicatedStorage.ClientError:Destroy() -- remove error logging to game devs
end

--\Toggles\
flags = {
    invincible = {},
    autofarm = {},
    silent = {},
    autoescape = {},
    tweentp = {},
    flying = {},
    jump = {},
    crashaura = {},
    tankaura = {},
    carspeed = {value = 0},
    tweenspeed = {value = 500},
    boostspeed = {value = 100},
    vflyspeed = {value = 1},
    jumppower = {value = 10},
    crashaurarange = {value = 70},
    tankaurarange = {value = 70},
    bodypaint = {value = "Gold"}
}

for _,flag in pairs(flags) do 
    if not flag["value"] then flag.value = false end
    setmetatable(flag, { -- im pro
        __call = function(self, b)
            self.value = b
        end
    })
end

--=======\Functions\
function getCar()
    return CarCollection:FindFirstChild(LocalPlayer.Name) and CarCollection[LocalPlayer.Name]:FindFirstChild("Car") or false
end

function getbestCar(realname)
    local bestName = ""
    local bestPrice = 0
    for _, car in pairs(VehicleInformation:GetChildren()) do
        if not VIP and car.VipOnly.Value == true then continue end
        if not inGroup and car.GroupOnly.Value == true then continue end
        local name = realname and car:FindFirstChild("Name").Value or car.Name
        local price = car.Price.Value
        if price >= bestPrice and price <= LocalPlayer.Money.Value and car.TokenRequirement.Value <= LocalPlayer.leaderstats.Tokens.Value then
            bestName = name
            bestPrice = price
        end
    end
    return bestName
end

function spawnCar()
    local bestCar = getbestCar()
    task.spawn(function() rF.SpawnVehicle:InvokeServer(bestCar) end)
end

function bringCar()
    car = getCar()
    if not car then return err("no car currently active") end
    if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return err("you are dead") end
    car.PrimaryPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
end

function destroyCar()
    car = getCar()
    if not car then return err("no car currently active") end
    if LocalPlayer.Character and LocalPlayer:FindFirstChildOfClass("Humanoid") then 
        local hum = LocalPlayer:FindFirstChildOfClass("Humanoid")
        hum.Sit = false 
        hum.RootPart.Velocity = Vector3.new(0,0,0)
    end
    --[[
    local bodyPosition = car.PrimaryPart:FindFirstChild("BodyPosition") or Instance.new("BodyPosition", car.PrimaryPart)
    bodyPosition.D = 800
    bodyPosition.P = 999999999
    bodyPosition.MaxForce = Vector3.new(999999999,999999999,999999999)
    bodyPosition.Position = car.PrimaryPart.Position + Vector3.new(0,10,0)
    ]]
    for i = 1,5 do
        local parts = {}
        local collision
        for i,v in pairs(car:GetDescendants()) do
            if v:IsA("BasePart") then
                if v.Parent == car.Body.HitBoxes and v:IsA("BasePart") then collision = v end
                table.insert(parts, v)
            end
        end
        car.PrimaryPart.Velocity = Vector3.new(0,1000,0)--car.PrimaryPart.CFrame.lookVector*1000*Vector3.new(1,0,1)
        rF.BreakParts:InvokeServer(parts, collision, car.PrimaryPart.Velocity.Magnitude, "Default", car.PrimaryPart.Velocity, false)
        wait()
    end
end

function boost()
    car = getCar()
    if not car then return err("no car currently active") end
    for i = 1,50 do
        RunService.Stepped:Wait()
        car.PrimaryPart.Velocity = CFrame.new(car.PrimaryPart.Velocity):Lerp(CFrame.new(-car.PrimaryPart.CFrame.lookVector*(car.PrimaryPart.Velocity.Magnitude/70)*flags.boostspeed.value), 0.02).Position
    end
end

function jump()
    if not flags.jump.value then return end
    car = getCar()
    if not car then return end
    car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,flags.jumppower.value*10,car.PrimaryPart.Velocity.Z)
end

function tankCrash()
    for _,v in pairs(CarCollection:GetChildren()) do
        if v.Name ~= LocalPlayer.Name and v:FindFirstChild("Car") then
            if not v.Car.PrimaryPart then continue end
            for _,part in pairs(v.Car.Body.HitBoxes:GetChildren()) do
                if part:IsA("BasePart") then
                    task.spawn(function() 
                        for i = 1,3 do
                            rF.TankInvoke:InvokeServer("Fire", Vector3.new(0,0,0), part) 
                        end
                    end)
                end
            end
        end
    end
    CurrentCamera.CameraSubject = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
end

function getClosestEntrance(part)
    local target = nil
    local maxDist = math.huge
    for _,v in pairs(workspace.Building.Floor.CrusherDecoration:GetDescendants()) do
        if v:IsA("MeshPart") and v.Name == "MeshPart" then
            local dist = (part.Position - v.Position).Magnitude
            if dist < maxDist then
                maxDist = dist
                target = v
            end
        end
    end
    return target
end

function getClosestCar(maxd)
    local car = getCar()
    if not car then return end
    local target = nil
    local maxDist = maxd
    local parts = {}
    for _,v in pairs(CarCollection:GetChildren()) do
        if v.Name ~= LocalPlayer.Name and v:FindFirstChild("Car") then
            if not v.Car.PrimaryPart or not car.PrimaryPart then continue end
            local dist = (car.PrimaryPart.Position - v.Car.PrimaryPart.Position).Magnitude
            if dist < maxDist then
                maxDist = dist
                target = v
                table.insert(parts, {v, dist})
            end
        end
    end
    local sortedParts = table.sort(parts, function(a,b)
    	return a[2] < b[2]
    end)
    return target
end

function removeTags(chr)
    local head = chr:WaitForChild("Head")
    for _,v in pairs(head:GetChildren()) do
        if v:IsA("BillboardGui") then v:Destroy() end
    end
end

function escape(heli)
    wait(1)
    if heli.Name == "Helicopter" then
        print("escaping")
        local chr = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local hum = chr:WaitForChild("Humanoid")
        local root = chr:WaitForChild("HumanoidRootPart") 
        TP(heli.Seats:FindFirstChildOfClass("Seat").Position)
    end
end

local function TP(destination)
    if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return err("you are dead") end
    local car = getCar()
    local hum = LocalPlayer.Character:WaitForChild("Humanoid")
    local root = hum.Sit and car and car.PrimaryPart or LocalPlayer.Character:FindFirstChild("HumanoidRootPart") 
    if flags.tweentp.value then
        speed = flags.tweenspeed.value
        distance = (root.Position - destination).magnitude
        time = distance/speed
        tween = game:GetService("TweenService"):Create(root, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = CFrame.new(destination)})
        tween:Play()
        tween.Completed:Wait()
    else
        root.CFrame = CFrame.new(destination)
    end
end


QEfly = true
flyspeed = 1
function sFLY(vfly)
    local car = getCar()
    if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
    if vfly and not car then return end

	local T = car.PrimaryPart
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		flags.flying(true)
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		spawn(function()
			repeat wait()
				if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				CurrentCamera.CameraSubject = car
				BG.cframe = BG.cframe:Lerp(workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(0,math.rad(180),0), .5)
			until not flags.flying.value
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			CurrentCamera.CameraSubject = LocalPlayer.Character
			if LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = Mouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and flags.vflyspeed.value or flyspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and flags.vflyspeed.value or flyspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and flags.vflyspeed.value or flyspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and flags.vflyspeed.value or flyspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and flags.vflyspeed.value or flyspeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and flags.vflyspeed.value or flyspeed)*2
		end
		pcall(function() CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = Mouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

function spawnFLY(collection)
    wait(1)
    if collection.Name == LocalPlayer.Character.Name then
        local car = collection:WaitForChild("Car")
        sFLY(true)
    end
end

function NOFLY()
	flags.flying(false)
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

function hover()
    local car = getCar()
    if not car then return end
    local root = car.PrimaryPart
    
    local mass = 0
    for i,v in pairs(car:GetDescendants()) do
        if v:IsA("BasePart") then
            mass = mass + (v:GetMass() * workspace.Gravity)
        end
    end
    
    local bodyPosition = Instance.new("BodyPosition", root)
    local bodyGyro = Instance.new("BodyGyro", root)
    
    height = 10
    FLOOR_CHECK	= 10
    floor= Vector3.new(0, 5, 0)
    
    while RunService.Stepped:wait() do
    	local floorRay	= Ray.new(root.Position, -floor.Unit * FLOOR_CHECK)
        local hit, position, normal	= Workspace:FindPartOnRayWithIgnoreList(floorRay, {car})
    	if hit then
    		bodyPosition.MaxForce = Vector3.new(mass / 5, math.huge, mass / 5)
    		bodyPosition.Position = (CFrame.new(position, position + normal) * CFrame.new(0, 0, -height + 0.5)).p
    		bodyGyro.MaxTorque = Vector3.new(math.huge, 0, math.huge)
    		bodyGyro.CFrame = CFrame.new(position, position + normal) * CFrame.Angles(-math.pi/2, 0, 0)
    	end
    end
end

function joindiscord()
    if not syn then return err("synapse only") end
    local json = {
        ["cmd"] = "INVITE_BROWSER",
            ["args"] = {
            ["code"] = "DnyxZRwQh3"
        },
        ["nonce"] = 'a'
        }
    task.spawn(function()
        print(syn.request({
            Url = 'http://127.0.0.1:6463/rpc?v=1',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json',
                ['Origin'] = 'https://discord.com'
              },
            Body = game:GetService('HttpService'):JSONEncode(json),
        }).Body)
    end)
end
        
LocalPlayer.Idled:connect(function()    --antiafk
    if flags.autofarm.value then
        VirtualUser:Button2Down(Vector2.new(0,0),CurrentCamera.CFrame)
        wait(1)
        VirtualUser:Button2Up(Vector2.new(0,0),CurrentCamera.CFrame)
    end
end)

task.spawn(function()
    while wait() do
        if flags.autofarm.value then
            local bestCar = getbestCar()
            local car = getCar()
            if not car then
                rE.SaveCustoms:FireServer({
	                ["BodyPaint"] = {
		                ["Paint"] = {
			                ["Material"] = flags.bodypaint.value
		                }
	                },
	                ["Scraps"] = 100000
                }, bestCar)
                wait()
                repeat 
                    pcall(function() rF.SpawnVehicle:InvokeServer(bestCar) end)
                    car = getCar()
                    wait() 
                until car ~= false or not flags.autofarm.value
            end
            wait(1)
            if not flags.autofarm.value then return end
            if flags.silent.value then car:SetPrimaryPartCFrame(CFrame.new(5999, 6, 2860)) end
            destroyCar()
            wait(5)
            rE.Delete:FireServer()
        end
    end
end)

local AccDir = 0
RunService.Stepped:Connect(function()
    local car = getCar()
    if car then
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character.HumanoidRootPart.Position.Y < -100 then
            rF.TeleportPlr:InvokeServer("LobbySpawn")
        end
        if AccDir == 1 and flags.carspeed.value ~= 0 then
            car.PrimaryPart.Velocity = CFrame.new(car.PrimaryPart.Velocity):Lerp(CFrame.new(-car.PrimaryPart.CFrame.lookVector*car.Parent.Speed.Value*(flags.carspeed.value)), 0.001).Position
        end
    end
end)

task.spawn(function()
    while wait(.1) do
        local car = getCar()
        if car then
            if flags.tankaura.value then
                local closestCar = getClosestCar(flags.tankaurarange.value)
                if closestCar then
                    for _,part in pairs(closestCar.Car.Body.HitBoxes:GetChildren()) do
                        if part:IsA("BasePart") then
                            task.spawn(function() 
                                for i = 1,3 do
                                    rF.TankInvoke:InvokeServer("Fire", Vector3.new(0,0,0), part) 
                                end
                            end)
                        end
                    end
                end
            end
            if flags.crashaura.value then
                local closestCar = getClosestCar(flags.crashaurarange.value)
                if closestCar then
                    for _,part in pairs(car.Body.HitBoxes:GetChildren()) do
                        if part:IsA("BasePart") then
                            task.spawn(function() rE.DamageVehicle:FireServer(part or car.Body.HitBoxes:FindFirstChild("Back"), CFrame.new(0,0,0), closestCar, car.PrimaryPart.Velocity.Magnitude) end)
                        end
                    end
                end
            end
        end
    end
end)

local OldNamecall
OldNamecall = hookmetamethod(game, "__namecall", function(Self, ...)
    local args = {...} 
    if not checkcaller() then 
        if Self.Name == "BreakParts" and flags.invincible.value then return end
        if Self.Name == "VehicleInfo" and args[1] == "AccDir" then AccDir = args[2] end
    end
    return OldNamecall(Self, unpack(args))
end)

--=======\UI\
local window = library:CreateWindow("Car Crushers 2", Vector2.new(450,330), Enum.KeyCode.RightShift)
    local afTab = window:CreateTab("Autofarm")
        local infoSec = afTab:CreateSector("Info", 'left')
            local bestcarstring = "Best Car: "
            bestcar_label = infoSec:AddLabel(bestcarstring)
            task.spawn(function()
                while wait() do
                    local bestCar = getbestCar(true)
                    bestcar_label:Set(bestcarstring..bestCar)
                end
            end)

            local moneystring = "Money Earned: "
            moneymade_label = infoSec:AddLabel(moneystring.. "0")
            task.spawn(function()
                local moneymade = 0
                while true do
                    local money = LocalPlayer.Money
                    local oldvalue = money.Value
                    local value = money.Changed:Wait()
                    moneymade = math.round(moneymade + (value - oldvalue))
                    moneymade_label:Set(moneystring..moneymade)
                end
            end)
            
            local partsstring = "Parts Earned: "
            partsmade_label = infoSec:AddLabel(partsstring.. "0")
            task.spawn(function()
                local partsmade = 0
                while true do
                    local parts = LocalPlayer.Parts
                    local oldvalue = parts.Value
                    local value = parts.Changed:Wait()
                    partsmade = math.round(partsmade + (value - oldvalue))
                    partsmade_label:Set(partsstring..partsmade)
                end
            end)
            
        local afSec = afTab:CreateSector("Vehicle Autofarm", "right")
            af_toggle = afSec:AddToggle("ON/OFF", flags.autofarm.value, flags.autofarm)
            silent_toggle = afSec:AddToggle("Silent", flags.silent.value, flags.silent)
            paint_dropdown = afSec:AddDropdown("Body Paint", {"Neon", "Silver", "Gold", "Platinum"}, "You must own it", false, flags.bodypaint)
            
        local amiscSec = afTab:CreateSector("Misc", 'left')
            local escapeCon
            ae_toggle = amiscSec:AddToggle("Auto Escape/Helicopter", false, function(bool) 
                if bool then 
                    local heli = HelicopterContainer:FindFirstChild("Helicopter")
                    if heli then escape(heli) end 
                    escapeCon = HelicopterContainer.ChildAdded:Connect(escape) 
                else 
                    if escapeCon then escapeCon:Disconnect() end 
                end
            end)
    
    
    local vTab = window:CreateTab("Vehicle")
        local flySec = vTab:CreateSector("Fly", 'left'); local flyCon
            vfly_toggle = flySec:AddToggle("ON/OFF", flags.invincible.value, function(b) 
                if flyCon then flyCon:Disconnect() end
                if b then
                    flyCon = CarCollection.ChildAdded:Connect(spawnFLY)
                    sFLY(true)
                else
                    NOFLY()
                end
            end)
            vfly_toggle:AddKeybind()
            vflyspeed_slider = flySec:AddSlider("Speed", 1, flags.vflyspeed.value, 100, 1, flags.vflyspeed)
            
        local speedSec = vTab:CreateSector("Speed", 'right')
            carspeed_slider = speedSec:AddSlider("Amount", 0, flags.carspeed.value, 50, 1, flags.carspeed)
            
        local boostSec = vTab:CreateSector("Boost", 'left')
            boost_keybind = boostSec:AddKeybind("Boost Key",Enum.KeyCode.C, nil, boost)
            boostspeed_slider = boostSec:AddSlider("Amount", 1, flags.boostspeed.value, 200, 1, flags.boostspeed)
            
        local jumpSec = vTab:CreateSector("Jump", 'right')
            jump_toggle = jumpSec:AddToggle("ON/OFF", flags.jump.value, flags.jump)
            jump_keybind = jumpSec:AddKeybind("Jump Key",Enum.KeyCode.G, nil, jump)
            jumppower_slider = jumpSec:AddSlider("Amount", 0, flags.jumppower.value, 50, 1, flags.jumppower)
            
        local miscSec = vTab:CreateSector("Misc", 'left')
            invincible_toggle = miscSec:AddToggle("No Damage", flags.invincible.value, flags.invincible)
            spawn_button = miscSec:AddButton("Spawn Car", spawnCar)
            bring_button = miscSec:AddButton("Bring Car", bringCar)
            destroy_button = miscSec:AddButton("Destroy Car", destroyCar)
            
        local pvpSec = vTab:CreateSector("PVP", 'right')
            ca_toggle = pvpSec:AddToggle("Crash Aura", flags.crashaura.value, flags.crashaura)
            carange_slider = pvpSec:AddSlider("Range", 1, flags.crashaurarange.value, 1000, 1, flags.crashaurarange)
            ta_toggle = pvpSec:AddToggle("Tank Aura", flags.tankaura.value, flags.tankaura)
            tarange_slider = pvpSec:AddSlider("Range", 1, flags.tankaurarange.value, 1000, 1, flags.tankaurarange)
            tankcrash_button = pvpSec:AddButton("Kill All (Tank Only)", tankCrash)
            
    local miscTab = window:CreateTab("Misc")
        local teleSec = miscTab:CreateSector("Teleports", "right")
            tpspawn_button = teleSec:AddButton("Spawn", function() rF.TeleportPlr:InvokeServer("LobbySpawn") end)
            if workspace:FindFirstChild("Crusher Parts") then
                local teleports = {}
                local tpNames = {}
                for _,v in pairs(workspace["Crusher Parts"]:GetChildren()) do
                    teleports[v.Name] = v.Entrance:FindFirstChildOfClass("Part")
                    table.insert(tpNames, v.Name)
                end
                tp_dropdown = teleSec:AddDropdown("Crushers", tpNames, "Select", false, function(c) 
                    local entrance = getClosestEntrance(teleports[c])
                    if not entrance then return err("no entrance?") end
                    TP(entrance.Position)
                end)
            end
            teleSec:AddLabel("― Settings")
            tweentp_toggle = teleSec:AddToggle("Tween", flags.tweentp.value, flags.tweentp)
            tweenspeed_slider = teleSec:AddSlider("Tween Speed", 1, flags.tweenspeed.value, 1000, 1, flags.tweenspeed)
            
        local charSec = miscTab:CreateSector("Character", "right")
            charSec:AddLabel("― Remove Tags")
            local removeCon
            removeTags_button = charSec:AddToggle("ON/OFF", false, function(bool) 
                if bool then 
                    removeTags(LocalPlayer.Character) 
                    removeCon = LocalPlayer.CharacterAdded:Connect(removeTags) 
                else 
                    if removeCon then removeCon:Disconnect() end 
                end 
            end)
            
        local serverSector = miscTab:CreateSector("Servers", 'left')
            rejoin_button = serverSector:AddButton("Rejoin", function()
                if #Players:GetPlayers() <= 1 then
	    	        Players.LocalPlayer:Kick("\nRejoining...")
	    	        wait()
        		    game:GetService('TeleportService'):Teleport(game.PlaceId, Players.LocalPlayer)
        	    else
        		    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, Players.LocalPlayer)
        	    end
            end)
            smallest_button = serverSector:AddButton("Join Smallest Server", function()
                if syn then 
                    coroutine.resume(coroutine.create(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/saucekid/scripts/main/JoinLowestPlayer.lua"))()  end))
                else
                    err("Sorry, this function is Synapse only")
                end
            end)
            serverhop_button = serverSector:AddButton("Server Hop", function()
                local x = {}
	                for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
         		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
            			x[#x + 1] = v.id
            		end
            	end
            	if #x > 0 then
            		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
            	else
            		return notify("Couldn't find a server")
            	end
            end)    


        local discSector = miscTab:CreateSector("Discord", 'left')
            joindisc_button = discSector:AddButton("Direct Join", joindiscord)
            copydisc_button = discSector:AddButton("Copy to Clipboard", function() if setclipboard then setclipboard('https://discord.gg/DnyxZRwQh3') else print("DnyxZRwQh3") end end)
                
        local changeSector = miscTab:CreateSector("Changelogs", 'left')
            changeSector:AddLabel("• Crash Aura")
            changeSector:AddLabel("• Tank Aura")         
            changeSector:AddLabel("• Tank Kill All")
elseif game.PlaceId == 3093229294 then
 return(function(l,...)local v="This file was obfuscated using PSU Obfuscator 4.0.A | https://www.psu.dev/ & discord.gg/psu";local U=l[(184290745)];local E=l['Rf9j3RUCOa'];local D=l.ppD4L7;local x=l[((#{509;222;839;584;(function(...)return;end)()}+601263422))];local r=l[((718626515-#("oh Mr. Pools, thats a little close please dont touch me there... please Mr. Pools I am only eight years old please stop...")))];local k=l[((790526983-#("guys someone play Among Us with memcorrupt he is so lonely :(")))];local Y=l["eh3BqJ2YD"];local f=l[(691058365)];local L=l[((810232262-#("who the fuck looked at synapse xen and said 'yeah this is good enough for release'")))];local F=l[((33601714-#("still waiting for luci to fix the API :|")))];local A=l[((498816127-#("who the fuck looked at synapse xen and said 'yeah this is good enough for release'")))];local P=l[(313283976)];local X=l["ioP5fDBYa"];local o=l[(176478320)];local S=l[(445008943)];local h=l[((#{94;(function(...)return;end)()}+124914008))];local d=l[(433500303)];local H=l[((#{284;255;883;(function(...)return...;end)(442,583,498,530)}+773546443))];local C=l[((840684250-#("guys someone play Among Us with memcorrupt he is so lonely :(")))];local j=l[(340123039)];local y=l[((#{778;128;501;}+499557637))];local t=l[((596330925-#("why does psu.dev attract so many ddosing retards wtf")))];local a=l[((#{764;678;29;}+392012990))];local O=l[((166430143-#("PSU|161027525v21222B11273172751L275102731327523d27f22I27f21o26o24Y21J1827F1X27f1r27F23823a26w1... oh wait")))];local u=l[(983634183)];local V=((getfenv)or(function(...)return(_ENV);end));local n,i,e=({}),(""),(V(o));local c=((e[""..l[d].."\105"..l[t]..l[F]..l[C]])or(e["\98"..l["esLIbSza"]..l[t]])or({}));local n=(((c)and(c[""..l[d].."\120\111"..l["kVV6yHyZdD"]]))or(function(l,e)local o,n=o,f;while((l>f)and(e>f))do local c,t=l%a,e%a;if c~=t then n=n+o;end;l,e,o=(l-c)/a,(e-t)/a,o*a;end;if l<e then l=e;end;while l>f do local e=l%a;if e>f then n=n+o;end;l,o=(l-e)/a,o*a;end;return(n);end));local s=(a^D);local w=(s-o);local g,b,m;local s=(i["\103\115"..l['GX8R3tMv0'].."\98"]);local p=(i[""..l[d]..l['OiO8Vdp4'].."\116\101"]);local M=(i[""..l[A]..l['YUJeS0CVH'].."\97\114"]);local s=(i["\115\117\98"]);local B=(e["\115"..l[h].."\108\101\99\116"]);local z=(e[""..l[u]..l[h].."\116"..l["rt1Ivt6T"].."\101"..l[t].."\97"..l[t]..l[r].."\98\108\101"]);local I=(e["\116"..l.XomC3W.."\110\117"..l.rt1Ivt6T..l[d]..l[h]..l['kVV6yHyZdD']]);local i=(e[""..l['kVV6yHyZdD'].."\97\119"..l[u]..l[h].."\116"]);local i=(e[""..l[t].."\121"..l.deqqBSfLDA..l[h]]);local J=((e[""..l["rt1Ivt6T"].."\97\116\104"]["\108\100\101"..l[E].."\112"])or(function(e,l,...)return((e*a)^l);end));local Z=(e["\109"..l[r].."\116\104"]["\102\108"..l["XomC3W"]..l['XomC3W']..l.kVV6yHyZdD]);local T=(e["\112\97\105"..l['kVV6yHyZdD']..l[u]]);local i=((e[""..l['GX8R3tMv0']..l[x].."\112"..l[r].."\99"..l[L]])or(e[""..l[t].."\97\98"..l[y].."\101"][""..l["GX8R3tMv0"]..l[x].."\112"..l[r]..l[A].."\107"]));m=(c[""..l[d].."\97"..l[x].."\100"])or(function(e,l,...)return(((e+l)-n(e,l))/a);end);local L=(c["\98\110"..l["XomC3W"]..l[t]])or(function(l,...)return(w-l);end);b=((c[""..l.kVV6yHyZdD.."\115"..l["YUJeS0CVH"].."\105\102\116"])or(function(e,l,...)if(l<f)then return(g(e,-(l)));end;return(Z(e%a^D/a^l));end));local w=(c["\98"..l["XomC3W"]..l.kVV6yHyZdD])or(function(l,e,...)return(w-m(w-l,w-e));end);g=((c[""..l[y]..l[u]..l.YUJeS0CVH..l.esLIbSza.."\102\116"])or(function(e,l,...)if(l<f)then return(b(e,-(l)));end;return((e*a^l)%a^D);end));if((not(e["\98"..l["esLIbSza"]..l[t]..l[F].."\50"]))and(not(e[""..l[d].."\105\116"])))then c[""..l[d]..l[E].."\111"..l.kVV6yHyZdD]=n;c["\98\97"..l[x].."\100"]=m;c["\98"..l[x]..l.XomC3W.."\116"]=L;c["\108\115\104"..l.esLIbSza.."\102"..l[t]]=g;c[""..l["kVV6yHyZdD"].."\115\104\105"..l['VQp5jXnE']..l[t]]=b;c[""..l[d].."\111\114"]=w;end;local u=(((e[""..l[t]..l[r]..l[d]..l[y].."\101"]["\99"..l['kVV6yHyZdD'].."\101\97\116\101"]))or((function(l,...)return({i({},f,l);});end)));local h=(e["\116"..l[r].."\98"..l[y]..l[h]]["\99\111\110"..l[A].."\97\116"]);local a=(e["\116\97\98\108\101"][""..l.esLIbSza..l[x].."\115\101\114"..l[t]]);local a=(e["\116"..l[r]..l[d].."\108\101"][""..l["kVV6yHyZdD"].."\101\109\111"..l.jkYJLJfNv.."\101"]);e[""..l[d].."\105\116\51"..l[C]]=c;local e=(H);local a=(#v+X);local d,w=({}),({});for l=f,a-o do local e=M(l);d[l]=e;w[l]=e;w[e]=l;end;local y,a=(function(n)local l,c,t=p(n,o,S);if((l+c+t)~=j)then e=e+P;a=a+U;end;n=s(n,O);local e,c,t=(""),(""),({});local l=o;local function i()local e=I(s(n,l,l),k);l=l+o;local o=I(s(n,l,l+e-o),k);l=l+e;return(o);end;e=w[i()];t[o]=e;while(l<#n)do local l=i();if d[l]then c=d[l];else c=e..s(e,o,o);end;d[a]=e..s(c,o,o);t[#t+o],e,a=c,c,a+o;end;return(h(t));end)("PSU|26O21H21a21b11101E141a101021Y21B1R1N21i21i1N141j1N23g161827d22U1J1r1D1n1t161122O121C27D21Z2121c1827J1H101T17191K23H1l1R27D21w1x13171K1p1o21j217191l2132161A171h1821a28s1L21d21F1j1B1Q1723H181628j1X171g1R1Q23H27Q27D22v121H1N1h1t1S1029A29C102251y13191m1723E29b27d2321R1o1F1727O151b27d22r1h1j1I1R1r1M27l27n21x21J27d27D25c24H1x2262A41021v21813131t21t21P29K1022C21d1928T1V27Y23E2b521z1y1h21L1Y1Q161m22z1E2Aq1e191727d22x1Q21821p28y1l233131d27d2311c1a1E21M214151r1t1L132bQ22z1B1527D22d1H2191422N21o1a1427d21x2172A722r2BR27d2AY2781b161N21V2AP2AQ26823Z21B2262cq27d22B21I141l2d42aq1024G25D24H26v2D527d23k26E2122261c1227d22n1o2212C127d22a21F18171c1D1o22F2371Z1l101122Y1S1i27d2B72B91L2BB1622C22c1R22723421O2e71s27o2Db1022U1F27H22Z2ex22f21I181t2a329V2Af27l1L1H22Z2e01022r12121B1D21M2191N1l1s1d121622A2dO27D26O25r21D1U1G2Ae2fI2fK21M21I171o1n1D152gA2FC22Z27927D236171R21d2181M2bl2Aa21m21F1P1k2332Aw2361j1f1A1b1222I2Fv101k22c22627B2cy218111q1L121n22C23121422z28D2CY28s1J1J2hD29O23G2eX21W2191c2EE2ac27d22621n2a82Aa1w21F1f19122Cg2cI102382CD2CF2g027D27F151O29o1R28D1y2171f2ce192EE2ch27d237131H1M1P22o2Hj1021t1Y27X1v2Fo1h2EE2ff22821r16172981w27k141V1A162GE2BO2FG1B192i4121g152D21D1p1G1M23h1d1329L181B22y2gf102fu1B1A111n1X21i28A28C28E23H2IR2b621P1T1O1922Z2CX1022B2131h2EC1l2ee2Kp2b71n101j2e422h2FV21s2672672262ki2B7141c1u21W2fv26823W24S25q2B52381R1s17162iJ1922X1M1O2842Bg2101Y1T1V1l1n162fl28S2JP1121j21M2Bq1F1D22q28227D2f42f621E2151T21D21711151822y111f29L29n161J1M1Q182KT1L2Ib2KN2B52392bL1N1m152n12332b529m28A1H2lb1u23H2ff2262171h131o1t1p2122181J1p1E27o2k521U21C1r181f21p2121m181O21121f1T1D23F1t1j2gG2gI2gk2GM2a11n21m21l27U27w27y2802Kp22E21F2d22Cb2b32HW102282eT1o2Ev22a23221B2872hI1927d21u2191b1t21R2Mj1H2jj2OX22421l1K21E2Kd28B28D28F1O1m2E12e32E52E722F22v2172nn14171t1a1822323f27R1E22Y2L421524P25Q2iD2OY2P01G28d21221b172lb1l2op22O2B522121328C1L2mB2jJ2Iz2oZ2Eu1N21h21E1s22V2ex2382Q31822t2iZ22S11162du2NP152kn2Aw21T211101Z2R322V2K521V2HL2hn29p1n21f2rL112kW2Bs2QG2r01129u2Is2LO2lq22x2mR2842PZ1o2CD2gx1n22B2372132CB1n22Z2S91023b2Ca1t1h21M21o1F151p1I1D1e2MW22Y2Ex22q2C21322q2Rj2rl21c21h132301V28A10235141G2ti21M21c112ml1h2eK2eM23e2Ki22U1A2K01t23g2iZ22B21C29o101b2152rO2Ex23b2o52f72k52hs1q1g1c1t1m21W2372JF27N2Hq2cr2ax29223e2Me102371I1N1J1C2q2172Qv1d2JJ2aw2Nd2d21222x2aw22821d27N2972Dh2aq25c24g1W2262ox22B2102No2ug22p21f1N1B1F2332H7102qs1U151121I2132FS1f22O2JZ2PT1O23B2Qr2131Q1y21J2JU1G2I727d234122ij1Q2vC2DP25v1J2H627c2K621n1e1f1S21321n2Mr1i23E2R61d28t2fU2dI23k26G2142l82i821Y21G2uV182Jk2ie2Ql1A1Y27G111728R2mN2mP2tD2MT1H1s112C2111B1U122Lz2m12M323b2kI22E2wC2Jv2f22um2V82FP22u2xq2J02ql2qn2OP1t2211Q2311y2DU1h23i2VT2241z1821G2jF2JH2jJ2Ts171D1v2BM2oD2xR2172171s1q27L1521N21i1d2xW1q1T2Oa2w727R102bf1a122mZ161b2ZI27D2N52AL2m328t2P72Cj1x1T15152zg1C2JX2fF2222112jb2Jd2yV2ji22z2AW28528721821922Y2ki2262p5182JX2Vt2Kr1l2Bs21Y23621p10122cW2S02e216131b2K02t629v2rK102122fN2272H21y22q22622822M27D22w29s14132212eC22L2mW22H2211e29R1t1n2M22AL1H2HU1q1H29722I2252DU21U23h21J121I1P1D1J21021b1n28y1d22I22u21N1N21p21d27z21V23C1S22S22p2111B1G2HM1b22E21U2871721T312l312n312P112231N1222T1S230313b23g312W312y29623B2Sm2Fu2FP152Zm2fc112xJ1R2XL23E2W42vU21m21e227313X2371a1N22O2ki22b21N2X21031152bt2q22ZU23e2iZ311721221J278313U2Qq2zJ22r2jn310r2iu1c22r314H1Y102Bl101S1T2zq2uQ314P2v018122A92Ga1v1J22z1f278102132152iZ2yR2Du2Qo27z1T2jY2k027E191P22G313x21y2161L23b2vt21z2r32g527l2YW22z2B522021P1O1C315d2M322y314h2t821n27r2Jn2wF2oy21D1F29823h2KP2nd2Hn1b1o23c2b521U1z2zn1r1h2ZN22t2fF22p22A172Rd173178112qo28C2152kX21D1T1c21I311A2H221c2342262YD313N1s313p12313r21j2si2od162I62Kp2tZ2u12pC2kH2I828k317X2Mc2Ox31172131y2fC2zn31512so2AD2Ur1M2pG2Z91b11317S315Y2wQ2EZ27h2MX2mA1D22j2H221D26P2dN2DI311822u2262IZ22e142vY3163310c2K52fu3156316Z1Z21f27V27x27z22o2sM2J1314X2ps31501B22H2SH2sJ2Y827D2sO1j2yo2Iz23B2NO28P2Iu2fs22z2VT22A2SI21P310B2JJ2vT2ND1q1b27M2n72A2313X22X2Jc23E2kP2CT2iN2bQ2ee2ex310l2P631882rl2Je2Lz1k316s1P2l3319022I24a25q2kp22321a1S21M218318l22z2uq2E22e42E61O2102eB2ed2T12um227219101r2U72lu2KQ21m141o312c315l1121O21f2GB1s1621R1z2Du2X2310h22y2kp2rr28T102j622Y2vT22C2ET18182nR2B02Tw31422D22302kP22P316m1T31cl1422r2YD22B21E1O21g2142Ps1I317x21J21J1K2TH2A12tR2i82RC2aA1I22X316V1z1i1M21H2V91623E2Vt2302Ce15312h2lp28D31aj2p82j02Rl21j21r2GB2KA23G2Uq22B21o1q1r1a21j31A92ZX102f41d1721K31bk2RZ2iS2Al2jg310C31cc21D1n2Xu28c31832Dc1z2IV2iX2Ff2391R2XY1T316z2D221721K1I2R42KP31Aj31bG310W22P2r62jb2we2kI2342HN2C222q2vt2312Fj1d1F1v1u2Ai315N2Aw22R2hu2fR1l2f827D2202152Gx182rI29V2261X316A2Sv23i2iz22c316G2u21921A31B823b2UQ22W2bs14312D319G2Qp2iz2202CM1J2gn2df23e2yD31bO1M1L2e422623331bp1r22h22q1Z15132i62AW31gx31Gs2P122U313X2341s1u23G31472wX1r162Wl1023k25Y1m2262uq31171W21d1k1D1W21928m19318v319027D1e2aW22P18142mB1R31de2dC21n2Bs31Il2Ex2c42YB2ki22D316G1A315X2oX2Ny27L1a1X31082jC2992L92122l11522Q2iZ22P1K112LM2Ij31bq23e2OX2Bf1h2xn2mo2AL1B22O2PI31c7121D21o2p02EV23g316p2mU2vp316T1n1P27d21T2Yf1c31bz2262ES2e7319Q31EM21W2Q727922B2oX22E21r31Hu1131i621L2o427o2l931dL2u22IY31e031801r1p142KF22x2K531JL21C1X1M1G2Zp1A15316m29931gH31Ku1B21321331G922p2oX2372oi2go21o31jU314B2iz21V21i2JB1r122252391s21z2EG2DC21k31IX1H2YZ2sz1M21g2et1l1I192lZ310Y28421H27n2bB1d23b2yD29x2Bk1M213314K31Bq1122n23621B313P2R9316p2K22I531bC2b531Ln2Ke2Pp2nI2c22ax2G6102Vp1Q21j2YM182UU2vs2wQ315427Q31572Rd2w62sm2ej2BA27y21331eF313X22T1M1323i2B521Y21531Eb2HB2l22Fv25c2421I2da2uM2ck2Cm22r2aw31lN1631M71R22O31Cc2M52i52ee2Uq22C31lG31A831982jJ2u61m1j1S31b12Di21022S2262Ff21U2171731Lb2iO2i22961Q2x02uM31GI102t52yD318q2M22Su2q4315D1h318j2cb31Hr2I821T21e10318I314G31e0315V1l31kE2EC31En102OS2OU1t21S21O2OX2Vv2VX21N2192o12d231G42ax31NH31nj2f321e192mP2pr2AE29O2df2Sr2GL2gN2ok2oM31Gu319i2Ki31mP2Bl2x42di21s23K25Q2rq21B132lM2Xl1921Z319r311V22Z2oX319b2wI1h31pc29731pz31G52131V102m121C31P831Om2S02361n31Db2jW2A22iZ22221r2No1W31S72uT2tx31e022a2Ws2wU21F21H31kZ21z2H2221192av29v22E312G312I23f2ff2Qs2o131782sQ21X22y31s71T31sk2DI24G25q24u318z2Di22x2152x927d22T2kZ2Zg23G2z3318H1h2Z52z72z92Zb2ZD2972zG31MM2kP22i21h31571B310423H2OX2Wh31f6318j31f931FB22V31GH2b831NT2jb31ex10316q1422C31O824c1s31sO31qs2jn141r31fh2um22v2re2Xe2v731jX31kS2i831071d217310i315d27d1A21p2H21G2282262B531sq312h31pq31C431UB2af31UL23e2K52nd1n2hu2u22D22YH2s42Ax152xC28731r52Aq22d2452lJ2Zj2PA2PC21q21Q2pc22p2YD31N62xT2xV2xX2xZ2M02M231Ts2s022021o101431NG1H31AL2S022U1k1t1221r1l152242IZ2bU21831lq31Fs2Hv318G315j31JU21r2u031kZ1431vH2Jl2Hy2i02Kb21i31S22fk2jJ2qF31673169316b1d21i310V1r21031Dp31rQ2fg2Ue1T1q1128c1B2fe31na2252102Uc162p831fT2k82Bk23h2qf22d31kr21n2132VW1131nv31Ov2kO2S02AY311V1y2rO2aw31f31u31702R92OX2b7317g31yI31EQ2Jj2b52242112wt315031DY315Z2BG31yY3164319y1i28Y1S2871e31wL2vI21331DX1921D2y62wE2K531K72qm31k92Op21p31em22Y2UQ29x1b1H1P1921I31X631L0313w315p2321b1i23d2J82P021K31k831BZ31RY2GG31s1141s27H31Vu2hX1E31i12832VU21331bx141E27J2am27O2IZ22621331z41n1f1p1n22d2l42Ti31V82zj2IF1921431d51r21621S2dV2rY319021t21v2Dv2Di22V2391w31pW2eD1122l22k310h27D2Fi1s31Zg315P2b022l22726u26c27D14143226322227d3101322625g25y27D161632261f1t27D3178322623i23027D31cl322626I26W27D2B9322631702781A1A322621e1w27D1B1B32262z027d1c1C322621V22927D1D1D32261431eU2791e32262oE2781f1F322622K22627d2Ti322621B310v31cF1h32261L27Z101I1I322621c1z2782hm322624m25027d1K1k322626826Q27d2n1322D31v11m1m322622W31Vh31nd1n322x322z101o1o322625424Q27d1p1p32262Eh27d1Q1q322621k2MM31bq1r322622D21Z27d1S1S322624l25327D2ZG322621n21527d1U1u322622522n27d1V1v322626T26f27D1W1w32261Q2IP101X1X322621f1w2781y1Y322627l2781Z1Z322622222g27d210210322626525r27D211211322624b23t27d212212322625524r27D31LI322621M215278321F322621j2102782152153226151M278216216322626725P27D2Z5322625I25w27d218218323T315E219219322625Q26427D31gm32261G321P21b21B322621O21a27d21C21c322622m22427d21d21d322625624O27d21e21E322624j24X27d21f21F322622z23D27D21G21G321X21H21g2RY2Fi23223G22322h27D322522723x24f322A322c22723t24B322f1532261Y21C322k322M22721Y22c322Q17322626v26D322v18322623b22T32301932261Z21d31v2323622721e1X2d0323c22723W24e323F323H2271T1e278323m322623L24331IE323s22723s24A27D323W322624K25232411g322623D2ge3246322621321h27D324C322621H21327D324I22726225k324m324O22721f1x324S1l322621s22a27d324w322624423q27d311W322621I21027d3256322626431R910325c322625V25D325g325i22722h22327D2Aj32262O0278325s322624I24w325x1t32262Iu3262326422724w24I3268326A22731dV326E326g22726025m27d326l322625u25c27d326r322625024M27d326w322626c26U3271327322723p2473277327922721621K327d327F32B52ms315F213322623K24227d327p22721L21727D327u322622q23427D3280322623o2463285217322622U238328A328c22725324l27D328F322623822u328k21A3226111i278328P324y3250328v328M132783291322622R235329632982271O318L10329d322626w26i329i329K22k329M2Fi329P23G23123J329U13322626g26Y329z322626b26p32A43226316s278322L322624723p32Ae322N2XT10322w22726Z26h32aO3226181Q32aT322622a21S323A32AZ21w22e32b3322622c21Y323L323n22721521n32bD322623j23132Bi323X31411u278324222723c2k432bs22732fs27832BX22722B21t32c11j3226311t278324N322626x26J32cb322626125n32cg324x22726a26o32cL325222725r26532Cq325722724123n325b325D22723e22w32d0322627126N32D5325n22723a22s325r325t22724e23W32dE322621T22B32dI322624V25932Dn32261m2uM326f322624c23y32dW326M22722Y23C32e1326s22722I22032e6326x22721x22f32eb322626s26E32eg322625924V32El32261X21f327J32Eq22725c25U32EU214322625A24s32Ez327V227161K32f4328122723m24032f9322622F21X32fe322621G21327832Fk22722722L32Fo322625j25X27D32fu32G72WQ32Fx22729n32g0329222721821Q32g5322627026m329C329E22726p26B32GF329l21g2B032Gk2jQ32Go32Lq21232Gt2271a1p278322G22724o25632a9322625N26132H522726d26v32aj322625S25E32hD22724A23s32Hh22726926R32HL3226224311h10323G322621d1y32b832HU2392rP323R322625F25T32I2322625k26232bN325j21627d31pq322621R2H9324b324D22725p26732Ij32261P318G32iO22721721l32iS227328Y32Iw322623Z24d32J132482s032CR32lw22732jb32262l0278325H322624823U32jK322625M26032JP327l21432jU22725x25j32Jy22722x23f32k222727226K32Dr322625O26632ka32Il29s1032E222721r31Bp2rM32KL21A31WH103272322624223K32KT22721421m32KX22723Y24c32l1326T2I832Ev26625O32LB322623023i32lg322621q21832Ll22724q25432LP22724N25132Fj328G22725L26332ly22725W25I32m2328q22726q268328U328w2272My329032MA25724P32Me22723g23232mi322623422q32mN32gH21G322B329P233315E31pi1332lw2lc32GT22k2eD32a421k21632sI314X322m26622V322931wI1421Z24232M1324b32Bz32AJ22F23a2151823G23g31CL2e612315p2B932sN24923v32Nl32bu32Hl32lN32c432b332T32ht326L323g2lc32sP32b922K31HG32bd31eb1F2JL323g31fv31Hg32tQ1C22m22n32se323B2Z024323L32hP22k2K8323G323523332082Wq31cl21m25522e32sZ322b21225f32Ai32t032C032sV32T321114255255322b32ta315p310132SN1p2k932sq321x2LO329z2c825B24T329Z32LN326I32n01532t3210151k1l141532ac22t23B32h522K2Jb32a421W21x32Se322b27832w01422A23732UX221221310121Y21Z2782b0317822731P5321p31cL32221V31VL323122723f31l3103235321X2k82ry31cl23223j21Q21b31cL31781U1c1o32Uj1832T332T51L1k31Qp2lc112OE1032WN32xe32nL25z25H32Np22k2gY32aJ1v1E25224N32x11732X332dH32H832X732t41824i24i32t921932t522p31ih182uE24t25832Xu1u1V32VW1031011V21Q32vL228228322l32aC32ct32ND22K31QP32A932YJ32Yl228317832Ac23H23332hD22k31G932ae32YV1532yM31cl32AC2N83234323632Ud32x632Z632yM2B932aC24g24y32Xm32XO32xG191V1d32VH32WR1a32T321731J21w2K832AC32D332UC1d320r323532zq32zS323B32T32161b1X1W2gY32aC32k832ht321X2e632hL3306326J323g32tN1c330c330332AC32Kr32hY22k32ty32B3330L32NY32T32181D330C2E632aC32im1032bJ22K2Wt32ht330y323r32T321b1E330C32tY32Ac32A232oA22k1H2G1323R32yj32ZW25Q25Q323w1C21921a1f32722Ti1C23S24U325L2RY2Ti22t21u2122781x331X222222332021921d29g1r2ti32wb32Se2tI1D218332h31d931Pq32AC32Gz2L032ik22K1i32xF31Pq32yJ332Q21j324c32aC32Cj32C6321X32xA32BW1I32yj331X323g2HM332L2aQ2Hm2Z032BG32C632t321h1K265265324n2E632SE2N132wg32SE324w227221317632a9311w32YM2N1323R324610323m2h332lF324W1i24623O32j11A1c14321p2fI3342228334431pq1I26325L334f1c31hf32202hD1N32yM31pq102ti1i1K29V311W1a1O325V32j122F229122Um2fI325632yM323w32SV321l32j121g28u16241241311w32AC32CO32p822K31bx32J132YJ27K24u24U325632ac32dc32jG22724f23X32Pg22726l27332PK3365336728B32dF22N172i8326322v2YC1u32j632xq24H24w3256324w1u21R335y33601o32aC26j26X336426H26z3368336a336C337332jU22N1429v336k336M336O1E26G26x336s1m32X318313u32552E823a21l1o24924932562C52XL32Go325C32Ym1e2Bo324c31Px327y32SE3256330333861O22N23I336W336122c32N7336432Xk336823522r336C338K33792Q432di336l31FV337f25k261337j336U338D336y22C27326l336433663375336b314z32JQ26O26a33792jn338q337e337o32xq24523o338w336v1N23r23R338e24P25732jg22k32SE2aj234236182WQ325s336l29R32j621M1r331f328v337v219337r324c336121s1D318g2fi325H32yM322l33501g31jf32hg337o33a327K339m338e26n271339r339t1R339V1E320r339z22u33a133An1R33ap339n338Z334d33AU2aQ339u2362Mb32jP33a032Q5325633a321217335o338E32Z0339R29H336o1U28P32j121K1P33B5338e22821U33B932jk339V1c2Jl33b033B233bH33b41N335Z338E3356336432SP32d622726y26G336c21c314w336F22L22n31FT339D338S339F1e24Y24J339j331f25A25a33A733a91I33Ab31L832gO33Ag32yx2BS324W2U2318L33BP33B3338y32ac25E25S338H32xL325m322633783397322632sp325Y22j29p27d2Ry326332ym323B1133cr325632XQ21h21128p336T21r331x22T22t338e22E21W33Bo33Am33e024B1R24E32w211325622t27224A332A330A21321228P331V337r32J632Ac32Zq33eD33A21R331X31D933Ea33eC1032Pc22K33Dc33E021Q337R27J338E32O033eZ339F33FB1O33aA336Y21s1K325f33AF1Q33DW2ad324W33AL33F033bJ33Bl338Z1931xw33f6325i33f833ee1O31fV33bS325132Sn23323H339R2aL325h32562Iu24T25b32JG22n2Ag32Jk336L31Eb33A22Wx310W12325632lw22O236335t2k832d0322224H24Z336826r269336c26f26T32PN22n22532PR23U24832PV21l21627832K6333Y22j32Q322725224k32Kf322624D23z32kK322622P23732kP22k211327s2Ha1q23223331Bx33ge1o335324023M335t32z433g1322232m8325M32T333bI2W91r2LC23R245336C1U2zd33Cm22721Q2192783263321x33CR2Aj32ZQ33ig325s32T321P1s2122Qt31ZE1U33CH32Pn33941033IX22726e26s32K222K32Ye32Jp33j12J6336F32T321o1T33J731502Lc21N21433Iw32DJ33iQ2783269322622921v32Pz22K330C32De33jN33Jy32t321r1U33J731fv2lc24z24H32pv33K01033hJ2uY32Q322k1w32Ca33jE32Ye2fr33JO326932T321Q1v33J732Ye2Lc23Q24432Pz22733KL32dx22725t25f33hQ22k1Z33Cl326933KA33kM1W32T3111w33j7331333Ke21g33HM33jb32q632kg33iu326v326x22k1y1z32dr33li326L32T3326k33J733KR2lc22022i33HQ22733CK33HU2271R31E032Qg33Hz32Cp326k1x33Li326r32t3131Y33J733LF32xD32xf32e733L733Ir32qg22723622O32kT22k2102rL33LU33lI326W32T3121Z33J733M02lc142pS32qf32EC33Kl327832dG33aK3118327F22K33ER32kk33Li327232T31521033j733i02Lc1K334033nm22722S23A32Qo26k27232Qs22K33J732EB32Vy33Ej325h332Y33i61q32561k21h32T5335O325C332T31K533dK22k33Go32cv1p31fV335v33G8216321R32pg22K2Al2AJ325C2IU21921r32Pg22J3352334v325s32Ym323533aJ31xX32Q5325c33a333oo24133oq22c33Ia33P333oV325c33Oy33os311W32sN24y24g33P333P531kz1P2iu329x33P332Se325s32sh1v2782zG32LN33Gv32Jy22K28P3263326332u532Se2ZG32WU321V325S33521j2eC33GR2ZG32yM325633pi315032jb33A32141933Op1p32zj32Zl33oT33Pt33OX1u33OZ33px21625Y25g33Q11n33P633q432TB321P2aj322225h25z336C26m27032Ju22k31502Ry2Aj33I433R92C833rf33rH33rj31hG32TV325M322225D25V33rr33RT33cM33Rv1t33RX1r33rz28I33Ow33r133r333PO33R52B733m133r833SJ33PU33rb33PW1n33G933gb33Ot33q233p71H21Z22d32pG22N1k33NI33C533PK1P33A3332C222325c331v33bu324c33oq21s2U132yh2ca1r32YM2TI33463383338133842hA33sS33Tb21421J33N732CW22k2Ah325C325C22m23J33TH312b33R521S33rb32Go2Aj33TP2G1334z324C33tv33r02X832sK33ow330i2jU33U433u633U833Tj1V33Os2fI33Ue32Yn29C33ui33S033Gq2DI22Y22Y325H334v2Di322B33Dt32Se31K621s32SE2RY21r21q33VE1122Q22r33VB1033v433V8311l315p27A2wQ2cZ31VM319h2802fF2K72k92kb2KS2ku31Q533vU2D11N316o33vA321m33VD319022922832SL321V229234326p2RY2RY331v326P2fI2Ry21Y21S29V32sv2b022822931Hg318m32Fz15319632vP33Wy33vA32xQ28a335J32yE33VM33v4335j322B324N31iE315u315W23B2AW21v31vR2Xd22z313X3208320a2yQ33M11421P2Ot33RI2TW2EX2ct2CV31v11021w22233Y022F22h33y022G22E2Iz22121M21K31B821p21731bx31462I82y52wD315c315E22B22l33Y021t22731IU31iW315X2b531k733Ad2Q231Eu31Cb2s031q733xV2b32yd31jl2mI31042BL1121c317f317H2fn23a31B631b831bA31BC31rk31SF1S1y33xu31ps31V921F19132c52ZH2ex31iv2Q221M3240321v33wA33Vm22925x25R32D4319022w2fE32bw322E2AQ32T332CA2fi323f33Ir2Di22A32JX315E2rY33wH326P323W33Wp32Wc2Aq2RY1D23t24y21I33VA2ry22t2332WQ32w233VA340P1131CL33wP22C32K432gO32T329Y2TI2B0331V29Y322L341H2Fr315P2RY1V24B24133Qt33Va22w23D2tE1133s6340o33wI33WK33Wl219326p2B033wl33ir335J331N33wF341z326p34191132za2uM2B0341E13341G33ZU21929y323b341L32tB33X424B24k3239340u1122W23832q5341X321p342b34211133wm1131pq342633EJ322q29c340n113417342D342F341d23a341f1g341h342M133235342p341n33DY24b24v32EY342V22w22732UU34303416342034213435342534343427315E32VA343C343e18341A341C32sf342i342k341i133101343P342R340y2dI2RY22w22i321U343z33Wg344133wK343534373445343931Cf31l6332V3422326P3179343421932cA2Hm2FI331V316X3178345a23S25I33BZ33GR2rY22D23232hx3402344034582HN282341m32go33Wh29Y32go344h2B9341L33s531HG1221b21Q131I33wo1133X8342v33k4340d2fI32t3316x32gJ345R32se2FI22A25Y25o32kJ33Gr27d22g1V325q1023L32Ub334v21522O22133dt33WF2fi23422P2fQ34671u1t22633Hb2aq32G332X32di22F22e33VM22N22M33X932Ia334V3101325r1I2VT33w531VN27Z2301233VS28j2192UC31vl33W62bd2zJ33Yx1b33Yz1123A325f335J2aQ21t33wB2di33wh32CA335J33212452Te2Di22w2302UM34152AQ340523Z318G348L23229V348P27D348F32SV323f23S348S31id22w22P31E0348x1022922O21h334I321P2Jb3404234348g315E331V32ca2b02IE340T2dI21G21H340422O2TL2DI349f319033Vo2aq31cL334827933XI33xk2p6347q1Y1f2192az32YH2ZD22z1R33Qt27F31p9313T2xL31JN1821721521121b1d2Eh23h31Or31J8322o2IU2VA32zR23B2QF31GI1Q1M1b21o34AU1t1U31L131cf1n2AO31902Fx2B82S034B134B32zD33z12h82d031qi31dk31dM31DO31Gz31pf2HX310M33Xm315P33Yb31402KI31tE336F23g21733n731e92zn2XS31RE21Z22F1i29722c22f31021131RF22F33Qb2Rh21X22532tB2a02ux31Rf1333sQ348A31K622O32CA3235341A32rv32SF321X342Q321V341p249322P343v2312I8326L345i342e341b342G32Gp22k34d2341O24b34D5344N342W349633w9341625X34Dk343v314P32KA321V3422349l3461349k2aq341L32W332s61n2i8322G339s2AQ322l33wh31zJ32a92ue28a33AI33JE1F1I344I336j1F33Ak33V933Je1v33x0329Z1T21o32cA322l3101331V32vl317832wa33wR34e82jB1733wv32sL34EN33w9340h342532yG32YI34B82I8322B21K21L33vi331W1X33Cl2Ae23532op33VA32lN347d33Gr22l23g32cA345Y33Zu2JZ32tb346132uh33Vi349q33X92gE3447336I2i8347w33y1347y2Ud34bM1N31qJ33XJ31vs2XE34a634A834aA31E52Xf313Y21j31l731l92K831Lc1Q326022W34AT2gW1T34aw2Vp32ZR22z348933vM21T34cv32sF340s32Se2b033wD34Dh343R348j34dL22W34D834703449342033Va333g33Va349q341Y343d22833s62fi33Wd33s634hb22834d2322b33Wd34EQ33TM33Wd32Vp32A922921S33Ak341K131U1f32vO31012fi34iC2Hn32w1346833QB349X2sl2Aq322B34ef32TB1f2qF31Gc326r311v326l1j21H2H929R29z31652zj2uB34Ei31aP22Y2AW31gc2cb31Fu23B320c2R01X32042Q123h21532uU22B2O4319M31ru2NT31ru22h21U33MH1H2Eh327y21w21t31cV21w22132XE22E21v2Hu34j119223312W34dO348b348d348q349H349032nT3457345n1C33xt321p322k2Bs33VB348z349M27E22c34E4334v33cn34KM2B0336L34D227d21M33V22aq33Xa315e340H2Aq34L734ct2J034kD27D349y33v734l8343134H534LC33vn347l346o34Lg34kB33vc347K33vP347N2792f32F52F731S531T131s933Fj320z31E031Hj31gz2a131h12iz31EI31Ek31zV2Y431zN31ln34Lo34LB349g340G321p34Dz2DI34hN2aq340W341r3494348V34HJ348e25X34MO340922O2zj349833wD342A34HR34Ht1233wh316X32mq282219316X32sB345r34Hw13345u32fZ341X342L29y322b341h1t33Ak344434Ic34EI34L734771233VB22R22O31H52dI34nu34ns34NX22q34lq34lg34L72Bq2S021Z31MJ1N31Ml23b319y31a01o31A21622p348o34h522B1J343C22f21Y348k33du34IL33V334iN34LF34lf34lA348c34O234Ou34LM34OW34Lj34lE32xY2B931Ie2ex3208317G31JJ318G31jL34AK31Jp314N2p931dl31Dn31Dp23A132i434BG31gj2Jn2Jx34j931gd2SU1p2yP33VT34a734a92K031e529M1E313x34Bx22a32xf34P134Mg34kg34DZ34LS1c24O252325f34Kr22h22k2i834mY25X246325F348L2332S03383347e32hO34HK33wj33wk333g346722Z22W1i348K2Fg21U32ux31Cl32wa22c328n32Vu34Fb15341P34HF2aq310122w23c331O31zm34F334ip23M23S320R34l731DV34H4349x34LL34L734OV34LI34oY33gR34o433XF315X33YT339x1l23534mX34H525h23l2I8348L31zW333a342v347f33Vi22n22k2q134nX23534ol34Fp347g342v347I34g4346I34kM34p034Rx34RT2DI34Rv34SV340334Sx349z32Y9320R34G927f27H320x31af31Jz31WN31wp122111r1522g31qr2k62PU31BH2PX2Sb2Q12R82Q62q822b2kx34Po2A023h2R62R822x1321i2H221231922SM31cd2JP2iL2Nn2102QT2q422k2H234BE31Be34tL2E731bj31Q4310j33yJ31zn310D29v2AY31CO21t33yg34Me34Ox33wC34Kf34KR34dZ34l734qC24Z2KZ33TM27D34Qh34Qj33wF348y34kf34P534kh34CW2WQ2Ue2m22di22u22V34hq34173455343534hM349o32Sf32s634FO32uV23A32Ux2Ry32V11U344D310134Sg34rf15340L34I533tm21u21v34w63101328S34cZ32h132RU2Zj322R32VV2s0322b33oF342V22E22F34Ry34NA31iE31aU1e32Yf1721331zV2vt34t727I2UJ1n2392S034Q7346a34Hl321V3435342134ML2b034fG34hd34L234ss34e01334en2Bo2jL31Zq2yG27z31zU34UL34mB33YL34wS34WU34WW34uL34wy27g34x0320y23F349734sw348E34kf34v134Ki34kR32wb347134n3234316X334V345b34NS318m34nb34Su34xF34T2347m34G82aw29x29z31dD2B52QZ31MD31mf1v2fH320R316w31Hf1221021i31OY327y34m1319U34oD34Of22Z2DU2ie1U22834s7321M22B34QN2MF21X2Nm34Fp23A326P34iJ3435346734X9344V340j2aq34G334yL33Da317834p62Um31as2Xe34p72pc1C31IM1031fM31Lr22Q2kI31dT34m02UL27S2A91A22Y2Jl27931Z71H21031uU2ee33Os34ow26D25831bT34LS21F21d343134n01t1f34Sn33Gr34W2345t234341J311113333G34nj1334qZ34jv34nX21U34Eb103178331v33bJ32we1734mL3178332o33Bj322B32yy22V34DX32ZI34VQ2b933Qo32ae1123P34Qm2Di317834RH331o2xl348w1121K21n312y34Nx26f23w2ZJ346g327X32Xf23O24334V4341T23G32Lf324B34r9351422933ws2Fi33wU323k33Ej348a2FI34zw33va34a934G434ya34kR1e31xI3168316A2Rd31xM31xO31xq34Br31lT2Rs2HO27O34A334gh31cS34uV34lJ348Z2DI330J34qu343334vO34X8342334yH33WL2oD34yG326234oR34l434Ll34R634G8310k310M34Pq34Uq34a42xe353a31XK353D31XN31bQ353G31Dq350434p9315i31JT31Bz1T22r352834OJ34Zl321V351533Gr34N4334j345R34D231CO33IQ350K2FG26F23u3555310122D317534mR32Sq34eA317x2FS2rE34ZU317833wh351s2q12pv2jB351T1722m22733aK3178322l3477316a352f23m29V3467313P32Eo34LA22Y34ot32Sv34xJ2KP31wg31wI31wk23e21b33ks311j31wi311m2eC33gK31Zc31M7348521S31251221U311P1M22G1N22A1W2181k29H1t281320r31n632142Sv2sx31M931bm29l31ur23134zF2di32jw352T34ZJ354v2ry32T3326P34hm22c3513322534dG343Q34wL2dI34WN34RY322L34ZZ34lt2uM319V2yO354f353C2M3354i31xp31xR2HR2Ht2EE2IZ31g02Zg31xW31xY31bd320r2mG1t2mI2mk2MM2mO22y3166353B31xL34Bk2AX32oh33w622Q33nI34x533vA33bu32ca34nA32aC3513322b321x34i22fi32YJ359233Vq32Ac34kU33TM321X34W62B032U1321P2B022132Kj34L612359M33vI359M34vL342034ZR353y322L33wP34F132go352Y34152ry33WX34Xe214357J11357l343c2c5334032SF2fI33Wv32TB34302MN319633vI338834SQ347J34im34nC2Di34lS34P134N2359m34N0359q319035Aw33v334Ll322B34LS1e31GW31gy31H031g334XR2Y734Lx31s831sA34Z631EH2zC34M934UL34LU2f6358X353P34Q8353S34Ki34eN34mL323L23t34mu348u348W34v9349934mT341s2aQ22W34Mw355d348y33WE344934Hs3550354z34N634yF329O34YI351629Y352x34nH34nf34NK2hn34NN34eH3461326231wq34nt34NV35BZ34nY34nT34o134ZX34kR32a4353P35at359n33VA35ay2aq35D334Ld34Ll310131Cl31ie31su31Lj2A92q21H31Sz31T123I33Zh31B931bB1131YK27D31S631A031dy2oX34u72I52Vz2n12FD33xx2Cu1O31Mh2b634tv1m23534Pl314731ez2fS23B34rS357f25H34re342122t29m34DU35Cc2Lc344D342h343I35CI35Ch3178341H23s34rE34n6355b34X434sT354z34If34N734YD33gR34qC2512tE322L2fI22H22A318G348p34hU25x34RE334V22W22t31Na35FB34Yb34N5346132AC352t359634Qi335d1234Yk33v334Gw2AQ"),(#v-Y);local function o(l,e,...)if(l==233636186)then return((n(n(e,557635),959829))-82035);elseif(l==94368931)then return((n(n(n(n(e,827590),495410),381687),325222))-460460);elseif(l==234277737)then return(n((n(n(e,669168),87435))-942394,312323));elseif(l==44661956)then return(n(n(((e)-635386)-462189,150514),162438));elseif(l==846509582)then return((((((e)-776394)-777941)-873270)-192830)-283021);elseif(l==899746957)then return((n(n((e)-74634,252212),180522))-635881);elseif(l==511128613)then return(((n(n(e,846530),815697))-997489)-349614);else end;end;local g=l.FTuP6s;local A=l[((#{839;405;64;546;(function(...)return 279,358,...;end)(181,895)}+815713042))];local o=l[(426715271)];local c=l[(176478320)];local m=l[((691058439-#("psu premium chads winning (only joe biden supporters use the free version)")))];local x=l[((445009128-#("Luraph: Probably considered the worst out of the three, Luraph is another Lua Obfuscator. It isnt remotely as secure as Ironbrew or Synapse Xen, and it isn't as fast as Ironbrew either.")))];local t=l[((392013053-#("woooow u hooked an opcode, congratulations~ now suck my cock")))];local h=l[(836315543)];local function f()local l=n(p(y,a,a),e);e=l%o;a=(a+c);return(l);end;local function d()local l,c=p(y,a,a+t);l=n(l,e);e=l%o;c=n(c,e);e=c%o;a=a+t;return((c*o)+l);end;local function r(e,l,o)if(o)then local l=(e/t^(l-c))%t^((o-c)-(l-c)+c);return(l-(l%c));else local l=t^(l-c);return(((e%(l+l)>=l)and(c))or(m));end;end;local function t()local i,t,l,c=p(y,a,a+x);i=n(i,e);e=i%o;t=n(t,e);e=t%o;l=n(l,e);e=l%o;c=n(c,e);e=c%o;a=a+g;return((c*h)+(l*A)+(t*o)+i);end;local v="\35";local function x(...)return({...}),B(v,...);end;local function E(...)local v=l.CbAw2Qi;local B=l[(886012507)];local U=l[((#{}+506553078))];local Y=l[((#{203;147;2;(function(...)return 258,734,960,371;end)()}+498989643))];local A=l[(505149954)];local g=l[((166430059-#("psu == femboy hangout")))];local S=l["OEGsPVT"];local c=l[((#{209;597;684;112;}+691058361))];local Z=l['XCApVS'];local x=l[((426715330-#("LuraphDeobfuscator.zip (oh god DMCA incoming everyone hide)")))];local j=l[((#{423;705;367;}+365949433))];local H=l[((#{133;634;674;931;}+262831155))];local L=l[(984476458)];local u=l['ppD4L7'];local E=l["yENiVPan"];local I=l[((719763694-#("still waiting for luci to fix the API :|")))];local P=l[(772652599)];local k=l['FTuP6s'];local X=l[(313283976)];local V=l[((397216041-#("why the fuck would we sell a deobfuscator for a product we created.....")))];local F=l[(445008943)];local o=l[((#{786;969;362;}+176478317))];local b=l[((369711377-#("psu premium chads winning (only joe biden supporters use the free version)")))];local m=l[(392012993)];local O=l.IgMhI1;local function C(...)local D=({});local h=({});local l=({});local z=d(e);for i=c,t(e)-o,o do local d=f(e);if(d==m)then local e=f(e);l[i]=(e~=c);elseif(d==U)then while(true)do local a=t(e);local n=t(e);local t=o;local a=(r(n,o,E)*(m^u))+a;local e=r(n,Z,X);local n=((-o)^r(n,u));if(e==c)then if(a==c)then l[i]=(n*c);break;else e=o;t=c;end;elseif(e==H)then l[i]=(a==c)and(n*(o/c))or(n*(c/c));break;end;l[i]=J(n,e-B)*(t+(a/(m^P)));break;end;elseif(d==S)then while(true)do local t=t(e);if(t==c)then l[i]=('');break;end;if(t>Y)then local c,d=(''),(s(y,a,a+t-o));a=a+t;for l=o,#d,o do local l=n(p(s(d,l,l)),e);e=l%x;c=c..w[l];end;l[i]=c;else local o,c=(''),({p(y,a,a+t-o)});a=a+t;for a,l in T(c)do local l=n(l,e);e=l%x;o=o..w[l];end;l[i]=o;end;break;end;elseif(d==O)then while(true)do local e=t(e);l[i]=s(y,a,a+e-o);a=a+e;break;end;else l[i]=nil end;end;local n=t(e);for l=c,n-o,o do h[l]=({});end;for w=c,n-o,o do local n=f(e);if(n~=c)then n=n-o;local s,a,i,x,y,p=c,c,c,c,c,c;local u=r(n,o,F);if(u==F)then a=h[(t(e))];s=(d(e));i=(d(e));x=(f(e));elseif(u==m)then a=h[(t(e))];i=(d(e));x=(f(e));elseif(u==c)then a=(d(e));s=(d(e));i=(d(e));x=(f(e));elseif(u==A)then elseif(u==o)then a=(t(e));i=(d(e));x=(f(e));elseif(u==g)then a=(t(e));s=(d(e));i=(d(e));x=(f(e));p=({});for l=o,s,o do p[l]=({[c]=f(e),[o]=d(e)});end;end;if(r(n,b,b)==o)then y=h[t(e)];else y=h[w+o];end;if(r(n,A,A)==o)then s=l[s];end;if(r(n,g,g)==o)then a=l[a];end;if(r(n,k,k)==o)then i=l[i];end;if(r(n,V,V)==o)then p=({});for l=o,f(),o do p[l]=t();end;end;local l=h[w];l[-j]=p;l[-v]=s;l["DGCQF"]=a;l[I]=i;l[L]=x;l["iHdb3g"]=y;end;end;local n=f(e);for l=c,t(e)-o,o do D[l]=C();end;return({[-601492.9897225578]=h;["Q04hWsmtu"]=c;[-777402.563673591]=z;[-942637.0960706151]=n;['o99']=l;["Pnc9Fr9q5X"]=D;});end;return(C(...));end;local function m(l,f,s,...)local c=l[-942637.0960706151];local n=l[-601492.9897225578];local e=l["o99"];local d=l[-777402.563673591];local e=0;local g=l['Pnc9Fr9q5X'];return(function(...)local w={};local t=-837668;local A=(B(v,...)-1);local p=({});local D=-38514;local o="iHdb3g";local y={...};local r=-(1);local a='DGCQF';local l=(true);local h=n[e];local n=69472;local b=310590;local l=(561314146);local e={};for l=0,A,1 do if(l>=c)then w[l-c]=y[l+1];else e[l]=y[l+1];end;end;local y=A-c+1;while(true)do local l=h;local c=l[b];h=l[o];if(c<=56)then if(c<=27)then if(c<=13)then if(c<=6)then if(c<=2)then if(c<=0)then l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];local c=l[n];local n=e[l[a]];e[c+1]=n;e[c]=n[l[t]];l=l[o];l=l[o];elseif(c==1)then local l=l[n];e[l]=e[l](i(e,l+1,r));for l=l+1,r do e[l]=nil;end;elseif(c<=2)then l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=s[l[a]];l=l[o];local d=l[n];local c=e[l[a]];e[d+1]=c;e[d]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];local t,a=x(e[c](i(e,c+1,l[a])));r=a+c-1;local a=0;for l=c,r do a=a+1;e[l]=t[a];end;l=l[o];local n=l[n];e[n](i(e,n+1,r));for l=n+1,r do e[l]=nil;end;l=l[o];l=l[o];end;elseif(c<=4)then if(c==3)then local o=l[n];local n=e[l[a]];e[o+1]=n;e[o]=n[e[l[t]]];elseif(c<=4)then l=l[o];f[l[a]]=e[l[n]];l=l[o];f[l[a]]=e[l[n]];l=l[o];f[l[a]]=e[l[n]];l=l[o];l=l[o];end;elseif(c>5)then e[l[n]][l[a]]=l[t];elseif(c<6)then local n=l[n];local c=l[t];local o=n+2;local n=({e[n](e[n+1],e[o]);});for l=1,c do e[o+l]=n[l];end;local n=n[1];if(n)then e[o]=n;h=l[a];end;end;elseif(c<=9)then if(c<=7)then e[l[n]]=e[l[a]]-e[l[t]];elseif(c==8)then e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];elseif(c<=9)then l=l[o];l=l[o];end;elseif(c<=11)then if(c>10)then local l=l[n];local n,o=x(e[l](e[l+1]));r=o+l-1;local o=0;for l=l,r do o=o+1;e[l]=n[o];end;elseif(c<11)then s[l[a]]=e[l[n]];end;elseif(c==12)then e[l[n]]=e[l[a]][l[t]];elseif(c<=13)then local l=l[n];e[l]=e[l](e[l+1]);for l=l+1,d do e[l]=nil;end;end;elseif(c<=20)then if(c<=16)then if(c<=14)then e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]][l[a]]=e[l[t]];l=l[o];e[l[n]][l[a]]=e[l[t]];l=l[o];l=l[o];elseif(c>15)then e[l[n]]();l=l[o];local c=l[n];local i=e[l[a]];e[c+1]=i;e[c]=i[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];elseif(c<16)then e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=(l[a]~=0);l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]][l[a]]=e[l[t]];l=l[o];e[l[n]][l[a]]=e[l[t]];l=l[o];e[l[n]][l[a]]=e[l[t]];l=l[o];for l=l[n],l[a]do e[l]=(nil);end;l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];local n=l[n];local a=e[l[a]];e[n+1]=a;e[n]=a[l[t]];l=l[o];l=l[o];end;elseif(c<=18)then if(c>17)then local o=l[n];local a=e[o];local l,n=0,50*(l[t]-1);for o=o+1,r,1 do a[n+l+1]=e[o];l=l+1;end;elseif(c<18)then e[l[n]]=e[l[a]]+e[l[t]];end;elseif(c==19)then e[l[n]][l[a]]=e[l[t]];l=l[o];l=l[o];elseif(c<=20)then e[l[n]][e[l[a]]]=e[l[t]];end;elseif(c<=23)then if(c<=21)then l=l[o];f[l[a]]=e[l[n]];l=l[o];f[l[a]]=e[l[n]];l=l[o];f[l[a]]=e[l[n]];l=l[o];l=l[o];elseif(c>22)then e[l[n]]=e[l[a]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=s[l[a]];l=l[o];local c=l[n];local d=e[l[a]];e[c+1]=d;e[c]=d[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];local f,d=x(e[c](i(e,c+1,l[a])));r=d+c-1;local d=0;for l=c,r do d=d+1;e[l]=f[d];end;l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,r));for l=c+1,r do e[l]=nil;end;l=l[o];local c=l[n];e[c]=e[c]();l=l[o];local i=l[n];local c=e[l[a]];e[i+1]=c;e[i]=c[l[t]];l=l[o];e[l[n]]=u(256);l=l[o];e[l[n]]=u(l[a]);l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];elseif(c<23)then e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]][l[a]]=e[l[t]];l=l[o];e[l[n]][l[a]]=e[l[t]];l=l[o];l=l[o];end;elseif(c<=25)then if(c>24)then e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];elseif(c<25)then l=l[o];l=l[o];end;elseif(c==26)then e[l[n]]=#e[l[a]];elseif(c<=27)then e[l[n]][l[a]]=e[l[t]];l=l[o];local i=l[n];local c=e[l[a]];e[i+1]=c;e[i]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];end;elseif(c<=41)then if(c<=34)then if(c<=30)then if(c<=28)then e[l[n]]=u(l[a]);elseif(c>29)then e[l[n]][l[a]]=e[l[t]];elseif(c<30)then for l=l[n],l[a]do e[l]=(nil);end;end;elseif(c<=32)then if(c==31)then local o=l[n];e[o]=e[o](i(e,o+1,l[a]));for l=o+1,d do e[l]=nil;end;elseif(c<=32)then l=l[o];l=l[o];end;elseif(c==33)then local c=l[n];e[c]=e[c](e[c+1]);for l=c+1,d do e[l]=nil;end;l=l[o];local c=l[n];local d=e[l[a]];e[c+1]=d;e[c]=d[l[t]];l=l[o];local c=l[n];local a=e[l[a]];e[c+1]=a;e[c]=a[l[t]];l=l[o];local a=l[n];local t,c=x(e[a](e[a+1]));r=c+a-1;local c=0;for l=a,r do c=c+1;e[l]=t[c];end;l=l[o];local n=l[n];e[n]=e[n](i(e,n+1,r));for l=n+1,r do e[l]=nil;end;l=l[o];l=l[o];elseif(c<=34)then e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]][l[a]]=e[l[t]];l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]][l[a]]=e[l[t]];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];local f=l[n];local c=e[l[a]];e[f+1]=c;e[f]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];local c=l[n];local f=e[l[a]];e[c+1]=f;e[c]=f[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];local c=l[n];local f=e[l[a]];e[c+1]=f;e[c]=f[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];local f=l[n];local c=e[l[a]];e[f+1]=c;e[f]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=s[l[a]];l=l[o];local f=l[n];local c=e[l[a]];e[f+1]=c;e[f]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=s[l[a]];l=l[o];local c=l[n];local f=e[l[a]];e[c+1]=f;e[c]=f[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=s[l[a]];l=l[o];local c=l[n];local f=e[l[a]];e[c+1]=f;e[c]=f[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=s[l[a]];l=l[o];local f=l[n];local c=e[l[a]];e[f+1]=c;e[f]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=s[l[a]];l=l[o];local f=l[n];local c=e[l[a]];e[f+1]=c;e[f]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];l=l[o];end;elseif(c<=37)then if(c<=35)then local c=l[n];local f=e[l[a]];e[c+1]=f;e[c]=f[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=e[l[a]];l=l[o];e[l[n]]=l[a];l=l[o];local i=l[n];local c=e[l[a]];e[i+1]=c;e[i]=c[e[l[t]]];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];elseif(c>36)then l=l[o];l=l[o];elseif(c<37)then l=l[o];local a=l[n];r=a+y-1;for l=0,y do e[a+l]=w[l];end;for l=r+1,d do e[l]=nil;end;l=l[o];local n=l[n];do return i(e,n,r);end;l=l[o];l=l[o];end;elseif(c<=39)then if(c==38)then local o=l[n];local c=e[o+2];local n=e[o]+c;e[o]=n;if(c>0)then if(n<=e[o+1])then h=l[a];e[o+3]=n;end;elseif(n>=e[o+1])then h=l[a];e[o+3]=n;end;elseif(c<=39)then l=l[o];l=l[o];end;elseif(c>40)then e[l[n]]=(l[a]~=0);elseif(c<41)then e[l[n]]=e[l[a]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=#e[l[a]];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=e[l[a]][e[l[t]]];l=l[o];local c=l[n];e[c]=e[c](e[c+1]);for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=l[a];l=l[o];local f=l[a];local c=e[f];for l=f+1,l[t]do c=c..e[l];end;e[l[n]]=c;l=l[o];local n=l[n];e[n](i(e,n+1,l[a]));for l=n+1,d do e[l]=nil;end;l=l[o];l=l[o];end;elseif(c<=48)then if(c<=44)then if(c<=42)then l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]][l[a]]=e[l[t]];l=l[o];l=l[o];elseif(c==43)then e[l[n]]=l[a];l=l[o];local n=l[n];e[n](i(e,n+1,l[a]));for l=n+1,d do e[l]=nil;end;l=l[o];l=l[o];elseif(c<=44)then e[l[n]]=l[a];l=l[o];local c=l[n];local i=e[l[a]];e[c+1]=i;e[c]=i[e[l[t]]];l=l[o];e[l[n]]=u(l[a]);l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];end;elseif(c<=46)then if(c==45)then local c=l[n];local n={};for l=1,#p,1 do local l=p[l];for o=0,#l,1 do local o=l[o];local a=o[1];local l=o[2];if((a==e)and(l>=c))then n[l]=a[l];o[1]=n;end;end;end;elseif(c<=46)then l=l[o];l=l[o];end;elseif(c>47)then e[l[n]]();l=l[o];l=l[o];elseif(c<48)then e[l[n]]=e[l[a]]*e[l[t]];end;elseif(c<=52)then if(c<=50)then if(c==49)then e[l[n]]=l[a];l=l[o];e[l[n]]=u(l[a]);l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];local n=l[n];e[n]=e[n](i(e,n+1,l[a]));for l=n+1,d do e[l]=nil;end;l=l[o];l=l[o];elseif(c<=50)then e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=l[a]-e[l[t]];l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];local c=l[n];local d=e[l[a]];e[c+1]=d;e[c]=d[l[t]];l=l[o];e[l[n]]=(l[a]~=0);l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=s[l[a]];l=l[o];local c=l[n];e[c]=e[c]();l=l[o];e[l[n]]=e[l[a]]%e[l[t]];l=l[o];e[l[n]]=e[l[a]]/e[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];local t,a=x(e[c](i(e,c+1,l[a])));r=a+c-1;local a=0;for l=c,r do a=a+1;e[l]=t[a];end;l=l[o];local n=l[n];e[n](i(e,n+1,r));for l=n+1,r do e[l]=nil;end;l=l[o];l=l[o];end;elseif(c>51)then local l=l[n];e[l](e[l+1]);for l=l,d do e[l]=nil;end;elseif(c<52)then if(e[l[n]]==l[t])then h=l[a];end;end;elseif(c<=54)then if(c==53)then local c=l[n];local f=e[l[a]];e[c+1]=f;e[c]=f[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=e[l[a]];l=l[o];e[l[n]]=l[a];l=l[o];local i=l[n];local c=e[l[a]];e[i+1]=c;e[i]=c[e[l[t]]];l=l[o];e[l[n]]=u(l[a]);l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];elseif(c<=54)then e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];local n=l[n];local c,a=x(e[n](i(e,n+1,l[a])));r=a+n-1;local a=0;for l=n,r do a=a+1;e[l]=c[a];end;l=l[o];l=l[o];end;elseif(c==55)then local c=l[n];local f=e[l[a]];e[c+1]=f;e[c]=f[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=e[l[a]];l=l[o];local c=l[n];local i=e[l[a]];e[c+1]=i;e[c]=i[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=(l[a]~=0);l=l[o];l=l[o];elseif(c<=56)then e[l[n]]=e[l[a]];end;elseif(c<=84)then if(c<=70)then if(c<=63)then if(c<=59)then if(c<=57)then local f=l[n];local c=e[l[a]];e[f+1]=c;e[f]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=e[l[a]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];local i=e[l[a]];e[c+1]=i;e[c]=i[e[l[t]]];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];elseif(c==58)then local o=l[n];e[o](i(e,o+1,l[a]));for l=o+1,d do e[l]=nil;end;elseif(c<=59)then local f=l[n];local c=e[l[a]];e[f+1]=c;e[f]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=e[l[a]];l=l[o];e[l[n]]=l[a];l=l[o];local i=l[n];local c=e[l[a]];e[i+1]=c;e[i]=c[e[l[t]]];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];end;elseif(c<=61)then if(c==60)then e[l[n]]=e[l[a]]/e[l[t]];elseif(c<=61)then e[l[n]]=u(l[a]);l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];end;elseif(c>62)then local o=l[n];r=o+y-1;for l=0,y do e[o+l]=w[l];end;for l=r+1,d do e[l]=nil;end;elseif(c<63)then l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];local f=l[n];local c=e[l[a]];e[f+1]=c;e[f]=c[l[t]];l=l[o];e[l[n]]=e[l[a]];l=l[o];local n=l[n];e[n](i(e,n+1,l[a]));for l=n+1,d do e[l]=nil;end;l=l[o];l=l[o];end;elseif(c<=66)then if(c<=64)then l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];for l=l[n],l[a]do e[l]=(nil);end;l=l[o];l=l[o];elseif(c==65)then elseif(c<=66)then e[l[n]]=e[l[a]]%e[l[t]];end;elseif(c<=68)then if(c>67)then local o=l[n];local n,l=x(e[o](i(e,o+1,l[a])));r=l+o-1;local l=0;for o=o,r do l=l+1;e[o]=n[l];end;elseif(c<68)then e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];end;elseif(c>69)then local o=l[n];local n=e[l[a]];e[o+1]=n;e[o]=n[l[t]];elseif(c<70)then e[l[n]][l[a]]=e[l[t]];l=l[o];local i=l[n];local c=e[l[a]];e[i+1]=c;e[i]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];end;elseif(c<=77)then if(c<=73)then if(c<=71)then local o=l[n];e[o]=0+(e[o]);e[o+1]=0+(e[o+1]);e[o+2]=0+(e[o+2]);local n=e[o];local c=e[o+2];if(c>0)then if(n>e[o+1])then h=l[a];else e[o+3]=n;end;elseif(n<e[o+1])then h=l[a];else e[o+3]=n;end;elseif(c>72)then f[l[a]]=e[l[n]];elseif(c<73)then local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];local f=l[n];local c=e[l[a]];e[f+1]=c;e[f]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];local i=l[n];local c=e[l[a]];e[i+1]=c;e[i]=c[l[t]];l=l[o];local c=l[n];e[c]=e[c](e[c+1]);for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=u(256);l=l[o];e[l[n]]=u(256);l=l[o];l=l[o];end;elseif(c<=75)then if(c>74)then local c=l[n];local f=e[l[a]];e[c+1]=f;e[c]=f[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];e[l[n]]=e[l[a]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];local i=e[l[a]];e[c+1]=i;e[c]=i[e[l[t]]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=u(256);l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=e[l[a]][e[l[t]]];l=l[o];local n=l[n];local c,a=x(e[n](e[n+1]));r=a+n-1;local a=0;for l=n,r do a=a+1;e[l]=c[a];end;l=l[o];l=l[o];elseif(c<75)then e[l[n]]=e[l[a]][l[t]];l=l[o];local c=l[a];local a=e[c];for l=c+1,l[t]do a=a..e[l];end;e[l[n]]=a;l=l[o];local n=l[n];e[n](e[n+1]);for l=n,d do e[l]=nil;end;l=l[o];l=l[o];end;elseif(c>76)then l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];local n=l[n];e[n](e[n+1]);for l=n,d do e[l]=nil;end;l=l[o];l=l[o];elseif(c<77)then local i=l[n];local c=e[l[a]];e[i+1]=c;e[i]=c[l[t]];l=l[o];local c=l[n];e[c](e[c+1]);for l=c,d do e[l]=nil;end;l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]][l[a]]=l[t];l=l[o];l=l[o];end;elseif(c<=80)then if(c<=78)then e[l[n]]=u(256);l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=u(l[a]);l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];elseif(c>79)then local a=g[l[a]];local c=l[D];local o={};local i=z({},{__index=function(e,l)local l=o[l];return(l[1][l[2]]);end,__newindex=function(n,l,e)local l=o[l];l[1][l[2]]=e;end;});for l=1,l[t],1 do local n=c[l];if(n[0]==0)then o[l-1]=({e,n[1]});else o[l-1]=({f,n[1]});end;p[#p+1]=o;end;e[l[n]]=m(a,i,s);elseif(c<80)then e[l[n]]=u(256);end;elseif(c<=82)then if(c==81)then e[l[n]]=f[l[a]];elseif(c<=82)then local l=l[n];e[l]=e[l]();end;elseif(c==83)then local c=l[n];e[c](e[c+1]);for l=c,d do e[l]=nil;end;l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]][l[a]]=e[l[t]];l=l[o];e[l[n]][l[a]]=e[l[t]];l=l[o];e[l[n]][l[a]]=e[l[t]];l=l[o];l=l[o];elseif(c<=84)then local i=l[n];local c=e[l[a]];e[i+1]=c;e[i]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];end;elseif(c<=98)then if(c<=91)then if(c<=87)then if(c<=85)then if(e[l[n]]~=e[l[t]])then h=l[a];end;elseif(c>86)then e[l[n]]=s[l[a]];elseif(c<87)then local l=l[n];e[l](i(e,l+1,r));for l=l+1,r do e[l]=nil;end;end;elseif(c<=89)then if(c==88)then if(e[l[n]]==e[l[t]])then h=l[a];end;elseif(c<=89)then if(e[l[n]]~=l[t])then h=l[a];end;end;elseif(c>90)then l=l[o];e[l[n]]=s[l[a]];l=l[o];e[l[n]][l[a]]=e[l[t]];l=l[o];l=l[o];elseif(c<91)then l=l[o];l=l[o];end;elseif(c<=94)then if(c<=92)then local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];local f=l[n];local c=e[l[a]];e[f+1]=c;e[f]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];local n=l[n];local a=e[l[a]];e[n+1]=a;e[n]=a[l[t]];l=l[o];l=l[o];elseif(c>93)then e[l[n]]=e[l[a]][e[l[t]]];elseif(c<94)then e[l[n]]=l[a];end;elseif(c<=96)then if(c==95)then e[l[n]]();elseif(c<=96)then local c=l[n];local f=e[l[a]];e[c+1]=f;e[c]=f[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];local c=l[n];local i=e[l[a]];e[c+1]=i;e[c]=i[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];end;elseif(c==97)then e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=e[l[a]]*e[l[t]];l=l[o];e[l[n]][l[a]]=e[l[t]];l=l[o];l=l[o];elseif(c<=98)then local l=l[n];do return i(e,l,r);end;end;elseif(c<=105)then if(c<=101)then if(c<=99)then h=l[a];elseif(c>100)then if(e[l[n]])then h=l[a];end;elseif(c<101)then l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];local c=l[n];local r=e[l[a]];e[c+1]=r;e[c]=r[l[t]];l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];local n=l[n];e[n](i(e,n+1,l[a]));for l=n+1,d do e[l]=nil;end;l=l[o];l=l[o];end;elseif(c<=103)then if(c>102)then e[l[n]]=m(g[l[a]],(nil),s);elseif(c<103)then e[l[n]]=l[a]-e[l[t]];end;elseif(c>104)then l=l[o];e[l[n]]=e[l[a]];l=l[o];local c=l[n];local r=e[l[a]];e[c+1]=r;e[c]=r[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];local r=l[n];local c=e[l[a]];e[r+1]=c;e[r]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];local c=l[n];e[c]=e[c](i(e,c+1,l[a]));for l=c+1,d do e[l]=nil;end;l=l[o];f[l[a]]=e[l[n]];l=l[o];f[l[a]]=e[l[n]];l=l[o];f[l[a]]=e[l[n]];l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];local n=l[n];local a=e[l[a]];e[n+1]=a;e[n]=a[l[t]];l=l[o];l=l[o];elseif(c<105)then if(not(e[l[n]]))then h=l[a];end;end;elseif(c<=109)then if(c<=107)then if(c>106)then local o=l[n];local a={e[o](e[o+1]);};local n=l[t];local l=0;for o=o,n do l=l+1;e[o]=a[l];end;for l=n+1,d do e[l]=nil;end;elseif(c<107)then do return;end;end;elseif(c>108)then local i=l[n];local c=e[l[a]];e[i+1]=c;e[i]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];elseif(c<109)then l=l[o];l=l[o];end;elseif(c<=111)then if(c==110)then local o=l[n];local n=l[a];local c=50*(l[t]-1);local a=e[o];local l=0;for n=o+1,n do a[c+l+1]=e[o+(n-o)];l=l+1;end;elseif(c<=111)then local a=l[a];local o=e[a];for l=a+1,l[t]do o=o..e[l];end;e[l[n]]=o;end;elseif(c>112)then l=l[o];e[l[n]]=f[l[a]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]]=e[l[a]][l[t]];l=l[o];e[l[n]][l[a]]=l[t];l=l[o];e[l[n]]=f[l[a]];l=l[o];local i=l[n];local c=e[l[a]];e[i+1]=c;e[i]=c[l[t]];l=l[o];e[l[n]]=l[a];l=l[o];l=l[o];elseif(c<113)then e[l[n]]=(l[a]~=0);end;end;end);end;return m(E(),{},V())(...);end)(({[(412654074)]=("\50");[((#{490;}+505149953))]=(((#{243;837;124;28;(function(...)return 744;end)()}+1)));['rt1Ivt6T']=("\109");[(488209318)]=("\99");Rf9j3RUCOa=(((#{599;486;588;113;(function(...)return;end)()}+181802579)));["YUJeS0CVH"]=("\104");[((#{}+886012507))]=((1023));[(366180521)]=("\110");[((215453531-#("you dumped constants by printing the deserializer??? ladies and gentlemen stand clear we have a genius in the building.")))]=("\51");[((#{}+166430038))]=((5));CbAw2Qi=(((837729-#("guys someone play Among Us with memcorrupt he is so lonely :("))));[(773546450)]=(((#{551;(function(...)return 742,...;end)(175,654)}+193)));[(433500303)]=(((549085003-#("i am not wally stop asking me for wally hub support please fuck off"))));FTuP6s=((4));[(124914009)]=((603477943));esLIbSza=("\105");XCApVS=(((81-#("woooow u hooked an opcode, congratulations~ now suck my cock"))));[(392012993)]=(((17-#("concat was here"))));kVV6yHyZdD=("\114");['deqqBSfLDA']=("\112");eh3BqJ2YD=(((#{275;43;811;161;(function(...)return;end)()}+86)));[(262831159)]=(((2085-#("psu 34567890fps, luraph 1fps, xen 0fps"))));[((#{949;(function(...)return 333,2,943,882;end)()}+390673318))]=("\115");[(601263426)]=((366180521));[((26154873-#("luraph is now down until further notice for an emergency major security update")))]=("\97");[(810232180)]=(((48792467-#("guys someone play Among Us with memcorrupt he is so lonely :("))));["OiO8Vdp4"]=("\121");[((499557692-#("why does psu.dev attract so many ddosing retards wtf")))]=(((#{205;13;448;818;}+419422003)));[((596330894-#("psu == femboy hangout")))]=(((306749045-#("i am not wally stop asking me for wally hub support please fuck off"))));['OEGsPVT']=(((52-#("psu 34567890fps, luraph 1fps, xen 0fps"))));[(815713050)]=(((#{478;325;813;(function(...)return...;end)(666,45,18)}+65530)));['XomC3W']=("\111");[(790526922)]=(((103-#("i am not wally stop asking me for wally hub support please fuck off"))));[((772652677-#("luraph is now down until further notice for an emergency major security update")))]=(((104-#("why does psu.dev attract so many ddosing retards wtf"))));[((#{(function(...)return;end)()}+340123039))]=(((#{775;(function(...)return 123,162,634;end)()}+244)));["IgMhI1"]=(((120-#("psu premium chads winning (only joe biden supporters use the free version)"))));[(181802583)]=("\120");[((397216063-#("Luraph v12.6 has been released!: changed absolutely fucking nothing but donate to my patreon!")))]=((7));[(48792406)]=("\107");GX8R3tMv0=("\117");[(603477943)]=("\101");[((498816124-#("Are you using AztupBrew, clvbrew, or IB2? Congratulations! You're deobfuscated!")))]=((488209318));[(184290745)]=((147));[((840684268-#("Are you using AztupBrew, clvbrew, or IB2? Congratulations! You're deobfuscated!")))]=((412654074));[((691058380-#("concat was here")))]=(((61-#("guys someone play Among Us with memcorrupt he is so lonely :("))));[((33601741-#("i am not wally stop asking me for wally hub support please fuck off")))]=(((#{}+215453412)));[(426715271)]=((256));[((719763721-#("@everyone designs are done. luraph website coming.... eta JULY 2020")))]=(((#{285;922;856;910;}+69468)));['ioP5fDBYa']=((165));[(983634183)]=((390673323));[(369711303)]=(((48-#("still waiting for luci to fix the API :|"))));[(836315543)]=((16777216));[((#{(function(...)return 282,286,563,731;end)()}+445008939))]=((3));[((498989665-#("concat was here")))]=(((5074-#("psu premium chads winning (only joe biden supporters use the free version)"))));[((176478394-#("psu premium chads winning (only joe biden supporters use the free version)")))]=((1));[(419422007)]=("\108");[(718626393)]=((26154795));['yENiVPan']=((20));[((#{576;819;320;967;(function(...)return 779,932,893,837;end)()}+506553070))]=(((93-#("psu 34567890fps, luraph 1fps, xen 0fps"))));[((#{974;299;573;(function(...)return 874;end)()}+365949432))]=(((#{63;676;(function(...)return 75,790,780,717;end)()}+38508)));jkYJLJfNv=("\118");["VQp5jXnE"]=("\102");[(984476458)]=(((310672-#("who the fuck looked at synapse xen and said 'yeah this is good enough for release'"))));[((549085029-#("Luraph v12.6 has been released!: changed absolutely fucking nothing but donate to my patreon!")))]=("\98");[((#{843;441;850;463;(function(...)return 296,168,49,414;end)()}+306748970))]=("\116");["ppD4L7"]=(((#{254;(function(...)return 16,...;end)(1,75)}+28)));[(313283976)]=((31));}),...);
end
