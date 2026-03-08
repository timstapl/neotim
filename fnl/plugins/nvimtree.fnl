{
	1 :nvim-tree/nvim-tree.lua
	:config (fn []
    ((. (require :nvim-tree) :setup) {
      :update_focused_file {
        :enable true
        :update_root {
          :enable true
          :ignore_list []
        }
        :exclude false
      }
    })
  )
}
