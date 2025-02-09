local decode = require("cjson").new().decode
return assert(decode([===[
{
  "metadata": {
    "apiVersion": "2018-11-29",
    "endpointPrefix": "execute-api",
    "signingName": "execute-api",
    "serviceFullName": "AmazonApiGatewayManagementApi",
    "serviceId": "ApiGatewayManagementApi",
    "protocol": "rest-json",
    "jsonVersion": "1.1",
    "uid": "apigatewaymanagementapi-2018-11-29",
    "signatureVersion": "v4"
  },
  "operations": {
    "DeleteConnection": {
      "name": "DeleteConnection",
      "http": {
        "method": "DELETE",
        "requestUri": "/@connections/{connectionId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteConnectionRequest"
      },
      "errors": [
        {
          "shape": "GoneException",
          "documentation": "<p>The connection with the provided id no longer exists.</p>"
        },
        {
          "shape": "LimitExceededException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time or the WebSocket client side buffer is full.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The caller is not authorized to invoke this operation.</p>"
        }
      ],
      "documentation": "<p>Delete the connection with the provided id.</p>"
    },
    "GetConnection": {
      "name": "GetConnection",
      "http": {
        "method": "GET",
        "requestUri": "/@connections/{connectionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetConnectionRequest"
      },
      "output": {
        "shape": "GetConnectionResponse"
      },
      "errors": [
        {
          "shape": "GoneException",
          "documentation": "<p>The connection with the provided id no longer exists.</p>"
        },
        {
          "shape": "LimitExceededException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time or the WebSocket client side buffer is full.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The caller is not authorized to invoke this operation.</p>"
        }
      ],
      "documentation": "<p>Get information about the connection with the provided id.</p>"
    },
    "PostToConnection": {
      "name": "PostToConnection",
      "http": {
        "method": "POST",
        "requestUri": "/@connections/{connectionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "PostToConnectionRequest"
      },
      "errors": [
        {
          "shape": "GoneException",
          "documentation": "<p>The connection with the provided id no longer exists.</p>"
        },
        {
          "shape": "LimitExceededException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time or the WebSocket client side buffer is full.</p>"
        },
        {
          "shape": "PayloadTooLargeException",
          "documentation": "<p>The data has exceeded the maximum size allowed.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The caller is not authorized to invoke this operation.</p>"
        }
      ],
      "documentation": "<p>Sends the provided data to the specified connection.</p>"
    }
  },
  "shapes": {
    "Data": {
      "type": "blob",
      "max": 131072,
      "documentation": "<p>The data to be sent to the client specified by its connection id.</p>"
    },
    "DeleteConnectionRequest": {
      "type": "structure",
      "members": {
        "ConnectionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "connectionId"
        }
      },
      "required": [
        "ConnectionId"
      ]
    },
    "GetConnectionRequest": {
      "type": "structure",
      "members": {
        "ConnectionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "connectionId"
        }
      },
      "required": [
        "ConnectionId"
      ]
    },
    "GetConnectionResponse": {
      "type": "structure",
      "members": {
        "ConnectedAt": {
          "shape": "__timestampIso8601",
          "locationName": "connectedAt",
          "documentation": "<p>The time in ISO 8601 format for when the connection was established.</p>"
        },
        "Identity": {
          "shape": "Identity",
          "locationName": "identity"
        },
        "LastActiveAt": {
          "shape": "__timestampIso8601",
          "locationName": "lastActiveAt",
          "documentation": "<p>The time in ISO 8601 format for when the connection was last active.</p>"
        }
      }
    },
    "Identity": {
      "type": "structure",
      "members": {
        "SourceIp": {
          "shape": "__string",
          "locationName": "sourceIp",
          "documentation": "<p>The source IP address of the TCP connection making the request to API Gateway.</p>"
        },
        "UserAgent": {
          "shape": "__string",
          "locationName": "userAgent",
          "documentation": "<p>The User Agent of the API caller.</p>"
        }
      },
      "required": [
        "SourceIp",
        "UserAgent"
      ]
    },
    "PostToConnectionRequest": {
      "type": "structure",
      "members": {
        "Data": {
          "shape": "Data",
          "documentation": "<p>The data to be sent to the client specified by its connection id.</p>"
        },
        "ConnectionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "connectionId",
          "documentation": "<p>The identifier of the connection that a specific client is using.</p>"
        }
      },
      "required": [
        "ConnectionId",
        "Data"
      ],
      "payload": "Data"
    },
    "__string": {
      "type": "string"
    },
    "__timestampIso8601": {
      "type": "timestamp",
      "timestampFormat": "iso8601"
    }
  },
  "documentation": "<p>The Amazon API Gateway Management API allows you to directly manage runtime aspects of your deployed APIs. To use it, you must explicitly set the SDK's endpoint to point to the endpoint of your deployed API. The endpoint will be of the form https://{api-id}.execute-api.{region}.amazonaws.com/{stage}, or will be the endpoint corresponding to your API's custom domain and base path, if applicable.</p>"
}
]===]))
