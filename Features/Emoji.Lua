local Premium = {
	[2503559878] = true, -- Robux (847883834170802186)
	[2542554829] = true, -- Robux (897620119960821810)
	[95199610] = true, -- Robux (272399914254860288)
	[4051265989] = true, -- bff
	[575751772] = true, -- Robux (661238699836571660)
	[835955637] = true, -- Booster (831360423587872838)
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
	[1181761708] = true, -- Robux (874851908156784640)
	[130200569] = true, -- PayPal: Juke (798606809656459342)
	[4112410266] = true, -- Robux (926054654926811196)
	[246800762] = true, -- Paypal: Alex (828677717011595286)
	[2556759841] = true, -- Giveaway (911538216945979402)
	[1798355668] = true, -- Giveaway (969164214163898408)
	[4203395322] = true, -- Giveaway (503693331692388354)
	[12277944] = true, -- Paypal: Alex (1005043839939137556)
	[673630675] = true, -- Boost: Toph (495307267672113182)
	[3311678096] = true, -- Boost: 1080p (381161884298248193)
	[1029039505] = true, -- Giveaway (206327926818471936)
	[141663295] = true, -- Robux (240544904558673921)
	[3159617372] = true, -- Giveaway (926054654926811196)
	[1403354654] = true, -- Giveaway (417106148605296641)
        [3957754419] = true, -- Giveaway (953841683211108385)
	[18127158] = true, -- Alex (1005043839939137556)
	[783292680] = true, -- Boost: x2 (959032791146848266)
	[2396368620] = true, -- Boost: x2 (848559550784602182)
	[605204938] = true, -- Robux (798393035104321557)
	[1268393706] = true, -- Nitro: Juke (886419842968723556)
	[440962833] = true, -- 2x Boosts (703306048148078606)
}

local Blacklisted = {
	[3656041166] = true,
	[2211015718] = true,
	[2223055679] = true,
}

local owners = {
	[2440150407] = true,
	[18127158] = true,
	[2910453191] = true,
	[3081029263] = true,
}


local devs = {
	[1] = true,
}

local plutostaff = {
	[944247484] = true, -- skyy
	[262240084] = true, -- slappyvardis
	[3143604534] = true, -- targeteater30
	[3957754419] = true, -- coby
	[2412272837] = true, -- curvs
	[2349606723] = true, -- haster
	[77561039] = true, -- bondo daddy
	[1656711129] = true, -- foschi
}

function Emoji()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if Premium[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐ PREMIUM] '..v.DisplayName)
				end
			end
		elseif owners[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎 PLUTO OWNERS] '..v.DisplayName)
				end
			end
                elseif devs[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🛠 DEVELOPER] '..v.DisplayName)
				end
			end
			
	        elseif plutostaff[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🛡️ PLUTO STAFF] '..v.DisplayName)
				end
			end
		elseif Blacklisted[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('🤡🤡🤡 BLACKLISTED')
				end
			end
		elseif v.Character then
			if v.Character.Parent.Name == 'Players' then
				if not v.Character.UpperTorso:FindFirstChild('UpperTorso') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎 PLUTO USER] '..v.DisplayName)
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
