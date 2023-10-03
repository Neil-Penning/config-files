-- 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


--[[
-- https://superuser.com/a/1096361
-- Add shift+h, shift+l to move between tabs
nnoremap H :bp<cr>
nnoremap L :bn<cr>

-- Use Y for y$ instead of yy
-- This reflects how C and D work.
nnoremap Y y$


-- run the current line as a vim command
-- nnoremap <leader>v yy:silent @"<cr>:echo "ran current line (".line(".").") as vim command"<CR>
-- run the current visual selection as a vim command
-- vnoremap <leader>v y:silent @"<cr>:echo "ran visual selection as vim command"<cr>
-- run the current file as a vim script
nnoremap <leader>V :so %<cr>
-- run the current line as a bash command
nnoremap <leader>e :.w !bash<cr>
-- run the whole file in bash
nnoremap <leader>E :%w !bash<cr>

-- begin a command with :%norm
nnoremap <leader>n :%norm 

-- add a newline after every comma on this line
nnoremap <leader>, :.s /, /,\r/g<cr>

-- Surround every line in the file with ""
nnoremap <leader>"" :%norm I"<C-v><esc>A"<cr>
-- Surround every line in the file with ''
nnoremap <leader>'' :%norm I'<C-v><esc>A'<cr>
-- Change all periods to spaces except the last one (for renaming files)
nnoremap <leader>PS :%s /\./ /g<cr>:%norm $Bhr.<cr>

-- Surround the current w/Word with a <thing>
-- nnoremap <leader>sw( ciw()<esc>P
-- nnoremap <leader>sW( ciW()<esc>P
-- nnoremap <leader>sw[ ciw[]<esc>P
-- nnoremap <leader>sW[ ciW[]<esc>P
-- nnoremap <leader>sw{ ciw{}<esc>P
-- nnoremap <leader>sW{ ciW{}<esc>P
-- nnoremap <leader>sw< ciw<lt>><esc>P
-- nnoremap <leader>sW< ciW<lt>><esc>P
-- nnoremap <leader>sw' ciw''<esc>P
-- nnoremap <leader>sW' ciW''<esc>P
-- nnoremap <leader>sw" ciw""<esc>P
-- nnoremap <leader>sW" ciW""<esc>P

-- \urround the (s) with a <thing>
-- test ing
vnoremap <leader>s( c()<esc>P
vnoremap <leader>s[ c[]<esc>P
vnoremap <leader>s{ c{}<esc>P
vnoremap <leader>s< c<lt>><esc>P
-- vnoremap <leader>s' c''<esc>P
vnoremap <leader>s` c``<esc>P
-- vnoremap <leader>s\' s\'\'<esc>hP
-- vnoremap <leader>s" c""<esc>P
-- vnoremap <leader>s\" s\"\"<esc>hP
-- vnoremap <leader>s<space> c  <esc>P

nmap <leader>s` v<leader>s`
nmap <leader>s( v<leader>s(
nmap <leader>s[ v<leader>s[
nmap <leader>s{ v<leader>s{
nmap <leader>s< v<leader>s<
-- nmap <leader>s' v<leader>s'
-- nmap <leader>s" v<leader>s"
-- nmap <leader>s\' v<leader>s\'
-- nmap <leader>s\" v<leader>s\"
-- nmap <leader>s<space> v<leader>s<space>

-- Evaluate selected string with expression register, paste result.
-- (2150*8989)
vnoremap <leader>= s<C-r>=<C-r>"<cr><esc>

-- evaluate selected string using sage; replace selected text with output.
-- vnoremap <leader>rs "ss<C-r>=system('/Applications/SageMath-9.2.app/sage -c "print(<C-r>s)"')<cr>
vnoremap <leader>rs "ax:call writefile(getreg('a',1,1), "./.tmp.sage") <bar> put =system('/Applications/SageMath-9.2.app/sage .tmp.sage && rm .tmp.sage && rm .tmp.sage.py')<cr>

-- exit insert mode with jk
inoremap jk <esc>

-- use q; for q: - (removes shift)
nnoremap q; q:
-- if you're in commandline mode, ;; runs <C-f> to go into history mode
cnoremap ;; <C-f>

-- exit current buffer
nnoremap Q :bd<CR>

-- set hlsearch on when relevent (rest is mine)
nnoremap / :set hlsearch<cr>/
nnoremap ? :set hlsearch<cr>?
nnoremap n :set hlsearch<cr>n
nnoremap N :set hlsearch<cr>N
nnoremap * :set hlsearch<cr>*
-- turn hlsearch off
nnoremap <leader>h :noh<cr>
--]]
