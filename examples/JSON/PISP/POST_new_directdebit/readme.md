# PISP Domestic direct debit consent

Resource for entering a new domestic direct debit consent. The standard describes endpoints intended for establishing 
and managing direct debit authorizations. The description does not include services specified for the actual execution 
of an already authorized direct debit. The API only describes the domestic form of direct debit.

* **URL**

  `/my/accaounts/{id}/directdebits`

* **Method:**

  `POST`

* **URL Params**

   not defined

* **Request**

  **Header:**
  ```http
  https://api.bank.cz/v1/my/accounts/01fc4b99-359c-429e-8436-53ff14c082e9/directdebits
  Content-Type: application/json
  X-Request-ID: 55d4fffc-2634-44d4-9f2b-3aa987785ac2
  Date: Wed, 1 Jan 2021 09:25:01 GMT
  User-Involved: false
  API-key: 00000000-1212-0f0f-a0a0-123456789abc
  TPP-Name: Google China
  Authorization: Bearer AbCdEf123456
  ```
  #### Domestic direct debit consent
  **Payload: [POST_new_directdebit.json](POST_new_directdebit.json)**
  ```json
  {
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
  }
  }
  ```


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
  "instructionStatus": "string",
  "statusChangeInfo": "string"
  }
  ```

* **Error Response:**

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
      "error": "FIELD_MISSING",
      "scope": "amount"
    }
  ]
  }
  ```
  