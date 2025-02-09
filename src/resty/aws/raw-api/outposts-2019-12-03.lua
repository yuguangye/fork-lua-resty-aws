local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-12-03",
    "endpointPrefix": "outposts",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "Outposts",
    "serviceFullName": "AWS Outposts",
    "serviceId": "Outposts",
    "signatureVersion": "v4",
    "signingName": "outposts",
    "uid": "outposts-2019-12-03"
  },
  "operations": {
    "CreateOutpost": {
      "name": "CreateOutpost",
      "http": {
        "method": "POST",
        "requestUri": "/outposts"
      },
      "input": {
        "shape": "CreateOutpostInput"
      },
      "output": {
        "shape": "CreateOutpostOutput"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        }
      ],
      "documentation": "<p>Creates an Outpost.</p>"
    },
    "DeleteOutpost": {
      "name": "DeleteOutpost",
      "http": {
        "method": "DELETE",
        "requestUri": "/outposts/{OutpostId}"
      },
      "input": {
        "shape": "DeleteOutpostInput"
      },
      "output": {
        "shape": "DeleteOutpostOutput"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Deletes the Outpost.</p>"
    },
    "DeleteSite": {
      "name": "DeleteSite",
      "http": {
        "method": "DELETE",
        "requestUri": "/sites/{SiteId}"
      },
      "input": {
        "shape": "DeleteSiteInput"
      },
      "output": {
        "shape": "DeleteSiteOutput"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Deletes the site.</p>"
    },
    "GetOutpost": {
      "name": "GetOutpost",
      "http": {
        "method": "GET",
        "requestUri": "/outposts/{OutpostId}"
      },
      "input": {
        "shape": "GetOutpostInput"
      },
      "output": {
        "shape": "GetOutpostOutput"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets information about the specified Outpost.</p>"
    },
    "GetOutpostInstanceTypes": {
      "name": "GetOutpostInstanceTypes",
      "http": {
        "method": "GET",
        "requestUri": "/outposts/{OutpostId}/instanceTypes"
      },
      "input": {
        "shape": "GetOutpostInstanceTypesInput"
      },
      "output": {
        "shape": "GetOutpostInstanceTypesOutput"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Lists the instance types for the specified Outpost.</p>"
    },
    "ListOutposts": {
      "name": "ListOutposts",
      "http": {
        "method": "GET",
        "requestUri": "/outposts"
      },
      "input": {
        "shape": "ListOutpostsInput"
      },
      "output": {
        "shape": "ListOutpostsOutput"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>List the Outposts for your AWS account.</p>"
    },
    "ListSites": {
      "name": "ListSites",
      "http": {
        "method": "GET",
        "requestUri": "/sites"
      },
      "input": {
        "shape": "ListSitesInput"
      },
      "output": {
        "shape": "ListSitesOutput"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Lists the sites for the specified AWS account.</p>"
    }
  },
  "shapes": {
    "AccountId": {
      "type": "string",
      "documentation": "<p>The ID of the AWS account.</p>",
      "max": 12,
      "min": 12
    },
    "AvailabilityZone": {
      "type": "string",
      "documentation": "<p>The Availability Zone.</p> <p>You must specify <code>AvailabilityZone</code> or <code>AvailabilityZoneId</code>.</p>",
      "max": 1000,
      "min": 1,
      "pattern": "[a-z\\d-]+"
    },
    "AvailabilityZoneId": {
      "type": "string",
      "documentation": "<p>The ID of the Availability Zone.</p> <p>You must specify <code>AvailabilityZone</code> or <code>AvailabilityZoneId</code>.</p>",
      "max": 255,
      "min": 1,
      "pattern": "[a-z]+[0-9]+-az[0-9]+"
    },
    "CreateOutpostInput": {
      "type": "structure",
      "required": [
        "SiteId"
      ],
      "members": {
        "Name": {
          "shape": "OutpostName"
        },
        "Description": {
          "shape": "OutpostDescription"
        },
        "SiteId": {
          "shape": "SiteId"
        },
        "AvailabilityZone": {
          "shape": "AvailabilityZone"
        },
        "AvailabilityZoneId": {
          "shape": "AvailabilityZoneId"
        }
      }
    },
    "CreateOutpostOutput": {
      "type": "structure",
      "members": {
        "Outpost": {
          "shape": "Outpost"
        }
      }
    },
    "DeleteOutpostInput": {
      "type": "structure",
      "required": [
        "OutpostId"
      ],
      "members": {
        "OutpostId": {
          "shape": "OutpostId",
          "location": "uri",
          "locationName": "OutpostId"
        }
      }
    },
    "DeleteOutpostOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteSiteInput": {
      "type": "structure",
      "required": [
        "SiteId"
      ],
      "members": {
        "SiteId": {
          "shape": "SiteId",
          "location": "uri",
          "locationName": "SiteId"
        }
      }
    },
    "DeleteSiteOutput": {
      "type": "structure",
      "members": {}
    },
    "GetOutpostInput": {
      "type": "structure",
      "required": [
        "OutpostId"
      ],
      "members": {
        "OutpostId": {
          "shape": "OutpostId",
          "location": "uri",
          "locationName": "OutpostId"
        }
      }
    },
    "GetOutpostInstanceTypesInput": {
      "type": "structure",
      "required": [
        "OutpostId"
      ],
      "members": {
        "OutpostId": {
          "shape": "OutpostId",
          "location": "uri",
          "locationName": "OutpostId"
        },
        "NextToken": {
          "shape": "Token",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "MaxResults": {
          "shape": "MaxResults1000",
          "location": "querystring",
          "locationName": "MaxResults"
        }
      }
    },
    "GetOutpostInstanceTypesOutput": {
      "type": "structure",
      "members": {
        "InstanceTypes": {
          "shape": "InstanceTypeListDefinition"
        },
        "NextToken": {
          "shape": "Token"
        },
        "OutpostId": {
          "shape": "OutpostId"
        },
        "OutpostArn": {
          "shape": "OutpostArn"
        }
      }
    },
    "GetOutpostOutput": {
      "type": "structure",
      "members": {
        "Outpost": {
          "shape": "Outpost"
        }
      }
    },
    "InstanceType": {
      "type": "string",
      "documentation": "<p>The instance type.</p>"
    },
    "InstanceTypeItem": {
      "type": "structure",
      "members": {
        "InstanceType": {
          "shape": "InstanceType"
        }
      },
      "documentation": "<p>Information about an instance type.</p>"
    },
    "InstanceTypeListDefinition": {
      "type": "list",
      "member": {
        "shape": "InstanceTypeItem"
      },
      "documentation": "<p>Information about the instance types.</p>"
    },
    "LifeCycleStatus": {
      "type": "string",
      "documentation": "<p>The life cycle status.</p>"
    },
    "ListOutpostsInput": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "Token",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "MaxResults": {
          "shape": "MaxResults1000",
          "location": "querystring",
          "locationName": "MaxResults"
        }
      }
    },
    "ListOutpostsOutput": {
      "type": "structure",
      "members": {
        "Outposts": {
          "shape": "outpostListDefinition"
        },
        "NextToken": {
          "shape": "Token"
        }
      }
    },
    "ListSitesInput": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "Token",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "MaxResults": {
          "shape": "MaxResults1000",
          "location": "querystring",
          "locationName": "MaxResults"
        }
      }
    },
    "ListSitesOutput": {
      "type": "structure",
      "members": {
        "Sites": {
          "shape": "siteListDefinition"
        },
        "NextToken": {
          "shape": "Token"
        }
      }
    },
    "MaxResults1000": {
      "type": "integer",
      "documentation": "<p>The maximum page size.</p>",
      "box": true,
      "max": 1000,
      "min": 1
    },
    "Outpost": {
      "type": "structure",
      "members": {
        "OutpostId": {
          "shape": "OutpostId"
        },
        "OwnerId": {
          "shape": "OwnerId"
        },
        "OutpostArn": {
          "shape": "OutpostArn"
        },
        "SiteId": {
          "shape": "SiteId"
        },
        "Name": {
          "shape": "OutpostName"
        },
        "Description": {
          "shape": "OutpostDescription"
        },
        "LifeCycleStatus": {
          "shape": "LifeCycleStatus"
        },
        "AvailabilityZone": {
          "shape": "AvailabilityZone"
        },
        "AvailabilityZoneId": {
          "shape": "AvailabilityZoneId"
        }
      },
      "documentation": "<p>Information about an Outpost.</p>"
    },
    "OutpostArn": {
      "type": "string",
      "documentation": "<p>The Amazon Resource Name (ARN) of the Outpost.</p>",
      "max": 255,
      "min": 1,
      "pattern": "^arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/op-[a-f0-9]{17}$"
    },
    "OutpostDescription": {
      "type": "string",
      "documentation": "<p>The Outpost description.</p>",
      "max": 1000,
      "min": 1,
      "pattern": "^[\\S ]+$"
    },
    "OutpostId": {
      "type": "string",
      "documentation": "<p>The ID of the Outpost.</p>",
      "max": 180,
      "min": 1,
      "pattern": "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/)?op-[a-f0-9]{17}$"
    },
    "OutpostName": {
      "type": "string",
      "documentation": "<p>The name of the Outpost.</p>",
      "max": 255,
      "min": 1,
      "pattern": "^[\\S ]+$"
    },
    "OwnerId": {
      "type": "string",
      "documentation": "<p>The AWS account ID of the Outpost owner.</p>",
      "max": 12,
      "min": 12,
      "pattern": "\\d{12}"
    },
    "Site": {
      "type": "structure",
      "members": {
        "SiteId": {
          "shape": "SiteId"
        },
        "AccountId": {
          "shape": "AccountId"
        },
        "Name": {
          "shape": "SiteName"
        },
        "Description": {
          "shape": "SiteDescription"
        }
      },
      "documentation": "<p>Information about a site.</p>"
    },
    "SiteDescription": {
      "type": "string",
      "documentation": "<p>The description of the site.</p>",
      "max": 1000,
      "min": 1,
      "pattern": "^[\\S ]+$"
    },
    "SiteId": {
      "type": "string",
      "documentation": "<p>The ID of the site.</p>",
      "max": 255,
      "min": 1,
      "pattern": "os-[a-f0-9]{17}"
    },
    "SiteName": {
      "type": "string",
      "documentation": "<p>The name of the site.</p>",
      "max": 1000,
      "min": 1,
      "pattern": "^[\\S ]+$"
    },
    "Token": {
      "type": "string",
      "documentation": "<p>The pagination token.</p>",
      "max": 1005,
      "min": 1,
      "pattern": ".*\\S.*"
    },
    "outpostListDefinition": {
      "type": "list",
      "member": {
        "shape": "Outpost"
      },
      "documentation": "<p>Information about the Outposts.</p>"
    },
    "siteListDefinition": {
      "type": "list",
      "member": {
        "shape": "Site"
      },
      "documentation": "<p>Information about the sites.</p>"
    }
  },
  "documentation": "<p>AWS Outposts is a fully-managed service that extends AWS infrastructure, APIs, and tools to customer premises. By providing local access to AWS-managed infrastructure, AWS Outposts enables customers to build and run applications on premises using the same programming interfaces as in AWS Regions, while using local compute and storage resources for lower latency and local data processing needs.</p>"
}
]===]))
