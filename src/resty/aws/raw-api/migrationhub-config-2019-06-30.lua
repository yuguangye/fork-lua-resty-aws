local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-06-30",
    "endpointPrefix": "migrationhub-config",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS Migration Hub Config",
    "serviceId": "MigrationHub Config",
    "signatureVersion": "v4",
    "signingName": "mgh",
    "targetPrefix": "AWSMigrationHubMultiAccountService",
    "uid": "migrationhub-config-2019-06-30"
  },
  "operations": {
    "CreateHomeRegionControl": {
      "name": "CreateHomeRegionControl",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateHomeRegionControlRequest"
      },
      "output": {
        "shape": "CreateHomeRegionControlResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "DryRunOperation"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>This API sets up the home region for the calling account only.</p>"
    },
    "DescribeHomeRegionControls": {
      "name": "DescribeHomeRegionControls",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeHomeRegionControlsRequest"
      },
      "output": {
        "shape": "DescribeHomeRegionControlsResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>This API permits filtering on the <code>ControlId</code> and <code>HomeRegion</code> fields.</p>"
    },
    "GetHomeRegion": {
      "name": "GetHomeRegion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetHomeRegionRequest"
      },
      "output": {
        "shape": "GetHomeRegionResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Returns the calling account’s home region, if configured. This API is used by other AWS services to determine the regional endpoint for calling AWS Application Discovery Service and Migration Hub. You must call <code>GetHomeRegion</code> at least once before you call any other AWS Application Discovery Service and AWS Migration Hub APIs, to obtain the account's Migration Hub home region.</p>"
    }
  },
  "shapes": {
    "ControlId": {
      "type": "string",
      "max": 50,
      "min": 1,
      "pattern": "^hrc-[a-z0-9]{12}$"
    },
    "CreateHomeRegionControlRequest": {
      "type": "structure",
      "required": [
        "HomeRegion",
        "Target"
      ],
      "members": {
        "HomeRegion": {
          "shape": "HomeRegion",
          "documentation": "<p>The name of the home region of the calling account.</p>"
        },
        "Target": {
          "shape": "Target",
          "documentation": "<p>The account for which this command sets up a home region control. The <code>Target</code> is always of type <code>ACCOUNT</code>.</p>"
        },
        "DryRun": {
          "shape": "DryRun",
          "documentation": "<p>Optional Boolean flag to indicate whether any effect should take place. It tests whether the caller has permission to make the call.</p>"
        }
      }
    },
    "CreateHomeRegionControlResult": {
      "type": "structure",
      "members": {
        "HomeRegionControl": {
          "shape": "HomeRegionControl",
          "documentation": "<p>This object is the <code>HomeRegionControl</code> object that's returned by a successful call to <code>CreateHomeRegionControl</code>.</p>"
        }
      }
    },
    "DescribeHomeRegionControlsMaxResults": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 1
    },
    "DescribeHomeRegionControlsRequest": {
      "type": "structure",
      "members": {
        "ControlId": {
          "shape": "ControlId",
          "documentation": "<p>The <code>ControlID</code> is a unique identifier string of your <code>HomeRegionControl</code> object.</p>"
        },
        "HomeRegion": {
          "shape": "HomeRegion",
          "documentation": "<p>The name of the home region you'd like to view.</p>"
        },
        "Target": {
          "shape": "Target",
          "documentation": "<p>The target parameter specifies the identifier to which the home region is applied, which is always of type <code>ACCOUNT</code>. It applies the home region to the current <code>ACCOUNT</code>.</p>"
        },
        "MaxResults": {
          "shape": "DescribeHomeRegionControlsMaxResults",
          "documentation": "<p>The maximum number of filtering results to display per page. </p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>If a <code>NextToken</code> was returned by a previous call, more results are available. To retrieve the next page of results, make the call again using the returned token in <code>NextToken</code>.</p>"
        }
      }
    },
    "DescribeHomeRegionControlsResult": {
      "type": "structure",
      "members": {
        "HomeRegionControls": {
          "shape": "HomeRegionControls",
          "documentation": "<p>An array that contains your <code>HomeRegionControl</code> objects.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>If a <code>NextToken</code> was returned by a previous call, more results are available. To retrieve the next page of results, make the call again using the returned token in <code>NextToken</code>.</p>"
        }
      }
    },
    "DryRun": {
      "type": "boolean"
    },
    "GetHomeRegionRequest": {
      "type": "structure",
      "members": {}
    },
    "GetHomeRegionResult": {
      "type": "structure",
      "members": {
        "HomeRegion": {
          "shape": "HomeRegion",
          "documentation": "<p>The name of the home region of the calling account.</p>"
        }
      }
    },
    "HomeRegion": {
      "type": "string",
      "max": 50,
      "min": 1,
      "pattern": "^([a-z]+)-([a-z]+)-([0-9]+)$"
    },
    "HomeRegionControl": {
      "type": "structure",
      "members": {
        "ControlId": {
          "shape": "ControlId",
          "documentation": "<p>A unique identifier that's generated for each home region control. It's always a string that begins with \"hrc-\" followed by 12 lowercase letters and numbers.</p>"
        },
        "HomeRegion": {
          "shape": "HomeRegion",
          "documentation": "<p>The AWS Region that's been set as home region. For example, \"us-west-2\" or \"eu-central-1\" are valid home regions.</p>"
        },
        "Target": {
          "shape": "Target",
          "documentation": "<p>The target parameter specifies the identifier to which the home region is applied, which is always an <code>ACCOUNT</code>. It applies the home region to the current <code>ACCOUNT</code>.</p>"
        },
        "RequestedTime": {
          "shape": "RequestedTime",
          "documentation": "<p>A timestamp representing the time when the customer called <code>CreateHomeregionControl</code> and set the home region for the account.</p>"
        }
      },
      "documentation": "<p>A home region control is an object that specifies the home region for an account, with some additional information. It contains a target (always of type <code>ACCOUNT</code>), an ID, and a time at which the home region was set.</p>"
    },
    "HomeRegionControls": {
      "type": "list",
      "member": {
        "shape": "HomeRegionControl"
      },
      "max": 100
    },
    "RequestedTime": {
      "type": "timestamp"
    },
    "Target": {
      "type": "structure",
      "required": [
        "Type"
      ],
      "members": {
        "Type": {
          "shape": "TargetType",
          "documentation": "<p>The target type is always an <code>ACCOUNT</code>.</p>"
        },
        "Id": {
          "shape": "TargetId",
          "documentation": "<p>The <code>TargetID</code> is a 12-character identifier of the <code>ACCOUNT</code> for which the control was created. (This must be the current account.) </p>"
        }
      },
      "documentation": "<p>The target parameter specifies the identifier to which the home region is applied, which is always an <code>ACCOUNT</code>. It applies the home region to the current <code>ACCOUNT</code>.</p>"
    },
    "TargetId": {
      "type": "string",
      "max": 12,
      "min": 12,
      "pattern": "^\\d{12}$"
    },
    "TargetType": {
      "type": "string",
      "enum": [
        "ACCOUNT"
      ]
    },
    "Token": {
      "type": "string",
      "max": 2048,
      "min": 0,
      "pattern": "^[a-zA-Z0-9\\/\\+\\=]{0,2048}$"
    }
  },
  "documentation": "<p>The AWS Migration Hub home region APIs are available specifically for working with your Migration Hub home region. You can use these APIs to determine a home region, as well as to create and work with controls that describe the home region.</p> <ul> <li> <p>You must make API calls for write actions (create, notify, associate, disassociate, import, or put) while in your home region, or a <code>HomeRegionNotSetException</code> error is returned.</p> </li> <li> <p>API calls for read actions (list, describe, stop, and delete) are permitted outside of your home region.</p> </li> <li> <p>If you call a write API outside the home region, an <code>InvalidInputException</code> is returned.</p> </li> <li> <p>You can call <code>GetHomeRegion</code> action to obtain the account's Migration Hub home region.</p> </li> </ul> <p>For specific API usage, see the sections that follow in this AWS Migration Hub Home Region API reference. </p>"
}
]===]))
