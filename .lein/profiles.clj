{:user {:plugins             [[refactor-nrepl "2.5.0"]
                              [cider/cider-nrepl "0.25.4"]
                              [com.billpiel/sayid "0.0.17"]
                              [lein-kibit "0.1.6"]
                              [s3-wagon-private "1.3.1" :upgrade false]
                              [lein-ancient "0.6.15"]]
        :injections          [(require 'nu)]
        :repositories        [["central"  {:url "https://repo1.maven.org/maven2/"
                                           :snapshots false}]
                              ["clojars"  {:url "https://clojars.org/repo/"}]
                              ["nu-maven" {:url "s3p://nu-maven/releases/"
                                           :region "sa-east-1"}]]
        :plugin-repositories [["nu-maven" {:url "s3p://nu-maven/releases/"}]]
        :dependencies        [[cljdev "0.8.0"]]}

 :pretty {:plugins      [[io.aviso/pretty "0.1.37"]]
          :dependencies [[io.aviso/pretty "0.1.37"]]
          :middleware   [io.aviso.lein-pretty/inject]}

 :repl {:plugins      [[cider/cider-nrepl "0.25.4"]
                       [refactor-nrepl "2.5.0"]]
        :dependencies [[nrepl "0.8.2"]
                       [mvxcvi/puget "1.3.1"]]
        :repl-options {:timeout 120000}}}

