# Dotfiles

Minhas configurações de ferramentas que utilizo.

## Como usar

Para gerenciar os arquivos de configuração uso o [dotdrop](https://dotdrop.readthedocs.io/en/latest/).

### Para aplicar asconfigurações

```shell
yay -S dotdrop
dotdrop --cfg=/home/hick/git/dotfiles/config.yaml --profile=archlinux install
```

Para sincronizar as configurações

```shell
dotdrop update --profile=archlinux
```
