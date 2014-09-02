" nbetm vim color file
"
" Author: Nelson R Monserrate <nrmonserrate@gmail.com>
" Version: 1.0.6
" Date: 2014.05.09

hi clear
if exists("syntax_on")
    syntax reset
endif
let colors_name="nbetm"

set background=dark
if exists("g:nbetm_style")
    if g:nbetm_style == "light"
        set background=light
    endif
else
    let g:nbetm_style = "dark"
endif

" set colorcolumn=21,37,53,68,86,100

if g:nbetm_style == "dark"


    hi Normal           guifg=#d7d7d7   guibg=#303030   ctermfg=188    ctermbg=233       gui=none      cterm=none

    hi Comment          guifg=#808080   guibg=none      ctermfg=244    ctermbg=none      gui=none      cterm=none

    hi Constant         guifg=#d7d7af   guibg=none      ctermfg=187    ctermbg=none      gui=none      cterm=none
    hi BConstant        guifg=#d7d7af   guibg=none      ctermfg=187    ctermbg=none      gui=bold      cterm=bold

    hi Identifier       guifg=#afd787   guibg=none      ctermfg=150    ctermbg=none      gui=none      cterm=none
    hi BIdentifier      guifg=#afd787   guibg=none      ctermfg=150    ctermbg=none      gui=bold      cterm=bold

    hi Statement        guifg=#87d7ff   guibg=none      ctermfg=117    ctermbg=none      gui=none      cterm=none
    hi BStatement       guifg=#87d7ff   guibg=none      ctermfg=117    ctermbg=none      gui=bold      cterm=bold

    hi PreProc          guifg=#87d7af   guibg=none      ctermfg=115    ctermbg=none      gui=none      cterm=none
    hi BPreProc         guifg=#87d7af   guibg=none      ctermfg=115    ctermbg=none      gui=bold      cterm=bold

    hi Type             guifg=#87d7d7   guibg=none      ctermfg=116    ctermbg=none      gui=none      cterm=none
    hi BType            guifg=#87d7d7   guibg=none      ctermfg=116    ctermbg=none      gui=bold      cterm=bold

    hi Special          guifg=#d7afd7   guibg=none      ctermfg=182    ctermbg=none      gui=none      cterm=none
    hi BSpecial         guifg=#d7afd7   guibg=none      ctermfg=182    ctermbg=none      gui=bold      cterm=bold

    " Text Markup
    hi Underlined       guifg=fg        guibg=none      ctermfg=fg     ctermbg=none      gui=underline cterm=underline
    hi Error            guifg=#ff8787   guibg=#870000   ctermfg=210    ctermbg=88        gui=none      cterm=none
    hi Todo             guifg=#d7d75f   guibg=#5f5f00   ctermfg=185    ctermbg=58        gui=none      cterm=none
    hi MatchParen       guifg=bg        guibg=#afd75f   ctermfg=bg     ctermbg=149       gui=none      cterm=bold
    hi NonText          guifg=#5f5f87   guibg=none      ctermfg=60     ctermbg=none      gui=none      cterm=none
    hi SpecialKey       guifg=#5f875f   guibg=none      ctermfg=65     ctermbg=none      gui=none      cterm=none
    hi Title            guifg=#5fafd7   guibg=none      ctermfg=74     ctermbg=none      gui=bold      cterm=bold

    " Text Selection
    hi Cursor           guifg=bg        guibg=#87afd7   ctermfg=bg     ctermbg=110       gui=none      cterm=none
    hi CursorIM         guifg=bg        guibg=#87afd7   ctermfg=bg     ctermbg=110       gui=none      cterm=none
    hi CursorColumn     guifg=none      guibg=#444444   ctermfg=none   ctermbg=235       gui=none      cterm=none
    hi CursorLine       guifg=none      guibg=#444444   ctermfg=none   ctermbg=235       gui=none      cterm=none
    hi Visual           guifg=none      guibg=#005f87   ctermfg=none   ctermbg=24        gui=none      cterm=none
    hi VisualNOS        guifg=fg        guibg=none      ctermfg=fg     ctermbg=none      gui=underline cterm=underline
    hi IncSearch        guifg=bg        guibg=#57d7d7   ctermfg=bg     ctermbg=80        gui=none      cterm=none
    hi Search           guifg=bg        guibg=#d78700   ctermfg=bg     ctermbg=172       gui=none      cterm=none

    " UI
    hi Pmenu            guifg=bg        guibg=#b2b2b2   ctermfg=bg     ctermbg=249       gui=none      cterm=none
    hi PmenuSel         guifg=fg        guibg=#005f87   ctermfg=fg     ctermbg=24        gui=none      cterm=none
    hi PmenuSbar        guifg=#b2b2b2   guibg=#d0d0d0   ctermfg=249    ctermbg=252       gui=none      cterm=none
    hi PmenuThumb       guifg=fg        guibg=#808080   ctermfg=fg     ctermbg=244       gui=none      cterm=none
    hi StatusLine       guifg=bg        guibg=#b2b2b2   ctermfg=bg     ctermbg=249       gui=bold      cterm=bold
    hi StatusLineNC     guifg=#444444   guibg=#b2b2b2   ctermfg=238    ctermbg=249       gui=none      cterm=none
    hi StatusLineWarn   guifg=#FFFF40   guibg=#202020   ctermfg=255    ctermbg=202       gui=none      cterm=bold
    hi StatusLineError  guifg=#FF3333   guibg=#202020   ctermfg=255    ctermbg=196       gui=none      cterm=bold

    hi TabLine          guifg=bg        guibg=#b2b2b2   ctermfg=bg     ctermbg=249       gui=none      cterm=none
    hi TabLineFill      guifg=#444444   guibg=#b2b2b2   ctermfg=238    ctermbg=249       gui=none      cterm=none
    hi TabLineSel       guifg=fg        guibg=#005f87   ctermfg=fg     ctermbg=24        gui=bold      cterm=bold
    hi VertSplit        guifg=#626262   guibg=#b2b2b2   ctermfg=241    ctermbg=249       gui=none      cterm=none
    hi Folded           guifg=#bcbcbc   guibg=#4e4e4e   ctermfg=250    ctermbg=239       gui=bold      cterm=none
    hi FoldColumn       guifg=#bcbcbc   guibg=#4e4e4e   ctermfg=250    ctermbg=239       gui=bold      cterm=none

    " Spelling
    hi SpellBad         guisp=#d70000                   ctermfg=160    ctermbg=none      gui=undercurl cterm=underline
    hi SpellCap         guisp=#00afd7                   ctermfg=38     ctermbg=none      gui=undercurl cterm=underline
    hi SpellRare        guisp=#5faf00                   ctermfg=70     ctermbg=none      gui=undercurl cterm=underline
    hi SpellLocal       guisp=#d7af00                   ctermfg=178    ctermbg=none      gui=undercurl cterm=underline

    " Diff
    hi DiffAdd          guifg=fg        guibg=#5f875f   ctermfg=fg     ctermbg=65        gui=none      cterm=none
    hi DiffChange       guifg=fg        guibg=#87875f   ctermfg=fg     ctermbg=101       gui=none      cterm=none
    hi DiffDelete       guifg=fg        guibg=#875f5f   ctermfg=fg     ctermbg=95        gui=none      cterm=none
    hi DiffText         guifg=#ffff87   guibg=#87875f   ctermfg=228    ctermbg=101       gui=none      cterm=none

    " Misc
    hi Directory        guifg=#afd7af   guibg=none      ctermfg=151    ctermbg=none      gui=none      cterm=none
    hi ErrorMsg         guifg=#ff5f5f   guibg=none      ctermfg=203    ctermbg=none      gui=none      cterm=none
    hi SignColumn       guifg=#b2b2b2   guibg=#4e4e4e   ctermfg=249    ctermbg=239       gui=none      cterm=none
    hi LineNr           guifg=#626262   guibg=#444444   ctermfg=241    ctermbg=235       gui=none      cterm=none
    hi CursorLineNr     guifg=#626262   guibg=#444444   ctermfg=241    ctermbg=235       gui=none      cterm=none
    hi MoreMsg          guifg=#5fd7d7   guibg=none      ctermfg=80     ctermbg=none      gui=none      cterm=none
    hi ModeMsg          guifg=fg        guibg=none      ctermfg=fg     ctermbg=none      gui=none      cterm=none
    hi Question         guifg=fg        guibg=none      ctermfg=fg     ctermbg=none      gui=none      cterm=none
    hi WarningMsg       guifg=#d7875f   guibg=none      ctermfg=173    ctermbg=none      gui=none      cterm=none
    hi WildMenu         guifg=fg        guibg=#005f87   ctermfg=fg     ctermbg=24        gui=none      cterm=none
    hi ColorColumn      guifg=none      guibg=#87875f   ctermfg=none   ctermbg=101       gui=none      cterm=none
    hi Ignore           guifg=bg                        ctermfg=bg


elseif g:nbetm_style == "dark_dim"


    hi Normal           guifg=#bcbcbc   guibg=#303030   ctermfg=250    ctermbg=233       gui=none      cterm=none

    hi Comment          guifg=#6c6c6c   guibg=none      ctermfg=242    ctermbg=none      gui=none      cterm=none

    hi Constant         guifg=#afaf87   guibg=none      ctermfg=144    ctermbg=none      gui=none      cterm=none
    hi BConstant        guifg=#afaf87   guibg=none      ctermfg=144    ctermbg=none      gui=bold      cterm=bold

    hi Identifier       guifg=#87af5f   guibg=none      ctermfg=107    ctermbg=none      gui=none      cterm=none
    hi BIdentifier      guifg=#87af5f   guibg=none      ctermfg=107    ctermbg=none      gui=bold      cterm=bold

    hi Statement        guifg=#57afd7   guibg=none      ctermfg=74     ctermbg=none      gui=none      cterm=none
    hi BStatement       guifg=#57afd7   guibg=none      ctermfg=74     ctermbg=none      gui=bold      cterm=bold

    hi PreProc          guifg=#5faf87   guibg=none      ctermfg=72     ctermbg=none      gui=none      cterm=none
    hi BPreProc         guifg=#5faf87   guibg=none      ctermfg=72     ctermbg=none      gui=bold      cterm=bold

    hi Type             guifg=#5fafaf   guibg=none      ctermfg=73     ctermbg=none      gui=none      cterm=none
    hi BType            guifg=#5fafaf   guibg=none      ctermfg=73     ctermbg=none      gui=bold      cterm=bold

    hi Special          guifg=#af87af   guibg=none      ctermfg=139    ctermbg=none      gui=none      cterm=none
    hi BSpecial         guifg=#af87af   guibg=none      ctermfg=139    ctermbg=none      gui=bold      cterm=bold

    " Text Markup
    hi Underlined       guifg=fg        guibg=none      ctermfg=fg     ctermbg=none      gui=underline cterm=underline
    hi Error            guifg=#d75f5f   guibg=#870000   ctermfg=167    ctermbg=88        gui=none      cterm=none
    hi Todo             guifg=#afaf00   guibg=#5f5f00   ctermfg=142    ctermbg=58        gui=none      cterm=none
    hi MatchParen       guifg=bg        guibg=#87af5f   ctermfg=bg     ctermbg=107       gui=none      cterm=bold
    hi NonText          guifg=#5f5f87   guibg=none      ctermfg=60     ctermbg=none      gui=none      cterm=none
    hi SpecialKey       guifg=#5f875f   guibg=none      ctermfg=65     ctermbg=none      gui=none      cterm=none
    hi Title            guifg=#00afd7   guibg=none      ctermfg=38     ctermbg=none      gui=bold      cterm=bold

    " Text Selection
    hi Cursor           guifg=bg        guibg=#5f87af   ctermfg=bg     ctermbg=67        gui=none      cterm=none
    hi CursorIM         guifg=bg        guibg=#5f87af   ctermfg=bg     ctermbg=67        gui=none      cterm=none
    hi CursorColumn     guifg=none      guibg=#444444   ctermfg=none   ctermbg=235       gui=none      cterm=none
    hi CursorLine       guifg=none      guibg=#444444   ctermfg=none   ctermbg=235       gui=none      cterm=none
    hi Visual           guifg=none      guibg=#005f87   ctermfg=none   ctermbg=24        gui=none      cterm=none
    hi VisualNOS        guifg=fg        guibg=none      ctermfg=fg     ctermbg=none      gui=underline cterm=underline
    hi IncSearch        guifg=bg        guibg=#00afaf   ctermfg=bg     ctermbg=37        gui=none      cterm=none
    hi Search           guifg=bg        guibg=#d78700   ctermfg=bg     ctermbg=172       gui=none      cterm=none

    " UI
    hi Pmenu            guifg=bg        guibg=#8a8a8a   ctermfg=bg     ctermbg=245       gui=none      cterm=none
    hi PmenuSel         guifg=fg        guibg=#005f87   ctermfg=fg     ctermbg=24        gui=none      cterm=none
    hi PmenuSbar        guifg=#8a8a8a   guibg=#bcbcbc   ctermfg=245    ctermbg=250       gui=none      cterm=none
    hi PmenuThumb       guifg=fg        guibg=#585858   ctermfg=fg     ctermbg=240       gui=none      cterm=none
    hi StatusLine       guifg=bg        guibg=#8a8a8a   ctermfg=bg     ctermbg=245       gui=bold      cterm=bold
    hi StatusLineNC     guifg=#444444   guibg=#8a8a8a   ctermfg=238    ctermbg=245       gui=none      cterm=none
    hi StatusLineWarn   guifg=#FFFF40   guibg=#202020   ctermfg=255    ctermbg=202       gui=none      cterm=bold
    hi StatusLineError  guifg=#FF3333   guibg=#202020   ctermfg=255    ctermbg=196       gui=none      cterm=bold
    hi TabLine          guifg=bg        guibg=#8a8a8a   ctermfg=bg     ctermbg=245       gui=none      cterm=none
    hi TabLineFill      guifg=#444444   guibg=#8a8a8a   ctermfg=238    ctermbg=245       gui=none      cterm=none
    hi TabLineSel       guifg=fg        guibg=#005f87   ctermfg=fg     ctermbg=24        gui=bold      cterm=bold
    hi VertSplit        guifg=#626262   guibg=#8a8a8a   ctermfg=241    ctermbg=245       gui=none      cterm=none
    hi Folded           guifg=#a8a8a8   guibg=#4e4e4e   ctermfg=248    ctermbg=239       gui=bold      cterm=none
    hi FoldColumn       guifg=#a8a8a8   guibg=#4e4e4e   ctermfg=248    ctermbg=239       gui=bold      cterm=none

    " Spelling
    hi SpellBad         guisp=#d70000                   ctermfg=160    ctermbg=none      gui=undercurl cterm=underline
    hi SpellCap         guisp=#00afd7                   ctermfg=38     ctermbg=none      gui=undercurl cterm=underline
    hi SpellRare        guisp=#5faf00                   ctermfg=70     ctermbg=none      gui=undercurl cterm=underline
    hi SpellLocal       guisp=#d7af00                   ctermfg=178    ctermbg=none      gui=undercurl cterm=underline

    " Diff
    hi DiffAdd          guifg=fg        guibg=#5f875f   ctermfg=fg     ctermbg=65        gui=none      cterm=none
    hi DiffChange       guifg=fg        guibg=#87875f   ctermfg=fg     ctermbg=101       gui=none      cterm=none
    hi DiffDelete       guifg=fg        guibg=#875f5f   ctermfg=fg     ctermbg=95        gui=none      cterm=none
    hi DiffText         guifg=#d7d75f   guibg=#87875f   ctermfg=185    ctermbg=101       gui=none      cterm=none

    " Misc
    hi Directory        guifg=#87af87   guibg=none      ctermfg=108    ctermbg=none      gui=none      cterm=none
    hi ErrorMsg         guifg=#d75f5f   guibg=none      ctermfg=167    ctermbg=none      gui=none      cterm=none
    hi SignColumn       guifg=#8a8a8a   guibg=#4e4e4e   ctermfg=245    ctermbg=239       gui=none      cterm=none
    hi LineNr           guifg=#626262   guibg=#444444   ctermfg=241    ctermbg=235       gui=none      cterm=none
    hi CursorLineNr     guifg=#626262   guibg=#444444   ctermfg=241    ctermbg=235       gui=none      cterm=none
    hi MoreMsg          guifg=#00afaf   guibg=none      ctermfg=37     ctermbg=none      gui=none      cterm=none
    hi ModeMsg          guifg=fg        guibg=none      ctermfg=fg     ctermbg=none      gui=none      cterm=none
    hi Question         guifg=fg        guibg=none      ctermfg=fg     ctermbg=none      gui=none      cterm=none
    hi WarningMsg       guifg=#af875f   guibg=none      ctermfg=173    ctermbg=none      gui=none      cterm=none
    hi WildMenu         guifg=fg        guibg=#005f87   ctermfg=fg     ctermbg=24        gui=none      cterm=none
    hi ColorColumn      guifg=none      guibg=#87875f   ctermfg=none   ctermbg=101       gui=none      cterm=none
    hi Ignore           guifg=bg                        ctermfg=bg


elseif g:nbetm_style == "light"


    hi Normal           guifg=#444444   guibg=#eeeeee   ctermfg=238    ctermbg=255       gui=none      cterm=none

    hi Comment          guifg=#808080   guibg=none      ctermfg=244    ctermbg=none      gui=none      cterm=none

    hi Constant         guifg=#af5f00   guibg=none      ctermfg=130    ctermbg=none      gui=none      cterm=none
    hi BConstant        guifg=#af5f00   guibg=none      ctermfg=130    ctermbg=none      gui=bold      cterm=bold

    hi Identifier       guifg=#008700   guibg=none      ctermfg=28     ctermbg=none      gui=none      cterm=none
    hi BIdentifier      guifg=#008700   guibg=none      ctermfg=28     ctermbg=none      gui=bold      cterm=bold

    hi Statement        guifg=#005faf   guibg=none      ctermfg=25     ctermbg=none      gui=none      cterm=none
    hi BStatement       guifg=#005faf   guibg=none      ctermfg=25     ctermbg=none      gui=bold      cterm=bold

    hi PreProc          guifg=#008787   guibg=none      ctermfg=30     ctermbg=none      gui=none      cterm=none
    hi BPreProc         guifg=#008787   guibg=none      ctermfg=30     ctermbg=none      gui=bold      cterm=bold

    hi Type             guifg=#005f87   guibg=none      ctermfg=24     ctermbg=none      gui=none      cterm=none
    hi BType            guifg=#005f87   guibg=none      ctermfg=24     ctermbg=none      gui=bold      cterm=bold

    hi Special          guifg=#870087   guibg=none      ctermfg=90     ctermbg=none      gui=none      cterm=none
    hi BSpecial         guifg=#870087   guibg=none      ctermfg=90     ctermbg=none      gui=bold      cterm=bold

    " Text Markup
    hi Underlined       guifg=fg        guibg=none      ctermfg=fg     ctermbg=none      gui=underline cterm=underline
    hi Error            guifg=#af0000   guibg=#d7afaf   ctermfg=124    ctermbg=181       gui=none      cterm=none
    hi Todo             guifg=#875f00   guibg=#ffffaf   ctermfg=94     ctermbg=229       gui=none      cterm=none
    hi MatchParen       guifg=none      guibg=#5fd7d7   ctermfg=none   ctermbg=80        gui=none      cterm=none
    hi NonText          guifg=#afafd7   guibg=none      ctermfg=146    ctermbg=none      gui=none      cterm=none
    hi SpecialKey       guifg=#afd7af   guibg=none      ctermfg=151    ctermbg=none      gui=none      cterm=none
    hi Title            guifg=#005faf   guibg=none      ctermfg=25     ctermbg=none      gui=bold      cterm=bold

    " Text Selection
    hi Cursor           guifg=bg        guibg=#5f87af   ctermfg=bg     ctermbg=67        gui=none      cterm=none
    hi CursorIM         guifg=bg        guibg=#5f87af   ctermfg=bg     ctermbg=67        gui=none      cterm=none
    hi CursorColumn     guifg=none      guibg=#dadada   ctermfg=none   ctermbg=253       gui=none      cterm=none
    hi CursorLine       guifg=none      guibg=#dadada   ctermfg=none   ctermbg=253       gui=none      cterm=none
    hi Visual           guifg=none      guibg=#afd7ff   ctermfg=none   ctermbg=153       gui=none      cterm=none
    hi VisualNOS        guifg=fg        guibg=none      ctermfg=fg     ctermbg=none      gui=underline cterm=underline
    hi IncSearch        guifg=fg        guibg=#57d7d7   ctermfg=fg     ctermbg=80        gui=none      cterm=none
    hi Search           guifg=fg        guibg=#ffaf00   ctermfg=fg     ctermbg=214       gui=none      cterm=none

    " UI
    hi Pmenu            guifg=bg        guibg=#808080   ctermfg=bg     ctermbg=244       gui=none      cterm=none
    hi PmenuSel         guifg=fg        guibg=#afd7ff   ctermfg=fg     ctermbg=153       gui=none      cterm=none
    hi PmenuSbar        guifg=#808080   guibg=#444444   ctermfg=244    ctermbg=235       gui=none      cterm=none
    hi PmenuThumb       guifg=fg        guibg=#9e9e9e   ctermfg=fg     ctermbg=247       gui=none      cterm=none
    hi StatusLine       guifg=bg        guibg=#808080   ctermfg=bg     ctermbg=244       gui=bold      cterm=bold
    hi StatusLineNC     guifg=#e4e4e4   guibg=#808080   ctermfg=254    ctermbg=244       gui=none      cterm=none
    hi StatusLineWarn   guifg=#FFFF40   guibg=#202020   ctermfg=255    ctermbg=202       gui=none      cterm=bold
    hi StatusLineError  guifg=#FF3333   guibg=#202020   ctermfg=255    ctermbg=196       gui=none      cterm=bold
    hi TabLine          guifg=bg        guibg=#808080   ctermfg=bg     ctermbg=244       gui=none      cterm=none
    hi TabLineFill      guifg=#b2b2b2   guibg=#808080   ctermfg=249    ctermbg=244       gui=none      cterm=none
    hi TabLineSel       guifg=fg        guibg=#afd7ff   ctermfg=fg     ctermbg=153       gui=none      cterm=none
    hi VertSplit        guifg=#e4e4e4   guibg=#808080   ctermfg=254    ctermbg=244       gui=none      cterm=none
    hi Folded           guifg=#626262   guibg=#bcbcbc   ctermfg=241    ctermbg=250       gui=bold      cterm=none
    hi FoldColumn       guifg=#626262   guibg=#bcbcbc   ctermfg=241    ctermbg=250       gui=bold      cterm=none

    " Spelling
    hi SpellBad         guisp=#d70000                   ctermfg=160    ctermbg=none      gui=undercurl cterm=underline
    hi SpellCap         guisp=#00afd7                   ctermfg=38     ctermbg=none      gui=undercurl cterm=underline
    hi SpellRare        guisp=#5faf00                   ctermfg=70     ctermbg=none      gui=undercurl cterm=underline
    hi SpellLocal       guisp=#d7af00                   ctermfg=178    ctermbg=none      gui=undercurl cterm=underline

    " Diff
    hi DiffAdd          guifg=fg        guibg=#afd7af   ctermfg=fg     ctermbg=151       gui=none      cterm=none
    hi DiffChange       guifg=fg        guibg=#d7d7af   ctermfg=fg     ctermbg=187       gui=none      cterm=none
    hi DiffDelete       guifg=fg        guibg=#d7afaf   ctermfg=fg     ctermbg=181       gui=none      cterm=none
    hi DiffText         guifg=#d75f00   guibg=#d7d7af   ctermfg=166    ctermbg=187       gui=bold      cterm=bold

    " Misc
    hi Directory        guifg=#00875f   guibg=none      ctermfg=29     ctermbg=none      gui=none      cterm=none
    hi ErrorMsg         guifg=#af0000   guibg=none      ctermfg=124    ctermbg=none      gui=none      cterm=none
    hi SignColumn       guifg=#626262   guibg=#d0d0d0   ctermfg=241    ctermbg=252       gui=none      cterm=none
    hi LineNr           guifg=#9e9e9e   guibg=#dadada   ctermfg=247    ctermbg=253       gui=none      cterm=none
    hi CursorLineNr     guifg=#9e9e9e   guibg=#dadada   ctermfg=247    ctermbg=253       gui=none      cterm=none
    hi MoreMsg          guifg=#005fd7   guibg=none      ctermfg=26     ctermbg=none      gui=none      cterm=none
    hi ModeMsg          guifg=fg        guibg=none      ctermfg=fg     ctermbg=none      gui=none      cterm=none
    hi Question         guifg=fg        guibg=none      ctermfg=fg     ctermbg=none      gui=none      cterm=none
    hi WarningMsg       guifg=#af5700   guibg=none      ctermfg=130    ctermbg=none      gui=none      cterm=none
    hi WildMenu         guifg=fg        guibg=#afd7ff   ctermfg=fg     ctermbg=153       gui=none      cterm=none
    hi ColorColumn      guifg=none      guibg=#d7d7af   ctermfg=none   ctermbg=187       gui=none      cterm=none
    hi Ignore           guifg=bg                        ctermfg=bg


endif


" Vimwiki Colors
hi link VimwikiHeader1 BIdentifier
hi link VimwikiHeader2 BPreProc
hi link VimwikiHeader3 BStatement
hi link VimwikiHeader4 BSpecial
hi link VimwikiHeader5 BConstant
hi link VimwikiHeader6 BType

" Tagbar Colors
hi link TagbarAccessPublic Constant
hi link TagbarAccessProtected Type
hi link TagbarAccessPrivate PreProc

" Extra
hi extraWhiteSpace  guifg=#FFFFFF   guibg=#0000FF   gui=none
hi extraTab         guifg=#000000   guibg=#00FF00   gui=none

" SignColumn
" hi SignColumn       guifg=#000000   guibg=#444444   ctermfg=14     ctermbg=242       gui=none      cterm=bold     term=standout

" Commands
" command! nbetmLight let g:nbetm_style = "light" | colorscheme nbetm
" command! nbetmDark let g:nbetm_style = "dark" | colorscheme nbetm
" command! nbetmDarkDim let g:nbetm_style = "dark_dim" | colorscheme nbetm
