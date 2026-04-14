.PHONY: install pdf pdf_en pdf_pt_BR

install:
	uv sync

pdf: pdf_en pdf_pt_BR

pdf_en:
	uv run -m antimeta_resume data/resume_en.json generated/resume_en.pdf

pdf_pt_BR:
	uv run -m antimeta_resume data/resume_pt_BR.json generated/resume_pt_BR.pdf
