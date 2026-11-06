-- spinning brick or sumn

local part = Instance.new("Part")
part.Parent = workspace
part.Anchored = true

local randVector = Vector3.new
part.Position = Vector3.new(math.random(),math.random(),math.random())