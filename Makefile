new:
	@./brew.sh
	@./macos
.PHONY: new

bootstrap:
	@git clone --recursive -j8 git@github.com:quimrstorres/dotfiles.git && cd dotfiles && source bootstrap.sh
.PHONY: bootstrap
