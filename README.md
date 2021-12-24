# dotfiles

My personal collection of dotfiles. This repo serves as remote backup and also makes it possible to synchronize the files between different machines that I work on.

## Installation

Use the provided `Makefiles` to install all or some of the dotfiles on your machine:

    $ make

By default, this will copy all contents in the `dotfiles/` folder to the home directory (set by the `HOME` environment variable). This will not override any existing dotfiles, as a backup file is automatically generated before copying the contents.

The following targets are provided if you want to install specific dotfiles:

Target         | Description
-------------- | --------------------------------------------------------------
`all`          | Install all dotfiles (default)
`fish`         | Install [fish][] related dotfiles
`git`          | Install [Git][] related dotfiles
`vim`          | Install [VIm][] related dotfiles

[fish]: http://fishshell.com/
[Git]: https://git-scm.com/
[VIm]: http://www.vim.org/

For example, to install Git related dotfiles:

    $ make git
