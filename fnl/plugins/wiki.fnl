{
  1 :echaya/neowiki.nvim
  :opts {
         :wiki_dirs [
                     { :name "Work" :path "~/Documents/wiki/gravie" }
                     ;; { :name "Personal" :path "~/Documents/wiki/personal" }
                    ]
        }
  :keys [
         {
          1 "<leader>ww"
          2 "<cmd>lua require('neowiki').open_wiki()<cr>"
          :desc "Open Wiki"
         }
         {
          1 "<leader>wW"
          2 "<cmd>lua require('neowiki').open_wiki_floating()<cr>"
          :desc "Open Floating Wiki"
         }
         ; {
         ;  1 "<leader>wT"
         ;  2 "<cmd>lua require('neowiki').open_wiki_new_tab()<cr>"
         ;  :desc "Open Wiki in Tab"
         ; }
        ]
}
