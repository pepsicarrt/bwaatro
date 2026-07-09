SMODS.Joker {
    key = "nano",
    loc_txt = {
        name = "Nano Shinonome",
        text = {
            "If {C:attention}Hakase{} is next to her, She will give {X:mult,C:white}X2.5{} mult",
            "By itself, will give {X:mult,C:white}X1.5{} mult"
        }
    },
    atlas = 'bwaaajoker',
    pos = {x = 0, y = 0},
    soul_pos = {x = 1, y = 0},
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    rarity = 3,
    cost = 8,
    calculate = function(self, card, context)
        if context.final_scoring_step then
            if next(SMODS.find_card("j_bwaaa_hakase")) then
                return {
                    xmult = 2.5
                }
            else
                return {
                    xmult = 1.5
                }
            end
        end
    end
}
