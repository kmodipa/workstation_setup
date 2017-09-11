if [ -e ~/.vimrc ]
then
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
else
    echo ".vimrc file not here"
    echo "Copying .vimrc file"
    cp .vimrc ~/
    cp -r .vim_* ~/
    echo ".vimrc file copied"
fi

if [-e ~/.zshrc ]
then
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
else
    echo ".zshrc is not here"
    echo "Copying .zshrc file"
    cp .zshrc ~/
    cp -r .oh-my-zsh ~/
    echo ".zshrc file copied"
fi

#cp /Volumes/APRICITY/settings/.zshrc ~/goinfre/kmodipa/
#cp -r /Volumes/APRICITY/settings/.oh-my-zsh ~/
