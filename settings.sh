DIFF=$(diff -U 3 .vimrc ~/.vimrc)
if [ "$DIFF" != "" ]
then
	echo "updating .vimrc"
	cp .vimrc ~/
	cp -r .vim_* ~/
	echo ".vimrc updated"
else
	echo ".vimrc is up-to-date"
fi

DIFF=$(diff -U 3 .zshrc ~/.zshrc)
if [ "$DIFF" != "" ]
then
	echo "updating .zshrc"
	cp .zshrc ~/
	cp -r .oh-my-zsh ~/
	echo ".zshrc updated"
else
	echo ".zshrc is up-to-date"
fi

DIFF=$(diff -U 3 .oh-my-zsh ~/.oh-my-zsh)
if [ "$DIFF" == "*No such file or directory" ]
then
	echo "updating .oh-my-zsh"
	cp -r .oh-my-zsh ~/
	cp -r .oh-my-zsh ~/
	echo ".oh-my-zsh updated"
else
	echo ".oh-my-zsh is up-to-date"
fi
