deploy_paths = portfolio

.PHONY: $(deploy_paths)
$(deploy_paths):
	$(MAKE) -C $@ deploy

.PHONY: deploy
deploy: $(deploy_paths)
