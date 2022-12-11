local Premium = {
	[2503559878] = true, -- Robux (847883834170802186)
	[2542554829] = true, -- Robux (897620119960821810)
	[79287609] = true, -- Booster (297981758933303296)
	[3832172848] = true, -- Booster (827330194247385120)
	[1188720662] = true, -- 1015388231346429962
	[95199610] = true, -- Robux (272399914254860288)
	[4051265989] = true, -- bff
	[3478064314] = true, -- Booster (946079531842822264)
	[575751772] = true, -- Robux (661238699836571660)
	[1560160909] = true, -- Booster (827330194247385120)
	[3884067907] = true, -- Booster (799464486082838538)
	[835955637] = true, -- Booster (831360423587872838)
	[2867786657] = true, -- Booster (767343137386397737)
	[2399790274] = true, -- Booster (667383883863556126)
	[3333843310] = true, -- Booster (1024678803206848532)
	[1304260775] = true, -- Booster (712136798935187807)
	[77561039] = true, -- Robux (252701640069480448)
	[247879505] = true, -- Booster (938784319508471849)
}

local Blacklisted = {
	[3656041166] = true,
	[2211015718] = true,
}

local Staff = {
	[1521778981] = true, -- Moderator (716924296345157702)
	[3087820975] = true, -- Moderator (712872169084026940)
	[350549342] = true, -- Trial Staff (942613997323182210)
}

local Juke = {
	[2440150407] = true,
}

function Emoji()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if Premium[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
				end
			end
		elseif Juke[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]'..v.DisplayName)
				end
			end
		elseif Blacklisted[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('🤡🤡🤡')
				end
			end
		elseif Staff[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎]'..v.DisplayName)
				end
			end
		elseif v.Character then
			if v.Character.Parent.Name == 'Players' then
				if not v.Character.UpperTorso:FindFirstChild('UpperTorso') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💖]'..v.DisplayName)
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

local success,err = pcall(Emoji)

return Premium