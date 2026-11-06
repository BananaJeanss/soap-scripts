-- spinning brick or sumn

local part = Instance.new("Part")
part.Parent = workspace
part.Anchored = true
-- if more than 5 bangbangs just remove a random one
for _, v in pairs(workspace:GetChildren()) do
	if v.Name == "bangbang" then
		v:Destroy()
		return
	end
end
part.Name = "bangbang"
part.Transparency = 0.5

local bangbang = "rbxassetid://10307385384"
local chief1 = Instance.new("Decal")
local chief2 = chief1:Clone()
chief1.Parent = part
chief2.Parent = part
chief1.Face = Enum.NormalId.Front
chief2.Face = Enum.NormalId.Back
chief1.Texture = bangbang
chief2.Texture = bangbang

local randVector = Vector3.new
part.Position = Vector3.new(math.random(0, 100),math.random(0, 10),math.random(0,100))
part.Size = Vector3.new(10, 10, 0.1)

while task.wait(0.1) do
	part.CFrame = part.CFrame * CFrame.Angles(0, math.rad(1), 0)
end