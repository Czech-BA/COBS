# PISP Detail of entered/initiated direct debit consent

Resource for get detail about the domestic direct debit Consent.

It is at the choice of each bank whether to return details of any client’s direct debit Consent or just those that the client has established through a particular TPP.


* **URL**

  `/my/accounts/{id}/directdebits/{mandateIdentification}`

* **Method:**

  `GET`

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
  "limit": {
    "directDebitPaymentLimit": {
      "value": 10000,
      "crrency": "CZK"
    }
  },
  "directDebit": {
    "alias": "Platba za plyn",
    "execution": {
      "mode": "UNTIL_DATE",
      "interval": "MONTHLY",
      "valuePeriodLimit": 10000,
      "approvalDirectDebits": "N"
    },
    "vlidity": {
      "validFromDate": "2023-01-10",
      "validToDate": "2025-01-10",
      "maxIterations": 100
    }
  },
  "debtorAccount": {
    "identification": {
      "iban": "CZ0950518916425927369341"
    }
  },
  "creditorAccount": {},
  "remittanceInformation": {
    "unstructured": "/VS/7418529630/SS/1234567890",
    "structured": {
      "creditorReferenceInformation": {
        "reference": "string"
      }
    }
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
  