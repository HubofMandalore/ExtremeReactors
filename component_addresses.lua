local component = require("component")
local file = io.open("component_addresses.txt", "w")

for a,b in pairs(component.list("it_steam_turbine")) do
  line = a .. " - " .. b .. "\n"
  file:write(line)
end

io.close(file)