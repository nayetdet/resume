.PHONY: up

up:
	mkdir -p generated
	for basename in resume_pt_BR resume_en_US; do \
		docker run \
			--init \
			--rm \
			-v "$(CURDIR)/data:/app/data" \
			-v "$(CURDIR)/generated:/app/generated" \
			ghcr.io/nayetdet/softworker:latest \
			python -m softworker --language "$${basename#resume_}" \
			data/"$${basename}.json" \
			generated/"$${basename}.pdf"; \
	done
