update:
	dotdrop update -f --profile=archlinux

install:
	dotdrop --cfg=/home/hick/git/dotfiles/config.yaml --profile=archlinux install -f

compare:
	dotdrop compare --profile=archlinux

commit:
	git commit -m "update: $$(date -u +"%Y-%m-%d %H:%M:%S %Z")"

lint:
	yamlfmt -lint .
	mbake format --check Makefile

format:
	yamlfmt .
	mbake format Makefile

up:
	vagrant up

destroy:
	vagrant destroy

encrypt-import:
	dotdrop import --transw=_encrypt --transr=_decrypt $(filter-out $@,$(MAKECMDGOALS))

%:
	@:

.PHONY: update install commit compare lint format up destroy encrypt-import