# PISP New Payment

Examples of requests a responses for resource to POST new payment.

* **URL**

  `/my/payments`

* **Method:**
  
  `POST`
  
*  **URL Params**

   not defined

* **Request**

  **Header:**
  ```http
  Content-Type: application/json
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  Authorization: dd0964e6-b62e-41c1-bdf2-1fbb053f0148
  ```
  #### Domestic payment
  **Payload: [POST_domestic_request.json](POST_domestic_request.json)**
  ```json
  {
   "paymentIdentification":{
      "instructionIdentification":"NejakeID41785962314574"
   },
   "paymentTypeInformation":{
      "instructionPriority":"NORM"
   },
   "amount":{
      "instructedAmount":{
         "value":1245.44,
         "currency":"CZK"
      }
   },
   "requestedExecutionDate":"2017-01-31",
   "debtorAccount":{
      "identification":{
         "iban":"CZ7508000000002108589434"
      },
      "currency":"CZK"
   },
   "creditorAccount":{
      "identification":{
         "iban":"CZ6330300000000000000123"
      },
      "currency":"CZK"
   },
   "remittanceInformation":{
      "unstructured":"/VS/7418529630/SS/1234567890"
   }
  }
  ```
  
  #### SEPA payment
  **Payload: [POST_SEPA_request.json](POST_SEPA_request.json)**
  ```json
  {
   "paymentIdentification":{
      "instructionIdentification":"SEPAFUL123",
      "endToEndIdentification":"NOTPROVIDED"
   },
   "paymentTypeInformation":{
      "instructionPriority":"HIGH"
   },
   "amount":{
      "instructedAmount":{
         "value":45789.45,
         "currency":"EUR"
      }
   },
   "requestedExecutionDate":"2017-01-31",
   "ultimateDebtor":{
      "name":"Karel Novák",
      "postalAddress":{
         "streetName":"Vodičkova",
         "buildingNumber":"12",
         "postCode":"12000",
         "townName":"Praha 2",
         "country":"CZ"
      },
      "identification":{
         "privateIdentification":{
            "other":{
               "identification":"1245789528",
               "schemeName":{
                  "proprietary":"ID CARD",
                  "issuer":"OU Praha 2,CZ"
               }
            }
         }
      }
   },
   "debtorAccount":{
      "identification":{
         "iban":"CZ7508000000002108589434"
      },
      "currency":"CZK"
   },
   "creditorAgent":{
      "financialInstitutionIdentification":{
         "bic":"GIBAATWWXXX"
      }
   },
   "creditor":{
      "name":"1. wiena investment",
      "postalAddress":{
         "streetName":"Reisnerstraße",
         "buildingNumber":"20",
         "postCode":"1030",
         "townName":"Wiena",
         "country":"AT"
      }
   },
   "creditorAccount":{
      "identification":{
         "iban":"AT872011102000123456"
      }
   },
   "ultimateCreditor":{
      "name":"Franz Schubert",
      "postalAddress":{
         "streetName":"Dianagasse",
         "buildingNumber":"6",
         "postCode":"1030",
         "townName":"Wiena",
         "country":"AT"
      },
      "identification":{
         "privateIdentification":{
            "other":{
               "identification":"12356879131",
               "schemeName":{
                  "proprietary":"passport",
                  "issuer":"WIENA"
               }
            }
         }
      }
   },
   "purpose":{
      "proprietary":"sale of shares"
   }
  }
  ```
  
  #### Within EEA payment
  **Payload: [POST_EEA_request.json](POST_EEA_request.json)**
  ```json
  {
   "paymentIdentification":{
      "instructionIdentification":"MOJeID1234"
   },
   "paymentTypeInformation":{
      "instructionPriority":"NORM"
   },
   "amount":{
      "instructedAmount":{
         "value":1245.44,
         "currency":"USD"
      }
   },
   "requestedExecutionDate":"2017-01-31",
   "debtorAccount":{
      "identification":{
         "iban":"CZ8601000000000161486937"
      },
      "currency":"CZK"
   },
   "creditorAgent":{
      "financialInstitutionIdentification":{
         "bic":"GIBACZPX"
      }
   },
   "creditor":{
      "name":"Bohumil Hrabal",
      "postalAddress":{
         "streetName":"Na Hrázi",
         "buildingNumber":"326/24",
         "postCode":"18000",
         "townName":"Praha 8",
         "country":"CZ"
      }
   },
   "creditorAccount":{
      "identification":{
         "iban":"CZ3908000000000204533335",
         "other":{
            "identification":"204533335"
         }
      }
   },
   "remittanceInformation":{
      "unstructured":"fa 123546897"
   }
  }
  ```
  
  #### Outside EEA payment
  **Payload: [POST_nonEEA_request.json](POST_nonEEA_request.json)**
  ```json
  {
   "paymentIdentification":{
      "instructionIdentification":"IDTPP45678911"
   },
   "paymentTypeInformation":{
      "instructionPriority":"NORM"
   },
   "amount":{
      "instructedAmount":{
         "value":1245.44,
         "currency":"GBP"
      }
   },
   "requestedExecutionDate":"2017-01-31",
   "debtorAccount":{
      "identification":{
         "iban":"CZ6330300000000000000123"
      },
      "currency":"CZK"
   },
   "creditorAgent":{
      "financialInstitutionIdentification":{
         "bic":"ABNYUS33",
         "name":"New York Commercial Bank",
         "postalAddress":{
            "streetName":"Merrick Avenue615",
            "buildingNumber":"61511590-6644",
            "postCode":"11590-6644",
            "townName":"WESTBURY, NY",
            "country":"US"
         }
      }
   },
   "creditor":{
      "name":"First Hudson boat Inc.",
      "postalAddress":{
         "streetName":"Grand St",
         "buildingNumber":"1256",
         "postCode":"NY 11211",
         "townName":"Brooklyn ,NY",
         "country":"US"
      }
   },
   "creditorAccount":{
      "identification":{
         "other":{
            "identification":"123456789"
         }
      }
   }
  }
  ```

* **Success Response:**
  
  **Code:** 200 <br />
  **Header:**
  ```http
  HTTP/1.1 200 OK
  Content-Type: application/json
  ```

  **Payload: [200_response.json](200_response.json)**
  ```json
  {
   "paymentIdentification":{
      "instructionIdentification":"NOTPROVIDED",
      "transactionIdentification":"048885570000001020045"
   },
   "paymentTypeInformation":{
      "instructionPriority":"NORM",
      "serviceLevel":{
         "code":"DMCT"
      }
   },
   "amount":{
      "instructedAmount":{
         "value":10050.15,
         "currency":"CZK"
      }
   },
   "requestedExecutionDate":"2017-02-20",
   "debtorAccount":{
      "identification":{
         "iban":"CZ0708000000001019382023"
      },
      "currency":"CZK"
   },
   "creditorAccount":{
      "identification":{
         "iban":"CZ0708000000001019540081"
      },
      "currency":"CZK"
   },
   "remittanceInformation":{
      "structured":{
         "creditorReferenceInformation":{
            "reference":[
               "VS:501",
               "KS:9",
               "SS:1005"
            ]
         }
      }
   },
   "signInfo":{
      "state":"OPEN",
      "signId":"164298331754922"
   },
   "instructionStatus":"ACTC",
   "statusChangeInfo":"TM01"
  }
  ```
 
* **Error Response:**

  **Code:** 400 Bad Request <br />
  **Header:**
  ```http
  HTTP/1.1 400 Bad Request
  Content-Type: application/json
  ```
  
  **Payload: [400_response.json](400_response.json)**
  ```json
  {
   "errors":[
      {
         "error":"AC01"
      },
      {
         "error":"AM06",
         "scope":"amount.instructedAmount.value"
      },
      {
         "error":"AM03",
         "parameters":{
            "CURRENCY":"JPY",
            "CURRENCY_ALLOWED":"CZK"
         },
         "scope":"debtorAccount.currency"
      }
   ]
  }
  ```
  