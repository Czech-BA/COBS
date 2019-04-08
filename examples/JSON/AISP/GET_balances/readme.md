# AISP Account Balances

The balance of the specific client account according to the reference id account.

* **URL**

  `/my/accounts/{id}/balance{?currency}`

* **Method:**
  
  `GET`
  
*  **URL Params**

   - **id** - API payment account identifier from the response to a query on the list of accounts.
   - **currency** - Required account currency for multi-currency accounts.Not used in example 

* **Request**

  `/my/accounts/D2C8C1DCC51A3738538A40A4863CA288E0225E52/balance`

  **Header:**
  ```http
  GET https://api.bank.cz/v1/my/accounts/D2C8C1DCC51A3738538A40A4863CA288E0225E52/balance
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:22:01 GMT
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
   "balances":[
      {
         "type":{
            "codeOrProprietary":{
               "code":"PRCD"
            }
         },
         "creditLine":{
            "included":true,
            "amount":{
               "value":10000.00,
               "currency":"CZK"
            }
         },
         "amount":{
            "value":4520.15,
            "currency":"CZK"
         },
         "creditDebitIndicator":"DBIT",
         "date":{
            "dateTime":"2017-02-17T12:32:41.0Z"
         }
      }
   ]
  }
  ```
 
* **Error Responses:**

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
   "errors":[
      {
         "error":"ID_NOT_FOUND"
      }
   ]
  }
  ```
  
  OR
  
  **Code:** 400 Bad Request <br />
  **Header:**
  ```http
  HTTP/1.1 400 Bad Request
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```
  
  **Payload: [400_response.json](400_response.json)**
  ```json
  {
   "errors":[
      {
         "error":"AM03",
         "scope":"currency"
      }
   ]
  }
  ```
  

