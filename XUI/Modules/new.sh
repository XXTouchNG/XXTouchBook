#!/bin/bash

MODULE_NAME=${1:-latest}
mkdir ${MODULE_NAME}
touch ${MODULE_NAME}.md
code ${MODULE_NAME}.md

