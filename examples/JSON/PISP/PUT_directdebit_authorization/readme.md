# PISP Step III. Direct debit consent authorization initiation  

An example request and response on resource that is designed for the finalization of the authorization process.


* **URL**

  `/my/accounts/{id}/directdebits/{mandateIdentification}/sign/{signId}`

* **Method:**
  
  `PUT`
  
*  **URL Params**

  - **mandateIdentification** - Identifier of domestic direct debit instruction
  - **id** - API payment account identifier from the response to a query on the list of accounts
  - **signId** - Identifier of the authorization process of a particular transaction

* **Request**

  `/my/accounts/01fc4b99-359c-429e-8436-53ff14c082e9/directdebits/a15bbb80-cbc6-475f-8483-3d21788e4eaf/sign/164298331754922`

  **Header:**
  ```http
  PUT  https://api.bank.cz/v1/my/accounts/01fc4b99-359c-429e-8436-53ff14c082e9/directdebits/a15bbb80-cbc6-475f-8483-3d21788e4eaf/sign/164298331754922
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:43:01 GMT
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
  