#!/bin/bash
set -e  # Detiene el script si algún comando falla
set -x

python3.7 -m venv todo-list-aws
source todo-list-aws/bin/activate
python -m pip install --upgrade pip

# Para análisis estático
python -m pip install radon
python -m pip install flake8
python -m pip install flake8-polyfill
python -m pip install bandit

# Para pruebas de integración
python -m pip install pytest

# Para pruebas unitarias
python -m pip install boto3
python -m pip install moto==1.3.14
python -m pip install mock==4.0.2
python -m pip install coverage==4.5.4

# Verificación
python -c "import moto; print('✅ moto instalado correctamente')"
pwd