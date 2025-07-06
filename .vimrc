set expandtab
set tabstop=2
set shiftwidth=2

hi MatchParen cterm=bold ctermbg=none ctermfg=LightCyan

syntax on

augroup TasksInTxt
  autocmd!
  autocmd FileType text syntax keyword DoneMarker DONE
  autocmd FileType text highlight DoneMarker ctermfg=Green cterm=bold guifg=#00ff00 gui=bold
  autocmd FileType text syntax keyword TodoMarker TODO
  autocmd FileType text highlight TodoMarker ctermfg=Red cterm=bold guifg=#ff0000 gui=bold
augroup END
