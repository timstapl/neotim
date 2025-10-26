{
  1 :kndndrj/nvim-dbee
  :requires [ :MunifTanjim/nui.nvim ]
  :build (fn [] (let [dbee (require :dbee)] 
    (dbee.install "go") ))
  :config (fn [] (let [dbee (require :dbee)
                       src (require :dbee.sources)]
    (dbee.setup {
      :sources [
        (src.FileSource:new (.. (vim.fn.stdpath "cache") "/dbee/persistence.json"))
      ]
    })
  ))
}
