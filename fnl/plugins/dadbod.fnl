[{
  1 :tpope/vim-dadbod
 }
 {
  1 :kristijanhusak/vim-dadbod-ui
  :dependencies [
                 { 1 :tpope/vim-dadbod :lazy true }
                 { 1 :kristijanhusak/vim-dadbod-completion :ft [:sql :mysql :plsql] :lazy true}
                ]
  :cmd [:DBUI :DBUIToggle :DBUIAddConnection :DBUIFindBuffer]
  :init (fn [] 
          (set vim.g.db_ui_use_nerd_fonts 1)
          (set vim.g.db_ui_env_variable_url :DATABASE_URL)
          (set vim.g.db_ui_env_variable_name :DATABASE_NAME)
        )
 }
 ; {
 ;    1 :kristijanhusak/vim-dadbod-ui
 ; }
]

;; return {
  ;; 'kristijanhusak/vim-dadbod-ui',
  ;; dependencies = {
    ;; { 'tpope/vim-dadbod', lazy = true },
    ;; { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true }, -- Optional
  ;; },
  ;; cmd = {
    ;; 'DBUI',
    ;; 'DBUIToggle',
    ;; 'DBUIAddConnection',
    ;; 'DBUIFindBuffer',
  ;; },
  ;; init = function()
    ;; -- Your DBUI configuration
    ;; vim.g.db_ui_use_nerd_fonts = 1
  ;; end,
;; }
