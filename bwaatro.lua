-- bwaatro main file
bwaatro = bwaatro or {}
-- start of loading doohickeys
local jokers = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "bwuuu/jokers")
for _, file in ipairs(jokers) do
    assert(SMODS.load_file("bwuuu/jokers/" .. file))()
end

local blinds = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "bwuuu/blinds")
for _, file in ipairs(blinds) do
    assert(SMODS.load_file("bwuuu/blinds/" .. file))()
end

local stakes = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "bwuuu/stakes")
for _, file in ipairs(stakes) do
    assert(SMODS.load_file("bwuuu/stakes/" .. file))()
end

local stickers = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "bwuuu/stickers")
for _, file in ipairs(stickers) do
    assert(SMODS.load_file("bwuuu/stickers/" .. file))()
end

local skiptags = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "bwuuu/tags")
for _, file in ipairs(skiptags) do
    assert(SMODS.load_file("bwuuu/tags/" .. file))()
end

local packs = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "bwuuu/packs")
for _, file in ipairs(packs) do
    assert(SMODS.load_file("bwuuu/packs/" .. file))()
end

local vouchers = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "bwuuu/vouchers")
for _, file in ipairs(vouchers) do
    assert(SMODS.load_file("bwuuu/vouchers/" .. file))()
end

local consumables = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "bwuuu/consumables")
for _, file in ipairs(consumables) do
    assert(SMODS.load_file("bwuuu/consumables/" .. file))()
end

local sysgreen = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "bwuuu/planets/sysgreen")
for _, file in ipairs(sysgreen) do
    assert(SMODS.load_file("bwuuu/planets/sysgreen/" .. file))()
end

local sysred = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "bwuuu/planets/sysred")
for _, file in ipairs(sysred) do
    assert(SMODS.load_file("bwuuu/planets/sysred/" .. file))()
end

sendInfoMessage("loaded all content", "bwaatro")
-- end of loading doohickeys


-- start of assets i dont want to seperate
SMODS.Font{
    key = "OpenSans",
    path = "OpenSans.ttf",
    render_scale = 200,
    TEXT_HEIGHT_SCALE = 0.83,
    TEXT_OFFSET = {x=0,y=0},
    FONTSCALE = 0.1,
    squish = 1,
    DESCSCALE = 1
}
SMODS.Font{
    key = "Papyrus",
    path = "papyru.ttf",
    TEXT_HEIGHT_SCALE = 0.80,
    TEXT_OFFSET = {x=0,y=0},
    FONTSCALE = 0.1,
    squish = 1.5,
    DESCSCALE = 1.2
}
SMODS.Atlas {
    key = "bwaaajoker",
    path = "Jokers.png",
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = "bwredgreen",
    path = "redgreen.png",
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = "bwaaaboosters",
    path = "Boosters.png",
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = "placeholder",
    path = "placeholder.png",
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = "bwaaablind",
    path = "Blinds.png",
    atlas_table = 'ANIMATION_ATLAS',
    px = 34,
    py = 34,
    frames = 21

}
SMODS.Sound {
    key = "music_joujouyuujo",
    path = 'music_joujouyuujo.ogg',
    sync = false,
    pitch = 1,
    select_music_track = function()
    return next(SMODS.find_card("j_bwaaa_nano"))
    end
}
SMODS.Sound {
    key = "music_oneofthem",
    path = 'music_oneofthem.ogg',
    sync = false,
    pitch = 1,
    select_music_track = function()
    return next(SMODS.find_card("j_bwaaa_oneofthem"))
    end
}
-- end of assets i dont want to seperate


-- start of menu doohickeys
SMODS.current_mod.menu_cards = function()
return {
    {key = 'j_bwaaa_thebwaaa'}
}
end

-- code mostly from Yahimod
G.C.BWAAAPINK = HEX("edb1be")
G.C.BWAAADARKERPINKBUTSTILLQUITEPINK = HEX("b47988")
local menumenumenu = Game.main_menu
function Game.main_menu(change_context)
    menumenumenu(change_context)
    local sargs = {mid_flash = change_context == "splash" and 1.6 or 0}
    ease_value(sargs, "mid_flash", -(change_context == "splash" and 1.6 or 0), nil, nil, nil, 4)
    G.SPLASH_BACK:define_draw_steps({{
        shader = "splash",
        send = {
            {name = "time", ref_table = G.TIMERS, ref_value = "REAL"},
            {name = "vort_speed", val = 0.4},
            {name = "colour_1", ref_table = G.C, ref_value = "BWAAAPINK"},
            {name = "colour_2", ref_table = G.C, ref_value = "BWAAADARKERPINKBUTSTILLQUITEPINK"},
            {name = "mid_flash", ref_table = sargs, ref_value = "mid_flash"},
            {name = "vort_offset", val = 0}
        }}})
end

-- code from SMODS
local bwaaver = tostring(SMODS.current_mod.version)
local ref = Game.main_menu
function Game:main_menu(change_context)
    ref(self, change_context)
    UIBox {
    definition = {
        n = G.UIT.ROOT,
        config = {
            align = "cm",
            colour = G.C.UI.TRANSPARENT_DARK
        },
        nodes = {
            {
                n = G.UIT.T,
                config = {
                    scale = 0.3,
                    text = string.format("bwaatro-%s", bwaaver),
                    colour = G.C.UI.TEXT_LIGHT
                }
            }
        }
    },
    config = {
        align = "tri",
        bond = "Weak",
        offset = {
            x = 0,
            y = 0.6
        },
        major = G.ROOM_ATTACH
    }
    }
end
-- end of menu doohickeys


-- start of tabs
local testmenu = function()
    return {
    {
    label = "haii",
    tab_definition_function = function()
        return {
            n=G.UIT.ROOT,
            config={
                align = "cm",
                colour = G.C.BLACK,
                r = 0.1,
                minh = 6,
                minw = 8,
                emboss = 0.05,
                padding = 0.1
            },
            nodes={
            {n=G.UIT.R, config={align = "cm"}, nodes={
                {n=G.UIT.C, config={align = "cm"}, nodes={
                    {n=G.UIT.R, config={align = "cm"}, nodes={
                        {n=G.UIT.T, config={text = "haii", colour = G.C.UI.TEXT_LIGHT, scale = 1, align = "cm"}}
                    }},
                    {n=G.UIT.R, config={align = "cm"}, nodes={
                        {n=G.UIT.T, config={text = "test menu thing", colour = G.C.UI.TEXT_LIGHT, scale = 0.5, align = "cm"}}
                    }},

                }},


            }}
        }}
    end
    }
    }
end

-- config
local configtab = function()
                return {
                    n=G.UIT.ROOT,
                    config={
                        align = "cm",
                        colour = G.C.BLACK,
                        r = 0.1,
                        minh = 6,
                        minw = 8,
                        emboss = 0.05,
                        padding = 0.1
                    },
                    nodes={
                        {n=G.UIT.R, config={align = "cm"}, nodes={
                            {n=G.UIT.C, config={align = "cm"}, nodes={
                                {n=G.UIT.R, config={align = "cm"}, nodes={
                                    {n=G.UIT.T, config={text = "hello vro", colour = G.C.UI.TEXT_LIGHT, scale = 1, align = "cm"}}
                                }},
                                {n=G.UIT.R, config={align = "cm"}, nodes={
                                    {n=G.UIT.T, config={text = "no config here", colour = G.C.UI.TEXT_LIGHT, scale = 0.5, align = "cm"}}
                                }},

                            }},
                        }}
                    }}
end

-- attach the tabs to steamodded
SMODS.current_mod.extra_tabs = testmenu
SMODS.current_mod.config_tab = configtab
-- end of tabs

if next(SMODS.find_mod("Amulet")) then 
    sendInfoMessage("amulet found!", "bwaatro")
else
    sendInfoMessage("amulet not found!! this may cause some issues!!", "bwaatro")
    
    -- ALL OF THIS HAS BEEN SCRAPPED AND WILL BE REIMPLEMENTED IN A LATER UPDATE
        function amulet_not_found(warning)
            return create_UIBox_generic_options{
                contents = {
                {n=G.UIT.R, config={align = "cm"}, nodes={
                    {n=G.UIT.C, config={align = "cm"}, nodes={
                        {n=G.UIT.R, config={align = "cm"}, nodes={
                            {n=G.UIT.T, config={text = "amulet not installed!", colour = G.C.UI.TEXT_LIGHT, scale = 1, align = "cm"}}
                        }},
                        {n=G.UIT.R, config={align = "cm"}, nodes={
                            {n=G.UIT.T, config={text = "the mod may continue to function", colour = G.C.UI.TEXT_LIGHT, scale = 0.5, align = "cm"}}
                        }},
                        {n=G.UIT.R, config={align = "cm"}, nodes={
                            {n=G.UIT.T, config={text = "but it's recommended to install Amulet!!", colour = G.C.UI.TEXT_LIGHT, scale = 0.5, align = "cm"}}
                        }},
                        {n=G.UIT.R, config={align = "cm"}, nodes={
                            {n=G.UIT.C, config={button = "dismiss_button", my_data={1}}, nodes={
                                {n=G.UIT.T, config={text = "Dismiss"}}
                            }}
                        }}
                    }},
                }
                }
            }}
    end
    local game_main_menu_ref = Game.main_menu
    function Game:main_menu(...)
        local ret = game_main_menu_ref(self, ...)
        if not bwaatro.viewed_warning then
            G.E_MANAGER:add_event(Event{
                func = function()
                    G.FUNCS.overlay_menu{
                        definition = amulet_not_found(),
                        config={
                            align = "cm",
                            colour = G.C.BLACK,
                            r = 0.1,
                            minh = 6,
                            minw = 8,
                            emboss = 0.05,
                            padding = 0.1 
                        }
                    }
                    return true
                end
            })
            bwaatro.viewed_warning = true
        end
    end
end

sendInfoMessage("meowmeowmeow mrrp :3", "bwaatro")