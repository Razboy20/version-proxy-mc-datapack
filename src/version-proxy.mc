function load {
    scoreboard objectives add version dummy
    scoreboard players set server version 0
    scoreboard players set version version 0
    forceload add -30000000 1602

    function version-proxy:check_version
}

function tick {
    execute if score version version matches 13 run function #1.13
    execute if score version version matches 14 run function #1.14
    execute if score version version matches 15 run function #1.15
    execute if score version version matches 16 run function #1.16
    execute if score version version matches 17 run function #1.17
}

function check_version {
    function version-proxy:versions/1.14
    function version-proxy:versions/1.15
    function version-proxy:versions/1.16
    function version-proxy:versions/1.17

    function version-proxy:versions/is_server

    execute if score version version matches 1.. run tellraw @s [{"text":"\nDatapack loaded on MC version 1.","color":"yellow"},{"score":{"name":"version","objective":"version"}},{"text":"."}]
    execute if score version version matches ..0 run tellraw @a [{"text":"\nError: Unknown Minecraft Version detected.","color":"red","bold":true}]
    execute if score server version matches 1 run tellraw @s [{"text":"(Running on a vanilla server)","color":"aqua"}]
    execute if score server version matches 2 run tellraw @s [{"text":"(Running on a Spigot server)","color":"aqua"}]
    execute if score server version matches 3 run tellraw @s [{"text":"(Running on a Paper server)","color":"aqua"}]
    execute if score server version matches 5 run tellraw @s [{"text":"(Running on a Airplane server)","color":"aqua"}]
    execute if score server version matches 6 run tellraw @s [{"text":"(Running on a Purpur server)","color":"aqua"}]

    schedule 2t replace {
        # Check success status of command block
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
    }
}

dir versions {
    function 1.17 {
        item modify entity @r container.0 version-proxy:1.17
        scoreboard players set version version 17
    }

    function 1.16 {
        attribute @s generic.armor get
        scoreboard players set version version 16
    }

    function 1.15 {
        execute if predicate version-proxy:1.15
        scoreboard players set version version 15
    }

    function 1.14 {
        schedule 0t replace {
        }
        scoreboard players set version version 14
    }

    function 1.13 {
        execute if entity @r
        scoreboard players set version version 13
    }

    function is_server {
        setblock -30000000 20 1602 command_block{auto:1b,Command:"minecraft:execute if entity @r"} destroy
        setblock -30000000 21 1602 command_block{auto:1b,Command:"spigot:spigot"} destroy
        setblock -30000000 22 1602 command_block{auto:1b,Command:"paper:paper"} destroy
        setblock -30000000 23 1602 command_block{auto:1b,Command:"airplane:airplane"} destroy
        setblock -30000000 24 1602 command_block{auto:1b,Command:"purpur:purpur"} destroy
    }
}

modifier 1.17 {
  "function": "minecraft:limit_count",
  "limit": {}
}

predicate 1.15 {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {}
}

# functions ../../../minecraft/tags/functions/1.13 {
# }

# functions 1.14 {
# }

# functions 1.15 {
# }

# functions 1.16 {
    
# }

# functions 1.17 {
# }