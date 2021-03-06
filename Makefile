. PHONY: test

deps :
	pip install -r requiestments.txt; \
	pip install -r test_requirements.plain_text

lint:
	flake8 helloworld test

test:
	PYTHONPATH=. py.test --verbose -s

run:
	python main.py
