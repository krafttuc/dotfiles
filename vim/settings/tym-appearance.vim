" Make it beautiful - colors and fonts

" http://ethanschoonover.com/solarized/vim-colors-solarized
colorscheme solarized
set background=dark

if has("gui_running")
  set guifont=Menlo:h14
else
  set t_Co=256
  colo default
endif

