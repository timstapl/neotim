{
  1 :nvimdev/dashboard-nvim
  :event :VimEnter
  :dependencies [{ 1 :nvim-tree/nvim-web-devicons }]
  :config (fn []
            (local dashboard (require :dashboard))
            (local lazy (require :lazy))
            (dashboard.setup {
              :theme :doom
              :hide { :tabline true }
              :config {
                :header [
                          "                                 .                        "
                          "                                 /:\\                        "
                          "                                 |:|                        "
                          "                                 |:|                        "
                          "                                 |:|                        "
                          "                                 |:|                        "
                          "                                 |:|                        "
                          "                                 |:|                        "
                          " _        _______  _______ ___):(____________ _______ "
                          "( (    /|(  ____ \\(  ___  )\\__   __/\\__   __/(       )"
                          "|  \\  ( || (    \\/| (   ) |   ) (      ) (   | () () |"
                          "|   \\ | || (__    | |   | |   | |      | |   | || || |"
                          "| (\\ \\) ||  __)   | |   | |   | |      | |   | |(_)| |"
                          "| | \\   || (      | |   | |   | |      | |   | |   | |"
                          "| )  \\  || (____/\\| (___) |   | |   ___) (___| )   ( |"
                          "|/    )_)(_______/(_______)   (_)   \\_______/|/     \\|"
                          "                                                       "
                        ]
                :center [
                          {
                            :icon  "  "
                            :icon_hl  "Constant"
                            :desc  "Recent Files    "
                            :desc_hl  "Special"
                            :key  "r"
                            :key_hl  "Error"
                            :action  "Telescope oldfiles"
                          }
                          {
                            :icon  "  "
                            :icon_hl  "Constant"
                            :desc  "Find File       "
                            :desc_hl  "Special"
                            :key  "f"
                            :key_hl  "Error"
                            :action  "Telescope find_files" ;; find_command rg --hidden --files" ;;TODO: Not sure why this part broke?
                          }
                          {
                            :icon  "  "
                            :icon_hl  "Constant"
                            :desc  "Config         "
                            :desc_hl  "Special"
                            :key  "c"
                            :key_hl  "Error"
                            :action  "e ~/.config/nvim/init.fnl"
                          }
                          {
                            :icon  "  "
                            :icon_hl  "Constant"
                            :desc  "Today's Note         "
                            :desc_hl  "Special"
                            :key  "t"
                            :key_hl  "Error"
                            :action  "Telekasten goto_today"
                          }
                          {
                            :icon  "󱙓  "
                            :icon_hl  "Constant"
                            :desc  "Notes         "
                            :desc_hl  "Special"
                            :key  "o"
                            :key_hl  "Error"
                            :action  "Telekasten find_notes"
                          }
                          {
                            :icon  "󱘒  "
                            :icon_hl  "Constant"
                            :desc  "New Note         "
                            :desc_hl  "Special"
                            :key  "n"
                            :key_hl  "Error"
                            :action  "Telekasten new_note"
                          }
                          {
                            :icon  "  "
                            :icon_hl  "Constant"
                            :desc  "Quit         "
                            :desc_hl  "Special"
                            :key  "q"
                            :key_hl  "Error"
                            :action  "q!"
                          }
                        ]
                :footer ["" "" (string.format "%d plugins loaded" (. (lazy.stats) :count) )]
              }
            }))
}
