-- KerdsFuscator - Number To Expressions Module
local NumberToExpressions = {}

function NumberToExpressions.generate(num, depth)
    depth = depth or 0
    if depth > 5 then return tostring(num) end
    
    local choice = math.random(1, 4)
    local n1 = math.random(100, 5000)
    
    if choice == 1 then
        return "(" .. (num + n1) .. "-" .. n1 .. ")"
    elseif choice == 2 then
        return "(" .. (num - n1) .. "+" .. n1 .. ")"
    elseif choice == 3 and n1 ~= 0 then
        return "(" .. (num * n1) .. "/" .. n1 .. ")"
    else
        return tostring(num)
    end
end

return NumberToExpressions
