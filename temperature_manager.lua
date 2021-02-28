local component = require("component")
local reactor = component.br_reactor



repeat
    local rodLevel = reactor.getControlRodLevel(0)
    if reactor.getCasingTemperature() >= 1500 then
        reactor.setAllControlRodLevels(rodLevel + 1)
    else print("Case temperature below 1500 degrees Celcius. Continuing down to 1100.")
    end
    os.sleep(10)
until reactor.getCasingTemperature() <= 1100

print("Casing Temperature has reached 1100 Celcius.")
