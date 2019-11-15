1) c s " '
	"Hello world!"		->		'Hello world!' 
2) c s ' <p>
	'Hello world!'		->		<p>Hello world!</p>
3) d s t
	<p>Hello world!</p>		->		Hello world!
4) y s iw {
	Hello world!		-> 		{ Hello } world! 
5) y s iw } or y s iw B
	Hello world!		->		{Hello} World!
6) y s s b
	{Hello} World!
					->
							({Hello} World!)
7) v (visual) (...) S(capital s) <p>	
	Hello world!		->		<p>Hello world!</p>
8) install 'tpope/vim-repeat' for '.' command 
9) v (visual) (...) gS(capital s)
	

todo : 83, 89
y s f (char) " : does not working
doc : 89
