local moonstone = {}
page_to_open = ""
local function str(x)
  return "\""..x.."\""
end
local function begin()
  page_directory = io.read()
  page_to_open = io.open(page_directory,'w')
end
local function html(mode)
if mode == "begin" then
  page_to_open:write("<!DOCTYPE html>\n")
  page_to_open:write("<html>\n")
end
if mode == "end" then
  page_to_open:write("</html>\n")	
end
end
local function head(mode)
if mode == "begin" then
  page_to_open:write("<head>\n")
end
if mode == "end" then
  page_to_open:write("</head>\n")
end
end
local function title(t)
  page_to_open:write("<title>"..t.."</title>\n")
end
local function body(mode)
if mode == "begin" then
  page_to_open:write("<body>\n")
end
if mode == "end" then
	page_to_open:write("</body>\n")
end
end
local function js(mode)
if mode == "begin" then
	page_to_open:write("<script>\n")
end
if mode == "end" then
	page_to_open:write("</script>\n")
end
end
local function script(script)
  page_to_open:write(script.."\n")
end
local function php(mode)
if mode == "begin" then
  page_to_open:write("<?php\n")
end
if mode == "end" then
  page_to_open:write("?>\n")
end
end
local function css(mode)
if mode == "begin" then
  page_to_open:write("<style>\n")
end
if mode == "end" then
  page_to_open:write("</style>\n")
end
end
local function p(text)
  page_to_open:write("<p>"..text.."</p>\n")
end
local function b(text)
  page_to_open:write("<b>"..text.."</b>\n")
end
local function i(text)
page_to_open:write("<i>"..text.."</i>\n")  
end
local function br()
page_to_open:write("<br>\n")
end
local function code(mode)
if mode == "begin" then
page_to_open:write("<code>\n")
end
if mode == "end" then
page_to_open:write("</code>\n")
end
end
local function img(src)
page_to_open:write("<img src=".."\""..src.."\"" ..">\n")   
end
local function attr(name,value)
page_to_open:write(name.."="..str(value).."\n")  
end
local function comment(text)
page_to_open:write("<!-- "..text.." -->\n")
end
local function endwebpage()
page_to_open:close()
end
local function src(type,src)
if type == "script" then
page_to_open:write("<script src="..str(src).."></script>\n")	
end
if type == "style" then
page_to_open:write("<style src="..str(src).."></style>\n")	
end
if type == "iframe" then
page_to_open:write("<iframe src="..str(src).."></iframe>\n")	
end
end
local function canvas(id,height,width)
page_to_open:write("<canvas id="..str(id).." height="..str(height).." width="..str(width).."></canvas>")
end
local function watermark()
i("Powered By ".._VERSION..",And Moonstone Framework")
end
-- Return
moonstone.script = script
moonstone.watermark = watermark
moonstone.src = src
moonstone.code = code
moonstone.canvas = canvas
moonstone.p = p
moonstone.b = b
moonstone.i = i
moonstone.js = js
moonstone.css = css
moonstone.php = php
moonstone.endwebpage = endwebpage
moonstone.attr = attr
moonstone.img = img
moonstone.str = str
moonstone.begin = begin
moonstone.html = html
moonstone.head = head
moonstone.title = title
moonstone.body = body
moonstone.br = br
moonstone.comment = comment
return moonstone