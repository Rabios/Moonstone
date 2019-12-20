local moonstone = require("moonstone")

moonstone.start()
moonstone.html.start()

moonstone.html.head.start()
moonstone.html.title("Moonstone Framework - Example 2")
moonstone.html.head.finish()

moonstone.html.body.start()
moonstone.html.center.start()

moonstone.html.h1("Some Images To See")
moonstone.html.img("https://st2.depositphotos.com/1000848/8504/i/950/depositphotos_85040166-stock-photo-abstract-seamless-cube-background.jpg")
moonstone.html.br()
moonstone.html.img("https://garden.spoonflower.com/c/5120957/i/xs/iMijZa4-w7F3RCQrG3ITYPJdEtXPxsptEEs/5120957.jpg")
moonstone.html.br()
moonstone.html.img("https://papers.co/wallpaper/papers.co-vz49-polygon-blue-texture-abstract-pattern-background-6-wallpaper.jpg")
moonstone.html.br()
moonstone.html.img("https://images-na.ssl-images-amazon.com/images/I/A1IKQq4gU4L._SY355_.png")
moonstone.html.br()
moonstone.html.img("https://r1.ilikewallpaper.net/ipad-wallpapers/download/16466/Abstract-ipad-wallpaper-ilikewallpaper_com.jpg")
moonstone.html.br()
moonstone.html.p("Thanks For Watching!!!")
moonstone.html.watermark()

moonstone.html.center.finish()
moonstone.html.body.finish()

moonstone.html.finish()
moonstone.finish()