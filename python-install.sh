#!/bin/bash

if grep -q microsoft /proc/version 2>/dev/null; then
    # Running in WSL (Ubuntu)
    # installer="pip3"
    installer="pipx"
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    # Running on native Linux
    # installer="pip3"
    installer="pipx"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Running on macOS
    installer="pipx"
else
    echo "Unsupported OS"
    exit 1
fi

### Pip

${installer} install pip-autoremove      # alternatives: pip3-autoremove,
                                         # python3-pip-autoremove,
                                         # only-pip3-autoremove
${installer} install pip-search

${installer} install pipdeptree          # alternaives: deptree, johnnydep,
                                         # pipgrip, pip-tree
${installer} install pipreqs

### LSP

## basedpyright
${installer} install basedpyright

## python-lsp-server (pylsp)
# ${installer} install python-lsp-server[all]
# ${installer} install python-lsp-server[rope]   # rope is not included with "all"
${installer} install python-lsp-server
if [ ${installer} = "pipx" ]; then
    # ${installer} inject python-lsp-server python-lsp-black
    # ${installer} inject python-lsp-server python-lsp-isort
    ${installer} inject python-lsp-server python-lsp-ruff
    ${installer} inject python-lsp-server pylsp-rope
else
    # ${installer} install python-lsp-black
    # ${installer} install python-lsp-isort
    ${installer} install python-lsp-ruff
    ${installer} install pylsp-rope
fi

## Ruff LSP
##   Note: # Does not support completion
${installer} install ruff-lsp

### Lint

# ${installer} install autopep8
# ${installer} install black
# ${installer} install flake8
# ${installer} install pylint
${installer} install ruff

