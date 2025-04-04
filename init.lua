-- # Hammerspoon config file


-- reload this config file on save
local myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/www/dotfiles/init.lua", hs.reload):start()
-------------------------------------------------------

-- ## Global variables
hyper =       {"cmd", "alt", "ctrl"}
shift_hyper = {"cmd", "alt", "ctrl", "shift"}
option_shift = {"option", "shift"}
option = {"option"}

-- applescript to paste contents of pasteboard
pastescript = [[ tell application "System Events"
  delay .4
  keystroke "v" using command down
end tell ]]
-------------------------------------------------------


-- ## Paste helpers 

-- hyper d: date snippet
hs.hotkey.bind(hyper, "d", function()
  hs.pasteboard.clearContents()
  myDate = os.date("%Y%m%d") .. ".md"
  hs.pasteboard.setContents(myDate)
  hs.osascript.applescript(pastescript)
end)
-------------------------------------------------------

-- hyper j: journal timestamp snippet in the form of
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

-- hyper t: today snippet
hs.hotkey.bind(hyper, "t", function()
  hs.pasteboard.clearContents()
  day = os.date("%A")
  dayNumber = os.date("%d")

  toPaste = [[## ]] .. day .. " " .. dayNumber .. [[

]]
  hs.pasteboard.setContents(toPaste)
  hs.osascript.applescript(pastescript)
end)
-------------------------------------------------------


-- ## Open helpers

-- hyper m: open my work time tracking sheet for Alita 2025
-- Money starts with m. I get paid for each entry in this doc
hs.hotkey.bind(hyper, "m", function()
  openSheet = [[do shell script "open ']] .. os.getenv("HOME") .. [[/Library/Mobile Documents/com~apple~CloudDocs/Work/000 time tracking/Alita time 2025.numbers'"]]
  hs.osascript.applescript(openSheet)

end)
-------------------------------------------------------

-- hyper k: open my daily tracKing sheet
hs.hotkey.bind(hyper, "k", function()
  openSheet = [[do shell script "open ']] .. os.getenv("HOME") .. [[/Library/Mobile Documents/com~apple~Numbers/Documents/Daily.numbers'"]]
  hs.osascript.applescript(openSheet)

end)
-------------------------------------------------------

-- hyper o: open my journal sparseimage
hs.hotkey.bind(hyper, "o", function()
  openJourn = [[do shell script "open ']] .. os.getenv("HOME") .. [[/Library/Mobile Documents/com~apple~CloudDocs/MyDocs/journ.sparseimage'"]]
  hs.osascript.applescript(openJourn)

end)
-------------------------------------------------------

-- open/focus Firefox
hs.hotkey.bind(option, "1", function()
  hs.application.launchOrFocus("/Applications/Firefox.app")
end)
-------------------------------------------------------

-- open/focus Chrome
hs.hotkey.bind(option, "2", function()
  hs.application.launchOrFocus("/Applications/Google Chrome.app")
end)
-------------------------------------------------------

-- open/focus Visual Studio Code
hs.hotkey.bind(option, "3", function()
  hs.application.launchOrFocus("/Applications/Visual Studio Code.app")
end)
-------------------------------------------------------

-- open/focus Sublime Text
hs.hotkey.bind(option, "4", function()
  hs.application.launchOrFocus("/Applications/Sublime Text.app")
end)
-------------------------------------------------------

-- open/focus Ghostty
hs.hotkey.bind(option, "5", function()
  hs.application.launchOrFocus("/Applications/Ghostty.app")
end)
-------------------------------------------------------

-- open/focus Brave Browser
hs.hotkey.bind(option, "9", function()
  hs.application.launchOrFocus("/Applications/Brave Browser.app")
end)
-------------------------------------------------------

-- open/focus Howler Timer
hs.hotkey.bind(option, "0", function()
  hs.application.launchOrFocus("/Applications/Howler Timer.app")
end)
-------------------------------------------------------
