if !exists('g:loaded_completion') || exists('g:loaded_completion_conjure')
  finish
endif

lua require'completion-conjure'.register()
let g:loaded_completion_conjure = v:true
