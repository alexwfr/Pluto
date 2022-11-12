local StarId = {
	[2440150407] = true, -- juke
	[2516401782] = true, -- Booster (1024678803206848532)
	[2503559878] = true, -- Robux (847883834170802186
	[2542554829] = true, -- Robux (897620119960821810)
}

local OwnerId = {
	[244946092] = true,
	[2440150407] = true,
} 

function PlutoNames()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if StarId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
				end
			end
		elseif OwnerId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] '..v.DisplayName)
				end
			end
		elseif v.Character then
			if v.Character.Parent.Name == 'Players' then
				if not v.Character.UpperTorso:FindFirstChild("BodyFrontAttachment") then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😁]'..v.DisplayName)
				end
				if not v.Character.UpperTorso:FindFirstChild('BodyBackAttachment') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[RAYX]'..v.DisplayName)
				end
				if not v.Character.UpperTorso:FindFirstChild('OriginalSize') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[SWAGMODE]' ..v.DisplayName)
				end
			end
		end
	end
end
local success,err = pcall(PlutoNames)
return StarId