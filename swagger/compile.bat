IF EXIST COBS_RuleBook_AISP_PISP.yaml DEL /F COBS_RuleBook_AISP_PISP.yaml
json-refs resolve -y index.yaml > COBS_RuleBook_AISP_PISP.yaml