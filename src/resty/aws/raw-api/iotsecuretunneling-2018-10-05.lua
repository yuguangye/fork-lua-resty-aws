local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-10-05",
    "endpointPrefix": "api.tunneling.iot",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS IoT Secure Tunneling",
    "serviceId": "IoTSecureTunneling",
    "signatureVersion": "v4",
    "signingName": "IoTSecuredTunneling",
    "targetPrefix": "IoTSecuredTunneling",
    "uid": "iotsecuretunneling-2018-10-05"
  },
  "operations": {
    "CloseTunnel": {
      "name": "CloseTunnel",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CloseTunnelRequest"
      },
      "output": {
        "shape": "CloseTunnelResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Closes a tunnel identified by the unique tunnel id. When a <code>CloseTunnel</code> request is received, we close the WebSocket connections between the client and proxy server so no data can be transmitted.</p>"
    },
    "DescribeTunnel": {
      "name": "DescribeTunnel",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTunnelRequest"
      },
      "output": {
        "shape": "DescribeTunnelResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets information about a tunnel identified by the unique tunnel id.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Lists the tags for the specified resource.</p>"
    },
    "ListTunnels": {
      "name": "ListTunnels",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTunnelsRequest"
      },
      "output": {
        "shape": "ListTunnelsResponse"
      },
      "documentation": "<p>List all tunnels for an AWS account. Tunnels are listed by creation time in descending order, newer tunnels will be listed before older tunnels.</p>"
    },
    "OpenTunnel": {
      "name": "OpenTunnel",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "OpenTunnelRequest"
      },
      "output": {
        "shape": "OpenTunnelResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a new tunnel, and returns two client access tokens for clients to use to connect to the AWS IoT Secure Tunneling proxy server. .</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>A resource tag.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Removes a tag from a resource.</p>"
    }
  },
  "shapes": {
    "AmazonResourceName": {
      "type": "string",
      "max": 1011,
      "min": 1
    },
    "ClientAccessToken": {
      "type": "string",
      "sensitive": true
    },
    "CloseTunnelRequest": {
      "type": "structure",
      "required": [
        "tunnelId"
      ],
      "members": {
        "tunnelId": {
          "shape": "TunnelId",
          "documentation": "<p>The ID of the tunnel to close.</p>"
        },
        "delete": {
          "shape": "DeleteFlag",
          "documentation": "<p>When set to true, AWS IoT Secure Tunneling deletes the tunnel data immediately.</p>",
          "box": true
        }
      }
    },
    "CloseTunnelResponse": {
      "type": "structure",
      "members": {}
    },
    "ConnectionState": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "ConnectionStatus",
          "documentation": "<p>The connection status of the tunnel. Valid values are <code>CONNECTED</code> and <code>DISCONNECTED</code>.</p>"
        },
        "lastUpdatedAt": {
          "shape": "DateType",
          "documentation": "<p>The last time the connection status was updated.</p>"
        }
      },
      "documentation": "<p>The state of a connection.</p>"
    },
    "ConnectionStatus": {
      "type": "string",
      "enum": [
        "CONNECTED",
        "DISCONNECTED"
      ]
    },
    "DateType": {
      "type": "timestamp"
    },
    "DeleteFlag": {
      "type": "boolean"
    },
    "DescribeTunnelRequest": {
      "type": "structure",
      "required": [
        "tunnelId"
      ],
      "members": {
        "tunnelId": {
          "shape": "TunnelId",
          "documentation": "<p>The tunnel to describe.</p>"
        }
      }
    },
    "DescribeTunnelResponse": {
      "type": "structure",
      "members": {
        "tunnel": {
          "shape": "Tunnel",
          "documentation": "<p>The tunnel being described.</p>"
        }
      }
    },
    "Description": {
      "type": "string",
      "pattern": "[^\\p{C}]{1,2048}"
    },
    "DestinationConfig": {
      "type": "structure",
      "required": [
        "thingName",
        "services"
      ],
      "members": {
        "thingName": {
          "shape": "ThingName",
          "documentation": "<p>The name of the IoT thing to which you want to connect.</p>"
        },
        "services": {
          "shape": "ServiceList",
          "documentation": "<p>A list of service names that identity the target application. Currently, you can only specify a single name. The AWS IoT client running on the destination device reads this value and uses it to look up a port or an IP address and a port. The AWS IoT client instantiates the local proxy which uses this information to connect to the destination application.</p>"
        }
      },
      "documentation": "<p>The destination configuration.</p>"
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The resource ARN.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags for the specified resource.</p>"
        }
      }
    },
    "ListTunnelsRequest": {
      "type": "structure",
      "members": {
        "thingName": {
          "shape": "ThingName",
          "documentation": "<p>The name of the IoT thing associated with the destination device.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return at once.</p>",
          "box": true
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to retrieve the next set of results.</p>"
        }
      }
    },
    "ListTunnelsResponse": {
      "type": "structure",
      "members": {
        "tunnelSummaries": {
          "shape": "TunnelSummaryList",
          "documentation": "<p>A short description of the tunnels in an AWS account.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to used to retrieve the next set of results.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "NextToken": {
      "type": "string",
      "pattern": "[a-zA-Z0-9_=-]{1,4096}"
    },
    "OpenTunnelRequest": {
      "type": "structure",
      "members": {
        "description": {
          "shape": "Description",
          "documentation": "<p>A short text description of the tunnel. </p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>A collection of tag metadata.</p>"
        },
        "destinationConfig": {
          "shape": "DestinationConfig",
          "documentation": "<p>The destination configuration for the OpenTunnel request.</p>"
        },
        "timeoutConfig": {
          "shape": "TimeoutConfig",
          "documentation": "<p>Timeout configuration for a tunnel.</p>"
        }
      }
    },
    "OpenTunnelResponse": {
      "type": "structure",
      "members": {
        "tunnelId": {
          "shape": "TunnelId",
          "documentation": "<p>A unique alpha-numeric tunnel ID.</p>"
        },
        "tunnelArn": {
          "shape": "TunnelArn",
          "documentation": "<p>The Amazon Resource Name for the tunnel. The tunnel ARN format is <code>arn:aws:tunnel:&lt;region&gt;:&lt;account-id&gt;:tunnel/&lt;tunnel-id&gt;</code> </p>"
        },
        "sourceAccessToken": {
          "shape": "ClientAccessToken",
          "documentation": "<p>The access token the source local proxy uses to connect to AWS IoT Secure Tunneling.</p>"
        },
        "destinationAccessToken": {
          "shape": "ClientAccessToken",
          "documentation": "<p>The access token the destination local proxy uses to connect to AWS IoT Secure Tunneling.</p>"
        }
      }
    },
    "Service": {
      "type": "string",
      "max": 8,
      "min": 1,
      "pattern": "[a-zA-Z0-9:_-]+"
    },
    "ServiceList": {
      "type": "list",
      "member": {
        "shape": "Service"
      },
      "max": 1,
      "min": 1
    },
    "Tag": {
      "type": "structure",
      "required": [
        "key",
        "value"
      ],
      "members": {
        "key": {
          "shape": "TagKey",
          "documentation": "<p>The key of the tag.</p>"
        },
        "value": {
          "shape": "TagValue",
          "documentation": "<p>The value of the tag.</p>"
        }
      },
      "documentation": "<p>An arbitary key/value pair used to add searchable metadata to secure tunnel resources.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 200,
      "min": 0
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 200,
      "min": 1
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The ARN of the resource.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags for the resource.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "ThingName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9:_-]+"
    },
    "TimeoutConfig": {
      "type": "structure",
      "members": {
        "maxLifetimeTimeoutMinutes": {
          "shape": "TimeoutInMin",
          "documentation": "<p>The maximum amount of time (in minutes) a tunnel can remain open. If not specified, maxLifetimeTimeoutMinutes defaults to 720 minutes. Valid values are from 1 minute to 12 hours (720 minutes) </p>",
          "box": true
        }
      },
      "documentation": "<p>Tunnel timeout configuration.</p>"
    },
    "TimeoutInMin": {
      "type": "integer",
      "max": 720,
      "min": 1
    },
    "Tunnel": {
      "type": "structure",
      "members": {
        "tunnelId": {
          "shape": "TunnelId",
          "documentation": "<p>A unique alpha-numeric ID that identifies a tunnel.</p>"
        },
        "tunnelArn": {
          "shape": "TunnelArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of a tunnel. The tunnel ARN format is <code>arn:aws:tunnel:&lt;region&gt;:&lt;account-id&gt;:tunnel/&lt;tunnel-id&gt;</code> </p>"
        },
        "status": {
          "shape": "TunnelStatus",
          "documentation": "<p>The status of a tunnel. Valid values are: Open and Closed.</p>"
        },
        "sourceConnectionState": {
          "shape": "ConnectionState",
          "documentation": "<p>The connection state of the source application.</p>"
        },
        "destinationConnectionState": {
          "shape": "ConnectionState",
          "documentation": "<p>The connection state of the destination application.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the tunnel.</p>"
        },
        "destinationConfig": {
          "shape": "DestinationConfig",
          "documentation": "<p>The destination configuration that specifies the thing name of the destination device and a service name that the local proxy uses to connect to the destination application.</p>"
        },
        "timeoutConfig": {
          "shape": "TimeoutConfig",
          "documentation": "<p>Timeout configuration for the tunnel.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag metadata associated with the secure tunnel.</p>"
        },
        "createdAt": {
          "shape": "DateType",
          "documentation": "<p>The time when the tunnel was created.</p>"
        },
        "lastUpdatedAt": {
          "shape": "DateType",
          "documentation": "<p>The last time the tunnel was updated.</p>"
        }
      },
      "documentation": "<p>A connection between a source computer and a destination device.</p>"
    },
    "TunnelArn": {
      "type": "string",
      "max": 1600,
      "min": 1
    },
    "TunnelId": {
      "type": "string",
      "pattern": "[a-zA-Z0-9_\\-+=:]{1,128}"
    },
    "TunnelStatus": {
      "type": "string",
      "enum": [
        "OPEN",
        "CLOSED"
      ]
    },
    "TunnelSummary": {
      "type": "structure",
      "members": {
        "tunnelId": {
          "shape": "TunnelId",
          "documentation": "<p>The unique alpha-numeric identifier for the tunnel.</p>"
        },
        "tunnelArn": {
          "shape": "TunnelArn",
          "documentation": "<p>The Amazon Resource Name of the tunnel. The tunnel ARN format is <code>arn:aws:tunnel:&lt;region&gt;:&lt;account-id&gt;:tunnel/&lt;tunnel-id&gt;</code> </p>"
        },
        "status": {
          "shape": "TunnelStatus",
          "documentation": "<p>The status of a tunnel. Valid values are: Open and Closed.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the tunnel.</p>"
        },
        "createdAt": {
          "shape": "DateType",
          "documentation": "<p>The time the tunnel was created.</p>"
        },
        "lastUpdatedAt": {
          "shape": "DateType",
          "documentation": "<p>The time the tunnel was last updated.</p>"
        }
      },
      "documentation": "<p>Information about the tunnel.</p>"
    },
    "TunnelSummaryList": {
      "type": "list",
      "member": {
        "shape": "TunnelSummary"
      }
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The resource ARN.</p>"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The keys of the tags to remove.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    }
  },
  "documentation": "<fullname>AWS IoT Secure Tunneling</fullname> <p>AWS IoT Secure Tunnling enables you to create remote connections to devices deployed in the field.</p> <p>For more information about how AWS IoT Secure Tunneling works, see the <a href=\"https://docs.aws.amazon.com/secure-tunneling/latest/ug/what-is-secure-tunneling.html\">User Guide</a>.</p>"
}
]===]))
