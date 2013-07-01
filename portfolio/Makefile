SSH_USER := julian
SSH_HOST := juliantoker.com
SSH_TARGET_DIR := /home/julian/public_html
DEPLOY_DIR := deploy
STATIC_FILES := robots.txt \
		humans.txt \
		javascripts \
		img \
		stylesheets \
		JulianTokerResume \
		index.html

.PHONY: deploy
deploy:
	mkdir -p $(DEPLOY_DIR)
	for fn in $(STATIC_FILES); do \
	    cp -R $$fn $(DEPLOY_DIR)/ ; \
	done
	rsync -P -rvz $(DEPLOY_DIR)/ $(SSH_USER)@$(SSH_HOST):$(SSH_TARGET_DIR)
