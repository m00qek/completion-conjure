# completion-conjure

[Conjure](https://github.com/Olical/conjure) completion source for
[completion-nvim](https://github.com/haorenW1025/completion-nvim).

## Install

This plugin requires the following plugins:

- [conjure](https://github.com/Olical/conjure)
- [nvim-lsp](https://github.com/neovim/nvim-lsp)
- [completion-nvim](https://github.com/haorenW1025/completion-nvim)

To install them using [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'Olical/conjure'
Plug 'neovim/nvim-lsp'
Plug 'haorenW1025/completion-nvim'
Plug 'm00qek/completion-conjure'
```

## Setup

This plugin automatically registers a completion source named `conjure`. To use
it add to your Neovim configuration like
```vim
let g:completion_chain_complete_list = {
\ 'clojure': [
\   {'complete_items': ['conjure', 'lsp', 'snippet']},
\ ]
\}
```
