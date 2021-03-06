#!/bin/bash

./0-TF-CONFIGURE.sh

source ./GLOBAL_VARIABLES.sh

${TERRAFORM} get

${TERRAFORM} apply \
    -var "branch=${BRANCH}" \
    -var "track=${TRACK}" \
    -var-file="./environment.tfvars"
