# Moonstone
A Easy And Simple To Use Framework To Build Websites And Webpages With Lua,Currently In Development
## How Much It Is Easy?
See This:
```lua
local moonstone = require("moonstone") 
moonstone.begin() 
moonstone.html("begin")
moonstone.head("begin")
moonstone.title("Webpage Made With Lua")
moonstone.head("end")
moonstone.body("begin")
moonstone.p("Hello World!!!")
moonstone.body("end")
moonstone.html("end")
moonstone.endwebpage()
```
Source: [example_01.lua](https://github.com/Rabios/Moonstone/blob/master/example_01.lua)
