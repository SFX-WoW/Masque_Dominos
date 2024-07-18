--[[

	This file is part of 'Masque: Dominos', an add-on for World of Warcraft. For bug reports,
	documentation and license information, please visit https://github.com/SFX-WoW/Masque_Dominos.

	* File...: Skins.lua
	* Author.: StormFX, Tuller

	Dominos Skin

]]

local MSQ = LibStub and LibStub("Masque", true)
if not MSQ then return end

local _, Core = ...

----------------------------------------
-- Internal
---

local L = Core.Locale

----------------------------------------
-- Locals
---

local API_VERSION = 100209

-- Skin Info
local Authors = {"StormFX", "Tuller"}
local Version = "@project-version@"
local Websites = {
	"https://github.com/SFX-WoW/Masque_Dominos",
	"https://www.curseforge.com/wow/addons/masque-dominos",
	"https://addons.wago.io/addons/masque-dominos",
	--"https://www.wowinterface.com/downloads/info8869",
}

----------------------------------------
-- Dominos
---

MSQ:AddSkin("Dominos", {
	Template = "Blizzard Classic",
	API_VERSION = API_VERSION,
	Shape = "Modern",

	-- Info
	Description = L["A port of the original Dominos skin for Masque."],
	Authors = Authors,
	Version = Version,
	Websites = Websites,

	-- Skin
	-- Mask = Template.Mask,
	-- Backdrop = Template.Backdrop,
	Icon = {
		Texture = [[Interface\Icons\INV_Misc_Bag_08]],
		TexCoords = {0.06, 0.94, 0.06, 0.94},
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		DrawLayer = "BACKGROUND",
		DrawLevel = 0,
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	SlotIcon = "Icon",
	Normal = {
		Texture = [[Interface\Buttons\UI-Quickslot2]],
		-- TexCoords = {0, 1, 0, 1},
		Color = { 1, 1, 1, 0.5 },
		-- EmptyTexture = [[Interface\Buttons\UI-Quickslot2]],
		-- EmptyCoords = {0, 1, 0, 1},
		-- EmptyColor = {1, 1, 1, 0.5},
		BlendMode = "BLEND",
		DrawLayer = "ARTWORK",
		DrawLevel = 0,
		Width = 66,
		Height = 66,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
		UseStates = true,
	},
	-- Disabled = Template.Disabled,
	-- Pushed = Template.Pushed,
	-- Flash = Template.Flash,
	-- HotKey = Template.HotKey,
	-- Count = Template.Count,
	-- Duration = Template.Duration,
	-- Checked = Template.Checked,
	-- SlotHighlight = Template.SlotHighlight,
	-- Name = Template.Name,
	-- Border = Template.Border,
	-- IconBorder = Template.IconBorder,
	-- Gloss = Template.Gloss,
	-- NewAction = Template.NewAction,
	-- SpellHighlight = Template.SpellHighlight,
	-- AutoCastable = Template.AutoCastable,
	-- IconOverlay = Template.IconOverlay,
	-- UpgradeIcon = Template.UpgradeIcon,
	-- IconOverlay2 = Template.IconOverlay2,
	-- QuestBorder = Template.QuestBorder,
	-- NewItem = Template.NewItem,
	-- SearchOverlay = Template.SearchOverlay,
	-- ContextOverlay = Template.ContextOverlay,
	-- JunkIcon = Template.JunkIcon,
	-- Highlight = Template.Highlight,
	-- [ AutoCastOverlay (Retail) ]
	-- AutoCast_Frame = Template.AutoCast_Frame,
	-- AutoCast_Shine = Template.AutoCast_Shine,
	AutoCast_Mask = {
		-- Atlas = "UI-HUD-ActionBar-PetAutoCast-Mask",
		-- UseAtlasSize = false,
		Texture = [[Interface\AddOns\Masque\Textures\Modern\AutoCast-Mask]],
		-- TexCoords = {0, 1, 0, 1},
		Width = 32,
		Height = 32,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = -0.5,
		OffsetY = 0.5,
		-- SetAllPoints = nil,
	},
	AutoCast_Corners = {
		Atlas = "UI-HUD-ActionBar-PetAutoCast-Corners",
		UseAtlasSize = false,
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 1,
		Width = 38,
		Height = 38,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = -0.5,
		OffsetY = 0.5,
		-- SetAllPoints = true,
	},
	-- [ AutoCastShine (Classic) ]
	AutoCastShine = {
		Width = 32,
		Height = 32,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 1,
		OffsetY = -1,
		-- SetAllPoints = nil,
	},
	-- [ Cooldowns ]
	Cooldown = {
		Texture = [[Interface\AddOns\Masque\Textures\Square\Mask]],
		EdgeTexture = [[Interface\AddOns\Masque\Textures\Modern\Edge]],
		PulseTexture = [[Interface\Cooldown\star4]],
		Color = {0, 0, 0, 0.7},
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	ChargeCooldown = {
		EdgeTexture = [[Interface\AddOns\Masque\Textures\Modern\Edge]],
		PulseTexture = [[Interface\Cooldown\star4]],
		Width = 34,
		Height = 34,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = true,
	},
	-- [ SpellAlert ]
	SpellAlert = {
		Width = 44,
		Height = 44,
		Classic = {
			Height = 34,
			Width = 34,
		},
		Thin = {
			Height = 33,
			Width = 33,
		},
	},
})
