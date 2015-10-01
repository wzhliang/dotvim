"Pool man's class tree
"

"let g:tag_file="/local/wenzhil/picasso/branches/integration/THIRD_PARTY_LIBRARIES/BSKYB_JTH/build/applications/Picasso/tags"
let s:class_list=[]

function! <SID>GetInherits(base)
    for f in tagfiles()
        let classes=system("grep inherits:" . a:base . ' '  . f . " | awk '{print $1}'")
        let tmp_list = split(classes)
		for i in tmp_list
			if index(s:class_list, i) < 0 
				call add( s:class_list, i )
			endif
		endfor 
    endfor
    call sort(s:class_list)
    let i=0
    echo "Classes that extends or implements: " . a:base . "\n"
    for c in s:class_list
        echo i . ' ' . c
        let i=i+1
    endfor
    let res=input("Pick one from above: ")
    if ( res >= 0 )
        if ( res < len(s:class_list) )
            exec "tag " . s:class_list[res]
        endif
    endif
	let s:class_list=[]
endfunc


command! -nargs=1 -complete=tag WTree call s:GetInherits(<f-args>)
