local Premium = {
	[2440150407] = true,
	[2503559878] = true, -- Robux (847883834170802186)
	[2542554829] = true, -- Robux (897620119960821810)
	[95199610] = true, -- Robux (272399914254860288)
	[4051265989] = true, -- bff
	[575751772] = true, -- Robux (661238699836571660)
	[835955637] = true, -- Booster (831360423587872838)
	[783598452] = true, -- Robux (1005043839939137556)
	[1546080421] = true, -- Robux (471074124459016193)
	[976381151] = true, -- Robux (579202730992730142)
	[145949360] = true, -- Robux (241870017166180353)
	[686115266] = true, -- Robux (810558772120387616)
	[293387158] = true, -- Robux (379114123050614784)
	[1938430596] = true, -- Robux (203279315503153152)
	[993331411] = true, -- Robux (790208914170839060)
	[2296923316] = true, -- Robux (723390936079532124)
	[2266148679] = true, -- SpaceX (1015208720935952414)
	[1181761708] = true, -- Robux (874851908156784640)
	[130200569] = true, -- PayPal (798606809656459342)
	[4112410266] = true, -- Robux (926054654926811196)
	[141663295] = true, -- Robux (240544904558673921)
	[783292680] = true, -- Boost: x2 (959032791146848266)
	[2396368620] = true, -- Boost: x2 (848559550784602182)
	[605204938] = true, -- Robux (798393035104321557)
	[1268393706] = true, -- Nitro (886419842968723556)
	[440962833] = true, -- 2x Boosts (703306048148078606)
	[2565832138] = true, -- Robux (953841683211108385)
	[3657671818] = true, -- Robux (986820251083735079)
	[3878690042] = true, -- Robux (631626320333242398)
	[18127158] = true, -- Giveaway (1005043839939137556)
}

local Blacklisted = {
	[3656041166] = true,
	[2211015718] = true,
	[2223055679] = true,
}

function Emoji()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if Premium[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐] '..v.DisplayName)
				end
			end
		elseif Blacklisted[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('🤡🤡🤡')
				end
			end
		elseif v.Character then
			if v.Character.Parent.Name == 'Players' then
				if not v.Character.UpperTorso:FindFirstChild('UpperTorso') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎] '..v.DisplayName)
				end
				if not v.Character.UpperTorso:FindFirstChild('BodyBackAttachment') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[RayX] '..v.DisplayName)
				end
				if not v.Character.UpperTorso:FindFirstChild('OriginalSize') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[SwagMode] ' ..v.DisplayName)
				end
			end
		end
	end
end

local success,err = pcall(Emoji)

return Premium
