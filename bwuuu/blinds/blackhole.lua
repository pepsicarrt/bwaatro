SMODS.Blind {
    key = "blackhole",
    loc_txt = {
        name = "Black Hole",
        text = {"Slowly destroys all cards in deck"}
    },
    dollars = 5,
    mult = 5,
    atlas = 'bwaaablind',
    pos = {x = 0, y = 4}, -- change later
    boss = {min = 2, max = 6}, -- change later
    boss_colour = HEX("f600ff"), -- change later
    set_blind = function(self)
        local random_card = pseudorandom_element(G.playing_cards, "bwaaa_seed".. G.GAME.round_resets.ante)
        SMODS.destroy_cards(random_card, nil, nil, nil)
    end
}
