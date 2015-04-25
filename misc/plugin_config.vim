" `YCM configuration`.
let g:ycm_path_to_python_interpreter = "/usr/bin/python"
let g:ycm_global_ycm_extra_conf = '~/.vim/misc/.ycm_extra_conf.py'
let g:ycm_auto_trigger=0
let g:ycm_enable_diagnostic_signs=0
let g:ycm_enable_diagnostic_highlighting=0
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_key_invoke_completion='<C-B>'
set completeopt-=preview

" `NERDTree`
let suffixes = ['.pdf', '.log', '.out', '~', '.o', '.3', '.6', '.aux', '.toc', '.bbl', '.blg', '.log', '.pyc']
let NERDTreeIgnore = ['__pycache__']
for suffix in suffixes
	let NERDTreeIgnore += [ escape(suffix, '.~') . '$' ]
endfor

" `vim-colors-solarized`.
syntax enable
if has("gui_macvim")
	" full screen
	set lines=999 columns=999
else
	let g:solarized_termcolors=256
endif
set background=dark
colorscheme solarized

" `auto-pairs`
" Ignore parenthesis.
" let g:AutoPairs={'[':']', '{':'}',"'":"'",'"':'"', '`':'`'}
" let g:AutoPairsMapCR=0

" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" python-mode
let g:pymode_lint_on_write = 0
let g:pymode_rope = 0
let g:pymode_lint_on_fly = 0
let g:pymode_folding = 0
