#!/bin/bash

### Pip

pip3 install pip-autoremove      # alternatives: pip3-autoremove,
                                # python3-pip-autoremove,
                                # only-pip3-autoremove
pip3 install pip-search

pip3 install pipdeptree          # alternaives: deptree, johnnydep,
                                # pipgrip, pip-tree
pip3 install --no-deps pipreqs
pip3 install yarg docopt         # dependecies for pipreqs
### LSP

## python-lsp-server (pylsp)
# pip3 install python-lsp-server[all]
pip3 install python-lsp-server
# pip3 install python-lsp-black
# pip3 install python-lsp-isort
pip3 install python-lsp-ruff
pip3 install pylsp-rope

## Ruff LSP
pip3 install ruff-lsp

### Lint

# pip3 install autopep8
# pip3 install black
# pip3 install flake8
# pip3 install pylint
pip3 install ruff

