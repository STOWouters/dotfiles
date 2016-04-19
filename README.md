# dotfiles

![Screenshot](screenshot.png)

My personal collection of dotfiles. This repo is meant to:

- make it able to work in a familiar machine environment on any OS X or
  Linux machine
- serve as remote backup

However, you can always suggest a feature by sending a pull-requests. Patches
in a faulty dotfile are welcome too.

You can use the provided `Makefile` to install all my dotfiles in your machine:

    $ make [TARGET=...] [INSTALL=..]

By default, this will create symlinks to the dotfiles in this repo (it will
also backup existing dotfiles). You can always override the variables to your
wishes:

Variable     | Default   | Description
------------ | --------- | ----------------------------------------------------
`TARGET`     | `$(HOME)` | Where to put the dotfiles
`INSTALL`    | `ln -bs`  | Command to be used to install the dotfiles
`MKDIR`      | `mkdir` | Command for creating additional directories
`MKDIRFLAGS` | (empty) | Additional flags to the `MKDIR` command

It's also possible to install a specific dotfile only, the following make
targets are made available to you:

Target         | Description
-------------- | --------------------------------------------------------------
`all`          | Install all dotfiles (default)
`bash`         | Install bash related dotfiles
`editorconfig` | Install [editorconfig][] related dotfiles
`fish`         | Install [fish][] related dotfiles
`git`          | Install git related dotfiles
`terminator`   | Install [terminator][] related dotfiles
`vim`          | Install [VIm][] related dotfiles

For example, to install bash related dotfiles, simply execute:

    $ make bash

The Makefile will first check whether Bash is installed before actually copying
or symlinking the dotfiles. So you won't end up with a bunch of useless dotfiles
when executing `make all` for example.


[editorconfig]: http://editorconfig.org/
[fish]: http://fishshell.com/
[terminator]: https://launchpad.net/terminator
[VIm]: http://www.vim.org/
