set positional-arguments

freeze:
    pip freeze > requirements.txt

run notebook:
    python -m papermill --cwd collections collections/$1.ipynb - && echo "\nexecuted ${1}.ipynb successfully" 

lint-ci:
    actionlint