# PISP Standing order status

Resource for getting status of the standing order.

* **URL**

  `/my/standingorders/{transactionIdentification}/status`

* **Method:**
  
  `GET`
  
*  **URL Params**

   - **transactionIdentification** - Identifier of standing order instruction

* **Request**

  `/my/standingorders/033225570000078020091/status`

  **Header:**
  ```http
  GET https://api.bank.cz/v1/my/standingorders/033225570000078020091/status
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:39:01 GMT
  User-Involved: true
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  TPP-Name: Google China
  Authorization: Bearer AbCdEf123456
  ```

  **Payload:**
  
  not defined

* **Success Response:**
  
  **Code:** 200 <br />
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
  "realizedPayments": [
        {
          "transactionIdentification": "someId56668746523322",
          "date": "2017-01-31T00:00:00.000+01"
        },
        {
          "transactionIdentification": " otherId198568745569",
          "date": "2017-01-31T00:00:00.000+01"
        }
     ]
  }
  ```
 
* **Error Responses:**

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
       "scope": "transactionIdentification"
     }
   ]
  }
  ```
