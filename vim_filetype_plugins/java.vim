" JAVA
nnoremap <leader>jgs ciwpublic TYPE get<C-r>"() {<CR><tab>return <C-r>";<CR><C-d>}<CR>public void set<C-r>"(TYPE <C-r>") {<CR><tab>this.<C-r>" = <C-r>";<CR><C-d>}<esc>5kWWlll~3jh~2j
" Run ,js when iside the parenthesis of a constructor.
nnoremap <leader>js yi(o<tab><C-r>"<esc>:.s/, /\r/g<CR>
" Run ,jp when hovering on one of the fields.
nnoremap <leader>jp ^dwciwthis.<C-r>" = <C-R>";<esc>

inoremap <leader>} <cr><C-D>}<esc>kA

nnoremap <leader>zf 0wzf%j0f{zf%


inoremap ;; <c-o>$;

set colorcolumn=120
set errorformat+=[ERROR]\ %f:%l:%c:%m
set errorformat+=[ERROR]\ %f:%l:%m

