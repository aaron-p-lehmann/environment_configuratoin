# environment_configuration
My preferred shell configuration

I've put this here so I can copy it down when I change computers.  I'll try and keep it up to date as I change things that I like.  Feel free to make a PR if you think you've got a good idea.

You'll need to remember to remap Capslock to Control.

# Contains
* .vimrc - a vimrc that sets up vim to:
** Indent nicely
** Display invisible characters
** Lint while editting
* .tmux.conf - tmux config that makes pane switching and managment feel like vim and not like Emacs
* .zshrc - puts zsh in vi mode

# Setup
If you like any of these files, create a symlink to them of the same name in your home directory.
This will let you run them and have them autoupdated when you pull this repository.
Alternatively, you can import them in your personal configurations if you want to have
some extra stuff, but still get changes easily.

## Setup Vim config
There's some special stuff to do to make the .vimrc work.
* Install pylint and flake8
* Install vim-plug into your autoload directory.  It is required for this .vimrc, but it's someone else's code, so I'm not going to copy it into my repository.

```
mkdir -p ~/.vim/autoload
curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > ~/.vim/autoload
```

Then open up Vim and load the plugins.

```
:PlugInstall
```
