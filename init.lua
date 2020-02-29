-- Hammerspoon config file


-- reload this config file on save
local myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/www/dotfiles/init.lua", hs.reload):start()
-------------------------------------------------------


-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
--   hs.alert.show("testing", hs.alert.defaultStyle, hs.screen.mainScreen(), 1)
-- end)

-- d: date snippet
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "d", function()
  hs.pasteboard.clearContents()
  myDate = os.date("%Y%m%d") .. ".md"
  hs.pasteboard.setContents(myDate)
end)
-------------------------------------------------------


-- o: open my journal sparseimage
-- run the command:  do shell script "open ~/Library/Mobile Documents/com~apple~CloudDocs/MyDocs/journ.sparseimage"   with proper escaping
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "o", function()
  openCommand = [[do shell script "open ']] .. os.getenv("HOME") .. [[/Library/Mobile Documents/com~apple~CloudDocs/MyDocs/journ.sparseimage'"]]
  hs.osascript.applescript(openCommand)

end)

-------------------------------------------------------


-- j: journal timestamp snippet in the form of
-- ---
-- year: 2020
-- month: January
-- day: Thu 02
-- ---
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "j", function()
  hs.pasteboard.clearContents()
  year = os.date("%Y")
  month = os.date("%B")
  day = os.date("%a")
  dayNumber = os.date("%d")

  toPaste = [[---
year: ]] .. year .. [[ 
month: ]] .. month .. [[ 
day: ]] .. day .. " " .. dayNumber .. [[ 
---]]

  hs.pasteboard.setContents(toPaste)
end)
-------------------------------------------------------

-- t: today snippet
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "t", function()
  hs.pasteboard.clearContents()
  toPaste = [[## today
- [ ] 


## wip


]]
  hs.pasteboard.setContents(toPaste)
end)
-------------------------------------------------------

