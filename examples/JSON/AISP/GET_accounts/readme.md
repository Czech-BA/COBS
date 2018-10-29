# AISP Accounts List

Paged list of client accounts. Each account contains a unique id usable for URI referencing, e.g. for the account detail

* **URL**

  `/my/accounts`

* **Method:**
  
  `GET`
  
*  **URL Params**

   not defined

* **Request**

  **Header:**
  ```http
  Content-Type: application/json
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  Authorization: dd0964e6-b62e-41c1-bdf2-1fbb053f0148
  ```

  **Payload:**
  
  not defined

* **Success Response:**
  
  **Code:** 200 <br />
  **Header:**
  ```http
  HTTP/1.1 200 OK
  Content-Type: application/json
  ```

  **Payload: [200_response.json](200_response.json)**
  ```json
  {
   "pageNumber":0,
   "pageCount":2,
   "pageSize":100,
   "nextPage":1,
   "accounts":[
      {
         "id":"D2C8C1DCC51A3738538A40A4863CA288E0225E52",
         "identification":{
            "iban":"CZ0708000000001019382023",
            "other":"1019382023"
         },
         "currency":"CZK",
         "servicer":{
            "bankCode":"0800",
            "countryCode":"CZ",
            "bic":"GIBACZPX"
         },
         "nameI18N":"Muj hlavni osobni ucet",
         "productI18N":"Osobní účet ČS"
      }
   ]
  }
  ```
 
* **Error Response:**

  **Code:** 400 Bad Request <br />
  **Header:**
  ```http
  HTTP/1.1 400 Bad Request
  Content-Type: application/json
  ```
  
  **Payload: [400_response.json](400_response.json)**
  ```json
  {
   "errors":[
      {
         "error":"PAGE_NOT_FOUND"
      },
      {
         "error":"PARAMETER_INVALID",
         "scope":"sort"
      }
   ]
  }
  ```

