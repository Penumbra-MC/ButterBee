execute if data storage butterbee:data_version {version:1} run return fail
execute store result score last_gametime butterbee.temp run time query gametime
execute if score last_gametime butterbee.temp matches ..0 run return run data modify storage butterbee:data_version version set value 1
data modify storage butterbee:data_version version set value 0
function butterbee:updater/loop