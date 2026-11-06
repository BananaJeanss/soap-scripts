local spawnP = Instance.new("SpawnLocation")
spawnP.Anchored = true
spawnP.Size = Vector3.new(5,1,5)
spawnP.BrickColor = BrickColor.new("Pastel Blue")
spawnP.Neutral = true
local spawnP2 = spawnP:Clone()
spawnP2.BrickColor = BrickColor.new("Really Red")

-- stand
local base = Instance.new("Part")
base.Anchored = true
base.Size = Vector3.new(15,1,12)
base.Position = Vector3.new(20,2,20)
spawnP.Position = Vector3.new(15,3,20)
spawnP2.Position = Vector3.new(25,3,20)

-- create folder if not exists
if not workspace:FindFirstChild("SpawnStands") then
	foldit = Instance.new("Folder")
	foldit.Parent = workspace
	folit.Name = "SpawnStands"
end
for i, v in pairs(workspace.SpawnStands:GetChildren()) do
	v:Destroy()
end
base.Parent = workspace.SpawnStands
spawnP.Parent = workspace.SpawnStands
spawnP2.Parent = workspace.SpawnStands