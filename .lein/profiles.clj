{:user {:plugins             [[refactor-nrepl "3.10.0"]
                              [cider/cider-nrepl "0.47.1"]
                              [lein-ancient "1.0.0-RC3"]]
        :repositories        [["nu-codeartifact" {:url "https://maven.cicd.nubank.world"}]]
        :plugin-repositories [["nu-codeartifact" {:url "https://maven.cicd.nubank.world"}]]
        :injections          [(require 'nu)
                              ["clojars"  {:url "https://clojars.org/repo/"}]
                              ["nu-codeartifact" {:url "https://maven.cicd.nubank.world"}]]}
 :repl {:plugins      [[cider/cider-nrepl "0.47.1"]
                       [refactor-nrepl "3.10.0"]]
        :dependencies [[nrepl "1.1.1"]]
        :repl-options {:timeout 120000}}}
