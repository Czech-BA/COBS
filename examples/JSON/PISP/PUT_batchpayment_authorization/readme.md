# PISP Step III. Batch payment authorization initiation  

An example request and response on resource that is designed for the finalization of the authorization process.


* **URL**

  `/my/batchpayments/{transactionIdentification}/sign/{signId}`

* **Method:**
  
  `PUT`
  
*  **URL Params**

   - **transactionIdentification** - Identification of the batch payment instruction
   - **signId** - Identifier of the authorization process of a particular transaction

* **Request**

  `/my/batchpayments/eb39d1e4-b718-4011-9fe235f025cc0335/sign/164298331754922`

  **Header:**
  ```http
  PUT https://api.bank.cz/v1/my/batchpayments/eb39d1e4-b718-4011-9fe235f025cc0335/sign/164298331754922
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:47:01 GMT
  User-Involved: true
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  TPP-Name: Google China
  Authorization: Bearer AbCdEf123456
  ```

  **Payload: [PUT_request.json](PUT_request.json)**
  
  ```json
  {
   "authorizationType": "SMS",
   "oneTimePassword": "12345"
  } 
  ```

* **Success Response:**
  
  **Code:** 200 OK
  **Header:**
  ```http
  HTTP/1.1 200 OK
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```

  **Payload: [200_response.json](200_response.json)**
  ```json
  {
    "state": "DONE",
    "pollInterval": 5000
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
   "errors": [
    {
      "error": "ID_NOT_FOUND"
    }
   ]
  }
  ```
  