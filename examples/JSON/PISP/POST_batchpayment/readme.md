# PISP New batch payment

Examples of requests a responses for resource to POST new batch payment.

* **URL**

  `/my/batchpayments`

* **Method:**
  
  `POST`
  
*  **URL Params**

   not defined

* **Request**

  **Header:**
  ```http
  POST https://api.bank.cz/v1/my/batchpayments
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:44:01 GMT
  User-Involved: true
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  TPP-Name: Google China
  Authorization: Bearer AbCdEf123456
  ```
  #### POST new batch payment
  **Payload: [POST_request.json](POST_request.json)**
  ```json
  {
  "exchangeIdentification": "658576010faf0a23dc",
  "instructionName": "Some heap of confusion for my bank ...",
  "payments": [
      {
        "signId": "SomeID-1285673519924"
      },
      {
        "signId": "SomeID-1285673519925"
      },
      {
        "signId": "SomeID-1285673519929"
      }
    ]
  }
  ```
 
 
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
   "transactionIdentification": "033225570000078020091",
   "signInfo": {
      "state": "OPEN",
      "signId": "164298331754922"
     },
   "instructionStatus": "ACTC"
  }
  ```
 
* **Error Response:**

  **Code:** 400 Bad Request
  **Header:**
  ```http
  HTTP/1.1 400 Bad Request
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```
  
  **Payload: [400_response.json](400_response.json)**
  ```json
  {
  "errors": [
    {
      "error": " ACC_DIFFERENT"
    },
    {
      "error": "INCORRECT_SIGNID",
      "parameters": {
          "signID": " SomeID-1285673519924",
          "error": "State CLOSED"
        }
      }
    ]
  }
  ```
  