### custom file for aliases ###
# it is apparently not necessary to add this
# file manually to .zshrc, as all files within
# the custom directory are read automatically

# ls
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'

# cd
alias cdesk='cd /home/localuser/Desktop'

# python
alias snek='python'

# ssh
alias sshsisko='ssh localuser@sisko'
alias sshXsisko='ssh -X localuser@sisko'

# conda environments
alias py2enter='conda activate py27'
alias pyexit='conda deactivate'

# fits viewers
alias ds9fs='ds9 -cmap bb -zscale -log -zoom 1.0'
alias qfitsview='QFitsView_4.1'
