SMODS.Joker {
    key = "hakase",
    loc_txt = {
        name = "Hakase Shinonome",
        text = {
            "If {C:attention}Nano{} is next to her, She will give {X:chips,C:white}X2{} chips",
            "By herself, will give {X:chips,C:white}X1.5{} chips"
        }
    },
    atlas = 'bwaaajoker',
    pos = {x = 3, y = 1},
    soul_pos = {x = 4, y = 1},
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    rarity = 3,
    cost = 8,
    calculate = function(self, card, context)
        if context.final_scoring_step then
            if next(SMODS.find_card("j_bwaaa_nano")) then
                return {
                    xchips = 2
                }
            else
                return {
                    xchips = 1.5
                }
            end
        end
    end
}
