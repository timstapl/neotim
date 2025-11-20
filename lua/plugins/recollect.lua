-- [nfnl] fnl/plugins/recollect.fnl
local weekdays = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
local months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}
local function daily_note_template(date_str)
  local year, month, day = date_str:match("(%d+)%-(%d+)%-(%d+)")
  local date = os.time({year = tonumber(year), month = tonumber(month), day = tonumber(day)})
  local wday = (1 + tonumber(os.date("%w", date)))
  local date_header = string.format("%s, %s %dth", weekdays[wday], months[tonumber(month)], tonumber(day))
  return string.format("---\ntype: daily\ncalendar:\n  - date: %s\n  - year: %s\n  - month: %s\n  - date: %s\n  - dayOfWeek: %s\n---\n\n# %s\n\n[toc]\n\n## Priorities\n\n## Schedule\n\n| When?         | What?   | Where? | Note |\n| ---           | ---     | ---    | ---  |\n| 09:30 - 10:00 | Standup |        |      |\n\n\n## Done List\n\n", date_str, year, month, day, weekdays[wday], date_header)
end
local function _1_()
  local rec = require("recollect")
  return rec.setup({birthday = "1987-12-20", daily_notes_path = (vim.fn.expand("~") .. "/Documents/wiki/gravie/daily/"), note_template = daily_note_template})
end
return {"jbuck95/recollect.nvim", dependencies = {"nvim-lua/plenary.nvim"}, config = _1_}
