set expandtab
set tabstop=4
set shiftwidth=4
:retab
inoremap ; <Esc>:.s/$/\=repeat(' ',64-virtcol('$')).';'<CR>A
inoremap { <Esc>:.s/$/\=repeat(' ',64-virtcol('$')).'{'<CR>A
inoremap } <Esc>:.s/$/\=repeat(' ',64-virtcol('$')).'}'<CR>A
function! SetLineSize(size)
    execute "inoremap ; <Esc>:.s/$/\\=repeat(' ',".a:size."-virtcol('$')).';'<CR>A"
    execute "inoremap { <Esc>:.s/$/\\=repeat(' ',".a:size."-virtcol('$')).'{'<CR>A"
    execute "inoremap } <Esc>:.s/$/\\=repeat(' ',".a:size."-virtcol('$')).'}'<CR>A"
endfunction
command! -nargs=1 Sls call SetLineSize(<f-args>)
