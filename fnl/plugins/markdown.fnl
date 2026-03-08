{
  1 :MeanderingProgrammer/markdown.nvim
  :name "render-markdown"
  :dependencies [
    :nvim-treesitter/nvim-treesitter
  ]
  :config (fn []
    ((. (require :render-markdown) :setup) {
      :start_enabled true
      :latex_enabled true
    })
  )
}
