# PISP Generating the authorization ID 

Example for generation of the authorization ID for payment before the initiation of the authorization process. The resource is implemented by banks that do not want to generate authorization ID for payment in the response when entering a new (unauthorized) payment through the resource POST /my/payments.


* **URL**

  `/payments/{paymentId}/sign`

* **Method:**
  
  `POST`
  
*  **URL Params**

   - **paymentId** - Identification of the payment instruction 

* **Request**

  `/payments/048885570000001020045/sign`

  **Header:**
  ```http
  Content-Type: application/json
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  Authorization: dd0964e6-b62e-41c1-bdf2-1fbb053f0148
  ```

  **Payload:**
  
  not defined

* **Success Response:**
  
  **Code:** 201 OK <br />
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
         "error":"TRANSACTION_MISSING"
      }
   ]
  }
  ```
  