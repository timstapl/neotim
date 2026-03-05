(local wk (require :which-key))
;; which-key mapspec v3 is defined as
;;  [1]: (string) lhs (required)
;;  [2]: (string|fun()) rhs (optional): when present, it will create the mapping
;;  desc: (string|fun():string) description (required for non-groups)
;;  group: (string|fun():string) group name (optional)
;;  mode: (string|string[]) mode (optional, defaults to "n")
;;  cond: (boolean|fun():boolean) condition to enable the mapping (optional)
;;  hidden: (boolean) hide the mapping (optional)
;;  icon: (string|wk.Icon|fun():(wk.Icon|string)) icon spec (optional)
;;  proxy: (string) proxy to another mapping (optional)
;;  expand: (fun():wk.Spec) nested mappings (optional)
;;  any other option valid for vim.keymap.set. These are only used for creating mappings.)
;; 
;; This isn't nice to use in Fennel, so instead we use a helper to build those.
(fn g [[keybind group-name]] 
  "Helper for creating a which-key group entry"
  {1 (.. "<leader>" keybind) :group group-name })

(fn c [[keybind command description]] 
  "helper for creating a which-key command entry"
  {1 (.. "<leader>" keybind) 2 (.. "<cmd>" command "<cr>") :desc description})

;; TODO: it would be nice to have a bit more of a macro or function
;; for which-key registration

;;(fn reg-group [[group & commands]]
;;  (g group)
;;  (each [_ cmd (ipairs commands)]
;;    (c cmd)))

;;
;; NvimTree
;;
(wk.add [
  (c ["e" "NvimTreeToggle" "File Tree"])
])

;;
;; Whaler
;;
(wk.add [
  (c ["p" "Whaler" "Open Project"])
])

;;
;; Telescope
;;
(wk.add [
 (g ["s" "Search"])
 (c ["sb" "Telescope buffers" "Find Buffer"])
 (c ["sf" "Telescope find_files" "Find File"])
 (c ["sn" "enew"                 "New File"])
 (c ["sr" "Telescope oldfiles"   "Open Recent File"])
 (c ["st" "Telescope live_grep"  "Find Text"])
])

;;
;; Git
;;
(wk.add [
  (g ["g"  "Git"])
  (c ["gg" "LazyGit" "LazyGit"])
  (c ["go" "GBrowse" "Open in Gitlab"])
])

;;
;; Buffers
;;
(wk.add [
  (g ["b" "Buffers"])
  (c ["bh" "BufferLineCyclePrev" "Previous Buffer"])
  (c ["bc" "bw" "Close Buffer"])
  (c ["bl" "BufferLineCycleNext" "Next Buffer"])
  (c ["bw" "w" "Write"])
])

;;
;; File
;; TODO: do I actually still want this?
(wk.add [
  (g ["f"      "File" ])
  (c ["fs" "w" "Save" ])
])

;;
;; Dashboard
;;
(wk.add [
  (c ["h" "Dashboard" "Home"])
])

;;
;; Remove default keybind for ' in normal mode
;; TODO: There has got to be a better way!
(vim.keymap.set "n" "'" "<cmd><cd>")
