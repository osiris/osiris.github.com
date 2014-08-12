update-vodka:
	ssh vodka 'cd ~/osiux && git pull'

update-leosia:
	rsync -avz --exclude .git . leosial:/mnt/sda1/osiux/html/

update-all: update-vodka update-leosia

