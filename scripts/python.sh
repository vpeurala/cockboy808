#!/bin/bash
PYTHON=$(pyenv which python)
export PYTHONHOME=$(pipenv --venv)
exec $PYTHON $@
