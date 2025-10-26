(set vim.opt.termguicolors true)
(set vim.opt.background "dark")
(set vim.g.gruvbox_material_transparent_background 2)

(vim.cmd.colorscheme "gruvbox-material")

(vim.api.nvim_create_autocmd "Filetype" {
                                         :group (vim.api.nvim_create_augroup "colorscheme" { :clear true })
                                         :pattern ["*"]
                                         :command "hi Folded guibg=#404946 guifg=#928374"
                                         })

