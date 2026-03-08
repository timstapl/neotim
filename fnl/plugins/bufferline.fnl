{
  1 :akinsho/bufferline.nvim
  :version :*
  :dependencies :nvim-tree/nvim-web-devicons
  :config (fn [] (let [bufferline (require :bufferline)]
                   (bufferline.setup { :options {
                                      :separator_style :slant
                                      :diagnostics :nvim_lsp
                                      :offsets [{
                                                 :filetype :NvimTree
                                                 :text "Nvim Tree"
                                                 :separator true
                                                 :text_align :left
                                               }]
                                      :diagnostics_indicator (fn [_count _level diagnostics_dict _context]
                                                               (var s " ")
                                                               (each [key value (pairs diagnostics_dict)]
                                                                 (local sym (if
                                                                              (= key "error")   " "
                                                                              (= key "warning") " "
                                                                                                ""))
                                                                 (set s (.. s value sym))
                                                               ) s)
                                     }})
                   ))
}
