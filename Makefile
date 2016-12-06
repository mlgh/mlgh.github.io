build: .PHONY
	.pdsite/bin/pdsite build

publish: build .PHONY
	git -C .html add '*' ||:
	git -C .html commit -am"Update" ||:
	git -C .html push || :

.PHONY:

