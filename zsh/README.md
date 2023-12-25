# Configuração do ZSH

Instalando e configurando o ZSH

```bash
sudo pacman -S zsh
chsh -s /bin/zsh
zsh
```

Instalando o [Oh-my-zsh!](https://ohmyz.sh/)

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Instalando o tema [Spaceship Prompt](https://github.com/spaceship-prompt/spaceship-prompt)

```bash
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

Alterar o tema do ZSH no arquivo `~/.zshrc`

```bash
ZSH_THEME="spaceship"
```

Instalando o plugin [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Instalando o plugin [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Alterar os plugins do ZSH no arquivo `~/.zshrc`

```bash
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```

Configurando fontes

```bash
mkdir -p ~/.fonts
git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git ~/.fonts/ubuntu-mono-powerline-ttf
fc-cache -vf
```
