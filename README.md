# Warcraft 3 Desync Test Case. Lua, for v2.0.3

Affected Versions: probably at least since 1.32.10. v2.0.3 confirmed

The git tag "desync-repro-baked" should have the modified script
baked into the MPQ. Otherwise you'll need to have "Allow Local Files"
enabled for Reforged to pick up the .lua file next to the map.

Do not resave the map, the baked in script will be re-generated and overriden.

## How to:

Join yourself in LAN, start game. Wait approx 15-20s when the AI player
is 30% towards finishing the farm. It should desync then.

Otherwise wait another minute and restart.

