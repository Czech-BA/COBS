# AISP Account Awaiting Transactions

## Paged list of awaiting transactions of a selected client account.

* **URL**

  `/my/accounts/{id}/payments/awaiting{?size,page,sort,order}`

* **Method:**
  
  `GET`
  
*  **URL Params**

   - **size** - Paging. Number of entries per page
   - **page** - Paging. Required page. + Default: 0
   - **sort** - A list of fields separated by comma for sorting, arranged according to the meaning
   - **order** - A list of arrangement methods (ASC, DESC) separated by comma. The order corresponds to the order of fields in the sort parameter.


* **Request**

  `/my/payments/awaiting`

  **Header:**
  ```http
    GET https://api.bank.cz/v1/my/accounts/D2C8C1DCC51A3738538A40A4863CA288E0225E52/payments/awaiting
    Content-Type: application/json
    X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa9874d5ac2
    Date: Wed, 1 Jan 2020 08:13:01 GMT
    User-Involved: false
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
   "pageNumber": 0,
   "pageCount": 1,
   "nextPage": 0,
   "pageSize": 10,
   "totalCount": 1,
   "payments": [
      {
         "paymentIdentification": {
            "instructionIdentification": "None",
            "transactionIdentification": "CP151255555"
         },
         "paymentTypeInformation": {
            "serviceLevel": {
               "code": "DMCT"
            }
         },
         "amount": {
            "instructedAmount": {
               "value": 3000,
               "currency": "CZK"
            }
         },
         "requestedExecutionDate": "2019-12-22",
         "debtorAccount": {
            "id": "D2C8C1DCC51A3738538A40A4863CA288E0225E52",
            "identification": {
               "iban": "CZ8858000000001234567899",
               "other": {
                  "identification": "1234567899"
               }
            }
         },
         "creditorAgent": {
            "financialInstitutionIdentification": {
               "clearingSystemMemberIdentification": {
                  "clearingSystemIdentification": {
                     "code": "0100"
                  }
               }
            }
         },
         "creditorAccount": {
            "identification": {
               "other": {
                  "identification": "000019-2784000277"
               }
            }
         },
         "remittanceInformation": {
            "structured": {
               "creditorReferenceInformation": {
                  "reference": [
                     "VS:20200312"
                  ]
               }
            }
         },
         "awaitingStatus": "FUTURE"
      }
     ]
  }
  ```
 
* **Error Responses:**

  **Code:** 404 Not Found <br />
  **Header:**
  ```http
  HTTP/1.1 404 Not Found
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```
  
  **Payload: [404_response.json](404_response.json)**
  ```json
  {
   "errors":[
      {
         "error":"ID_NOT_FOUND"
      }
   ]
  }
  ```
  
  OR
  
  **Code:** 400 Bad Request <br />
  **Header:**
  ```http
  HTTP/1.1 400 Bad Request
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```
  
  **Payload: [400_response.json](400_response.json)**
  ```json
  {
   "errors":[
      {
         "error":"AM03",
         "scope":"currency"
      },
      {
         "error":"DT01",
         "parameters":{
            "DATE":"DATE_TO_OLD"
         },
         "scope":"fromDate"
      },
      {
         "error":"DT01",
         "parameters":{
            "DATE":"DATE_IN_FUTURE"
         },
         "scope":"toDate"
      }
   ]
  }
  ```

## Paged list of all awaiting transactions for authenticated user.

* **URL**

  `/my/payments/awaiting{?size,page,sort,order}`

* **Method:**

  `GET`

*  **URL Params**

  - **size** - Paging. Number of entries per page
  - **page** - Paging. Required page. + Default: 0
  - **sort** - A list of fields separated by comma for sorting, arranged according to the meaning
  - **order** - A list of arrangement methods (ASC, DESC) separated by comma. The order corresponds to the order of fields in the sort parameter.


* **Request**

  `/my/payments/awaiting`

  **Header:**
  ```http
    GET https://api.bank.cz/v1/my/payments/awaiting
    Content-Type: application/json
    X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa9874d5ac2
    Date: Wed, 1 Jan 2020 08:13:01 GMT
    User-Involved: false
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
   "pageNumber": 0,
   "pageCount": 1,
   "nextPage": 0,
   "pageSize": 10,
   "totalCount": 1,
   "payments": [
      {
         "paymentIdentification": {
            "instructionIdentification": "None",
            "transactionIdentification": "CP151255555"
         },
         "paymentTypeInformation": {
            "serviceLevel": {
               "code": "DMCT"
            }
         },
         "amount": {
            "instructedAmount": {
               "value": 3000,
               "currency": "CZK"
            }
         },
         "requestedExecutionDate": "2019-12-22",
         "debtorAccount": {
            "id": "D2C8C1DCC51A3738538A40A4863CA288E0225E52",
            "identification": {
               "iban": "CZ8858000000001234567899",
               "other": {
                  "identification": "1234567899"
               }
            }
         },
         "creditorAgent": {
            "financialInstitutionIdentification": {
               "clearingSystemMemberIdentification": {
                  "clearingSystemIdentification": {
                     "code": "0100"
                  }
               }
            }
         },
         "creditorAccount": {
            "identification": {
               "other": {
                  "identification": "000019-2784000277"
               }
            }
         },
         "remittanceInformation": {
            "structured": {
               "creditorReferenceInformation": {
                  "reference": [
                     "VS:20200312"
                  ]
               }
            }
         },
         "awaitingStatus": "FUTURE"
      }
     ]
  }
  ```

* **Error Responses:**

  **Code:** 404 Not Found <br />
  **Header:**
  ```http
  HTTP/1.1 404 Not Found
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```

  **Payload: [404_response.json](404_response.json)**
  ```json
  {
   "errors":[
      {
         "error":"ID_NOT_FOUND"
      }
   ]
  }
  ```

  OR

  **Code:** 400 Bad Request <br />
  **Header:**
  ```http
  HTTP/1.1 400 Bad Request
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```

  **Payload: [400_response.json](400_response.json)**
  ```json
  {
   "errors":[
      {
         "error":"AM03",
         "scope":"currency"
      },
      {
         "error":"DT01",
         "parameters":{
            "DATE":"DATE_TO_OLD"
         },
         "scope":"fromDate"
      },
      {
         "error":"DT01",
         "parameters":{
            "DATE":"DATE_IN_FUTURE"
         },
         "scope":"toDate"
      }
   ]
  }
  ```
