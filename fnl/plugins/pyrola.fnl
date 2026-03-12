{
  1 :matarina/pyrola.nvim
  :dependencies [ :nvim-treesitter/nvim-treesitter ]
  :build ":UpdateRemotePlugins"
  :config (fn []
    (local pyrola (require :pyrola))

    (pyrola.setup {
      :kernel_map {
                    :python "py3"
                    :r "ir"
                  }
      :split_horizontal false
      :split_ratio 0.65
      :image {
               :cell_width 10
               :cell_height 20
               :max_width_ratio 0.5
               :max_height_ratio 0.5
               :offset_row 0
               :offset_col 0
             }
    })

    (vim.keymap.set :n :<CR> (fn [] (pyrola.send_statement_definition)) { :noremap true })
    (vim.keymap.set :v :<leader>vs (fn [] (pyrola.send_visual_to_repl)) { :noremap true })
    (vim.keymap.set :v :<leader>vb (fn [] (pyrola.send_buffer_to_repl)) { :noremap true })
    (vim.keymap.set :v :<leader>is (fn [] (pyrola.inspect)) { :noremap true })
    (vim.keymap.set :v :<leader>im (fn [] (pyrola.open_history_manager)) { :noremap true })
  )
}
