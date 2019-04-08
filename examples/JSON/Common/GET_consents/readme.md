# Common - Get list of consents 

A example to obtain a list of PSU consents.


* **URL**

  `/my/consents`

* **Method:**
  
  `GET`
  
*  **URL Params**

   not defined

* **Request**

  `/my/consents`

  **Header:**
  ```http
  GET https://api.bank.cz/v1/my/consents
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:48:01 GMT
  User-Involved: false
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
   "consentId":"b261424c-882a-4ce4-a78a-0f4d664ef5cc",
   "consents":[
    {
	     "identification": {
         "iban": "CZ0708000000001019382023",
         "other": "1019382023"
         },
	     "accesses": ["AIS.balances","AISP.transactions","PIS"],
		 "validUntil":"2018-12-24T18:00:00+01:00"
	  },
	  {
      "identification": {
         "iban": "CZ7408000000001135924571",
         "other": "1135924571"
         },
      "accesses": ["PIS"],
		 "validUntil":"2018-12-24T18:00:00+01:00"	
    }
   ] 
  }
  ```
 
* **Error Response:**

  **Code:** 401 Unauthorised
  **Header:**
  ```http
  HTTP/1.1 401 Unauthorised
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```
  
  **Payload: [401_response.json](401_response.json)**
  ```json
  {
    "errors": [
      {
        "error": "UNAUTHORISED"
      }
    ]
  }
  ```
  