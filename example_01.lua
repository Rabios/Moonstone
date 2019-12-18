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