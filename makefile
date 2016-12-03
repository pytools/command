venv:
	-rm -rf venv
	virtualenv -p python3 venv

install:
	pip install -r requirements.txt

test:
	python -m unittest discover

requirements:
	pip freeze > requirements.txt

register:
	-ln -sfn ~/vagrant/.pypirc ~/.pypirc
	python setup.py sdist bdist_wheel
	twine register dist/*.whl

upload:
	-ln -sfn ~/vagrant/.pypirc ~/.pypirc
	twine upload dist/*

.PHONY: venv install test requirements
