# FRONTMATTER
Opened 2025-08-27 
Filepath ~/PORTABLE_ENV/dotfiles/cheat/.cheat/keyd.md

# keyd.md
# =============================================================================================================

Commands

Arch%> sudo keyd reload
will reload the config settings

start keyd 
Arch%> sudo systemctl enable keyd --now

check for errors
Arch%> sudo journalctl -eu keyd

Arch%> sudo vim /etc/keyd/default.config
'''
[ids]

*

[main]

shift = oneshot(shift)
meta = oneshot(meta)
control = oneshot(control)

leftalt = oneshot(alt)
rightalt = oneshot(altgr)

capslock = overload(control, esc)
insert = S-insert

'''

This overloads the capslock key to function as both escape (when tapped) and control (when held) and remaps all modifiers to 'oneshot' keys.
Thus to produce the letter A you can now simply tap shift and then a instead of having to hold it.
Finally it remaps insert to S-insert (paste on X11).






# =============================================================================================================
# FOOTNOTES

