run: download copy_epubs

copy_epubs:
	@find ./Books | grep \.epub$ | xargs -I{} cp "{}" ./Epubs

download:
	@cat book_list | cut -d'|' -f1 | xargs -L 1 python3 ./safaribooks.py
