hello:
		echo "this is my first make command"
install:
		pip install --upgrade pip &&\
				pip install -r requirements.txt

test:
		python -m pytest -vv test_hello.py

lint:
		pylint --disable=R,C hello.py

all: install lint test
	