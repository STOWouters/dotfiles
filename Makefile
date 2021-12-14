MKDIR := mkdir
MKDIRFLAGS := -p
CP := cp
CPFLAGS	:= -r -b

all: fish git vim

fish:
	$(MKDIR) $(MKDIRFLAGS) $(HOME)/.config/fish
	$(CP) $(CPFLAGS) dotfiles/.config/fish $(HOME)/.config

git:
	$(CP) $(CPFLAGS) dotfiles/.gitconfig dotfiles/.gitignore $(HOME)

vim: $(HOME)/.vim/bundle/Vundle.vim
	$(CP) $(CPFLAGS) dotfiles/.vimrc $(HOME)

$(HOME)/.vim/bundle/Vundle.vim:
	$(MKDIR) $(MKDIRFLAGS) $(HOME)/.vim/bundle
	git clone 'https://github.com/gmarik/Vundle.vim.git' $(HOME)/.vim/bundle/Vundle.vim
