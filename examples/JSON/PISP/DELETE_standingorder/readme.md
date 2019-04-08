# PISP Standing order delete 

A example for deleting the unauthorised standing order.


* **URL**

  `/my/standingorders/{transactionIdentification}`

* **Method:**
  
  `DELETE`
  
*  **URL Params**

   - **paymentId** - Identification of the payment instruction 

* **Request**

  `/my/standingorders/033225570000078020091`

  **Header:**
  ```http
  DELETE https://api.bank.cz/v1/my/standingorders/033225570000078020091
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:41:01 GMT
  User-Involved: true
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  TPP-Name: Google China
  Authorization: Bearer AbCdEf123456
  ```

  **Payload:**
  
  not defined

* **Success Response:**
  
  **Code:** 201 Created <br />
  **Header:**
  ```http
  HTTP/1.1 201 Created
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```

  **Payload:**
  
  not defined
 
* **Error Response:**

  **Code:** 404 Not Found <br />
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
      "error": "TRANSACTION_MISSING"
    }
  ]
  }
  ```
  