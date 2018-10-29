# PIISP Balance Check

This is a resource for sending a query for Balance Check in a specific payment account of the account payer. The resource is not authorized directly by the account holder, through the authorization resource. Access to information must be granted by the client outside the interaction of this API before the resource is used.

* **URL**

  `/accounts/balanceCheck`

* **Method:**
  
  `POST`
  
*  **URL Params**

   not defined

* **Request**

  **Header:**
  ```http
  Content-Type: application/json
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  ```

  **Payload: [request.json](request.json)**
  ```json
  {
   "exchangeIdentification":123456,
   "card":{
      "cardHolderName":"Jan Novák",
      "maskedPAN":"1234***********6789"
   },
   "debtorAccount":{
      "identification":{
         "iban":"CZ0708000000001019382023"
      },
      "currency":"CZK"
   },
   "authenticationMethod":"NPIN",
   "merchant":{
      "identification":"471 16 129",
      "shortName":"NEOLUXOR",
      "commonName":"Neoluxor s.r.o.",
      "address":"Hlavní 5, Praha 1",
      "countryCode":"CZ",
      "merchantCategoryCode":"5192"
   },
   "transactionDetails":{
      "currency":"CZK",
      "totalAmount":10050.15
   }
  }
  ```

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
   "responseIdentification":98765,
   "exchangeIdentification":123456,
   "response":"APPR"
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
         "error":"FIELD_MISSING",
         "scope":"merchant.identification",
         "parameters":null,
         "message":null
      },
      {
         "error":"AC09",
         "scope":null,
         "parameters":null,
         "message":null
      }
   ]
  }
  ```

