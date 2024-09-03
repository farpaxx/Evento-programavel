
local evento = vector4(711.55, 1197.78, 348.53, 360)

local eventoblip = vector2(711.55, 1197.78)

local blipevento = AddBlipForCoord(eventoblip.x, eventoblip.y)
-- sets the blip id (which icon will be desplayed)
-- https://runtime.fivem.net/doc/natives/#_0xDF735600A4696DAF
SetBlipSprite(blipevento, 364)
-- sets where the blip to be shown on both the minimap and the menu map
-- https://runtime.fivem.net/doc/natives/#_0x9029B2F3DA924928
SetBlipDisplay(blipevento, 6)
-- how big the blip will be
-- https://runtime.fivem.net/doc/natives/#_0xD38744167B2FA257
SetBlipScale(blipevento, 0.9)
-- blip entry type
BeginTextCommandSetBlipName("STRING")
-- The title of the blip
AddTextComponentString("Digite /evento para ir para o evento")
EndTextCommandSetBlipName(blipevento)
--admin.permissao


RegisterCommand(
    "evento",
    function(source, args)
        -- https://runtime.fivem.net/doc/natives/#_0x06843DA7060A026B
        SetEntityCoords(PlayerPedId(), evento.x, evento.y, evento.z, true, true, true, false)
        SetEntityHeading(PlayerPedId(), evento.w)
    end
)