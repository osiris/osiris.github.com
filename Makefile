update-gin: css
	ssh gin 'cd ~/osiux && git stash && git pull'
	scp *.css gin:osiux/

css:
	java -jar ~/bin/yuicompressor.jar -o osiux.css osiux.css
	java -jar ~/bin/yuicompressor.jar -o print.css print.css

update-leosia:
	rsync -avz --exclude .git . leosial:/mnt/sda1/osiux/html/

update-all: update-gin update-leosia

