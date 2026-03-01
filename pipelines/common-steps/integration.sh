#!/bin/bash

source todo-list-aws/bin/activate
set -x
export BASE_URL=$1
# Usar variable de entorno TEST_MODE (si no está definida, por defecto "full")
TEST_MODE=${TEST_MODE:-full}
if [ "$TEST_MODE" == "readonly" ]; then
    pytest -s test/integration/todoApiTest.py -k "list or get"
else
    pytest -s test/integration/todoApiTest.py
fi