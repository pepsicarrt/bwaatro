SMODS.Blind {
    key = "bsod",
    loc_txt = {
        name = "Blue Screen",
        text = {"Crash the game if played hand is a",
        "{C:attention}Full House{} or {C:attention}Flush{}"}
    },
    dollars = 13.9,
    mult = 2.5,
    atlas = 'bwaaablind',
    pos = {x = 0, y = 5},
    boss = {min = 2, max = 6},
    boss_colour = HEX("1270ae"),
    calculate = function(self, blind, context)
    if not blind.disabled then
        if context.before and (context.scoring_name == 'Full House' or context.scoring_name == 'Flush') then
            error([[
      __
 _   / /
(_)  |  | 
 _  |  | 
(_)  |  | 
     \_\


Your Balatro has ran into a problem and needs to restart. You can restart by pressing 'R'.
            

   _____   For more information about this issue, visit https://files.720430.xyz/moristuff/bsod.png/
 _ |___ / 
(_)   |_ \  If you contact mori, give them this info:
 _  ___) |  Stop code: YOU_PLAYED_THE_WRONG_HAND
(_) |____/ 
            ]], 0) 
            end
            end
            end

}
