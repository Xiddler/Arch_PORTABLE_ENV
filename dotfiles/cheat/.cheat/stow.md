# FRONTMATTER
Opened 2025-12-01
Filepath 
Refs zim-wiki  LINUX:1Linux Live USB:01installed apps:stow

# stow utility for dotfiles
# =============================================================================================================

alias -- sstow will symlink each `item` in ~/Arch_PORTABLE_ENV/dotfiles to the home folder
-%> ls ~/Arch_PORTABLE_ENV/dotfiles
bash  cheat  git  nvim  scripts  tmux  vim  xbindkeys  zsh

sample usage

-%> sstow zsh

(note the initial `ss...`
this will automatically create all the symlinks associated with zsh
.zprofile
.zsh_aliases
.zshenv
.zshrc 
(see below)




❯~ ls -la G ">"
lrwxrwxrwx 1 donagh donagh    39 Nov 30 11:40 .bashrc -> Arch_PORTABLE_ENV/dotfiles/bash/.bashrc
lrwxrwxrwx 1 donagh donagh    39 Nov 29 16:51 .bashrc_orig -> Arch_PORTABLE_ENV/dotfiles/bash/.bashrc
lrwxrwxrwx 1 donagh donagh    39 Nov 29 16:51 .cheat -> Arch_PORTABLE_ENV/dotfiles/cheat/.cheat
lrwxrwxrwx 1 donagh donagh    43 Nov 29 16:52 .scripts -> Arch_PORTABLE_ENV/dotfiles/scripts/.scripts
lrwxrwxrwx 1 donagh donagh    37 Dec  2 10:23 .tmux -> Arch_PORTABLE_ENV/dotfiles/tmux/.tmux
lrwxrwxrwx 1 donagh donagh    42 Dec  2 10:23 .tmux.conf -> Arch_PORTABLE_ENV/dotfiles/tmux/.tmux.conf
lrwxrwxrwx 1 donagh donagh    38 Dec  2 10:23 .tmuxp -> Arch_PORTABLE_ENV/dotfiles/tmux/.tmuxp
lrwxrwxrwx 1 donagh donagh    35 Dec  2 10:26 .vim -> Arch_PORTABLE_ENV/dotfiles/vim/.vim
lrwxrwxrwx 1 donagh donagh    37 Dec  2 10:26 .vimrc -> Arch_PORTABLE_ENV/dotfiles/vim/.vimrc
lrwxrwxrwx 1 donagh donagh    49 Dec  1 19:25 .xbindkeysrc -> Arch_PORTABLE_ENV/dotfiles/xbindkeys/.xbindkeysrc
lrwxrwxrwx 1 donagh donagh    40 Nov 29 16:51 .zprofile -> Arch_PORTABLE_ENV/dotfiles/zsh/.zprofile
lrwxrwxrwx 1 donagh donagh    43 Nov 29 16:51 .zsh_aliases -> Arch_PORTABLE_ENV/dotfiles/zsh/.zsh_aliases
lrwxrwxrwx 1 donagh donagh    38 Nov 29 16:51 .zshenv -> Arch_PORTABLE_ENV/dotfiles/zsh/.zshenv
lrwxrwxrwx 1 donagh donagh    37 Nov 30 11:40 .zshrc -> Arch_PORTABLE_ENV/dotfiles/zsh/.zshrc






# =============================================================================================================
# FOOTNOTES

