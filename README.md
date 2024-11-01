# Developer Environment Files 👾

<img width="1798" alt="demo-1" src="https://github.com/user-attachments/assets/d00f09ab-821f-453c-9180-5bc61048d606">
<img width="1798" alt="demo-2" src="https://github.com/user-attachments/assets/1cbf3a1e-9ee8-494a-ac72-73b0bc5fafed">
<img width="1798" alt="demo-3" src="https://github.com/user-attachments/assets/756a11e1-47ba-45fc-861d-826c662732a0">

## You will need:

##### 1. [Alacritty](https://alacritty.org/)

##### 2. [Oh My ZSH!](https://ohmyz.sh/)

##### 3. [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

##### 4. [Neovim(Lazy)](https://www.lazyvim.org/)

##### 5. [Tmux](https://github.com/tmux/tmux/wiki)

<br>

## Tmux

#### tmux.conf

```ini
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'christoomey/vim-tmux-navigator'
set -g @plugin "arcticicestudio/nord-tmux"

set -g default-terminal "xterm-256color"


# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'github_username/plugin_name#branch'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```
