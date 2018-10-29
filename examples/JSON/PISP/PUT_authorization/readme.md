# PISP Step III. Payment authorization initiation  

An example request and response on resource that is designed for the finalization of the authorization process.



* **URL**

  `/payments/{paymentId}/sign/{signId}`

* **Method:**
  
  `PUT`
  
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
   "authorizationType":"SMS",
   "oneTimePassword":"12345"
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
   "state":"DONE",
   "pollInterval":5000
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
  