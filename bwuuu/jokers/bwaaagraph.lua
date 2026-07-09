SMODS.Joker {
    key = "bwaaagraph",
    loc_txt = {
        name = "bwaaagraph",
        text =         {
            "Gives X1.5 mult for the first played card,",
            "and for the last played card"
        }
    },
    atlas = 'bwaaajoker',
    pos = {x = 5, y = 1},
    pixel_size = {w = 69, h = 78},
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    rarity = 2,
    cost = 4,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.main_scoring and context.other_card == context.scoring_hand[1] then
                return {
                    xmult = 1.5
                }
        end          
    end
}
