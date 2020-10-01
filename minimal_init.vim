set packpath=./
set runtimepath=$VIMRUNTIME

packadd packer.nvim

lua << EOF
local packer = require('packer')
local use = packer.use

local config = {
    package_root = './pack'
}

packer.init(config)

use {
    'IMOKURI/express_line.nvim',
    opt = true,
    requires = {
        {
            'nvim-lua/plenary.nvim',
            opt = true
        }
    }
}

use {
    'IMOKURI/challenger-deep-theme-vim',
}

packer.compile('./plugin/packer_load.vim')

EOF

command! PackerSync lua require('packer').sync()

packadd plenary.nvim
packadd express_line.nvim
lua require('el').setup{}

filetype plugin indent on
syntax enable

colorscheme challenger_deep
