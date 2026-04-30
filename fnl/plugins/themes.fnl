[
  {
     1  :sainnhe/gruvbox-material
  }
  {
     1  :ember-theme/nvim
     :name "ember"
     :priority 1000
     :config (fn [] 
               (local ember (require :ember))
               (ember.setup {
                              ;; Variants  :ember :ember-soft :ember-light
                              :variant  :ember
                            })
             )
  }
  { 
    1 :catppuccin/nvim
    :name "catppuccin"
    :priority 1000 
  }
  {
    1 :sainnhe/everforest
    :name "everforest"
    :priority 1000
  }
  { 
    1 :savq/melange-nvim
    :name "melange"
    :priority 1000
  }
  {
    1 :xero/miasma.nvim
    :name "miasma"
    :priority 1000
  }
  {
    1 :ramojus/mellifluous.nvim
    :name "mellifluous"
    :priority 1000
  }
  {
    1 :kdheepak/monochrome.nvim
    :name "monochrome"
    :priority 1000
  }
  {
    1 :dracula/vim
    :name "dracula"
    :priority 1000
  }
  {
    1 :shaunsingh/nord.nvim
    :name "nord"
    :priority 1000
  }
]
