___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Extract Parameters From Event Data",
  "categories": ["UTILITY", "ATTRIBUTION"],
  "description": "extract a parameter (e.g. fbclid or gclid) value from url event data like page_location or a request parameter",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "fieldToParse",
    "displayName": "Value From Request",
    "simpleValueType": true,
    "canBeEmptyString": false,
    "help": "create a variable to extract a request parameter (like \"dl\") or event data field (like \"page_location\") where the desired parameter value can be found",
    "valueHint": "variable for the text to parse"
  },
  {
    "type": "TEXT",
    "name": "paramName",
    "displayName": "Id Parameter Name",
    "simpleValueType": true,
    "defaultValue": "fbclid",
    "help": "parameter key to extract from a request parameter value or event data",
    "valueHint": "e.g. \"fbclid\" or \"gclid\""
  }
]


___SANDBOXED_JS_FOR_SERVER___

const parseUrl = require('parseUrl');
var urlInfo = parseUrl(data.fieldToParse);
var params = (urlInfo) ? urlInfo.searchParams : [];
return params[data.paramName] || "";


___TESTS___

scenarios: []


___NOTES___

Created on 2.4.2021, 14:30:54


