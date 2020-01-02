-- Hammerspoon config file


-- reload this config file on save
local myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", hs.reload):start()

-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
--   hs.alert.show("testing", hs.alert.defaultStyle, hs.screen.mainScreen(), 1)
-- end)


-- d: date snippet
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "d", function()
  hs.pasteboard.clearContents()
  myDate = os.date("%Y%m%d") .. ".md"
  hs.pasteboard.setContents(myDate)
end)

-- t: today snippet
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "t", function()
  hs.pasteboard.clearContents()
  toPaste = [[## today
- [ ] 


## wip


]]
  hs.pasteboard.setContents(toPaste)
end)
