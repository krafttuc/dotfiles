if !has("gui_running")
    "set t_Co=256
    " Compatibility for Terminal
    let g:solarized_termtrans=1

    if (&t_Co >= 256 || $TERM == 'xterm-256color')
        let g:solarized_termcolors=256
    else
        " Make Solarized use 16 colors for Terminal support
        let g:solarized_termcolors=16
    endif
endif

" Make sure this file loads itself on top of any other color settings
"au VimEnter * so ~/.vim/settings/solarized.vim
