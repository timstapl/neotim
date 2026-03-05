(fn identify-host []
  (case (os.getenv "HOSTNAME")
      :fedora :home-desktop
      :GR0148 :gravie-macbook
      _       :unknown
    ))

{:identify-host identify-host}
