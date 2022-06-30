RegisterCommand("calculate", function(source, args, rawCommand) -- Edit command name

local first_arg = args[1]
local action = args[2]
local second_arg = args[3]
local result = Quantity(first_arg, action, second_arg)

    exports['mythic_notify']:DoHudText('inform', 'Result: '..result) -- Edit to your Notify system

end)

function Quantity(first_arg, action, second_arg)
    if action == '+' then
        return first_arg + second_arg
    elseif action == '-' then
        return first_arg - second_arg
    elseif action == '*' then
        return first_arg * second_arg
    elseif action == '/' then
        return first_arg / second_arg
    else
        exports['mythic_notify']:DoHudText('error', 'Invalid Quantity!') -- Edit to your Notify system
    end
end


    
