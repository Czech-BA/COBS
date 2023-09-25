# AISP Standing order detail

Resource for get detail about the standing order

* **URL**

  `/my/standingorders/{transactionIdentification}`

* **Method:**
  
  `GET`
  
* **URL Params**

   - **transactionIdentification** - Identifier of standing order instruction

* **Request**

  `/my/standingorders/033225570000078020091`

  **Header:**
  ```http
  GET https://api.bank.cz/v1/my/standingorders/033225570000078020091
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:39:01 GMT
  User-Involved: true
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  TPP-Name: Google China
  Authorization: Bearer AbCdEf123456
  ```

  **Payload:**
  
  not defined

* **Success Response:**
  
  **Code:** 200 <br />
  **Header:**
  ```http
  HTTP/1.1 200 OK
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```

  **Payload: [200_response.json](200_response.json)**
  ```json
  {
   "standingOrderIdentification":{
      "instructionIdentification":"SomeID-1285673519924",
      "transactionIdentification":"033225570000078020091"
   },
   "paymentTypeInformation":{
      "serviceLevel":{
         "code":"DMCT"
      },
      "amount":{
         "instructedAmount":{
            "value":1500.00,
            "currency":"CZK"
         }
      },
      "requestedExecutionDate":"2018-09-08",
      "standingOrder":{
         "alias":"Payments for lunch - kindergarten Michal",
         "execution":{
            "interval":"MONTHLY",
            "intervalDue":"25",
            "mode":"MAX_AMOUNT_EXCEEDED",
            "modeDue":"DUE_OR_BEFORE_DAY_OF_MONTH"
         },
         "exceptions":{
            "stoppages":[
               "JULY",
               "AUGUST"
            ],
            "breaks":[
               {
                  "validFromDate":"2018-11-01",
                  "validToDate":"2019-01-30"
               },
               {
                  "validFromDate":"2019-05-01",
                  "validToDate":"2019-06-15"
               }
            ]
         },
         "validity":{
            "lastExecutionDate":null,
            "maxAmount":{
               "value":89000.00,
               "currency":"CZK"
            }
         }
      },
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
      },
      "signInfo":{
         "state":"OPEN",
         "signId":"164298331754922"
      },
      "instructionStatus":"ACTC"
   }
  }
  ```
 
* **Error Responses:**

  **Code:** 404 Not Found
  **Header:**
  ```
  HTTP/1.1 404 Not Found
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```
  
  **Payload: [404_response.json](404_response.json)**
  ```json
  {
   "errors": [
     {
       "error": "ID_NOT_FOUND",
       "scope": "transactionIdentification"
     }
   ]
  }
  ```
