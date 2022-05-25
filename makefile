all:
	bash setup.sh
	stow --target=$$HOME/.config .config
	stow --target=$$HOME ./ --ignore=makefile --ignore=README.md --ignore=setup.sh
delete:
	stow --verbose --traget=$$HOME --delete *
