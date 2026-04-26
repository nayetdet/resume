.PHONY: install pdf pdf_en pdf_pt_BR

install:
	uv sync

pdf: pdf_en pdf_pt_BR

pdf_en:
	uv run -m softworker data/resume_en_US.json --language en_US generated/resume_en_US.pdf

pdf_pt_BR:
	uv run -m softworker data/resume_pt_BR.json --language pt_BR generated/resume_pt_BR.pdf
