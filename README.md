# Extract Parameters

**Custom Variable Template for Server-Side Google Tag Manager**

Extract a parameter (e.g. `fbclid` or `gclid`) value from URLs event data like `page_location` or a request parameter

[![Template Status](https://img.shields.io/badge/Community%20Template%20Gallery%20Status-published-green)](https://tagmanager.google.com/gallery/#/owners/mbaersch/templates/extract-parameters) ![Repo Size](https://img.shields.io/github/repo-size/mbaersch/extract-parameters) ![License](https://img.shields.io/github/license/mbaersch/extract-parameters)

---

*Note*: This template does not need any permissions.

## Usage
- Create a variable to extract a request parameter (like `dl` from a raw Universal Analytics request) or event data field (like `page_location`) where the desired parameter value can be found. 

- Create a new variable with this template. 

- Choose the variable from the first step as input. Then define the name of the desired parameter.

- The variable will find and return the parameter value. If the parameter is not present, you can pick either an empty string or `undefined` as return value. 
