.RECIPEPREFIX +=

venv:
    -rm -rf venv
    virtualenv -p python3 venv

init:
    pip install -r requirements.txt

test:
    python -m unittest discover

.PHONY: venv init test
