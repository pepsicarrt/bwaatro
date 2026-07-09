SMODS.Consumable {
    key = "ration",
    loc_txt = {
        name = "Ration",
        text = {
            "When used, has a 1/10 chance to create either Yuuri or Chito"
        }
    },
        set = "Tarot",
        atlas = "placeholder",
        pos = {x = 1, y = 0},
        soul_pos = {x = 0, y = 1},
        unlocked = true,
        discovered = true,
        cost = 5,
        use = function(self, card, context) -- THIS NEEDS TO BECOME RANDOM
            SMODS.add_card{
                set = "Joker",
                key = "bwaaa_gltyuu"
            }
        end
}