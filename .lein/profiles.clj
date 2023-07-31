{:user {:plugins             [[refactor-nrepl "3.6.0"]
                              [cider/cider-nrepl "0.30.0"]
                              [com.billpiel/sayid "0.1.0"]
                              [s3-wagon-private "1.3.5" :upgrade false]
                              [lein-ancient "1.0.0-RC3"]]
        :injections          [(require 'nu)]
        :repositories        [["central"  {:url "https://repo1.maven.org/maven2/"
                                           :snapshots false}]
                              ["clojars"  {:url "https://clojars.org/repo/"}]
                              ["nu-codeartifact" {:url "https://maven.cicd.nubank.world"}]]
        :plugin-repositories [["nu-maven" {:url "s3p://nu-maven/releases/"}]]
        :dependencies        [[cljdev "0.11.5"]]}
 :repl {:plugins      [[cider/cider-nrepl "0.30.0"]
                       [refactor-nrepl "3.6.0"]]
        :dependencies [[nrepl "1.0.0"]
                       [mvxcvi/puget "1.3.4"]]
        :repl-options {:timeout 120000}}}

