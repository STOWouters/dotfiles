TARGET		:= $(HOME)
INSTALL		:= ln -bs
MKDIR		:= mkdir
MKDIRFLAGS	:=

BASH		:= $(shell which bash)
BASHRC		:= $(PWD)/dotfiles/bashrc

EDITORCFG	:= $(PWD)/dotfiles/editorconfig

FISH		:= $(shell which fish)
FISHCONFIG	:= $(PWD)/dotfiles/config/fish/config.fish
FISHPROMPT	:= $(PWD)/dotfiles/config/fish/functions/fish_prompt.fish

GIT			:= $(shell which git)
GITIGNORE	:= $(PWD)/dotfiles/config/git/ignore
GITCONFIG	:= $(PWD)/dotfiles/gitconfig

TERMINATOR	:= $(shell which terminator)
TERMCFG		:= $(PWD)/dotfiles/config/terminator/config

VIM			:= $(shell which vim)
VIMRC		:= $(PWD)/dotfiles/vimrc

all: bash editorconfig fish git terminator vim

bash: $(BASHRC)
ifdef BASH
	$(INSTALL) $(BASHRC) $(TARGET)/.bashrc
endif

editorconfig: $(EDITORCFG)
	$(INSTALL) $(EDITORCFG) $(TARGET)/.editorconfig

fish: $(FISHCONFIG) $(FISHPROMPT)
ifdef FISH
	$(MKDIR) $(MKDIRFLAGS) -p $(TARGET)/.config/fish/functions/
	$(INSTALL) $(FISHCONFIG) $(TARGET)/.config/fish/config.fish
	$(INSTALL) $(FISHPROMPT) $(TARGET)/.config/fish/functions/fish_prompt.fish
	@echo '[INFO]: install virtualfish by prompting `[sudo] pip3 install virtualfish`'
endif

git: $(GITIGNORE)
ifdef GIT
	$(MKDIR) $(MKDIRFLAGS) -p $(TARGET)/.config/git/
	$(INSTALL) $(GITCONFIG) $(TARGET)/.gitconfig
	$(INSTALL) $(GITIGNORE) $(TARGET)/.config/git/ignore
endif

terminator: $(TERMCFG)
ifdef TERMINATOR
	$(MKDIR) $(MKDIRFLAGS) -p $(TARGET)/.config/terminator/
	$(INSTALL) $(TERMCFG) $(TARGET)/.config/terminator/config
endif

vim: $(VIMRC)
ifdef VIM
	$(MKDIR) $(MKDIRFLAGS) -p $(TARGET)/.vim/bundle/
	$(INSTALL) $(VIMRC) $(TARGET)/.vimrc
	@echo '[INFO]: install Vundle by prompting `git clone https://github.com/gmarik/Vundle.vim.git $(TARGET)/.vim/bundle/Vundle.vim`'
	@echo '[INFO]: run `:PluginInstall` command when re-opening VIm'
endif
