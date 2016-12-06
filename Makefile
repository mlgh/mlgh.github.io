build: .PHONY
	pdsite build

publish: .PHONY
	git -C .html add '*' ||:
	git -C .html commit -am"Update" ||:
	git -C .html push || :

.PHONY:

