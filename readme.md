
# Summary
Factorio has a lot of parallels with real life manufacturing processes. This mod aims to give the user the ability to read more about these processes. 

# Installing
The fabri-core folder gets dropped into the factorio installation mods folder. 
On my local system it is `C:\Users\John\AppData\Roaming\Factorio\mods`

# Generating LUA Code
1. Compile the Fabricore.Generator project
1. Make sure your cfg file is in the correct format
1. Run the command `./Fabricore.Generator/Fabricore.Generator.Console/bin/Debug/net8.0/Fabricore.Generator.Console.exe lua C:\Users\John\AppData\Roaming\Factorio\mods\fabri-core\locale\en\fabricore.cfg iron_ore`

# Formatting on the fabricore.cfg file
1. Compile the Fabricore.Generator project
1. Make sure each line has a text or label at the beginning of it, an example would be "text3=" or "label1="
1. Run the command `./Fabricore.Generator/Fabricore.Generator.Console/bin/Debug/net8.0/Fabricore.Generator.Console.exe reorder C:\Users\John\AppData\Roaming\Factorio\mods\fabri-core\locale\en\fabricore.cfg iron_ore`

# Creating a release
1. Run the ZipRelease.ps1 script, pass a parameter indicating the version you want. `./ZipRelease.ps1 2.0`