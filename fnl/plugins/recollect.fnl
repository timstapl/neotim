(local weekdays ["Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday"])
(local months ["January" "February" "March" "April" "May" "June" "July" "August" "September" "October" "November" "December"])

(fn daily-note-template [date-str] 
  (let [(year month day) (date-str:match "(%d+)%-(%d+)%-(%d+)")
        date (os.time {
                       :year (tonumber year)
                       :month (tonumber month)
                       :day (tonumber day)
                      })
        wday (+ 1 (tonumber (os.date "%w" date)))
        date-header (string.format "%s, %s %dth" (. weekdays wday) (. months (tonumber month)) (tonumber day))
       ]
    (string.format 
"---
type: daily
calendar:
  - date: %s
  - year: %s
  - month: %s
  - date: %s
  - dayOfWeek: %s
---

# %s

[toc]

## Priorities

## Schedule

| When?         | What?   | Where? | Note |
| ---           | ---     | ---    | ---  |
| 09:30 - 10:00 | Standup |        |      |


## Done List

" date-str year month day (. weekdays wday) date-header)))

{
  1 :jbuck95/recollect.nvim
  :dependencies [ :nvim-lua/plenary.nvim ]
  :config (fn [] (let [rec (require :recollect)]
  (rec.setup {
    :birthday "1987-12-20"
    :daily_notes_path (.. (vim.fn.expand "~") "/Documents/wiki/gravie/daily/")
    :note_template daily-note-template
  })))
}
