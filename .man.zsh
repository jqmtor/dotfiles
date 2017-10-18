man() {
	  env \
		    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		    LESS_TERMCAP_md=$(printf "\e[1;35m") \
		    LESS_TERMCAP_me=$(printf "\e[0m") \
		    LESS_TERMCAP_se=$(printf "\e[0m") \
		    LESS_TERMCAP_so=$(printf "\e[4;36m") \
		    LESS_TERMCAP_ue=$(printf "\e[0m") \
		    LESS_TERMCAP_us=$(printf "\e[3;34m") \
			  man "$@"
}
