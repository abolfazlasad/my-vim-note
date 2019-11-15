noun in vim: (text object)
	aw - iw
	at - it
	a" - i"
	a{ - i{
	ap - ip
	is - is

============================================================
search:
	f , F , t , T => find (";", "," for repeat)
	/  - search
	?  - search(backward)
	g* - Word under cursor -forward (unbounded)

============================================================
verb:
	x , r, s

============================================================
word motions:
	w  - Forward to the beginning of next word
	W  - Forvard to the beginning of the next WORD
	b  - Backward to the next beginning of a word
	B  - Backward to the next beginning of a WORD
	e  - Forward to the next end of word
	ge - Backward to the end of the previous word
	E  - Forward to the next end of WORD
		
	( '.' is a word but not is a WORD)
	sample : press w or W below 
		hello! word

============================================================
line and paragragh motions:
	0	- To move to the start of the current line
	^	- To move to the start of the first word of the current line
	$	- To move to the end of the current line
	<CR>- To move to the start of the next line
	-	- To move to the start of the previous line
	{	- To move to the start of the current paragraph
	}	- to move to the end of the current paragraph
	gg	- to move to the top of the buffer
	G	- to move to the end of the buffer
	ngg - to move to line n (:n and nG work same)
	
	A paragraph is delimited by empty lines (not black lines)

============================================================
scrolling a large buffer
	<CTRL-F>  - To scroll Forward one window's worth of text
	<CTRL-B>  - To scroll Back a full window's worth of text
	<CTRL-D>  - To scroll Down a half window's worth of text
	<CTRL-U>  - To scroll Up one half window's worth of text
	<CTRL-E>  - To scroll Up one line
	<CTRL-Y>  - To scroll Down one line
	H		  - move to the top of the screen
	M		  - move to the middle of the screen
	L		  - move to the bottom of the screen

============================================================
verb + noun
	d		  w
	c	      b
	>(indent) 2j(2 : motion)
	v		  e 
	y

============================================================
set:
	relativenumber
	number
	tabstop
	shiftwidth
	hlsearch
	wildmenu
	showmode:
		show the mode that you are in
	showcmd:
		show the partial commands as you type them
	matchpairs+=<:>
	ruler:
		show the line and column number of the cursor 
		for the column if there are tab show two number
			first tab counted one and second tab counted four
		TODO : help rulerformat
			   help statusline

============================================================
Repeat yourself numerically
	if you prefix any of the preceding commands with a number, 
		it is repeated that many times:	
		2oplease!<ESC>
			please!
			please!
	you can also repeat the most recent editing command  with: .
	For example, the erlier begging could also achieved with:
		oPlease!<ESC>
		.....
	advantage : you can simply stop when you have enougth
		rather than having to guesstimate many beforehand

============================================================
keep track of where you are
	<CTRL_G>  - where you are
	g<CTRL_G> - more precisely where you are

	for enable the ruler:
		:set ruler

============================================================
matching delimiters
	%	- tom move the matching bracket of a {...}, (...) or [...] pair
	by default, vim only matches [], (), [] but you can extend that to whatever pairs you like:
		set matchpairs+=<:>

============================================================
pen to the page:
	i - Enter insert mode at cursor
	I - Enter insert mode at first non-blank character
	s - Delete character under cursor and enter insert mode
		5s : remove 5 character and enter insert mode
	S - Delete line and begin insert at beginning of same line
	a - Enter insert mode at _after_ curso
	A - Enter insert mode at the end of the line
	o - Enter insert mode on the next line
	O - Enter insert mode on the above line
	c - replace from the current cursor position to where the motion reaches
	C - Delete from cursor to end of line and begin insert

============================================================
Keep track of where you were
	In normal mode, you can leave a mark at any cursor position
	just tyme m<char>
	for example
		mh
	then to go back to that mark you type a backquote :
		`<same char>
	or to go to start of the line containing the mark :
		'<same char>
	if fou use a lowercase letter, the mark is per-buffer
	if you use an uppercase letter, the mark is global
	For example:
		mQ
		:edit some_other_file<CR>
		`Q
	you see all the marks you've set by typing :marks	

============================================================
Editing with marks
	one of the most important uses of marks
	As a "motion" for other editing commands
	for any command that takes a motion after it...
		such as c, d, y, >, etc
		you can use a jump-to-mark motion as well
		for example to delete several hundred lines of code...
			move to the start of the code
			set a "start" mark: ms
			move to the end of the code
			delete back to the "start" mark: d`s

============================================================
use vim's own navigation marks
	vim sets certain non-alphabetic marks automatically :
	`` - takes you to the last place you *jumped from	
	A handy trick when working on two regions of a file :
		set the context mark at the first region: m`
		jump to the second region
		then `` between the two region	
	Another handy "Where was I?" mark is `"
	This is where you were last time you exited the current file
	Vim also keeps a list of all your jumps within a file
	You can use <CTRL-O> and <CTRL-I> to 
		step back and forth through the list
	
	(*jumped where "jumped" means searched, used G, or returned to a mark)

============================================================
todo:
	vim:
		visual mode
	plug:
		commentary
		replaceWithRegister
		titlecase
		sort-motion
		system-copy
		indent
		entire
		line
		rubyblock
		*ctrp
		*nerdtree
		*ag
	I can't understant:
		alias v \!vim +normal\\\'\\\"

vim_mastering :
	fix your deletions
	page 11
read more about mark
	and some non-alphabetic marks
