set mp=pdflatex\ #1\ -interaction=batchmode
"
"Guideline : everything should end with <esc> to emulate pasting.
" add box[THING] Leader
map <leader>bd o\begin{boxDefinition}{}<CR>\end{boxDefinition}<esc>k$
map <leader>bt o\begin{boxTheorem}{}<CR>\end{boxTheorem}<esc>k$
map <leader>be o\begin{boxExample}{}<CR>\end{boxExample}<esc>k$
map <leader>bc o\begin{boxConcept}{}<CR>\end{boxConcept}<esc>k$
map <leader>bp o\begin{boxProblem}{}<CR>\end{boxProblem}<esc>k$
map <leader>bo o\begin{boxTODO}{}<CR>\end{boxTODO}<esc>k$
map <leader>bn o\begin{boxNote}{}<CR>\end{boxNote}<esc>k$
map <leader>bq o\begin{boxQuote}{}<CR>\end{boxQuote}<esc>k$

map <leader>ia o\begin{align*}<CR>\end{align*}<esc>
map <leader>ir o\begin{array}{}<CR>\end{array}<esc>
map <leader>ip o\begin{proof}<CR>\end{proof}<esc>
map <leader>ii o\begin{itemize}<CR>\end{itemize}<esc>O<tab>\item <esc>
map <leader>ie o\begin{enumerate}<CR>\end{enumerate}<esc>O<tab>\item <esc>

map <leader>imo o\[<CR>\]<esc>
map <leader>imi o\(<CR>\)<esc>

map <leader>i2 o\twotwo<CR><tab>{ }{ }<cr>{ }{ }<esc>
map <leader>i3 o\threethree<CR><tab>{ }{ }{ }<cr>{ }{ }{ }<cr>{ }{ }{ }<esc>
" map <leader>i4 o\fourfour<CR><tab>{ }{ }{ }{ }<cr>{ }{ }{ }{ }<cr>{ }{ }{ }{ }<cr>{ }{ }{ }{ }<cr><esc>

" Use s to surrounds something inline
" Use S to surrounds something outline.
map <leader>s[ "1c\left[  \right]<esc>F[l"1p
map <leader>S[ "1c\left[<CR>\right]<esc>k"1p

map <leader>s( "1c\left(  \right)<esc>F(l"1p
map <leader>S( "1c\left(<CR>\right)<esc>k"1p

map <leader>s{ "1c\left\{  \right\}<esc>F{l"1p
map <leader>S{ "1c\left\{<CR>\right\}<esc>k"1p

"assumes you are on left side of () or [] 
map <leader>sb i\left<esc>l%i\right<esc>

map <leader>it o\tcblower<esc>


" match begin statement
map <leader>m yyp^wcwend<esc>O<tab><esc>
