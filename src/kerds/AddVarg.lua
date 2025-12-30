-- KerdsFuscator - Add Varargs Module
local AddVarg = {}

function AddVarg.generate(count)
    count = count or 10
    local code = ""
    for i = 1, count do
        code = code .. "local _v" .. i .. "=" .. math.random(1000, 99999) .. ";"
    end
    return code
end

return AddVarg
