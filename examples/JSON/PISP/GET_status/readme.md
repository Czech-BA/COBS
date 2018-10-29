# PISP Status of entered/initiated payment 

A example to display the payment status. It is an entered payment which has not been authorised by the client yet or has already been authorised, and PISP requires its status (GET).
The resource returns the information only for transactions entered through a specific provider. Information on the provider is taken over from the certificate and licence information.


* **URL**

  `/payments/{paymentId}/status`

* **Method:**
  
  `GET`
  
*  **URL Params**

   - **paymentId** - Identification of the payment instruction 

* **Request**

  `/payments/048885570000001020045/status`

  **Header:**
  ```http
  Content-Type: application/json
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  Authorization: dd0964e6-b62e-41c1-bdf2-1fbb053f0148
  ```

  **Payload:**
  
  not defined

* **Success Response:**
  
  **Code:** 200 <br />
  **Header:**
  ```http
  HTTP/1.1 200 OK
  Content-Type: application/json
  ```

  **Payload: [200_response.json](200_response.json)**
  ```json
  {
   "instructionStatus":"ACTC"
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
  