# PISP Step I. Standing order authorization detail  

An example for optional resource to identify the status and scenarios of standing order authorization.

Part of the response is also the set of scenarios that may contain one or more authorisation scenarios. If more scenarios are returned, it is up to the client to select what scenario to choose. The power of verifying each scenario should correspond to the power of other scenarios, or the scenarios are mutually replaceable.


* **URL**

  `/my/standingorders/{transactionIdentification}/sign/{signId}`

* **Method:**
  
  `GET`
  
*  **URL Params**

   - **transactionIdentification** - Identification of the standing order instruction
   - **signId** - Identifier of the authorization process of a particular transaction

* **Request**

  `/my/standingorders/033225570000078020091/sign/fc65339fd01994a`

  **Header:**
  ```http
  GET https://api.bank.cz/v1/my/standingorders/033225570000078020091/sign/ fc65339fd01994a
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:42:01 GMT
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
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  TPP-Name: Google China
  Authorization: Bearer AbCdEf123456
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
    "signId": "fc65339fd01994a"
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
 