-- KerdsFuscator
local Compiler = require("src.compiler.compiler")

local function main()
    local inputFile = arg[1]
    local outputFile = arg[2]
    
    if not inputFile or not outputFile then
        print("Usage: lua cli.lua <input.lua> <output.lua>")
        return false
    end
    
    local f = io.open(inputFile, "r")
    if not f then
        print("Error: Cannot read " .. inputFile)
        return false
    end
    
    local code = f:read("*a")
    f:close()
    
    print("• Reading: " .. inputFile)
    
    local options = {
        vargCount = 15,
        predicates = 20
    }
    
    local obfuscated = Compiler.compile(code, options)
    
    local out = io.open(outputFile, "w")
    if not out then
        print("Error: Cannot write to " .. outputFile)
        return false
    end
    
    out:write(obfuscated)
    out:close()
    
    print("Success! Obfuscated to: " .. outputFile)
    return true
end

main()
