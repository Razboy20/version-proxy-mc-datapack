# version-proxy-mc-datapack
A datapack which computes both the game version and server software, and is able to run function tags based on what version of MC you are running on.

Currently, the datapack is able to solve between versions 1.13 through 1.17, and will give an error if it is unable to detect (which would probably only happen on 1.12)

Additionally, it will also compute if a datapack is running on a server, and is able to tell you what server software it is running on. Currently supports Vanilla, Spigot, Paper, Airplane, and Purpur. 

## Scoreboards

The datapack will create a scoreboard called `version`, and populate the value of `version` with the minecraft version detected without the prefix of "1.".
For example, if you are running on 1.16, then running `scoreboard players get version version` will return 16. 

Server version is also stored within the `version` scoreboard, under `server`.

Listed below are the associations between server software and the scoreboard value:

Server Software | Singleplayer | Vanilla | Spigot | Paper | Airplane | Purpur
--- | --- | --- | --- |--- |--- |--- |---
Scoreboard Value | 0 | 1 | 2 | 3 | 5 | 6

For example, if you are running a Vanilla server, running `scoreboard players get server version` will return 1. 

## Function Tags

To add your own functions to run on specific minecraft versions, you can either check against the scoreboard values or add a tag under the `minecraft` namespace with the minecraft version as the name, where, for example, having a file under `minecraft/tags/functions/1.16.json`, which include function calls, would call those functions if 1.16 is detected.  
