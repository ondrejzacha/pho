clean:
	rm -rf .ipynb_checkpoints
	rm -rf */.ipynb_checkpoints
	rm -rf src/pho.egg-info

install:
	pip install .

develop:
	pip install -e ".[dev]"
	pre-commit install

format:
	black src/pho setup.py
	isort src/pho/*.py setup.py

check:
	black --check src/pho setup.py
	flake8 src/pho setup.py
