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
## Setting Up:
### 1. Requirements:
- [Lua](https://lua.org)
Or:
- Compiler/IDE: Use [Comet](http://hamady.org/comet.html) As It Is Simple To Use,You Can Compile Using Default Lua If You Don't Want To Use Compiler Or IDE
### 2. Writing Your First Example:
- Create A `.lua ` File And Name It As You Want
- Require `moonstone`
- Add `moonstone.lua` File Beside Of Your Lua File
- You Can Use Code Above At The Readme,Or Type Your Own
### 3. Compiling:
1. From IDE:
- Just Run The Code,In The Input It Will Asks For Directory Where Are You Want To Place Generated Web Code(From Lua File)
- Type It(Disk -> Folders -> Your_Webpage_Name) With One Of These Endings(`.html`/`.css`/`.js`/`.php`/`.cshtml`/`.vbhtml`/`.coffee`)
- Example: `D:\my_webpage.html`
2. From Lua(No Compiler/IDE): 
- Open Command Prompt From Lua Folder(Note That `moonstone.lua` And Your Code File Must Be Inside Lua Folder Beside Binary Files)
- Type `Lua53.exe your_code_name.lua` If You Have Lua 5.3,Else:
- Lua 5.2: `Lua52.exe your_code_name.lua`
- Lua 5.1: `Lua51.exe your_code_name.lua`
- By Default: `Lua.exe your_code_name.lua`
- Then The Command Prompt Will Asks For Directory Where Are You Want To Place Generated Web Code(From Lua File)
- Example: `D:\my_webpage.html`
> NOTES: If You Have Compiler/IDE For Lua,Do Not Download Lua Standalone,Also Do Not Use Zenobrane Studio
### 4. Running Generated HTML/CSS/JS/VBHTML/PHP/CSHTML:
- Running Generated Code File Does Not Require Any Internet,As It Offline
- Open File
## API Reference:
API Reference Coming Soon!!!
