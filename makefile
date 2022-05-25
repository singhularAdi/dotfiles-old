all:
	stow --verbose --target=$$HOME --ignore="*.md" --ignore="makefile" --restow *
delete:
	stow --verbose --traget=$$HOME --delete *
