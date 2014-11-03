# Dotfiles
My personal collection of dotfiles. This repo is meant as:

- to make it able to work in a familiar machine environment on any OS X or
  Linux machine
- remote backup

However, you can always suggest a feature by sending a pull-requests. Patches
in a faulty dotfile are welcome too.

You can use the provided `Makefile` to install all my dotfiles in your machine:

    % make [TARGET=...] [LINK=..]

By default, this will create symlinks to the dotfiles in this repo. You can
always override the variables to your wishes:

Variable | Default   | Description
-------- | --------- | -------------------------------------------------------
`TARGET` | `${HOME}` | Where to put the dotfiles.
`LINK`   | `ln -bs`  | Command to be used to symlink/copy dotfiles (if you don't like symlinks, you can override it with `cp -b` instead, for example.

It's also possible to install a specific dotfile only, the following make
targets are made available to you:

Target  | Description
------- | --------------------------------------------------------------------
`all`   | Install all dotfiles (default).
`bash`  | Install bash related dotfiles.
`conky` | Install [conky][] related dotfiles.
`fish`  | Install [fish][] related dotfiles.
`git`   | Install git related dotfiles.
`todo`  | Install [todo.txt][] related dotfiles.

For example, to install bash related dotfiles, simply execute:

    % make bash

The Makefile will first check whether Bash is installed before actually copying
or symlinking the dotfiles. So you won't end up with a bunch of useless dotfiles
when executing `make all` for example.


[conky]: http://conky.sourceforge.net/
[fish]: http://fishshell.com/
[todo.txt]: https://github.com/ginatrapani/todo.txt-cli
