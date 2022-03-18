" match ctermxxx for colors cterm90 or cterm8
" cterm022
let num = 255
while num >= 0
    exec 'hi col_'.num.' ctermbg='.num.' ctermfg=white'
    exec 'syn match col_'.num.' "cterm0\{0,2\}'.num.'" containedIn=ALL'
    let num = num - 1
endwhile
" cterm0039cterm0039cterm0039cterm0039
" cterm0039cterm0039cterm0039cterm0039
" cterm0218cterm0218cterm0218cterm0218
" cterm0218cterm0218cterm0218cterm0218
" cterm0015cterm0015cterm0015cterm0015
" cterm0015cterm0015cterm0015cterm0015
" cterm0218cterm0218cterm0218cterm0218
" cterm0218cterm0218cterm0218cterm0218
" cterm0039cterm0039cterm0039cterm0039
" cterm0039cterm0039cterm0039cterm0039
