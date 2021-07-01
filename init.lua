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
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "o", function()
  openJourn = [[do shell script "open ']] .. os.getenv("HOME") .. [[/Library/Mobile Documents/com~apple~CloudDocs/MyDocs/journ.sparseimage'"]]
  hs.osascript.applescript(openJourn)

end)

-------------------------------------------------------


-- k: open my time tracKing sheet
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "k", function()
  openSheet = [[do shell script "open ']] .. os.getenv("HOME") .. [[/Library/Mobile Documents/com~apple~Numbers/Documents/Daily.numbers'"]]
  hs.osascript.applescript(openSheet)

end)

-------------------------------------------------------


-- j: journal timestamp snippet in the form of
-- ---
-- year: 2020
-- month: January
-- day: Thu 02
-- time: 9:42
-- ---
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "j", function()
  hs.pasteboard.clearContents()
  year = os.date("%Y")
  month = os.date("%B")
  day = os.date("%a")
  dayNumber = os.date("%d")
  time = os.date("%H:%M")

  toPaste = [[---
year: ]] .. year .. [[ 
month: ]] .. month .. [[ 
day: ]] .. day .. " " .. dayNumber .. [[ 
time: ]] .. time .. [[ 
---]]

  hs.pasteboard.setContents(toPaste)
end)
-------------------------------------------------------

-- t: today snippet
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "t", function()
  hs.pasteboard.clearContents()
  toPaste = [[## today
- [ ] 

## pomodoro's
- [ ] one
- [ ] two
- [ ] three
- [ ] four
- [ ] five
- [ ] six
- [ ] seven
- [ ] eight

## carryover


## wip


]]
  hs.pasteboard.setContents(toPaste)
end)
-------------------------------------------------------

