# PISP Step II. Payment authorization initiation  

This is an example of designed start a specific authorization method from the selected scenario.

The input is the JSON object containing the required type of authorization method - CODE and all elements specific for that step.



* **URL**

  `/payments/{paymentId}/sign/{signId}`

* **Method:**
  
  `POST`
  
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
  
  ```json
  {
   "authorizationType":"SMS"
  }
  ```

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
   "authorizationType":"USERAGENT_REDIRECT",
   "href":{
      "url":"http://www.bank.cz/authorization/164298331754922",
      "id":"164298331754922"
   },
   "method":"GET",
   "formData":{
      "SAMLRequest":"45sa4d4e4e4fds5f6s4df4sd6f",
      "relayState":"token"
   },
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
  