-- Moonstone Web Development Framework,A Framework To Develop Websites And Webpages Using Lua Programming Language
-- Copyright 2019-Present(c) Rabia Alhaffar,All Rights Reserved!!!
-- You Can Also Use HTML/CSS/Javascript/PHP/VBScript/JScript/C#/Visual Basic .NET/ASP Code Within The Main Lua Code,But With Some Differences!!!
page_to_open = ""
local moonstone = 
{
str = function(x)
 return "\""..x.."\""
end,
start = function()
 print("Enter Directory Of Compiled Code File(Type Extension):")
 page_directory = io.read()
 page_to_open = io.open(page_directory,'w')
end,
finish = function()
 page_to_open:close()
end,

html =
{
start = function()
 page_to_open:write("<!DOCTYPE html>\n")
 page_to_open:write("<html>\n")
end,
finish = function()
 page_to_open:write("</html>\n")	
end,

head =
{
start = function()
 page_to_open:write("<head>\n")
end,
finish = function()
 page_to_open:write("</head>\n")
end
},

center =
{
 start = function()
 page_to_open:write("<center>\n")
 end,
 finish = function()
 page_to_open:write("</center>\n")
 end
},

code =
{
start = function()
 page_to_open:write("<code>\n")
end,
finish = function()
 page_to_open:write("</code>\n")
end
},

body =
{
start = function()
 page_to_open:write("<body>\n")
end,
finish = function()
 page_to_open:write("</body>\n")
end
},

ol =
{
start = function()
 page_to_open:write("<ol>\n")
end,
finish = function()
 page_to_open:write("</ol>\n")
end
},

ul =
{
start = function()
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
br = function(endline)
 page_to_open:write("<br>")
 if endline then
 page_to_open:write("\n")
 end
end,
wbr = function(endline)
 page_to_open:write("<wbr>")
 if endline then
 page_to_open:write("\n")
 end
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
end,
article =
{
start = function()
 page_to_open:write("<article>\n")
end,
finish = function()
 page_to_open:write("</article>\n")
end
},
bdi = function(text)
 page_to_open:write("<bdi>"..text.."</bdi>\n")
end,
dl = 
{
start = function()
 page_to_open:write("<dl>\n")
end,
finish = function()
 page_to_open:write("</dl>\n")
end
},
dt = function(text)
 page_to_open:write("<dt>"..text.."</dt>\n")
end,
dd = function(text)
 page_to_open:write("<dd>"..text.."</dd>\n")
end,
embed = function(src)
 page_to_open:write("<embed src=".."\""..src.."\""..">\n")
end,
data = function(text,value)
 page_to_open:write("<data value=".."\""..value.."\""..">"..text.."</data>\n")
end,
button = function(id,text)
 page_to_open:write("<button id=".."\""..id.."\""..">"..text.."</button>\n")
end,
ruby =
{
start = function()
 page_to_open:write("<ruby>\n")
end,
finish = function()
 page_to_open:write("</ruby>\n")
end
},
rp = function(text)
 page_to_open:write("<rp>"..text.."</rp>\n")
end,
rt = function(text)
 page_to_open:write("<rt>"..text.."</rt>\n")
end,
sup = function(text)
 page_to_open:write("<sup>"..text.."<sup>\n")
end,
cite = function(text)
 page_to_open:write("<cite>"..text.."</cite>\n")
end,
hr = function()
 page_to_open:write("<hr>\n")
end,
details = 
{
start = function(summary)
 page_to_open:write("<details>\n")
 page_to_open:write("<summary>"..summary.."</summary>\n")
end,
finish = function()
 page_to_open:write("</details>\n")
end,
},
summary = function(text)
 page_to_open:write("<summary>"..text.."</summary>\n")
end,
textarea = 
{
start = function(text)
 page_to_open:write("<textarea>\n")
 page_to_open:write(text.."\n")
end,
finish = function()
 page_to_open:write("</textarea>\n")
end
},
div =
{
start = function(id)
 page_to_open:write("<div id=".."\""..id.."\""..">\n")
end,
finish = function()
 page_to_open:write("</div>\n")
end
},
nav =
{
start = function()
 page_to_open:write("<nav>\n")
end,
finish = function()
 page_to_open:write("</nav>\n")
end
},
select =
{
start = function()
 page_to_open:write("<select>\n")
end,
finish = function()
 page_to_open:write("</select>\n")
end
},
option = function(text)
 page_to_open:write("<option>"..text.."</option>\n")
end,
input = function(t)
 page_to_open:write("<input type=".."\""..t.."\""..">\n")
end,
audio = 
{
start = function()
 page_to_open:write("<audio controls>\n")
end,
finish = function()
 page_to_open:write("</audio>\n")
end
},
video = 
{
start = function(height,width)
 page_to_open:write("<video height=".."\""..height.."\"".." width=".."\""..width.."\"".." controls>\n")
end,
finish = function()
 page_to_open:write("</video>\n")
end
},
footer =
{
start = function()
 page_to_open:write("<footer>\n")
end,
finish = function()
 page_to_open:write("</footer>\n")
end
},
figure = 
{
start = function()
 page_to_open:write("<figure>\n")
end,
finish = function()
 page_to_open:write("</figure>\n")
end
},
mark = function(text)
 page_to_open:write("<mark>"..text.."</mark>\n")
end
},

js = 
{
start = function()
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
start = function()
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
start = function()
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
start = function()
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
start = function()
 page_to_open:write("@{\n")
end,
finish = function()
 page_to_open:write("}\n")
end
},

vb =
{
start = function()
 page_to_open:write("@Code\n")
end,
finish = function()
 page_to_open:write("End Code\n")
end
},

vbscript =
{
start = function()
 page_to_open:write("<%@ Language=".."\"".."VBScript".."\"".."\n")
end,
finish = function()
 page_to_open:write("%>\n")
end
},

jscript =
{
start = function()
 page_to_open:write("<%@ Language=".."\"".."JScript".."\"".."\n")
end,
finish = function()
 page_to_open:write("%>\n")
end
},
endline = function()
 page_to_open:write("\n")
end,
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
if t == "source" then
 page_to_open:write("<source src=".."\""..src.."\""..">\n")
end
end
}
return moonstone