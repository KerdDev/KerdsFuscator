-- KerdsFuscator - Main Compiler
local RandomStrings = require("src.kerds.randomStrings")
local AddVarg = require("src.kerds.AddVarg")
local OpaquePredicates = require("src.kerds.opaquePredicates")
local NumberToExpressions = require("src.kerds.numbertoexpressions")

local Compiler = {}

function Compiler.compile(code, options)
    options = options or {}
    local obf = ""
    
    obf = obf .. "local _load=" .. (load and "load" or "loadstring") .. ";"
    obf = obf .. AddVarg.generate(options.vargCount or 10)
    obf = obf .. OpaquePredicates.generate(options.predicates or 15)
    obf = obf .. code
    
    return obf
end

return Compiler
