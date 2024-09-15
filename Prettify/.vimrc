inoremap ; <Esc>:.s/$/\=repeat(' ',64-virtcol('$')).';'<CR>A
inoremap { <Esc>:.s/$/\=repeat(' ',64-virtcol('$')).'{'<CR>A
inoremap } <Esc>:.s/$/\=repeat(' ',64-virtcol('$')).'}'<CR>A
inoremap <C-z> <C-u>
inoremap <C-s> <Esc> :w <CR>i
let @f = "i€kb€kd€ýa"
function! SetLineSize(size)
    execute "inoremap ; <Esc>:.s/$/\\=repeat(' ',".a:size."-virtcol('$')).';'<CR>A"
    execute "inoremap { <Esc>:.s/$/\\=repeat(' ',".a:size."-virtcol('$')).'{'<CR>A"
    execute "inoremap } <Esc>:.s/$/\\=repeat(' ',".a:size."-virtcol('$')).'}'<CR>A"
endfunction
function! SetPrettifyOff()
    execute "inoremap ; ;"
    execute "inoremap { {"
    execute "inoremap } }"
endfunction
command! -nargs=1 Sls call SetLineSize(<f-args>)
command! -nargs=0 Off call SetPrettifyOff()
