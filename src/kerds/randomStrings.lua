-- KerdsFuscator - Random Strings Module

local RandomStrings = {}

function RandomStrings.randomString(len)
    local charset = "IiiIiiiiIiiiiIi111111IiiIiioiIiiIi_FIFIFIFIFIFIFIFIl"
    local result = ""
    len = len or math.random(8, 15)
    for i = 1, len do
        result = result .. charset:sub(math.random(1, #charset), 1)
    end
    return result
end

function RandomStrings.randomStrings(count)
    local results = {}
    count = count or 10
    for i = 1, count do
        table.insert(results, RandomStrings.randomString())
    end
    return results
end

function RandomStrings.randomFromList(list)
    return list[math.random(1, #list)]
end

return RandomStrings
