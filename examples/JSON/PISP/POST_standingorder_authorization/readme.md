# PISP Step II. Standing order authorization initiation  

This is an example of designed start a specific authorization method from the selected scenario.

The input is the JSON object containing the required type of authorization method - CODE and all elements specific for that step.



* **URL**

  `/my/standingorders/{transactionIdentification}/sign/{signId}`

* **Method:**
  
  `POST`
  
*  **URL Params**

   - **transactionIdentification** - Identification of the standing order instruction
   - **signId** - Identifier of the authorization process of a particular transaction

* **Request**

  `/my/standingorders/033225570000078020091/sign/fc65339fd01994a`

  **Header:**
  ```http
  POST https://api.bank.cz/v1/my/standingorders/033225570000078020091/sign/ fc65339fd01994a
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:42:01 GMT
  User-Involved: true
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  TPP-Name: Google China
  Authorization: Bearer AbCdEf123456
  ```

  **Payload: [POST_request.json](POST_request.json)**
  
  ```json
  {
   "authorizationType":"SMS"
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
  "authorizationType": "USERAGENT_REDIRECT",
  "href": {
    "url": "http://www.bank.cz/authorization/164298331754922",
    "id": "164298331754922"
  },
  "method": "GET",
  "formData": {
    "SAMLRequest": "45sa4d4e4e4fds5f6s4df4sd6f",
    "relayState": "token"
  },
  "signInfo": {
    "state": "OPEN",
    "signId": "fc65339fd01994a"
  }
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
  
  OR
  
  **Code:** 400 Bad Request
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
      "error": "AUTH_LIMIT_EXCEEDED"
    }
   ]
  }
  ```
  