" Neovim configuration for wbplay repository
" This file is automatically loaded when opening this directory in Neovim

" Enable GitHub Copilot
let g:copilot_enabled = 1

" Set file types for this project
augroup wbplay_filetypes
    autocmd!
    autocmd BufRead,BufNewFile *.html setlocal filetype=html
    autocmd BufRead,BufNewFile *.css setlocal filetype=css
    autocmd BufRead,BufNewFile *.js setlocal filetype=javascript
augroup END

" Copilot keymaps (if not already set)
" Accept suggestion: <Tab>
" Next suggestion: <M-]>
" Previous suggestion: <M-[>
" Dismiss suggestion: <C-]>

" Display message about Copilot authentication
echo "wbplay: GitHub Copilot enabled. Run :Copilot auth if needed."
