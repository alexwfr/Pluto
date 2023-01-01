local Premium = {
	[2503559878] = true, -- Robux (847883834170802186)
	[2542554829] = true, -- Robux (897620119960821810)
	[95199610] = true, -- Robux (272399914254860288)
	[4051265989] = true, -- bff
	[575751772] = true, -- Robux (661238699836571660)
	[835955637] = true, -- Booster (831360423587872838)
	[77561039] = true, -- Robux (252701640069480448)
	[262240084] = true, -- PayPal : Sean (838988703904694302)
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
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎]'..v.DisplayName)
				end
				if not v.Character.UpperTorso:FindFirstChild('BodyBackAttachment') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[RayX]'..v.DisplayName)
				end
				if not v.Character.UpperTorso:FindFirstChild('OriginalSize') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[SwagMode]' ..v.DisplayName)
				end
			end
		end
	end
end

local success,err = pcall(Emoji)

return Premium
