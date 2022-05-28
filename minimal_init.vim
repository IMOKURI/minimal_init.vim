set runtimepath+=.

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin(stdpath('data') . '/plugged')

" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'

call plug#end()

if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    PlugInstall --sync
endif

lua << EOF
    -- Lua specific setup here.

EOF

" Following mappings are for me.
nnoremap <silent> <Space>q <Cmd>qall<CR>
nnoremap <silent> <Space>Q <Cmd>qall!<CR>
