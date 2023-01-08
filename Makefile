install:
    #install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	#format codes
	black *.py mylib/*.py
lint:
	#flake8 or #pylint
	pylint --disable=R,C *.py mylib/*.py
test:
	#test{"result":["barack hussein obama ii","bə-rahk hoo-sayn oh-bah-mə","august","american politician","44th president"]}
	python -m pytest -vv --cov=mylib --cov=main test_*.py
build:
	#build container
	docker build -t deploy-fastapi .
run:
	docker run -p 127.0.0.1:8080:8080 ebf6d4e4205c
deploy:
	#deploy
all: install lint test deploy