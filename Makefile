build:
	docker build --tag=rdkr/project-code .

run:
	docker run -p 80:5000 rdkr/project-code

dev:
	FLASK_ENV=development flask run

install:
	pip install -r requirements.txt
	pip install -r requirements_dev.txt
	git config core.hooksPath .githooks

lint:
	python -m pylint *.py
	python -m pydocstyle *.py
