(local device (require :../utils/device))

(print "device: " (device.identify-host))

{
  1 :SalOrak/whaler
  :opts {
          :directories (case (device.identify-host)
                         :home-desktop [{:path "~/Projects/" }] 
                         :gravie-macbook [
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
                         :unknown [])
          :picker :telescope
          :file_explorer :nvimtree
        }
}
