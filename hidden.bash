if [ $1 = "1" ]; then
	defaults write com.apple.finder AppleShowAllFiles TRUE;
	echo '\033[32m\033[1mShowing\033[0m hidden files'
else
	defaults write com.apple.finder AppleShowAllFiles FALSE;
	echo '\033[32m\033[1mHiding\033[0m hidden files'
fi
killall Finder
