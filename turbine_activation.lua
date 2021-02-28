local component = require("component")
local device = require("turbine_list")
local reactor = component.br_reactor
local turbine = component.it_steam_turbine

print("Beginning startup phase for turbines...")
local turbine_01 = component.proxy(device.turbine_01)
if reactor.getHotFluidProducedLastTick() >= 100 then
	turbine_01.setEnabled(true)
else print("Not enough steam to initialize Turbine One!")
end

local turbine_02 = component.proxy(device.turbine_02)
if reactor.getHotFluidProducedLastTick() >= 200 then
	turbine_02.setEnabled(true)
else print("Not enough steam to initialize Turbine Two!")
end

local turbine_03 = component.proxy(device.turbine_03) 
if reactor.getHotFluidProducedLastTick() >= 300 then
	turbine_03.setEnabled(true)
else print("Not enough steam to initialize Turbine Three!")
end

local turbine_04 = component.proxy(device.turbine_04)
if reactor.getHotFluidProducedLastTick() >= 400 then
	turbine_04.setEnabled(true)
else print("Not enough steam to initialize Turbine Four!")
end

local turbine_05 = component.proxy(device.turbine_05)
if reactor.getHotFluidProducedLastTick() >= 500 then
	turbine_05.setEnabled(true)
else print("Not enough steam to initialize Turbine Five!")
end

local turbine_06 = component.proxy(device.turbine_06)
if reactor.getHotFluidProducedLastTick() >= 600 then
	turbine_06.setEnabled(true)
else print("Not enough steam to initialize Turbine Six!")
end

local turbine_07 = component.proxy(device.turbine_07)
if reactor.getHotFluidProducedLastTick() >= 700 then
	turbine_07.setEnabled(true)
else print("Not enough steam to initialize Turbine Seven!")
end

local turbine_08 = component.proxy(device.turbine_08)
if reactor.getHotFluidProducedLastTick() >= 800 then
	turbine_08.setEnabled(true)
else print("Not enough steam to initialize Turbine Eight!")
end

local turbine_09 = component.proxy(device.turbine_09)
if reactor.getHotFluidProducedLastTick() >= 900 then
	turbine_09.setEnabled(true)
else print("Not enough steam to initialize Turbine Nine!")
end

os.sleep(10)
