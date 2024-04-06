# Writing

```
sudo apt install vim-gtk pandoc tex-live mupdf dictd dict-wn dict-gcide
```

1. See [.vim/ftplugin/markdown.vim]
1. `pandoc` converts to epub
1. **mupdf can read epub**. Use "H" to fit the page to the window height. ">" to 
   increase font size.
1. Force mupdf to reload the file: `pkill -HUP mupdf`
1. `dict-wn` has synonyms! `dict-moby-thesaurus` has been dropped from recent 
   distributions and I went nuts until I found `dict-wn`. Add `server localhost` 
to `.dictrc`
