Installation
============

For auto install just download auto-install.sh and make sure you have git installed.

To manual install, follow this steppes:

    mv ~/.vim ~/.vim.old && mv ~/.vimrc ~/vimrc.old
    git clone git://github.com/never2far/vimrc.git ~/.vim
    mkdir -p ~/.vim/bundle/ && git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    vim -u ~/.vim/bundles.vim +BundleInstall +q
    cd ~/.vim/bundle/pyflakes-vim/
    git submodule init
    git submodule update

    ln -s ~/.vim/.vimrc ~/.vimrc
    export TERM="xterm-256color"


### Plugins

* [L9](https://bitbucket.org/ns9tks/vim-l9)
* [Raimondi/delimitMate](https://github.com/Raimondi/delimitMate)
* [tomtom/checksyntax_vim](https://github.com/tomtom/checksyntax_vim)
* [tpope/vim-surround](https://github.com/tpope/vim-surround)
* [motemen/git-vim](https://github.com/motemen/git-vim)
* [Lokaltog/vim-easymotion](https://github.com/Lokaltog/vim-easymotion)
* [scrooloose/nerdcommenter](http://github.com/scrooloose/nerdcommenter)
* [scrooloose/nerdtree.git](http://github.com/scrooloose/nerdtree)
* [tpope/vim-fugitive](http://github.com/tpope/vim-fugitive)
* [vim-scripts/svndiff](https://github.com/vim-scripts/svndiff)
* [skyl/vim-config-python-ide](https://github.com/skyl/vim-config-python-ide)
* [mhz/vim-matchit](https://github.com/mhz/vim-matchit)
* [cschlueter/vim-wombat](https://github.com/cschlueter/vim-wombat)
* [altercation/vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
* [vim-scripts/FuzzyFinder](https://github.com/vim-scripts/FuzzyFinder)
* [ervandew/supertab](https://github.com/ervandew/supertab)
* [vim-scripts/buftabs](https://github.com/vim-scripts/buftabs)
* [vim-scripts/ShowMarks](https://github.com/vim-scripts/ShowMarks)
* [vim-scripts/taglist.vim](https://github.com/vim-scripts/taglist.vim)
* [vim-scripts/SearchComplete](https://github.com/vim-scripts/SearchComplete)
* [never2far/snipmate.vim](https://github.com/never2far/snipmate.vim)
* [wincent/Command-T](https://github.com/wincent/Command-T)
* [klen/python-mode](https://github.com/klen/python-mode)

## delimitMate

**Introduction**: This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.; besides some other related features
that should make your time in insert mode a little bit easier. Read more [vim.org/scripts](http://www.vim.org/scripts/script.php?script_id=2754)

**Usage:** Most of the features can be modified or disabled permanently, using global variables, or on a FileType basis,
using autocommands. With a couple of exceptions and limitations, this features don't brake undo, redo or history.


### checksyntax_vim

**Introduction**: Syntax check of your script: c,cpp,html,java,javascript,python,lua,php,pylint,ryby,tex,xml

**Usage:** By default, |:CheckSyntax| is mapped to <F5> (if not mapped already), and  automatically executed when saving the buffer.
The |:CheckSyntax| command takes one optional argument: the mode (default: &filetype). The following modes are pre-defined (and maybe some more):

##  git-vim

**Introduction:** Used for calling git functions from inside Vim

**Usage**: More details: https://github.com/motemen/git-vim

## vim-easymotion

**Introduction:** EasyMotion provides a much simpler way to use some motions in vim

**Usage**: Leater + w and then character

## nerdcommenter

**Introduction:** provides many different commenting operations and styles which are invoked via key mappings and a menu.

**Usage**: Leader + cc Comment out the current line or text selected in visual mode.

##  nerdtree

**Introduction:** allows you to explore your filesystem and to open files and directories.

**Usage**: Leader + [


## vim-fugitive

**Introduction:** fugitive.vim may very well be the best Git wrapper of all time: https://github.com/tpope/vim-fugitive/blob/master/README.markdown

**Usage**: Bring up the output of git status with :Gstatus. Press - to add/reset a file's changes, or p to add/reset --patch that mofo. And guess what :Gcommit does!

##  svndiff

**Introduction:** runs a diff between the current buffer and the original file in the source control system, and applies highlighting to show where the buffer differs. The original text is not shown, only colors are used to indicate where changes were made.

##  supertab

**Introduction:**is a plugin which allows you to perform all your insert completion (|ins-completion|) using the tab key.

**Usage**: just press tab after a non whitespace character

##  buftabs

**Introduction:** This is a simple script that shows a tabs-like list of buffers in the bottom of the window.

**Usage**: Ctrl + left/right to jump between tabs from the bottom of the screen

## Show Marks

**Introduction:** Visually shows the location of marks.Marks are useful for jumping back and forth between interesting points in a buffer, but can be hard to keep track of without any way to see where you have placed them.  ShowMarks hopefully makes life easier by placing a sign in the leftmost column of the buffer.  The sign indicates the label of the mark and its location.
It can be toggled on and off and individual marks can be hidden(effectively removing them).

**Usage**:Leader +
   mt : Toggles ShowMarks on and off.
   mh : Hides an individual mark.
   ma : Hides all marks in the current buffer.
   mm : Places the next available mark.
To jump on the mark from the left, you must press ` and number. Other help: http://vim.wikia.com/wiki/Using_marks

##  taglist

**Introduction:** is a source code browser plugin for Vim and provides an overview of the structure of source code files and allows
you to efficiently browse through source code files for different programming languages

**Usage**: Leader +] TlistToggle

##  SearchComplete

**Introduction:** auto complete search words using tab

**Usage**: / part of the word + tab

##  Command-T - not used for the moment

**Introduction:** provides an extremely fast, intuitive mechanism for opening files and buffers with a minimal number of keystrokes. It's named
"Command-T" because it is inspired by the "Go to File" window bound to Command-T in TextMate.

**Usage**: Leader + t

## pyflakes.vim

**Introduction:** A script to highlight Python code on the fly with warnings from Pyflakes, a Python lint tool
