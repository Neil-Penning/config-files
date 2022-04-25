" match a quotation at the beginning of a line
hi words ctermbg=00 ctermfg=green
syn match words "^ *\".*$" containedIn=ALL
hi SCENE ctermbg=04 ctermfg=white
syn match SCENE "^.*\[.*SCENE.*\].*$" containedIn=ALL
hi TODO ctermbg=01 ctermfg=white
syn match TODO "^.*\[.*TODO.*\].*$" containedIn=ALL

