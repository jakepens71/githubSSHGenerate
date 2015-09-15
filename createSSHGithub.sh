if [ -f "$HOME/.ssh/id_rsa.pub" ]
then
	echo "file exists"
else
	echo "file does not exist"
	echo "Enter your email address you use for Github"
	read email
	ssh-keygen -t rsa -b 4096 -C "$email"
	ssh-agent -s
	eval $(ssh-agent -s)
	ssh-add ~/.ssh/id_rsa
fi