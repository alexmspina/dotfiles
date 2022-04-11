call plug#begin('~/.vim/plugged')

" interactive directory tree
Plug 'preservim/nerdtree'

" code completion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" dev icons for nerdtree files and directories
Plug 'ryanoasis/vim-devicons'

" jsx / react syntax highlighting
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

"Changing default NERDTree arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" open nerdtree with Ctrl + t
nnoremap <C-t> :NERDTreeToggle<CR>

" coc.vim mapped keys
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>

nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>

nmap <leader>do <Plug>(coc-codeaction)

nmap <leader>rn <Plug>(coc-rename)

" language packs and engines for coc.vim
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-css',
  \  'coc-eslint',
  \  'coc-prettier'
  \ ]

" italic and cursive fonts
hi htmlArg gui=italic
hi Comment gui=italic
hi Type    gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic
