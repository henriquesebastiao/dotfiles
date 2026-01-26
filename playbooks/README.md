# Playbooks

Esse script de provisionamento deve ser executado em uma instalação do Arch Linux GNOME com o usuário de nome `hick`.

Para provisionar meu sistema de uso com todas as ferramentas e configurações uso o Ansible, basta executar:

```shell
sudo pacman -Syu --noconfirm
sudo pacman -S git ansible --noconfirm
git clone https://github.com/henriquesebastiao/dotfiles.git
cd dotfiles/playbooks
sudo ansible-playbook basic_arch.yml
sudo ansible-galaxy collection install -r requirements.yml
sudo ansible-playbook tasks.yml
```

> Agora basta reiniciar e e aproveitar o sistema.

Após instalar o sistema algumas outras configurações precisam ser feitas manualmente como:

Fazer login nos seguintes apps:

- Anki
- Tailscale
- Bitwarden
- Discord
- Newsflash

E também:

- Baixar documentações do Zeal.
- Configurar Obsidian.