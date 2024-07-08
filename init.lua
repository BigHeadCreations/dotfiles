-- Hammerspoon config file


-- Global variables
hyper =       {"cmd", "alt", "ctrl"}
shift_hyper = {"cmd", "alt", "ctrl", "shift"}

-- reload this config file on save
local myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/www/dotfiles/init.lua", hs.reload):start()
-------------------------------------------------------

-- applescript to paste contents of pasteboard
pastescript = [[ tell application "System Events"
  delay .4
  keystroke "v" using command down
end tell ]]


-- hs.hotkey.bind(hyper, "W", function()
--   hs.alert.show("testing", hs.alert.defaultStyle, hs.screen.mainScreen(), 1)
-- end)

-- d: date snippet
hs.hotkey.bind(hyper, "d", function()
  hs.pasteboard.clearContents()
  myDate = os.date("%Y%m%d") .. ".md"
  hs.pasteboard.setContents(myDate)
  hs.osascript.applescript(pastescript)
end)
-------------------------------------------------------


-- o: open my journal sparseimage
hs.hotkey.bind(hyper, "o", function()
  openJourn = [[do shell script "open ']] .. os.getenv("HOME") .. [[/Library/Mobile Documents/com~apple~CloudDocs/MyDocs/journ.sparseimage'"]]
  hs.osascript.applescript(openJourn)

end)

-------------------------------------------------------


-- k: open my daily tracKing sheet
hs.hotkey.bind(hyper, "k", function()
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
hs.hotkey.bind(hyper, "j", function()
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
  hs.osascript.applescript(pastescript)
end)
-------------------------------------------------------

-- t: today snippet
hs.hotkey.bind(hyper, "t", function()
  hs.pasteboard.clearContents()
  toPaste = [[## carryover


## Monday


]]
  hs.pasteboard.setContents(toPaste)
  hs.osascript.applescript(pastescript)
end)
-------------------------------------------------------


-- m: open my work time tracKing sheet
-- Money starts with m. I get paid for each entry in this doc
hs.hotkey.bind(hyper, "m", function()
  openSheet = [[do shell script "open ']] .. os.getenv("HOME") .. [[/Library/Mobile Documents/com~apple~CloudDocs/Work/time tracking/time.numbers'"]]
  hs.osascript.applescript(openSheet)

end)

-------------------------------------------------------

