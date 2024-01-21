--[[
	A modern solution to get Explorer class icons with ease.
	Created by break-core
]]

return function(className: string, iconSize: number?, studioTheme: "Light" | "Dark"?): string
	--- Variables
	className = className
	iconSize = iconSize or 1
	studioTheme = studioTheme or settings().Studio.Theme.Name

	if className then
		--- Get the default sized icon
		if iconSize == 1 then
			return `rbxasset://studio_svg_textures/Shared/InsertableObjects/{studioTheme}/Standard/{className}.png`
			-- Get the 2x or 3x icon
		elseif iconSize == 2 or 3 then
			return `rbxasset://studio_svg_textures/Shared/InsertableObjects/{studioTheme}/Standard/{className}@{iconSize}x.png`
		end
	end
end
