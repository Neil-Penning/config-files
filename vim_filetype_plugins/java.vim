" JAVA
map <leader>jgs ciwpublic TYPE get<C-r>"() {<CR><tab>return <C-r>";<CR><C-d>}<CR>public void set<C-r>"(TYPE <C-r>") {<CR><tab>this.<C-r>" = <C-r>";<CR><C-d>}<esc>5kWWlll~3jh~2j
" Run ,js when iside the parenthesis of a constructor.
map <leader>js yi(o<tab><C-r>"<esc>:.s/, /\r/g<CR>
" Run ,jp when hovering on one of the fields.
map <leader>jp ^dwciwthis.<C-r>" = <C-R>";<esc>

inoremap ;; <c-o>$;

set colorcolumn=120
