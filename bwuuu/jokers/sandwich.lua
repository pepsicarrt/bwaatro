SMODS.Joker {
    key = "sandwich",
    loc_txt = {
        name = "just made a sandwich",
        text = {
            "do yall like the sandwich i made",
            "Gives {X:mult}9x{} mult"}
    },
    atlas = 'bwaaasandwich',
    pos = {x = 0, y = 0},
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    rarity = 1,
    cost = 1,
    calculate = function(self, card, context)
        if context.final_scoring_step then
            return {
                xmult = 0.1,
                message = 'ya like my sandwich',
                colour = G.C.ATTENTION
            }
        end
    end
}
