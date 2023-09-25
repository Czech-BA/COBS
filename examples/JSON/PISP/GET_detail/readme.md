# PISP Detail of entered/initiated payment  

A example to display the information on the entered payment. It is payment which is received for authorisation, but has not been authorised by the client yet. The resource only works with transactions entered through a specific provider. Information on the provider is taken from the certificate or information on licence.


* **URL**

  `/my/payments/{paymentId}`

* **Method:**
  
  `GET`
  
*  **URL Params**

   - **paymentId** - Identification of the payment instruction 

* **Request**

  `/my/payments/048885570000001020045`

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
   "paymentIdentification":{
      "instructionIdentification":"NOTPROVIDED",
      "transactionIdentification":"048885570000001020045"
   },
   "paymentTypeInformation":{
      "instructionPriority":"NORM",
      "serviceLevel":{
         "code":"DMCT"
      }
   },
   "amount":{
      "instructedAmount":{
         "value":10050.15,
         "currency":"CZK"
      }
   },
   "requestedExecutionDate":"2017-02-20",
   "debtorAccount":{
      "identification":{
         "iban":"CZ0708000000001019382023"
      },
      "currency":"CZK"
   },
   "creditorAccount":{
      "identification":{
         "iban":"CZ0708000000001019540081"
      },
      "currency":"CZK"
   },
   "remittanceInformation":{
      "structured":{
         "creditorReferenceInformation":{
            "reference":[
               "VS:501",
               "KS:9",
               "SS:1005"
            ]
         }
      }
   },
   "signInfo":{
      "state":"OPEN",
      "signId":"164298331754922"
   },
   "instructionStatus":"ACTC",
   "statusChangeInfo":"TM01"
  }
  ```
 
* **Error Response:**

  **Code:** 404 Not Found <br />
  **Header:**
  ```http
  HTTP/1.1 404 Not Found
  Content-Type: application/json
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
  