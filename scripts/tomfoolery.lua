-- spinning brick or sumn

local part = Instance.new("Part")
part.Parent = workspace
part.Anchored = true

local bangbang = "rbxassetid://10307385384"
local chief1 = Instance.new("Decal")
local chief2 = chief1:Clone()
chief1.Parent = part
chief2.Parent = part
chief1.Face = Enum.NormalId.Front
chief2.Face = Enum.NoramlId.Back

local randVector = Vector3.new
part.Position = Vector3.new(math.random(0, 100),math.random(0, 10),math.random(0,100))
part.Size = Vector3.new(10, 10, 0.1)

while task.wait(0.1) do
	part.CFrame = part.CFrame * CFrame.Angles(0, math.rad(1), 0)
end