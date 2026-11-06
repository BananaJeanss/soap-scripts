-- spinning brick or sumn

local part = Instance.new("Part")
part.Parent = workspace
part.Anchored = true

local randVector = Vector3.new
part.Position = Vector3.new(math.random(0, 100),math.random(0, 100),math.random(0,100))
part.Size = Vector3.new(10, 10, 0.1)

while task.wait(0.1) do
	part.CFrame = part.CFrame * CFrame.Angles(0, math.rad(1), 0)
end