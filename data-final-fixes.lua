--data-final-fixes.lua
--k2 stuff
if mods["Krastorio2"] then
	-- undergrounds
	data.raw["item"]["underground-belt"].subgroup = "undergrounds"
	data.raw["item"]["fast-underground-belt"].subgroup = "undergrounds"
	data.raw["item"]["express-underground-belt"].subgroup = "undergrounds"
	data.raw["item"]["kr-advanced-underground-belt"].subgroup = "undergrounds"
	data.raw["item"]["kr-superior-underground-belt"].subgroup = "undergrounds"
	-- splitters
	data.raw["item"]["splitter"].subgroup = "splitters"
	data.raw["item"]["fast-splitter"].subgroup = "splitters"
	data.raw["item"]["express-splitter"].subgroup = "splitters"
	data.raw["item"]["kr-advanced-splitter"].subgroup = "splitters"
	data.raw["item"]["kr-superior-splitter"].subgroup = "splitters"
	-- loaders
	data.raw["item"]["kr-loader"].subgroup = "loaders"
	data.raw["item"]["kr-fast-loader"].subgroup = "loaders"
	data.raw["item"]["kr-express-loader"].subgroup = "loaders"
	data.raw["item"]["kr-advanced-loader"].subgroup = "loaders"
	data.raw["item"]["kr-superior-loader"].subgroup = "loaders"
	-- steel pipes
	data.raw["item"]["kr-steel-pipe"].subgroup = "steel-pipes"
	data.raw["item"]["kr-steel-pipe-to-ground"].subgroup = "steel-pipes"
	data.raw["item"]["kr-steel-pump"].subgroup = "steel-pipes"
	-- containers to AAI's order
	data.raw["item-subgroup"]["kr-logistics-2"].order = "aa"
	data.raw["item-subgroup"]["kr-logistics-3"].order = "aaa"
	data.raw["item"]["kr-medium-container"].subgroup = "kr-logistics-2"
	data.raw["item"]["kr-medium-container"].order = "a"
	data.raw["item"]["kr-medium-passive-provider-container"].order = "b"
	data.raw["item"]["kr-medium-active-provider-container"].order = "c"
	data.raw["item"]["kr-medium-storage-container"].order = "d"
	data.raw["item"]["kr-medium-buffer-container"].order = "e"
	data.raw["item"]["kr-medium-requester-container"].order = "f"
	data.raw["item"]["kr-big-container"].subgroup = "kr-logistics-3"
	data.raw["item"]["kr-big-container"].order = "a"
	data.raw["item"]["kr-big-passive-provider-container"].order = "b"
	data.raw["item"]["kr-big-active-provider-container"].order = "c"
	data.raw["item"]["kr-big-storage-container"].order = "d"
	data.raw["item"]["kr-big-buffer-container"].order = "e"
	data.raw["item"]["kr-big-requester-container"].order = "f"
	-- recipes aswell for some reason
	data.raw["recipe"]["kr-medium-container"].subgroup = "kr-logistics-2"
	data.raw["recipe"]["kr-medium-container"].order = "a"
	data.raw["recipe"]["kr-medium-passive-provider-container"].order = "b"
	data.raw["recipe"]["kr-medium-active-provider-container"].order = "c"
	data.raw["recipe"]["kr-medium-storage-container"].order = "d"
	data.raw["recipe"]["kr-medium-buffer-container"].order = "e"
	data.raw["recipe"]["kr-medium-requester-container"].order = "f"
	data.raw["recipe"]["kr-big-container"].subgroup = "kr-logistics-3"
	data.raw["recipe"]["kr-big-container"].order = "a"
	data.raw["recipe"]["kr-big-passive-provider-container"].order = "b"
	data.raw["recipe"]["kr-big-active-provider-container"].order = "c"
	data.raw["recipe"]["kr-big-storage-container"].order = "d"
	data.raw["recipe"]["kr-big-buffer-container"].order = "e"
	data.raw["recipe"]["kr-big-requester-container"].order = "f"
end

-- miniloaders
if mods["miniloader"] then
	local mlprefixes = {
		["chute-"] = "zz",
		[""] = "xa",
		["fast-"] = "xb",
		["express-"] = "xc",
		["kr-advanced-"] = "xd",
		["kr-superior-"] = "xe",
		["space-"] = "xf",
		["deep-space-"] = "xg",
	}
	for prefix, order in pairs(mlprefixes) do
		local loader = data.raw["item"][prefix .. "miniloader"]
		local filter_loader = data.raw["item"][prefix .. "filter-miniloader"]
		if loader then
			loader.subgroup = "miniloaders"
			loader.order = order .. "-miniloader"
		end
		if filter_loader then
			filter_loader.subgroup = "miniloaders-filtered"
			filter_loader.order = order .. "-miniloader"
		end
	end
end

--ducts
if mods["FluidMustFlow"] then
	data.raw["item"]["duct-small"].subgroup = "ducts"
	data.raw["item"]["duct"].subgroup = "ducts"
	data.raw["item"]["duct-long"].subgroup = "ducts"
	data.raw["item"]["duct-t-junction"].subgroup = "ducts"
	data.raw["item"]["duct-curve"].subgroup = "ducts"
	data.raw["item"]["duct-cross"].subgroup = "ducts"
	data.raw["item"]["duct-underground"].subgroup = "ducts"
	data.raw["item"]["non-return-duct"].subgroup = "ducts"
	data.raw["item"]["duct-end-point-intake"].subgroup = "ducts"
	data.raw["item"]["duct-end-point-outtake"].subgroup = "ducts"
end

--manifolds
if mods["Manifolds"] then
	data.raw["item"]["manifold-1x3"].subgroup = "manifolds"
	data.raw["item"]["manifold-1x5"].subgroup = "manifolds"
	data.raw["item"]["manifold-1x7"].subgroup = "manifolds"
	data.raw["item"]["manifold-1x9"].subgroup = "manifolds"
end

--noxys waterfill -> dectorio terrain group
if mods["Noxys_Waterfill"] and mods["Dectorio"] then
	data.raw["item"]["waterfill"].group = "dectorio"
	data.raw["item"]["waterfill"].subgroup = "waterfill"
	data.raw["item"]["deepwaterfill"].group = "dectorio"
	data.raw["item"]["deepwaterfill"].subgroup = "waterfill"
	data.raw["item"]["shallowwaterfill"].group = "dectorio"
	data.raw["item"]["shallowwaterfill"].subgroup = "waterfill"
	data.raw["item"]["mudwaterfill"].group = "dectorio"
	data.raw["item"]["mudwaterfill"].subgroup = "waterfill"
	data.raw["item"]["waterfill-green"].group = "dectorio"
	data.raw["item"]["waterfill-green"].subgroup = "waterfill"
	data.raw["item"]["deepwaterfill-green"].group = "dectorio"
	data.raw["item"]["deepwaterfill-green"].subgroup = "waterfill"
end

--k2 reinforced plates -> dectorio
if mods["Krastorio2"] and mods["Dectorio"] then
	data.raw["item"]["kr-black-reinforced-plate"].group = "dectorio"
	data.raw["item"]["kr-black-reinforced-plate"].subgroup = "flooring-basic"
	data.raw["item"]["kr-white-reinforced-plate"].group = "dectorio"
	data.raw["item"]["kr-white-reinforced-plate"].subgroup = "flooring-basic"
end

-- junctions
if mods["Flow Control"] then
	data.raw["item"]["pipe-junction"].order = "a[pipe]-a[pipe]-a"
	data.raw["item"]["pipe-elbow"].order = "a[pipe]-a[pipe]-b"
	data.raw["item"]["pipe-straight"].order = "a[pipe]-a[pipe]-c"
end

-- space junctions
if mods["space-pipe-junctions"] then
	data.raw["item"]["space-pipe-t-junction"].order = "a[pipe]-s[space]-aa"
	data.raw["item"]["space-pipe-elbow-junction"].order = "a[pipe]-s[space]-ab"
	data.raw["item"]["space-pipe-straight-junction"].order = "a[pipe]-s[space]-ac"
end


-- circuit network to schall group
if mods["SchallCircuitGroup"] then
	if mods["aai-signal-transmission"] then
		data.raw["item"]["aai-signal-sender"].subgroup = "aai"
		data.raw["item"]["aai-signal-receiver"].subgroup = "aai"
	end
	if mods["DeadlockLargerLamp"] then
		data.raw["item"]["deadlock-copper-lamp"].subgroup = "circuit-visual"
		data.raw["item"]["deadlock-large-lamp"].subgroup = "circuit-visual"
		data.raw["item"]["deadlock-floor-lamp"].subgroup = "circuit-visual"
	end

	if mods["SantasNixieTubeDisplay"] or mods["UPSFriendlyNixieTubeDisplay"] then
		data.raw["item"]["SNTD-old-nixie-tube"].subgroup = "nixie-tubes"
		data.raw["item"]["SNTD-nixie-tube"].subgroup = "nixie-tubes"
		data.raw["item"]["SNTD-nixie-tube-small"].subgroup = "nixie-tubes"
	end

	local invsens = data.raw["item"]["item-sensor"]
	local ghstscn = data.raw["item"]["ghost-scanner"]
	local pushbtn = data.raw["item"]["pushbutton"]
	if invsens then
		invsens.subgroup = "circuit-combinator"
		invsens.group = "circuit"
	end
	if ghstscn then
		ghstscn.subgroup = "circuit-combinator"
		ghstscn.group = "circuit"
	end
	if pushbtn then
		pushbtn.subgroup = "circuit-input"
	end
end


-- autolinked chest
if mods["SchallAutolinkedChest"] then
	local x = data.raw["item"]["Schall-autolinked-chest-1"];
	if mods["Krastorio2"] then
		x.subgroup = "storage"
		x.order = "z" .. x.order
	elseif mods["aai-containers"] then
		x.subgroup = "container-1"
		x.order = "z" .. x.order
	end
end

if mods["aai-containers"] and mods["Krastorio2"] then
	data.raw["item"]["wooden-chest"].subgroup = "storage"
	data.raw["item"]["wooden-chest"].order = "a"
	data.raw["item"]["iron-chest"].subgroup = "storage"
	data.raw["item"]["iron-chest"].order = "aa"
end
