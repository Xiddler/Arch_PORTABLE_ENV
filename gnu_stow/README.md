# FRONTMATTER
Opened 2025-12-01
Filepath 

# Using stow
# =============================================================================================================

## Sample usage for `git`

-> % stow -d /home/donagh/Arch_PORTABLE_ENV/dotfiles  -t /home/donagh git

where:
-d is the source directory
-t is the target directory

The source directory will nearly always be /home/donagh/Arch_PORTABLE_ENV/dotfiles

There are different target directories
1. /home/donagh
2. /home/donagh/<package/> (eg kanata, nvim, zim, ranger)

## It's handy to create an alias for the $HOME directory
alias -g sstow='stow -d /home/donagh/Arch_PORTABLE_ENV/dotfiles  -t /home/donagh '
which allows the handy command
-> % sstow git 
(or whatever)

For the config directory, mayb use cstow for config stow:
-> % alias -g cstow='stow -d /home/donagh/Arch_PORTABLE_ENV/dotfiles  -t /home/donagh/.config/$1 '

-> % ls ~/Arch_PORTABLE_ENV/dotfiles

cheat
dot_vim
git
nvim
README.md
scripts
tmux
tmux_dot_config
tmuxp
vim
xbindkeys
zsh


## ls $HOME showing the symlinks
~
❯ ls -la G ">"

lrwxrwxrwx 1 donagh donagh    39 Nov 30 11:40 .bashrc -> Arch_PORTABLE_ENV/dotfiles/bash/.bashrc
lrwxrwxrwx 1 donagh donagh    39 Nov 29 16:51 .bashrc_orig -> Arch_PORTABLE_ENV/dotfiles/bash/.bashrc
lrwxrwxrwx 1 donagh donagh    39 Nov 29 16:51 .cheat -> Arch_PORTABLE_ENV/dotfiles/cheat/.cheat
lrwxrwxrwx 1 donagh donagh    43 Nov 29 16:52 .scripts -> Arch_PORTABLE_ENV/dotfiles/scripts/.scripts
lrwxrwxrwx 1 donagh donagh    37 Nov 29 16:52 .tmux -> Arch_PORTABLE_ENV/dotfiles/tmux/.tmux
lrwxrwxrwx 1 donagh donagh    53 Dec  1 19:15 .tmux.conf -> Arch_PORTABLE_ENV/dotfiles/tmux_dot_config/.tmux.conf
lrwxrwxrwx 1 donagh donagh    39 Dec  1 19:18 .tmuxp -> Arch_PORTABLE_ENV/dotfiles/tmuxp/.tmuxp
lrwxrwxrwx 1 donagh donagh    39 Dec  1 19:25 .vim -> Arch_PORTABLE_ENV/dotfiles/dot_vim/.vim
lrwxrwxrwx 1 donagh donagh    37 Nov 29 16:50 .vimrc -> Arch_PORTABLE_ENV/dotfiles/vim/.vimrc
lrwxrwxrwx 1 donagh donagh    49 Dec  1 19:25 .xbindkeysrc -> Arch_PORTABLE_ENV/dotfiles/xbindkeys/.xbindkeysrc
lrwxrwxrwx 1 donagh donagh    40 Nov 29 16:51 .zprofile -> Arch_PORTABLE_ENV/dotfiles/zsh/.zprofile
lrwxrwxrwx 1 donagh donagh    43 Nov 29 16:51 .zsh_aliases -> Arch_PORTABLE_ENV/dotfiles/zsh/.zsh_aliases
lrwxrwxrwx 1 donagh donagh    38 Nov 29 16:51 .zshenv -> Arch_PORTABLE_ENV/dotfiles/zsh/.zshenv
lrwxrwxrwx 1 donagh donagh    37 Nov 30 11:40 .zshrc -> Arch_PORTABLE_ENV/dotfiles/zsh/.zshrc



## cstow

alias -g cstow='stow -d /home/donagh/Arch_PORTABLE_ENV/$1  -t /home/donagh/.config/$1 '
(not tested in real )

samples usage
-> %  cstow kanata

cstow is an alias for configurations that appear in the $HOME/.config folder, being:

autokey                 :: system-wide abbreviations & text expander
kanata                  :: system-wide keyboard configuration; eg CapsLock to Esc & Ctrl ; I use the file donagh.kbd in Dec 2025






# =============================================================================================================
# FOOTNOTES

