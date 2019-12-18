-- Moonstone Web Development Framework,A Framework To Develop Websites And Webpages Using Lua Programming Language
-- Copyright 2019-Present(c) Rabia Alhaffar,All Rights Reserved!!!
-- You Can Also Use HTML/CSS/Javascript/PHP/VBScript/JScript/C#/Visual Basic .NET/ASP Code Within The Main Lua Code,But With Some Differences!!!
page_to_open = ""
local moonstone = 
{
str = function(x)
 return "\""..x.."\""
end,
begin = function()
 page_directory = io.read()
 print("Enter Directory Of Compiled Code File(Type Extension):")
 page_to_open = io.open(page_directory,'w')
end,
finish = function()
 page_to_open:close()
end,

html =
{
begin = function()
 page_to_open:write("<!DOCTYPE html>\n")
 page_to_open:write("<html>\n")
end,
finish = function()
 page_to_open:write("</html>\n")	
end,

head =
{
begin = function()
 page_to_open:write("<head>\n")
end,
finish = function()
 page_to_open:write("</head>\n")
end
},

center =
{
 begin = function()
 page_to_open:write("<center>\n")
 end,
 finish = function()
 page_to_open:write("</center>\n")
 end
},

code =
{
begin = function()
 page_to_open:write("<code>\n")
end,
finish = function()
 page_to_open:write("</code>\n")
end
},

body =
{
begin = function()
 page_to_open:write("<body>\n")
end,
finish = function()
 page_to_open:write("</body>\n")
end
},

ol =
{
begin = function()
 page_to_open:write("<ol>\n")
end,
finish = function()
 page_to_open:write("</ol>\n")
end
},

ul =
{
begin = function()
 page_to_open:write("<ul>\n")
end,
finish = function()
 page_to_open:write("</ul>\n")
end
},

title = function(t)
  page_to_open:write("<title>"..t.."</title>\n")
end,
p = function(text)
  page_to_open:write("<p>"..text.."</p>\n")
end,
b = function(text)
 page_to_open:write("<b>"..text.."</b>\n")
end,
i = function(text)
 page_to_open:write("<i>"..text.."</i>\n")
end,
s = function(text)
 page_to_open:write("<s>"..text.."</s>\n")
end,
strong = function(text)
 page_to_open:write("<strong>"..text.."</strong>\n")
end,
em = function(text)
 page_to_open:write("<em>"..text.."</em>\n")
end,
h1 = function(text)
 page_to_open:write("<h1>"..text.."</h1>\n")
end,
h2 = function(text)
 page_to_open:write("<h2>"..text.."</h2>\n")
end,
h3 = function(text)
 page_to_open:write("<h3>"..text.."</h3>\n")
end,
h4 = function(text)
 page_to_open:write("<h4>"..text.."</h4>\n")
end,
h5 = function(text)
 page_to_open:write("<h5>"..text.."</h5>\n")
end,
h6 = function(text)
 page_to_open:write("<h6>"..text.."</h6>\n")
end,
var = function(text)
 page_to_open:write("<var>"..text.."</var>\n")
end,
kbd = function(text)
 page_to_open:write("<kbd>"..text.."</kbd>\n")
end,
samp = function(text)
 page_to_open:write("<samp>"..text.."</samp>\n")
end,
q = function(text)
 page_to_open:write("<q>"..text.."</q>\n")
end,
ins = function(text)
 page_to_open:write("<ins>"..text.."</ins>\n")
end,
del = function(text)
 page_to_open:write("<del>"..text.."</del>\n")
end,
small = function(text)
 page_to_open:write("<small>"..text.."</small>\n")
end,
u = function(text)
 page_to_open:write("<u>"..text.."</u>\n")
end,
comment = function(text)
 page_to_open:write("<!-- "..text.." -->\n")
end,
pre = function(text)
 page_to_open:write("<pre>"..text.."</pre>\n")
end,
watermark = function()
 page_to_open:write("<b>Generated And Powered By <a href=".."\"".."https://lua.org".."\""..">".._VERSION.."</a>,And <a href=".."\"".."https://github.com/Rabios/Moonstone".."\""..">Moonstone</a> Framework</b>\n")
end,
noscript = function(text)
 page_to_open:write("<noscript>"..text.."</noscript>\n")
end,
br = function()
 page_to_open:write("<br>\n")
end,
a = function(href,text)
 page_to_open:write("<a href=".."\""..href.."\""..">"..text.."</a>\n")
end,
attr = function(name,value)
 page_to_open:write(name.."=".."\""..value.."\"".."\n")
end,
img = function(src)
 page_to_open:write("<img src=".."\""..src.."\""..">\n")
end,
canvas = function(id,height,width)
 page_to_open:write("<canvas id=".."\""..id.."\"".." height=".."\""..height.."\"".." width=".."\""..width.."\"".."></canvas>\n")
end,
progress = function(value,max)
 page_to_open:write("<progress value=".."\""..value.."\"".." max=".."\""..max.."\"".."></progress>\n")
end,
li = function(text)
 page_to_open:write("<li>"..text.."</li>\n")
end
},

js = 
{
begin = function()
 page_to_open:write("<script>\n")
end,
finish = function()
 page_to_open:write("</script>\n")
end,
comment = function(comment)
 page_to_open:write("//"..comment.."\n")
end,
multiline_comment = 
{
begin = function()
 page_to_open:write("/*\n")
end,
finish = function()
 page_to_open:write("*/\n")
end
},
console = 
{
log = function(msg)
 page_to_open:write("console.log("..msg..");\n")
end
},
window =
{
alert = function(msg)
 page_to_open:write("window.alert("..msg..");\n")
end,
open = function(link)
 page_to_open:write("window.open(".."\""..link.."\""..");\n")
end
},
document =
{
reload = function()
 page_to_open:write("document.reload();\n")
end,
write = function(msg)
 page_to_open:write("document.write("..msg..");\n")
end,
writeln = function(msg)
 page_to_open:write("document.writeln("..msg..");\n")
end
}

},

css = 
{
begin = function()
  page_to_open:write("<style>\n")
end,
finish = function()
 page_to_open:write("</style>\n")
end,
style =
{
class = function(class,style)
 page_to_open:write("."..class.." { "..style.." }\n")
end,
tag = function(tags,style)
 page_to_open:write(tags.." { "..style.." }\n")
end,
id = function(id,style)
 page_to_open:write("#"..id.." { "..style.." }\n")
end
}
},

php =
{
begin = function()
 page_to_open:write("<?php\n")
end,
finish = function()
 page_to_open:write("?>\n")
end,
echo = function(msg)
 page_to_open:write("echo "..msg..";\n")
end
},

csharp =
{
begin = function()
 page_to_open:write("@{\n")
end,
finish = function()
 page_to_open:write("}\n")
end
},

vb =
{
begin = function()
 page_to_open:write("@Code\n")
end,
finish = function()
 page_to_open:write("End Code\n")
end
},

vbscript =
{
begin = function()
 page_to_open:write("<%@ Language=".."\"".."VBScript".."\"".."\n")
end,
finish = function()
 page_to_open:write("%>\n")
end
},

jscript =
{
begin = function()
 page_to_open:write("<%@ Language=".."\"".."JScript".."\"".."\n")
end,
finish = function()
 page_to_open:write("%>\n")
end
},

script = function(code)
 page_to_open:write(code.."\n")
end,
src = function(t,src)
if t == "script" then
 page_to_open:write("<script src=".."\""..src.."\"".."></script>\n")	
end
if t == "style" then
 page_to_open:write("<style src=".."\""..src.."\"".."></style>\n")	
end
if t == "iframe" then
 page_to_open:write("<iframe src=".."\""..src.."\"".."></iframe>\n")	
end
end
}
return moonstone