local component = require("component")
local reactor = component.br_reactor

print("Activating reactor...")
if reactor.getFuelAmount() >= 50 then
	reactor.setActive(true)
else 
	print("Warning! Fuel levels below 50%. Add more fuel before starting!")
end

os.sleep(2)

if reactor.getActive(true) then
	local running = true
	while running do
		print("Starting the turbines...")

		dofile("turbine_activation.lua")

		os.sleep(2)

		dofile("temperature_manager.lua")

		os.sleep(2)
	end
else print("Reactor is inactive; closing!")
end
