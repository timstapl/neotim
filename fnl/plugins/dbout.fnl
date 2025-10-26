{
  1 :zongben/dbout.nvim
  :build "npm install"
  :lazy "VeryLazy"
  :cmd [ :Dbout ]
  :config (fn [] (let [dbout (require :dbout)] (dbout.setup)))
}

