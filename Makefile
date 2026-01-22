update:
	dotdrop update --profile=archlinux

install:
	dotdrop --cfg=/home/hick/git/dotfiles/config.yaml --profile=archlinux install -f

compare:
	dotdrop compare --profile=archlinux