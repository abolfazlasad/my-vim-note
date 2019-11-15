show syntastic.txt Contents list
Intro:
	core : recognize filetype -> set filetype?
	need :w for working
	location-list  ->  :Errors (:lopen :lwindow)-> SyntasticSetLoclist or let g:syntastic_always_populate_loc_list = 1
	for auto_location_list open and close let g:syntastic_auto_loc_list = 1
	SyntasticToggleMode -> passive , active(default)
	SyntasticInfo for get checkers
	SyntasticCheck gcc
	SyntasticReset
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0
	let g:syntastic_cpp_checker = [''] (.vimrc)
	look at syntax_checkers dir
	let g:syntastic_aggregate_errors = 1 -> multiple checker
	:Errors :lclose :lnext :lprevious (use tpope/vim-unimpaired for shortcut)

