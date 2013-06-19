update-vodka:
	ssh vodka 'cd ~/osiux && git pull'

update-merlot:
	ssh merlot 'cd ~/osiux && git pull'

update-aleosi:
	rsync -avz --exclude .git . aleosil:/mnt/sda1/www/osiux/

update-all: update-vodka update-merlot update-aleosi

