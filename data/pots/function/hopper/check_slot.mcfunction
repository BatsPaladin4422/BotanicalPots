## # Check Slot
## Description to it 
##
## @param slot describe everything
## 
## @returns 

$execute store success score result var if items block ~ ~ ~ container.$(slot) #pots:plantable
execute if score result var matches 0 run return 0
return 1