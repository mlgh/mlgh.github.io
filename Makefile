build: .PHONY
	pdsite build

publish: .PHONY
	$(shell cd .html; git add *; git commit -am "Update"; git push)

.PHONY:

