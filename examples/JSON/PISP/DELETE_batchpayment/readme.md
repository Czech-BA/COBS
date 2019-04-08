# PISP Deleting the entered unauthorised batch payment  

A example for deleting the unauthorised batch payment. Deleting is not conditioned by the transaction authorisation as it is not a payment received by the bank.


* **URL**

  `/my/batchpayments/{transactionIdentification}{?allInstructions}`

* **Method:**
  
  `DELETE`
  
*  **URL Params**

   - **transactionIdentification** - Identification of the batch payment instruction
   - **allInstructions** - If this parameter is set to true, it is required to delete this bulk payment, but also all individual bulk instructions.

* **Request**

  `/my/batchpayments/033225570000078020091?allInstructions=true`

  **Header:**
  ```http
  DELETE  https://api.bank.cz/v1/my/batchpayments/033225570000078020091?allInstructions=true
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:45:01 GMT
  User-Involved: true
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  TPP-Name: Google China
  Authorization: Bearer AbCdEf123456
  ```

  **Payload:**
  
  not defined

* **Success Response:**
  
  **Code:** 201 Created
  **Header:**
  ```http
  HTTP/1.1 201 Created
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```

  **Payload:**
  
  not defined
 
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
   "errors":[
      {
         "error":"TRANSACTION_MISSING"
      }
   ]
  }
  ```
  