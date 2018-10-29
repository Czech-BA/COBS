# PISP Deleting the entered unauthorised payment  

A example for deleting the unauthorised payment. Deleting is not conditioned by the transaction authorisation as it is not a payment received by the bank.


* **URL**

  `/payments/{paymentId}`

* **Method:**
  
  `DELETE`
  
*  **URL Params**

   - **paymentId** - Identification of the payment instruction 

* **Request**

  `/payments/048885570000001020045`

  **Header:**
  ```http
  Content-Type: application/json
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  Authorization: dd0964e6-b62e-41c1-bdf2-1fbb053f0148
  ```

  **Payload:**
  
  not defined

* **Success Response:**
  
  **Code:** 201 Created <br />
  **Header:**
  ```http
  HTTP/1.1 201 Created
  Content-Type: application/json
  ```

  **Payload:**
  
  not defined
 
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
  