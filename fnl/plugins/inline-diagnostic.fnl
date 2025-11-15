{
  1 :rachartier/tiny-inline-diagnostic.nvim
  :event :VeryLazy
  :priority 1000
  :config (fn [] (let [inline (require :tiny-inline-diagnostic)] 
                   (inline.setup)
                   (vim.diagnostic.config { :virtual_text false })
                   ))
}
