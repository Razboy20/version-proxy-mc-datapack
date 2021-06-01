# Datapack written by Razboy20
# built using mc-build (https://github.com/mc-build/mc-build)

execute store result score _server version run data get block -30000000 20 1602 SuccessCount
execute if score _server version matches 1 run scoreboard players set server version 1
execute store result score _server version run data get block -30000000 21 1602 SuccessCount
execute if score _server version matches 1 run scoreboard players set server version 2
execute store result score _server version run data get block -30000000 22 1602 SuccessCount
execute if score _server version matches 1 run scoreboard players set server version 3
execute store result score _server version run data get block -30000000 23 1602 SuccessCount
execute if score _server version matches 1 run scoreboard players set server version 5
execute store result score _server version run data get block -30000000 24 1602 SuccessCount
execute if score _server version matches 1 run scoreboard players set server version 6
execute store result score _server version run data get block -30000000 20 1603 SuccessCount
execute if score _server version matches 1 run scoreboard players set modded version 1