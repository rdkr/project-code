build:
	docker build --tag=rdkr/project-code .

run:
	docker run -p 4000:80 rdkr/project-code

install:
	pip install -r requirements.txt
	pip install -r requirements_dev.txt

lint:
	python -m pylint *.py
	python -m pydocstyle *.py
