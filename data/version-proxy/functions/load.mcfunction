# Datapack written by Razboy20
# built using mc-build (https://github.com/mc-build/mc-build)

scoreboard objectives add version dummy
scoreboard players set server version 0
scoreboard players set version version 0
scoreboard players set modded version 0
forceload add -30000000 1602
function version-proxy:check_version
schedule function version-proxy:check_version 2s replace