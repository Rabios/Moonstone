-- Require Moonstone
local moonstone = require("moonstone")

-- Start Moonstone 
moonstone.begin() 

-- Start Moonstone <html> Content
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

-- Ends Moonstone <html> Content,Adds </html>
moonstone.html.finish()

-- Ends Moonstone
moonstone.finish()