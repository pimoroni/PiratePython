resize() {
	old=$(stty -g)
	stty raw -echo min 0 time 5
	printf '\033[18t' > /dev/tty
	IFS=';t' read -r _ rows cols _ < /dev/tty
	stty "$old"
	# echo "cols:$cols"
	# echo "rows:$rows"
	stty cols "$cols" rows "$rows"
}
if [ $(tty) = /dev/ttyGS0 ] || [ $(tty) = /dev/ttyAMA0 ]; then
	resize
fi
