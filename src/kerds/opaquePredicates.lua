-- KerdsFuscator - Opaque Predicates Module
local OpaquePredicates = {}

function OpaquePredicates.generate(count)
    count = count or 15
    local code = ""
    
    for i = 1, count do
        local n1 = math.random(1000, 99999)
        local n2 = math.random(1000, 99999)
        local choice = math.random(1, 5)
        
        if choice == 1 then
            code = code .. "local _p" .. i .. "=((" .. n1 .. "+" .. n2 .. ")>" .. (n1 + n2) .. " and 1 or 0);"
        elseif choice == 2 then
            code = code .. "local _p" .. i .. "=((" .. n1 .. "-" .. n2 .. ")<0 and 1 or 0);"
        elseif choice == 3 then
            code = code .. "local _p" .. i .. "=((" .. n1 .. "*" .. n2 .. ")%256==" .. ((n1 * n2) % 256) .. " and 1 or 0);"
        elseif choice == 4 then
            code = code .. "local _p" .. i .. "=((" .. n1 .. "%128)==(" .. n1 .. "%128) and 1 or 0);"
        else
            code = code .. "local _p" .. i .. "=((" .. n1 .. "/" .. (n2 > 0 and n2 or 1) .. ")>0 and 1 or 0);"
        end
    end
    
    return code
end

return OpaquePredicates
