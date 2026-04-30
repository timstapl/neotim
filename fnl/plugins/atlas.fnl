{
  1 :emrearmagan/atlas.nvim
  :dependencies [
    :MeanderingProgrammer/render-markdown.nvim
  ]
  :config (fn []
            (local atlas (require "atlas"))
            (atlas.setup {
                          :jira {
                                 :base_url (os.getenv "")
                                 :email (os.getenv "")
                                 :token (os.getenv "")
                                }
                         })
          )
}
