return {
    DPRKSquad = {
        description = 'An extension to InfantrySquad. The not so skilled DPRK squad about to do some alternating advancing.',
        parents = {
            { btset = 'standard_behaviors', class = 'InfantrySquad' },
            -- More parent classes can be added. The 'btset' field is optional and defaults to the current project.
        },
        
        Match = function ()
        -- This class matches the same objects as the parent class does.
        -- You can add a condition matching only subset of soldiers.
            if
                type(self) == "GroupBrain"
            then
                return true
            end        
            return false
        end,

        behaviors = {
            AlternatingAdvance = {
                description = 'Squad Alternating Advance',
                tree = 'SQAlternatingAdvance',
                parameters = {},
            },
        },
    },
}