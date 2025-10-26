{
  1 :jbuck95/recollect.nvim
  :dependencies [ :nvim-lua/plenary.nvim ]
  :config (fn [] (let [rec (require :recollect)]
  (rec.setup {
    :birthday "1987-12-20"
    :daily_notes_path (.. (vim.fn.expand "~") "/Documents/wiki/gravie/daily/")
  })))
}
