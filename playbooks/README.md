Playbooks

Para provisionar meu sistema de uso com todas as ferramentas e configurações uso o Ansible, basta executar:

```shell
sudo pacman -Syu --noconfirm
sudo pacman -S git ansible --noconfirm
git clone https://github.com/henriquesebastiao/dotfiles.git
cd dotfiles/playbooks
sudo ansible-playbook basic_arch.yml
ansible-galaxy collection install -r requirements.yml
sudo ansible-playbook tasks.yml
```

Agora basta reiniciar e e aproveitar o sistema.