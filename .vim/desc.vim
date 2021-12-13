" Name: 			 desc.vim
" By:          cyancat
" Tag Added:	 13/12/2021
" Desciption:	 Seperated from my main .vimrc file, 
"              this script inserts a basic 'description'
"	             (what you're reading now)


	let filename =  expand('%:t')
	let author   = "cyancat"
	let curtime  =  strftime("%d/%m/%Y")

" <!-- These Style Comments -->
	if (&ft=='html' ||
		 \&ft=='php'  || 
		 \&ft=='markdown')

			iab <expr> desc "<!--<cr>Name: 			 " . filename 
				\ . "<cr>By:          " . author
				\	. "<cr>Tag Added:	 " . curtime
				\ . "<cr>Desciption:	DESCRIPTION<cr>-->"
				\ . "<esc>/DESCRIPTION<cr>cw"

" # These Style Comments
	elseif (&ft=='sh'   || 
		     \&ft=='bash' || 
		     \&ft=='python')

			iab <expr> desc "# Name: 			 " . filename 
				\ . "<cr># By:          " . author
				\	. "<cr># Tag Added:	 " . curtime
				\ . "<cr># Desciption: "

"	/* These Style Comments */ 
	elseif (&ft=='css')

			iab <expr> desc "/*<cr>Name: 			 " . filename 
				\ . "<cr>By:          " . author
				\	. "<cr>Tag Added:	 " . curtime
				\ . "<cr>Desciption:	DESCRIPTION<cr>*/"
				\ . "<esc>/DESCRIPTION<cr>cw"

" " These Style Comments
	elseif (&ft=='autohotkey' || 
		     \&ft=='vim')

			iab <expr> desc "\" Name: 			 " . filename 
				\ . "<cr>\" By:          " . author
				\	. "<cr>\" Tag Added:	 " . curtime
				\ . "<cr>\" Desciption:	"

	endif
