#!/bin/bash
if test -f "COBS_RuleBook_AISP_PISP.yaml"; then
    rm COBS_RuleBook_AISP_PISP.yaml
fi
json-refs resolve -y index.yaml > COBS_RuleBook_AISP_PISP.yaml
