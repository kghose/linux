setlocal tw=80
setlocal fo+=taw
setlocal fo-=l
setlocal statusline^=\%{wordcount().cursor_words}/%{wordcount().words}\ words
