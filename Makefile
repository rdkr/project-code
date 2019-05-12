build:
	docker build --tag=rdkr/project-code .

run:
	docker run -p 4000:80 rdkr/project-code

install:
	pip install -r requirements.txt

