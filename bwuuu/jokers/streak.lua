SMODS.Joker {
    key = "streak",
    loc_txt = {
        name = "Streak",
        text = {
            "{C:mult}+3{} mult after every blind",
            "{C:mult}-1{} mult if blind is skipped",
            "{C:green}#2# іn #3#{} chance to reset after a blind",
            "(Currently has {C:mult}+#1#{} mult)"
        }
    },
    config = {
 	    extra = {
 		    mult = 0,
            odds = 1
 	    },
    },
    atlas = "placeholder",
    pos = {x = 1, y = 0},
    soul_pos = {x = 0, y = 1},
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    rarity = 2,
    cost = 4,
    calculate = function(self, card, context)
        if context.skip_blind then
            card.ability.extra.mult = card.ability.extra.mult - 1
            return {
                message = 'Downgraded...',
                colour = G.C.ATTENTION
            }
        end
        if context.blind_defeated then
            card.ability.extra.mult = card.ability.extra.mult + 3
            return {
                message = 'Upgraded!',
                colour = G.C.ATTENTION
            }
        end
        if context.final_scoring_step then
            return {
                mult = card.ability.extra.mult
            }
        end
    end,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.mult,
                G.GAME.probabilities.normal,
                card.ability.extra.odds
            }
        }
    end
    }