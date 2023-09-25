# AISP List of client's standing orders 

Paged list of client's standing orders. Each standing order contains a unique id usable for URI referencing, e.g. for the standing order detail.

* **URL**

  `/my/standingorders{?size,page,sort,order}`

* **Method:**
  
  `GET`
  
*  **URL Params**

   - **size** - Paging. Number of entries per page
   - **page** - Paging. Required page. + Default: 0
   - **sort** - A list of fields separated by comma for sorting, arranged according to the meaning
   - **order** - A list of arrangement methods (ASC, DESC) separated by comma. The order corresponds to the order of fields in the sort parameter.


* **Request**

  `/my/standingorders?size=25&page=0`

  **Header:**
  ```http
  GET https://api.bank.cz/v1/my/standingorders?size=25&page=0
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:36:01 GMT
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
   "pageNumber":0,
   "pageCount":1,
   "pageSize":25,
   "nextPage":0,
   "standingOrders":[
      {
         "standingOrderIdentification":{
            "instructionIdentification":"SomeID-1285673519924",
            "transactionIdentification":"033225570000078020091"
         },
         "amount":{
            "instructedAmount":{
               "value":1500.00,
               "currency":"CZK"
            }
         },
         "standingOrder":{
            "alias":"Payments for lunch - kindergarten Michal",
            "execution":{
               "interval":"MONTHLY",
               "intervalDue":"25",
               "mode":"MAX_AMOUNT_EXCEEDED",
               "modeDue":"DUE_OR_BEFORE_DAY_OF_MONTH"
            }
         },
         "debtorAccount":{
            "id":"0f45a992....",
            "identification":{
               "iban":"CZ7508000000002108589434"
            },
            "currency":"CZK"
         }
      }
   ]
  }
  ```
 
* **Error Responses:**

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
   "errors": [
     {
       "error": "PAGE_NOT_FOUND"
     }
   ]
  }
  ```
  

