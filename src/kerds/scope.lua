-- KerdsFuscator - Scope Module
local Scope = {}
Scope.__index = Scope

function Scope.new()
    return setmetatable({variables = {}, usedNames = {}}, Scope)
end

function Scope:addVariable(name, value)
    self.variables[name] = value
    self.usedNames[name] = true
end

function Scope:getVariable(name)
    return self.variables[name]
end

function Scope:getAllVariables()
    return self.variables
end

return Scope
