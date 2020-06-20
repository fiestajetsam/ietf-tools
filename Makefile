.PHONY: help # - Generate list of targets with descriptions
help:
	@grep '^.PHONY: .* #' Makefile | sed 's/\.PHONY: \(.*\) # \(.*\)/\1 \2/' | expand -t20

.PHONY: build # - Build the Docker image (run this after cloning)
build:
	@docker build -t fiestajetsam/ietf-tools .

.PHONY: fetch # - Fetches all
fetch: fetch_id fetch_rfc

.PHONY: fetch_id # - Fetch all Internet Drafts (warning: this will take some disk space)
fetch_id:
	@docker run -v $(shell pwd)/id:/id fiestajetsam/ietf-tools rsync -avz rsync.tools.ietf.org::tools.id ./id

.PHONY: fetch_rfc # - Fetch all RFCs (warning: this will take some disk space)
fetch_rfc:
	@docker run -v $(shell pwd)/rfc:/rfc fiestajetsam/ietf-tools rsync -avz ftp.rfc-editor.org::rfcs-text-only ./rfc
