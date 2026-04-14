.PHONY: install pdf pdf_en pdf_pt_br

install:
	uv sync

pdf: pdf_en pdf_pt_br

pdf_en:
	uv run -m antimeta_resume data/resume_en.json generated/resume_en.pdf

pdf_pt_br:
	uv run -m antimeta_resume data/resume_pt_br.json generated/resume_pt_br.pdf
