{
  1 :folke/zen-mode.nvim
  :opts {
    :on_open (fn [] 
               (set vim.opt.nu false)
             )
    :on_close (fn []
                (set vim.opt.nu true)
              )
  }
}
