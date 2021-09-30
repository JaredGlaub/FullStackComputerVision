setup:
	python3 -m venv ~/.FullStackComputerVision

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=FullStackComputerVisionlib tests/*.py
	python -m pytest --nbval notebook.ipynb


lint:
	pylint --disable=R,C FullStackComputerVisionlib

all:	install lint test
