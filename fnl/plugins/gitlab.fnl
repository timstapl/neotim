{
  1 :harrisoncramer/gitlab.nvim
  :dependencies [
    :MunifTanjim/nui.nvim
    :nvim-lua/plenary.nvim
    :sindrets/diffview.nvim
    :stevearc/dressing.nvim ;; Recommended but not required. Better UI for pickers.
    :nvim-tree/nvim-web-devicons ;; Recommended but not required. Icons in discussion tree.
  ]
  :enabled true
  :build  (fn []
    ((. (require :gitlab.server) :build) true)
  )
  :config (fn []
    ((. (require :gitlab) :setup))
  )
}
