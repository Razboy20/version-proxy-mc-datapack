# Datapack written by Razboy20
# built using mc-build (https://github.com/mc-build/mc-build)

function version-proxy:versions/1.14
function version-proxy:versions/1.15
function version-proxy:versions/1.16
function version-proxy:versions/1.17
function version-proxy:versions/is_server
function version-proxy:versions/is_modded
execute if score version version matches 1.. if score modded version matches 0 run tellraw @s [{"text":"\nDatapack loaded on MC version 1.","color":"yellow"},{"score":{"name":"version","objective":"version"}},{"text":"."}]
execute if score version version matches 1.. if score modded version matches 1 run tellraw @s [{"text":"\nDatapack loaded on MC version 1.","color":"yellow"},{"score":{"name":"version","objective":"version"}},{"text":"."}, {"text":" (Modded with Forge)","color":"green","italic": true}]
execute if score version version matches ..0 run tellraw @a [{"text":"\nError: Unknown Minecraft Version detected.","color":"red","bold":true}]
execute if score server version matches 1 if score modded version matches 0 run tellraw @s [{"text":"(Running on a vanilla server)","color":"aqua"}]
execute if score server version matches 1 if score modded version matches 1 run tellraw @s [{"text":"(Running on a Forge server)","color":"aqua"}]
execute if score server version matches 2 run tellraw @s [{"text":"(Running on a Spigot server)","color":"aqua"}]
execute if score server version matches 3 run tellraw @s [{"text":"(Running on a Paper server)","color":"aqua"}]
execute if score server version matches 5 run tellraw @s [{"text":"(Running on a Airplane server)","color":"aqua"}]
execute if score server version matches 6 run tellraw @s [{"text":"(Running on a Purpur server)","color":"aqua"}]
schedule function version-proxy:generated/schedule/0 2t replace