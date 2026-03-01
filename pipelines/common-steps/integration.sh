#!/bin/bash

source todo-list-aws/bin/activate
set -x
export BASE_URL=$1
MODE=${2:-full}  # Si no se pasa, ejecuta todos los tests
if [ "$MODE" == "readonly" ]; then
    # Asumiendo que los tests de solo lectura tienen "list" o "get" en su nombre
    pytest -s test/integration/todoApiTest.py -k "list or get"
else
    pytest -s test/integration/todoApiTest.py
fi