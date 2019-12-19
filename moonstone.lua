-- Moonstone Web Development Framework,A Framework To Develop Websites And Webpages Using Lua Programming Language
-- Copyright (c)2019-Present Rabia Alhaffar,All Rights Reserved!!!
-- You Can Also Use C/C++/HTML/CSS/Javascript/PHP/VBScript/JScript/C#/Visual Basic .NET/ASP Code Within The Main Lua Code,But With Some Differences!!!
page_to_open = ""
notonsameline = false
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
  page_to_open:write("<p>"..text.."</p>")
  checkline()
end,
b = function(text)
 page_to_open:write("<b>"..text.."</b>")
 checkline()
end,
i = function(text)
 page_to_open:write("<i>"..text.."</i>")
 checkline()
end,
s = function(text)
 page_to_open:write("<s>"..text.."</s>")
 checkline()
end,
strong = function(text)
 page_to_open:write("<strong>"..text.."</strong>")
 checkline()
end,
em = function(text)
 page_to_open:write("<em>"..text.."</em>")
 checkline()
end,
h1 = function(text)
 page_to_open:write("<h1>"..text.."</h1>")
 checkline()
end,
h2 = function(text)
 page_to_open:write("<h2>"..text.."</h2>")
 checkline()
end,
h3 = function(text)
 page_to_open:write("<h3>"..text.."</h3>")
 checkline()
end,
h4 = function(text)
 page_to_open:write("<h4>"..text.."</h4>")
 checkline()
end,
h5 = function(text)
 page_to_open:write("<h5>"..text.."</h5>")
 checkline()
end,
h6 = function(text)
 page_to_open:write("<h6>"..text.."</h6>")
 checkline()
end,
var = function(text)
 page_to_open:write("<var>"..text.."</var>")
 checkline()
end,
kbd = function(text)
 page_to_open:write("<kbd>"..text.."</kbd>")
 checkline()
end,
samp = function(text)
 page_to_open:write("<samp>"..text.."</samp>")
 checkline()
end,
q = function(text)
 page_to_open:write("<q>"..text.."</q>")
 checkline()
end,
ins = function(text)
 page_to_open:write("<ins>"..text.."</ins>")
 checkline()
end,
del = function(text)
 page_to_open:write("<del>"..text.."</del>")
 checkline()
end,
small = function(text)
 page_to_open:write("<small>"..text.."</small>")
 checkline()
end,
u = function(text)
 page_to_open:write("<u>"..text.."</u>")
 checkline()
end,
comment = function(text)
 page_to_open:write("<!-- "..text.." -->\n")
end,
pre = function(text)
 page_to_open:write("<pre>"..text.."</pre>")
 checkline()
end,
watermark = function()
 page_to_open:write("<b>Generated And Powered By <a href=".."\"".."https://lua.org".."\""..">".._VERSION.."</a>,And <a href=".."\"".."https://github.com/Rabios/Moonstone".."\""..">Moonstone</a> Framework</b>\n")
end,
noscript = function(text)
 page_to_open:write("<noscript>"..text.."</noscript>")
 checkline()
end,
br = function()
 page_to_open:write("<br>")
 checkline()
end,
wbr = function()
 page_to_open:write("<wbr>")
 checkline()
end,
a = function(href,text)
 page_to_open:write("<a href=".."\""..href.."\""..">"..text.."</a>")
 checkline()
end,
attr = function(name,value)
 page_to_open:write(name.."=".."\""..value.."\"".."\n")
end,
img = function(src)
 page_to_open:write("<img src=".."\""..src.."\""..">\n")
end,
canvas = function(id,height,width)
 page_to_open:write("<canvas id=".."\""..id.."\"".." height=".."\""..height.."\"".." width=".."\""..width.."\"".."></canvas>")
 checkline()
end,
progress = function(value,max)
 page_to_open:write("<progress value=".."\""..value.."\"".." max=".."\""..max.."\"".."></progress>\n")
 checkline()
end,
li = function(text)
 page_to_open:write("<li>"..text.."</li>")
 checkline()
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
 page_to_open:write("<bdi>"..text.."</bdi>")
 checkline()
end,
dl = 
{
start = function()
 page_to_open:write("<dl>\n")
 checkline()
end,
finish = function()
 page_to_open:write("</dl>\n")
 checkline()
end
},
dt = function(text)
 page_to_open:write("<dt>"..text.."</dt>")
 checkline()
end,
dd = function(text)
 page_to_open:write("<dd>"..text.."</dd>")
 checkline()
end,
embed = function(src)
 page_to_open:write("<embed src=".."\""..src.."\""..">")
 checkline()
end,
data = function(text,value)
 page_to_open:write("<data value=".."\""..value.."\""..">"..text.."</data>")
 checkline()
end,
button = function(id,text)
 page_to_open:write("<button id=".."\""..id.."\""..">"..text.."</button>")
 checkline()
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
 page_to_open:write("<rp>"..text.."</rp>")
 checkline()
end,
rt = function(text)
 page_to_open:write("<rt>"..text.."</rt>")
 checkline()
end,
sup = function(text)
 page_to_open:write("<sup>"..text.."<sup>")
 checkline()
end,
cite = function(text)
 page_to_open:write("<cite>"..text.."</cite>")
 checkline()
end,
hr = function()
 page_to_open:write("<hr>")
 checkline()
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
 page_to_open:write("<summary>"..text.."</summary>")
 checkline()
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
 page_to_open:write("<option>"..text.."</option>")
 checkline()
end,
input = function(t)
 page_to_open:write("<input type=".."\""..t.."\""..">")
 checkline()
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
 page_to_open:write("<mark>"..text.."</mark>")
 checkline()
end,
main =
{
start = function()
 page_to_open:write("<main>\n")
end,
finish = function()
 page_to_open:write("</main>\n")
end
},
section =
{
start = function()
 page_to_open:write("<section>\n")
end,
finish = function()
 page_to_open:write("</section>\n")
end
},
table =
{
start = function()
 page_to_open:write("<table>\n")
end,
finish = function()
 page_to_open:write("</table>\n")
end
},
tr = 
{
start = function()
 page_to_open:write("<tr>\n")
end,
finish = function()
 page_to_open:write("</tr>\n")
end
},
th = function(text)
 page_to_open:write("<th>"..text.."</th>")
 checkline()
end,
td = function(text)
 page_to_open:write("<td>"..text.."</td>")
 checkline()
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


md =
{
h1 = function(text)
 page_to_open:write("# "..text.."\n")
end,
h2 = function(text)
 page_to_open:write("## "..text.."\n")
end,
h3 = function(text)
 page_to_open:write("### "..text.."\n")
end,
h4 = function(text)
 page_to_open:write("#### "..text.."\n")
end,
h5 = function(text)
 page_to_open:write("##### "..text.."\n")
end,
h6 = function(text)
 page_to_open:write("###### "..text.."\n")
end,
underline = function()
for a = 0,3,1 do
 page_to_open:write("---\n")	
end	
end,
a = function(text,href)
 page_to_open:write("["..text.."]("..href..")\n")
end,
checkbox = function(text,checked)
 if checked then
 page_to_open:write("-[x] "..text.."\n") 
 end
 if not checked then
 page_to_open:write("-[ ] "..text.."\n")	 
 end
end,
point = function(text)
 page_to_open:write("- "..text.."\n")
end,
note = function(text)
 page_to_open:write("> "..text.."\n")
end,
step = function(number,text)
 page_to_open:write(tostring(number)..". "..text.."\n")
end,
emoji = function(name)
 page_to_open:write(":"..name.."\n")
end,
code = 
{
start = function(language)
page_to_open:write("```"..tostring(language).."\n")
end,
finish = function()
page_to_open:write("```\n")
end,
snippet = function(code)
page_to_open:write("`"..code.."`\n")
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
writeline = function(mode)
 notonsameline = mode
end,
src = function(t,src)
if t == "script" then
 page_to_open:write("<script src=".."\""..src.."\"".."></script>")	
 checkline()
end
if t == "style" then
 page_to_open:write("<style src=".."\""..src.."\"".."></style>")	
 checkline()
end
if t == "iframe" then
 page_to_open:write("<iframe src=".."\""..src.."\"".."></iframe>")	
 checkline()
end
if t == "source" then
 page_to_open:write("<source src=".."\""..src.."\""..">\n")
end
end,
}
function p(text)
return "<p>"..text.."</p>"
end
function b(text)
return "<b>"..text.."</b>"
end
function i(text)
return "<i>"..text.."</i>"
end
function u(text)
return "<u>"..text.."</u>"
end
function small(text)
return "<small>"..text.."</small>"	
end
function samp(text)
return "<samp>"..text.."</samp>"	
end
function kbd(text)
return "<kbd>"..text.."</kbd>"	
end
function ins(text) 
return "<ins>"..text.."</ins>"
end
function q(text)
return "<q>"..text.."</q>"	
end
function del(text)
return "<del>"..text.."</del>"	
end
function mark(text)
return "<mark>"..text.."</mark>"
end
function var(text)
return "<var>"..text.."</var>"	
end
function pre(text)
return "<pre>"..text.."</pre>"	
end
function strong(text)
return "<strong>"..text.."</strong>"	
end
function em(text)
return "<em>"..text.."</em>" 	
end
function h1(text)
return "<h1>"..text.."</h1>"	
end
function h2(text)
return "<h2>"..text.."</h2>"	
end
function h3(text)
return "<h3>"..text.."</h3>"	
end
function h4(text)
return "<h4>"..text.."</h4>"	
end
function h5(text)
return "<h5>"..text.."</h5>"	
end
function h6(text)
return "<h6>"..text.."</h6>"	
end
function rp(text)
return "<rp>"..text.."</rp>"	
end
function rt(text)
return "<rt>"..text.."</rt>"	
end
function sup(text)
return "<sup>"..text.."</sup>"	
end
function cite(text)
return "<cite>"..text.."</cite>"	
end
function option(text)
return "<option>"..text.."</option>"	
end
function summary(text)
return "<summary>"..text.."</summary>"	
end
function dd(text)
return "<dd>"..text.."</dd>"	
end
function dt(text)
return "<dt>"..text.."</dt>"	
end
function bdi(text)
return "<bdi>"..text.."</bdi>"	
end
function li(text)
return "<li>"..text.."</li>"	
end
function th(text)
return "<th>"..text.."</th>"	
end
function td(text)
return "<td>"..text.."</td>"	
end
function noscript(text)
return "<noscript>"..text.."</noscript>"	
end
function a(href,text)
return "<a href=".."\""..href.."\""..">"..text.."</a>"	
end
function checkline()
 if notonsameline then
 page_to_open:write("\n")
 end
end
return moonstone