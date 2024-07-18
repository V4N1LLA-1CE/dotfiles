
# Developer Environment Files 👾
<img width="1798" alt="demo-1" src="https://github.com/user-attachments/assets/d00f09ab-821f-453c-9180-5bc61048d606">
<img width="1798" alt="demo-2" src="https://github.com/user-attachments/assets/1cbf3a1e-9ee8-494a-ac72-73b0bc5fafed">
<img width="1798" alt="demo-3" src="https://github.com/user-attachments/assets/756a11e1-47ba-45fc-861d-826c662732a0">


## Setup Order (Recommended)
##### 1. [Alacritty](https://alacritty.org/)
##### 2. [Oh My ZSH!](https://ohmyz.sh/)
##### 3. [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
##### 4. [Neovim(Lazy)](https://www.lazyvim.org/)
##### 5. [Tmux](https://github.com/tmux/tmux/wiki)

<br>

## Alacritty Settings
#### alacritty.toml
```toml
import = [
  "~/.config/alacritty/themes/themes/kanagawa_wave.toml"
]

[env]
TERM = "xterm-256color"
[window]
padding.x = 10
padding.y = 10

decorations = "Buttonless"

opacity = 0.7
blur = true

option_as_alt = "Both"

[font]
normal.family = "MesloLGS Nerd Font Mono"

size = 17
```
<br>

## Neovim Plugins
##### - [colorscheme (Kanagawa)](https://github.com/rebelot/kanagawa.nvim)
##### - [mini.hipatterns](https://github.com/echasnovski/mini.hipatterns)
##### - [incline](https://github.com/b0o/incline.nvim)
##### - [inline](https://github.com/malbertzard/inline-fold.nvim)
##### - [lualine](https://github.com/nvim-lualine/lualine.nvim)
##### - [refactoring](https://github.com/smjonas/inc-rename.nvim)
##### - [telescope](https://github.com/nvim-telescope/telescope.nvim)
##### - [tmux](https://github.com/aserowy/tmux.nvim)

<br>

## Tmux
#### Plugins
##### - [tpm](https://github.com/tmux-plugins/tpm)
##### - [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
##### - [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)
##### - [tmux-kanagawa](https://github.com/Nybkox/tmux-kanagawa)

#### tmux.conf
```ini
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'christoomey/vim-tmux-navigator'
set -g @plugin 'Nybkox/tmux-kanagawa'

set -g "window-style" "bg=default"
set -g "window-active-style" "bg=default"

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'github_username/plugin_name#branch'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```
