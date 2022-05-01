"Match when something is said to someone
hi TO ctermbg=04 ctermfg=white
syn match TO "\(\]\)\@<=(.*)" containedIn=ALL
"Match Context in *test* or **test**
hi CONTEXT ctermbg=04 ctermfg=white
syn match CONTEXT "\*.*\*" containedIn=ALL
"Match when something is said to someone
hi NAME ctermbg=01 ctermfg=white
syn match NAME "^.*\[.*\]" containedIn=ALL
