alias h         history 25
alias j         jobs -l
alias la        ls -aF
alias lf        ls -FA
alias ll        ls -alAFGT
alias ..    cd ..
alias ls    ls -aFG
alias psa   ps auxww
alias lscount   'ls -aF | grep -v /$ | wc -l'
alias igrep grep -i
alias dir 'du -s -m -c * | sort -rn'

bindkey ^[[3~ delete-char

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin $HOME/bin)
# setenv        BLOCKSIZE       K
# A righteous umask
# umask 22

setenv  EDITOR  vim
setenv  PAGER   more
setenv  LANG    pl_PL.UTF-8
setenv  LSCOLORS ExfxcxdxbxEgEdabagacad
setenv  LS_COLORS ExfxcxdxbxEgEdabagacad
setenv  GEM_HOME ~/.gem

set path = ($path /home/sec/.local/bin)

if ($?prompt) then
        # An interactive shell -- set some stuff up
        set prompt = "%N@%m:%~ %# "
        set promptchars = "%#"

        set filec
        set history = 1000
        set savehist = (1000 merge)
        set autolist = ambiguous
        # Use history to aid expansion
        set autoexpand
        set autorehash
        set mail = (/var/mail/$USER)
        if ( $?tcsh ) then
                bindkey "^W" backward-delete-word
                bindkey -k up history-search-backward
                bindkey -k down history-search-forward
                bindkey "^R" i-search-back
        endif
    set color=ls-F

endif
