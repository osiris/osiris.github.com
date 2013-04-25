update-vodka:
	ssh vodka 'cd ~/osiux && git pull'

update-merlot:
	ssh merlot 'cd ~/osiux && git pull'

update-osiale:
	ssh osiale 'cd ~/osiux && git pull'

update-all: update-vodka update-merlot update-osiale

