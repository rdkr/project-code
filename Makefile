build:
	docker build --tag=rdkr/project-code .

run:
	docker run -p 80:5000 rdkr/project-code

make:
	FLASK_ENV=development flask run

install:
	pip install -r requirements.txt

