# Common - Consent delete

A example for deleting the user's consent for TPP app.

* **URL**

  `/my/consents/{consentId}`

* **Method:**
  
  `DELETE`
  
*  **URL Params**

   - **consentId** - ID of the corresponding consent object as returned by an GET Consent Request 

* **Request**

  `/my/consents/b261424c-882a-4ce4-a78a-0f4d664ef5cc`

  **Header:**
  ```http
  DELETE https://api.bank.cz/v1/my/consents/b261424c-882a-4ce4-a78a-0f4d664ef5cc
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  Date: Wed, 6 Jan 2019 07:49:01 GMT
  User-Involved: false
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  TPP-Name: Google China
  ```

  **Payload:**
  
  not defined

* **Success Response:**
  
  **Code:** 204 No Content
  **Header:**
  ```http
  HTTP/1.1 204 No Content
  Date: Sun, 11 Aug 2018 20:03:00 GMT
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa94fbd51a4
  ```

  **Payload:**
  
  not defined
 
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
      "error": "NOT_FOUND"
    }
   ]
  }
  ```
  