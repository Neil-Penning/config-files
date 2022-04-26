" https://wiki.sagemath.org/Tips
augroup filetypedetect
  au! BufRead,BufNewFile *.sage,*.spyx,*.pyx setfiletype python
augroup END

augroup filetypedetect
  au! BufRead,BufNewFile *.scene setfiletype scene
augroup END
