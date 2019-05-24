.PHONY: check install dotfiles_check dotfiles_install

check: dotfiles_check

install: dotfiles_install

dotfiles_check:
	stow -n -vv -t $(HOME) dotfiles

dotfiles_install:
	stow -vv -t $(HOME) dotfiles
