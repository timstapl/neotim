{
  1 :SalOrak/whaler
  :opts {
          :directories [
                        {:path "~/projects/gravie/comfort/repos/core-services/" :alias :comfort-core }
                        {:path "~/projects/gravie/comfort/repos/dbschema/" :alias :comfort-db }
                        {:path "~/projects/gravie/comfort/repos/tools/" :alias :comfort-tools }
                        {:path "~/projects/gravie/comfort/repos/libraries/" :alias :comfort-libs }
                        {:path "~/projects/gravie/comfort/repos/integration/" :alias :comfort-int }
                        {:path "~/projects/gravie/comfort/repos/mobile/" :alias :comfort-mobile }
                        {:path "~/projects/gravie/comfort/repos/production-support/" :alias :comfort-support }

                        {:path "~/projects/gravie/comfort/repos/" :alias :comfort }

                        {:path "~/projects/gravie/ichra/repos/" :alias :ichra }

                        {:path "~/projects/gravie/platform/repos/" :alias :platform }
                       ]
          :picker :telescope
          :file_explorer :nvimtree
          ;:file_explorer_config {
                                  ;:plugin_name ""
                                  ;:command ""
                                  ;:prefix_dir ""
                                ;}
        }
}
; return {
;     "SalOrak/whaler",
;     opts = {
;         -- Directories to be used as parent directories. Their subdirectories 
;         -- are considered projects for Whaler.
;         directories = {
;             "path/to/parent/project", 
;             { path = "path/to/another/parent/project", alias = "An alias!"}
;         },
;         -- Directories to be directly used as projects. No subdirectory lookup.
;         oneoff_directories = {
;             { path = "~/.local/share/nvim/lazy", alias = "Neovim Installation"},
;             { path = "~/.config/", alias = "Config directory"}
;         },
;
;         -- Picker to use. By default uses `telescope` for compatibility reasons.
;         -- Options are 'telescope', 'fzf_lua' and 'vanilla' (uses `vim.ui.input`).
;         picker = "telescope"
;     },
; }
