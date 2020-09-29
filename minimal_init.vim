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
    'nvim-lua/completion-nvim',
}

packer.compile('./plugin/packer_load.vim')
EOF

