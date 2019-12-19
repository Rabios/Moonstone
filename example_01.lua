-- Require Moonstone
local moonstone = require("moonstone")

-- Start Moonstone 
moonstone.start() 

-- Start Moonstone <html> Content
moonstone.html.start()

-- <head> Content
moonstone.html.head.start()
moonstone.html.title("Webpage Made With Lua")
moonstone.html.head.finish()

-- <body> Content
moonstone.html.body.start()
moonstone.html.p("Hello World!!!")
moonstone.html.watermark() -- Show Watermark(Not Necessary If You Want)
moonstone.html.body.finish()

-- Ends Moonstone <html> Content,Adds </html>
moonstone.html.finish()

-- Ends Moonstone
moonstone.finish()