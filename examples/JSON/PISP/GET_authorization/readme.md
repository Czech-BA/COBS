# PISP Step I. Payment authorization detail  

An example for optional resource to identify the status and scenarios of payment authorization.

Part of the response is also the set of scenarios that may contain one or more authorisation scenarios. If more scenarios are returned, it is up to the client to select what scenario to choose. The power of verifying each scenario should correspond to the power of other scenarios, or the scenarios are mutually replaceable.


* **URL**

  `/payments/{paymentId}/sign/{signId}`

* **Method:**
  
  `GET`
  
*  **URL Params**

   - **paymentId** - Identification of the payment instruction
   - **signId** - Identifier of the authorization process of a particular transaction

* **Request**

  `/payments/048885570000001020045/sign/164298331754922`

  **Header:**
  ```http
  Content-Type: application/json
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  Authorization: dd0964e6-b62e-41c1-bdf2-1fbb053f0148
  ```

  **Payload:**
  
  not defined

* **Success Response:**
  
  **Code:** 200 OK <br />
  **Header:**
  ```http
  HTTP/1.1 200 OK
  Content-Type: application/json
  ```

  **Payload: [200_response.json](200_response.json)**
  ```json
  {
   "scenarios":[
      [
         "CODE of The One of the methods ..."
      ],
      [
         "CODE of The second method ..."
      ]
   ],
   "signInfo":{
      "state":"OPEN",
      "signId":"164298331754922"
   }
  }
  ```
 
* **Error Response:**

  **Code:** 404 Not Found <br />
  **Header:**
  ```http
  HTTP/1.1 404 Not Found
  Content-Type: application/json
  ```
  
  **Payload: [404_response.json](404_response.json)**
  ```json
  {
   "errors":[
      {
         "error":"ID_NOT_FOUND",
         "scope":"signId"
      },
      {
         "error":"ID_NOT_FOUND",
         "scope":"paymentId"
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
  ```
  
  **Payload: [400_response.json](400_response.json)**
  ```json
  {
   "errors":[
      {
         "error":"AUTH_LIMIT_EXCEEDED"
      }
   ]
  }
  ```
  