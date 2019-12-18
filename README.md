# Moonstone
A Easy And Simple To Use Framework To Build Websites And Webpages With Lua,Currently In Development
## How Much It Is Easy?
See This:
```lua
-- Require Moonstone
local moonstone = require("moonstone")

-- Start Moonstone 
moonstone.begin() 
moonstone.html.begin()

-- <head> Content
moonstone.html.head.begin()
moonstone.html.title("Webpage Made With Lua")
moonstone.html.head.finish()

-- <body> Content
moonstone.html.body.begin()
moonstone.html.p("Hello World!!!")
moonstone.html.watermark() -- Show Watermark(Not Necessary If You Want)
moonstone.html.body.finish()

-- End Moonstone
moonstone.html.finish()
moonstone.finish()
```
Source: [example_01.lua](https://github.com/Rabios/Moonstone/blob/master/example_01.lua)
