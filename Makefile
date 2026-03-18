.PHONY: install pdf

install:
	uv sync

pdf:
	uv run -m antimeta_resume data/resume.json generated/resume.pdf
