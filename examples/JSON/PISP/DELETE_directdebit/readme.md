# PISP Delete of entered/initiated direct debit consent

Resource for delete of domestic direct debit Consent specification.

Deleting of an authorised domestic direct debit Consent must be followed by the authorization process which is identical with the new domestic direct debit Consent authorisation process.


* **URL**

  `/my/accounts/{id}/directdebits/{mandateIdentification}`

* **Method:**

  `DELETE`

*  **URL Params**

    - **mandateIdentification** - Identifier of domestic direct debit instruction
    - **id** - API payment account identifier from the response to a query on the list of accounts

* **Request**

  `/my/accounts/01fc4b99-359c-429e-8436-53ff14c082e9/directdebits/a15bbb80-cbc6-475f-8483-3d21788e4eaf`

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
  "directDebitIdentification": {
      "mandateIdentification": "a15bbb80-cbc6-475f-8483-3d21788e4eaf",
      "mandateRequestIdentification": "string"
    },
    "signInfo": {
      "state": "OPEN",
      "signId": "164298331754922"
    },
    "instructionStatus": "ACTC"
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
  