# PISP List of authorizations

An example for resource to obtain a list of authorization requests for authenticated user and TPP.

* **URL**

  `/my/authorizations`

* **Method:**
  
  `GET`
  
*  **URL Params**

   - **paymentId** - Identification of the payment instruction
   - **signId** - Identifier of the authorization process of a particular transaction

* **Request**

  `/my/authorizations`

  **Header:**
  ```http
  GET https://api.bank.cz/v1/my/authorizations
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:49:01 GMT
  User-Involved: false
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  TPP-Name: Google China
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
  "authorizations": [
    {
      "type": "payment",
      "transactionIdentification": "048885570000001020045",
      "validUntil": "2018-12-24T18:00:00+01:00",
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
    },
    {
      "type": "standingorder",
      "transactionIdentification": "71325680000009512001",
      "validUntil": "2018-11-29T10:05:00+01:00",
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
        "signId": "164298331548128"
      }
    }
  ]
  }
 ```
 
* **Error Response:**

  **Code:** 401 Unauthorised
  **Header:**
  ```http
  HTTP/1.1 401 Unauthorised
  Content-Type: application/json
  ```
  
  **Payload: [401_response.json](401_response.json)**
  ```json
  {
   "errors": [
    {
      "error": "UNAUTHORISED"
    }
   ]
  }
  ```
  