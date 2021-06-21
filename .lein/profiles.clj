{:user {:plugins             [[refactor-nrepl "2.5.1"]
                              [cider/cider-nrepl "0.25.11"]
                              [com.billpiel/sayid "0.1.0"]
                              [s3-wagon-private "1.3.4" :upgrade false]
                              [lein-ancient "1.0.0-RC3"]]
        :injections          [(require 'nu)]
        :repositories        [["central"  {:url "https://repo1.maven.org/maven2/"
                                           :snapshots false}]
                              ["clojars"  {:url "https://clojars.org/repo/"}]
                              ["nu-maven" {:url "s3p://nu-maven/releases/"
                                           :region "sa-east-1"}]]
        :plugin-repositories [["nu-maven" {:url "s3p://nu-maven/releases/"}]]
        :dependencies        [[cljdev "0.10.0"]]}
 :repl {:plugins      [[cider/cider-nrepl "0.25.11"]
                       [refactor-nrepl "2.5.1"]]
        :dependencies [[nrepl "0.8.3"]
                       [mvxcvi/puget "1.3.1"]]
        :repl-options {:timeout 120000}}}

