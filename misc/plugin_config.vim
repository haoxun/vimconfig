" `YCM configuration`.
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

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
