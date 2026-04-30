{
  1 :folke/snacks.nvim
  :opts {
    :image {
             :enabled true
             :doc {
                    :enabled true
                    :inline true
                    :conceal (fn [_lang type] (= type "math"))
                  }
           }
  }
}
