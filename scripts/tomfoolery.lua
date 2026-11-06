-- spinning brick or sumn

local part = Instance.new("Part")
part.Parent = workspace
part.Anchored = true
local function findMrKeef()
	local count = 0
	-- if more than 5 bangbangs just remove a random one
	for _, v in pairs(workspace:GetChildren()) do
		count += 1
		if count > 5 do
			if v.Name == "bangbang" then
				v:Destroy()
				return
			end
		end
	end
end
findMrKeef()

part.Name = "bangbang"
part.Transparency = 0.5
part.CanCollide = false

local bangbang = "rbxasset://textures/face.png"
local chief1 = Instance.new("Decal")
local chief2 = chief1:Clone()
chief1.Parent = part
chief2.Parent = part
chief1.Face = Enum.NormalId.Front
chief2.Face = Enum.NormalId.Back
chief1.Texture = bangbang
chief2.Texture = bangbang

local randVector = Vector3.new
part.Position = Vector3.new(math.random(0, 100),math.random(10,10),math.random(0,100))
part.Size = Vector3.new(10, 10, 0.1)

local function spinit()
	while task.wait(0.1) do
		part.CFrame = part.CFrame * CFrame.Angles(0, math.rad(1), 0)
	end
end
spawn(spinit)