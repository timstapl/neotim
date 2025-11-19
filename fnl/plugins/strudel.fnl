{
  1 :gruvw/strudel.nvim
  :build "npm install"
  :config (fn [] (let [strudel (require "strudel")]
                   (strudel.setup)))
}
