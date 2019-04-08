# PISP Step I. Batch payment authorization detail  

An example for optional resource to identify the status and scenarios of batch payment authorization.

Part of the response is also the set of scenarios that may contain one or more authorisation scenarios. If more scenarios are returned, it is up to the client to select what scenario to choose. The power of verifying each scenario should correspond to the power of other scenarios, or the scenarios are mutually replaceable.


* **URL**

  `/my/batchpayments/{transactionIdentification}/sign/{signId}`

* **Method:**
  
  `GET`
  
*  **URL Params**

   - **transactionIdentification** - Identification of the batch payment instruction
   - **signId** - Identifier of the authorization process of a particular transaction

* **Request**

  `/my/batchpayments/eb39d1e4-b718-4011-9fe235f025cc0335/sign/164298331754922`

  **Header:**
  ```http
  GET https://api.bank.cz/v1/my/batchpayments/eb39d1e4-b718-4011-9fe235f025cc0335/sign/164298331754922
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:46:01 GMT
  User-Involved: true
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  TPP-Name: Google China
  Authorization: Bearer AbCdEf123456
  ```

  **Payload:**
  
  not defined

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
   "scenarios": [
    [
      "CODE of The One of the methods ..."
    ],
    [
      "CODE of The second method ..."
    ]
   ],
   "signInfo": {
    "state": "OPEN",
    "signId": "164298331754922"
   }
  }
  ```
 
* **Error Response:**

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
        "error": "ID_NOT_FOUND",
        "scope": "signId"
      },
      {
        "error": "ID_NOT_FOUND",
        "scope": "paymentId"
      }
    ]
  } 
  ```
 