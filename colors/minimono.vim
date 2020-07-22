" This theme only comes in a dark variant and only specifies ANSI colors,
" so let's help the user by setting these options automatically on load.
set background=dark
set notermguicolors

" Clear any previous highlight settings, then bootstrap the new colors.
highlight clear

if exists("syntax_on")
  syntax reset
endif

exec "source " . expand('<sfile>:p:h') . "/default-light.vim"

let colors_name = "minimono"

" In diffs, added lines are green, changed lines are yellow, deleted lines are
" red, and changed text (within a changed line) is bright yellow and bold.
highlight DiffAdd        ctermfg=0    ctermbg=2
highlight DiffChange     ctermfg=0    ctermbg=3
highlight DiffDelete     ctermfg=0    ctermbg=1
highlight DiffText       ctermfg=0    ctermbg=11   cterm=bold

" Highlight search matches in black with a yellow background.
highlight Search         ctermfg=0    ctermbg=11

" Dim default colors that are too strong.
highlight LineNr       ctermfg=8
highlight Comment      ctermfg=8
highlight ColorColumn  ctermfg=7    ctermbg=8
highlight Folded       ctermfg=7    ctermbg=8
highlight FoldColumn   ctermfg=7    ctermbg=8
highlight Pmenu        ctermfg=15   ctermbg=8
highlight PmenuSel     ctermfg=8    ctermbg=8
highlight SpellCap     ctermfg=7    ctermbg=8
highlight StatusLine   ctermfg=15   ctermbg=0    cterm=NONE
highlight StatusLineNC ctermfg=7    ctermbg=0    cterm=NONE
highlight VertSplit    ctermfg=0    ctermbg=NONE cterm=NONE
highlight Visual       ctermfg=7    ctermbg=8    cterm=NONE
highlight SignColumn   ctermfg=7    ctermbg=NONE
highlight NonText      ctermfg=8

" Additional integration with third-party plugins.
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=1
