local diff = 1
local surv = 0

net.Receive("DiffMode", function(ply)
	diff = net.ReadInt(8)
	GetConVar("hl2c_difficulty"):SetInt(diff)
	file.Write("hl2c_data/config.txt", "WARNING: Unless you know what you're doing, I suggest you leave this file\n")
	file.Append("hl2c_data/config.txt", "Difficulty: \n")
	file.Append("hl2c_data/config.txt", diff .. "\n")
	file.Append("hl2c_data/config.txt", "Survival Mode: \n")
	file.Append("hl2c_data/config.txt", GetConVar("hl2c_survivalmode"):GetInt() .. "\n")
end)
net.Receive("Diff_Vote", function(ply)
	local vote = net.ReadInt(8)
	
end)

net.Receive("Diff_Change", function() 
	diff = net.ReadInt(8)
	GetConVar("hl2c_difficulty"):SetInt(diff)
	file.Write("hl2c_data/config.txt", "WARNING: Unless you know what you're doing, I suggest you leave this file\n")
	file.Append("hl2c_data/config.txt", "Difficulty: \n")
	file.Append("hl2c_data/config.txt", diff .. "\n")
	file.Append("hl2c_data/config.txt", "Survival Mode: \n")
	file.Append("hl2c_data/config.txt", GetConVar("hl2c_survivalmode"):GetInt() .. "\n")
end)

net.Receive("Survival", function()
	surv = net.ReadInt(8)
	GetConVar("hl2c_survivalmode"):SetInt(surv)
	file.Write("hl2c_data/config.txt", "WARNING: Unless you know what you're doing, I suggest you leave this file\n")
	file.Append("hl2c_data/config.txt", "Difficulty:\n")
	file.Append("hl2c_data/config.txt", GetConVar("hl2c_difficulty"):GetInt() .. "\n")
	file.Append("hl2c_data/config.txt", "Survival Mode:\n")
	file.Append("hl2c_data/config.txt", surv)
end)

net.Receive("SurvMode", function(len, ply, survInt)
	surv = net.ReadInt(8)
	GetConVar("hl2c_survivalmode"):SetInt(surv)
	file.Write("hl2c_data/config.txt", "WARNING: Unless you know what you're doing, I suggest you leave this file\n")
	file.Append("hl2c_data/config.txt", "Difficulty:\n")
	file.Append("hl2c_data/config.txt", GetConVar("hl2c_difficulty"):GetInt() .. "\n")
	file.Append("hl2c_data/config.txt", "Survival Mode:\n")
	file.Append("hl2c_data/config.txt", surv)
end)