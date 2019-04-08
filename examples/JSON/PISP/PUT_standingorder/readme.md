# PISP Existing standing order change

An example request and response on resource for change of standing order specification.


* **URL**

  `/my/standingorders/{transactionIdentification}`

* **Method:**
  
  `PUT`
  
*  **URL Params**

   - **transactionIdentification** - Identification of the payment instruction

* **Request**

  `/my/standingorders/033225570000078020091`

  **Header:**
  ```http
  PUT https://api.bank.cz/v1/my/standingorders/033225570000078020091
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:41:01 GMT
  User-Involved: true
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  TPP-Name: Google China
  Authorization: Bearer AbCdEf123456
  ```

  **Payload: [PUT_request.json](PUT_request.json)**
  
  ```json
  {
    "standingOrderIdentification": {
    	    "instructionIdentification": "SomeID-1285673519924"
    },
    "amount": {
        "instructedAmount": {
            "value": 1650.00,
         "currency": "CZK"
        }
    },
    "requestedExecutionDate": "2018-09-08",
    "standingOrder": {  
  	    "alias": "New payments for lunch - kindergarten Michal",
        "execution": {
         "interval": "MONTHLY",
      	   "intervalDue": "25",
      	   "mode": "MAX_AMOUNT_EXCEEDED",
      	   "modeDue": "DUE_OR_BEFORE_DAY_OF_MONTH"
        },
        "exceptions": {
        "stoppages": ["JULY","AUGUST"]
        },
        "validity": {
            "lastExecutionDate": null,
      	   "maxAmount": {
                 "value": 45000.00,
              "currency": "CZK"
             }
        }
    },
    "debtorAccount": {
        "identification": {
         "iban": "CZ7508000000002108589434"
        },
      "currency": "CZK"
    },
  	"creditorAccount": {
        "identification": {
         "iban": "CZ6330300000000000000123"
        },
     "currency": "CZK"
    },
    "remittanceInformation": {
        "unstructured": "/VS/7418529630/SS/1234567890"
    }
  }
  ```

* **Success Response:**
  
  **Code:** 200 OK
  **Header:**
  ```http
  HTTP/1.1 200 OK
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```

  **Payload: [200_response.json](200_response.json)**
  ```json
  {
  "standingOrderIdentification": {
      "instructionIdentification": "SomeID-1285673519924",
     "transactionIdentification": "033225570000078020091"
     },
  "paymentTypeInformation": {
      "serviceLevel": {
          "code": "DMCT"
     },
  "amount": {
      "instructedAmount": {
          "value": 1650.00,
          "currency": "CZK"
         }
     },
  "requestedExecutionDate": "2018-09-08",
  	 "standingOrder": {  
  	     "alias": "New payments for lunch - kindergarten Michal",
         "execution": {
          "interval": "MONTHLY",
      	    "intervalDue": "25",
      	    "mode": "MAX_AMOUNT_EXCEEDED",
      	    "modeDue": "DUE_OR_BEFORE_DAY_OF_MONTH"
         },
         "exceptions": {
          "stoppages": ["JULY","AUGUST"]
         },
         "validity": {
             "lastExecutionDate": null,
      	    "maxAmount": {
                 "value": 45000.00,
              "currency": "CZK"
             }
         }
     },
  "debtorAccount": {
      "identification": {
          "iban": "CZ7508000000002108589434"
         },
      "currency": "CZK"
     },
  "creditorAccount": {
      "identification": {
          "iban": "CZ6330300000000000000123"
         },
      "currency": "CZK"
     },
  "remittanceInformation": {
      "unstructured": "/VS/7418529630/SS/1234567890"
     },
  "signInfo": {
      "state": "OPEN",
      "signId": "fc65339fd01994ac2a657fa97cac37d4"
     },
  "instructionStatus": "ACTC"
  }
  ```
 
* **Error Response:**

  **Code:** 400 Bad Request
  **Header:**
  ```http
  HTTP/1.1 404 Not Found
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```
  
  **Payload: [400_response.json](400_response.json)**
  ```json
  {
    "errors": [
    {
      "error": "AC02"
    },
    {
      "error": " DT01",
      "scope": "requestedExecutionDate"
    },
    {
      "error": "AM03",
      "parameters": {
        "CURRENCY": "JPY",
        "CURRENCY_ALLOWED": "CZK"
      },
      "scope": "debtorAccount.currency"
    }
    ]
  }
  ```
  
  or

  **Code:** 404 Not Found
  **Header:**
  ```http
  HTTP/1.1 404 Not Found
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```
  
  **Payload: [404_response.json](404_response.json)**
  ```json
  {
   "errors": [
    {
      "error": "TRANSACTION_MISSING"
   ]
  }
  ```
  