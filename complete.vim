augroup ZenScript
	autocmd!
	"" adds `:` to `iskeyword` while in insert mode, for better tag-completion behaviour
	autocmd InsertEnter *.zs setlocal iskeyword+=:
	autocmd InsertLeave *.zs setlocal iskeyword-=:
augroup END

"" Also checkout https://github.com/DaeZak/crafttweaker-vim-highlighting
"" for ZenScript syntax highlighting for vim

