" Vim syntax file
" Language:	Python Boostnode template
" Maintainer:	jandob
" URL:

if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'tpl'
endif
if !empty(expand('%:r:e'))
  execute 'runtime! syntax/'.expand('%:r:e').'.vim'
  unlet b:current_syntax
  execute 'syntax include @Main syntax/'.expand('%:r:e').'.vim'
  unlet b:current_syntax
  syntax include @Python syntax/python.vim
  syntax region Python matchgroup=Snip start="<%" end="$" contains=@Python containedin=@Main
  hi link Snip SpecialComment
else
  syntax include @Python syntax/python.vim
  syntax region Python matchgroup=Snip start="<%" end="$" contains=@Python
  hi link Snip SpecialComment
endif
