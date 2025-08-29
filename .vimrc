set expandtab
set tabstop=2
set shiftwidth=2

" MatchParen colors
if &background ==# 'light'
  hi MatchParen cterm=bold ctermbg=none ctermfg=DarkBlue guifg=#000080
else
  hi MatchParen cterm=bold ctermbg=none ctermfg=LightCyan guifg=#00ffff
endif

syntax on

augroup TasksInTxt
  autocmd!
  autocmd FileType text syntax keyword DoneMarker DONE
  autocmd FileType text highlight DoneMarker ctermfg=Green cterm=bold guifg=#00ff00 gui=bold
  autocmd FileType text syntax keyword TodoMarker TODO
  autocmd FileType text highlight TodoMarker ctermfg=Red cterm=bold guifg=#ff0000 gui=bold
augroup END

