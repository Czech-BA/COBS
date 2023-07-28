# PISP Status of entered/initiated batch payment 

A example to display the batch payment status. It is an entered batch payment which has not been authorised by the client yet or has already been authorised, and PISP requires its status (GET).
The resource returns the information only for transactions entered through a specific provider. Information on the provider is taken over from the certificate and licence information.


* **URL**

  `/my/batchpayments/{transactionIdentification}/status`

* **Method:**
  
  `GET`
  
*  **URL Params**

   - **paymentId** - Identification of the payment instruction 

* **Request**

  `/my/batchpayments/eb39d1e4-b718-4011-9fe2-35f025cc0335/status`

  **Header:**
  ```http
  GET https://api.bank.cz/v1/my/batchpayments/eb39d1e4-b718-4011-9fe2-35f025cc0335/status
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:46:01 GMT
  User-Involved: false
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  TPP-Name: Google China
  Authorization: Bearer AbCdEf123456
  ```

  **Payload:**
  
  not defined

* **Success Response:**
  
  **Code:** 200
  **Header:**
  ```http
  HTTP/1.1 200 OK
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```

  **Payload: [200_response.json](200_response.json)**
  ```json
  {
    "instructionStatus": "ACSP",
    "payments": [
        {
          "transactionIdentification": "someId56668746523322",
          "signInfo": {
            "state": "OPEN",
            "signID": "SomeID-1285673519924"
          }
        },
        {
          "transactionIdentification": "someId56668746523322",
          "signInfo": {
            "state": "OPEN",
            "signID": "SomeID-1285673519925"
          }
        },
        {
          "transactionIdentification": "someId56668746523322",
          "signInfo": {
            "state": "OPEN",
            "signID": "SomeID-1285673519929"
          }
        }
     ]
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
   "errors":[
      {
         "error":"TRANSACTION_MISSING"
      }
   ]
  }
  ```
  