local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-05-14",
    "endpointPrefix": "projects.iot1click",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "AWS IoT 1-Click Projects",
    "serviceFullName": "AWS IoT 1-Click Projects Service",
    "serviceId": "IoT 1Click Projects",
    "signatureVersion": "v4",
    "signingName": "iot1click",
    "uid": "iot1click-projects-2018-05-14"
  },
  "operations": {
    "AssociateDeviceWithPlacement": {
      "name": "AssociateDeviceWithPlacement",
      "http": {
        "method": "PUT",
        "requestUri": "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}"
      },
      "input": {
        "shape": "AssociateDeviceWithPlacementRequest"
      },
      "output": {
        "shape": "AssociateDeviceWithPlacementResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Associates a physical device with a placement.</p>"
    },
    "CreatePlacement": {
      "name": "CreatePlacement",
      "http": {
        "method": "POST",
        "requestUri": "/projects/{projectName}/placements"
      },
      "input": {
        "shape": "CreatePlacementRequest"
      },
      "output": {
        "shape": "CreatePlacementResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Creates an empty placement.</p>"
    },
    "CreateProject": {
      "name": "CreateProject",
      "http": {
        "method": "POST",
        "requestUri": "/projects"
      },
      "input": {
        "shape": "CreateProjectRequest"
      },
      "output": {
        "shape": "CreateProjectResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceConflictException"
        }
      ],
      "documentation": "<p>Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.</p>"
    },
    "DeletePlacement": {
      "name": "DeletePlacement",
      "http": {
        "method": "DELETE",
        "requestUri": "/projects/{projectName}/placements/{placementName}"
      },
      "input": {
        "shape": "DeletePlacementRequest"
      },
      "output": {
        "shape": "DeletePlacementResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Deletes a placement. To delete a placement, it must not have any devices associated with it.</p> <note> <p>When you delete a placement, all associated data becomes irretrievable.</p> </note>"
    },
    "DeleteProject": {
      "name": "DeleteProject",
      "http": {
        "method": "DELETE",
        "requestUri": "/projects/{projectName}"
      },
      "input": {
        "shape": "DeleteProjectRequest"
      },
      "output": {
        "shape": "DeleteProjectResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Deletes a project. To delete a project, it must not have any placements associated with it.</p> <note> <p>When you delete a project, all associated data becomes irretrievable.</p> </note>"
    },
    "DescribePlacement": {
      "name": "DescribePlacement",
      "http": {
        "method": "GET",
        "requestUri": "/projects/{projectName}/placements/{placementName}"
      },
      "input": {
        "shape": "DescribePlacementRequest"
      },
      "output": {
        "shape": "DescribePlacementResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes a placement in a project.</p>"
    },
    "DescribeProject": {
      "name": "DescribeProject",
      "http": {
        "method": "GET",
        "requestUri": "/projects/{projectName}"
      },
      "input": {
        "shape": "DescribeProjectRequest"
      },
      "output": {
        "shape": "DescribeProjectResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns an object describing a project.</p>"
    },
    "DisassociateDeviceFromPlacement": {
      "name": "DisassociateDeviceFromPlacement",
      "http": {
        "method": "DELETE",
        "requestUri": "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}"
      },
      "input": {
        "shape": "DisassociateDeviceFromPlacementRequest"
      },
      "output": {
        "shape": "DisassociateDeviceFromPlacementResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Removes a physical device from a placement.</p>"
    },
    "GetDevicesInPlacement": {
      "name": "GetDevicesInPlacement",
      "http": {
        "method": "GET",
        "requestUri": "/projects/{projectName}/placements/{placementName}/devices"
      },
      "input": {
        "shape": "GetDevicesInPlacementRequest"
      },
      "output": {
        "shape": "GetDevicesInPlacementResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns an object enumerating the devices in a placement.</p>"
    },
    "ListPlacements": {
      "name": "ListPlacements",
      "http": {
        "method": "GET",
        "requestUri": "/projects/{projectName}/placements"
      },
      "input": {
        "shape": "ListPlacementsRequest"
      },
      "output": {
        "shape": "ListPlacementsResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Lists the placement(s) of a project.</p>"
    },
    "ListProjects": {
      "name": "ListProjects",
      "http": {
        "method": "GET",
        "requestUri": "/projects"
      },
      "input": {
        "shape": "ListProjectsRequest"
      },
      "output": {
        "shape": "ListProjectsResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Lists the tags (metadata key/value pairs) which you have assigned to the resource.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be used to manage a resource. For more information, see <a href=\"https://aws.amazon.com/answers/account-management/aws-tagging-strategies/\">AWS Tagging Strategies</a>.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Removes one or more tags (metadata key/value pairs) from a resource.</p>"
    },
    "UpdatePlacement": {
      "name": "UpdatePlacement",
      "http": {
        "method": "PUT",
        "requestUri": "/projects/{projectName}/placements/{placementName}"
      },
      "input": {
        "shape": "UpdatePlacementRequest"
      },
      "output": {
        "shape": "UpdatePlacementResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., \"\").</p>"
    },
    "UpdateProject": {
      "name": "UpdateProject",
      "http": {
        "method": "PUT",
        "requestUri": "/projects/{projectName}"
      },
      "input": {
        "shape": "UpdateProjectRequest"
      },
      "output": {
        "shape": "UpdateProjectResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., <code>\"\"</code>).</p>"
    }
  },
  "shapes": {
    "AssociateDeviceWithPlacementRequest": {
      "type": "structure",
      "required": [
        "projectName",
        "placementName",
        "deviceId",
        "deviceTemplateName"
      ],
      "members": {
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the project containing the placement in which to associate the device.</p>",
          "location": "uri",
          "locationName": "projectName"
        },
        "placementName": {
          "shape": "PlacementName",
          "documentation": "<p>The name of the placement in which to associate the device.</p>",
          "location": "uri",
          "locationName": "placementName"
        },
        "deviceId": {
          "shape": "DeviceId",
          "documentation": "<p>The ID of the physical device to be associated with the given placement in the project. Note that a mandatory 4 character prefix is required for all <code>deviceId</code> values.</p>"
        },
        "deviceTemplateName": {
          "shape": "DeviceTemplateName",
          "documentation": "<p>The device template name to associate with the device ID.</p>",
          "location": "uri",
          "locationName": "deviceTemplateName"
        }
      }
    },
    "AssociateDeviceWithPlacementResponse": {
      "type": "structure",
      "members": {}
    },
    "AttributeDefaultValue": {
      "type": "string",
      "max": 800
    },
    "AttributeName": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "AttributeValue": {
      "type": "string",
      "max": 800
    },
    "CreatePlacementRequest": {
      "type": "structure",
      "required": [
        "placementName",
        "projectName"
      ],
      "members": {
        "placementName": {
          "shape": "PlacementName",
          "documentation": "<p>The name of the placement to be created.</p>"
        },
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the project in which to create the placement.</p>",
          "location": "uri",
          "locationName": "projectName"
        },
        "attributes": {
          "shape": "PlacementAttributeMap",
          "documentation": "<p>Optional user-defined key/value pairs providing contextual data (such as location or function) for the placement.</p>"
        }
      }
    },
    "CreatePlacementResponse": {
      "type": "structure",
      "members": {}
    },
    "CreateProjectRequest": {
      "type": "structure",
      "required": [
        "projectName"
      ],
      "members": {
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the project to create.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>An optional description for the project.</p>"
        },
        "placementTemplate": {
          "shape": "PlacementTemplate",
          "documentation": "<p>The schema defining the placement to be created. A placement template defines placement default attributes and device templates. You cannot add or remove device templates after the project has been created. However, you can update <code>callbackOverrides</code> for the device templates using the <code>UpdateProject</code> API.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>Optional tags (metadata key/value pairs) to be associated with the project. For example, <code>{ {\"key1\": \"value1\", \"key2\": \"value2\"} }</code>. For more information, see <a href=\"https://aws.amazon.com/answers/account-management/aws-tagging-strategies/\">AWS Tagging Strategies</a>.</p>"
        }
      }
    },
    "CreateProjectResponse": {
      "type": "structure",
      "members": {}
    },
    "DefaultPlacementAttributeMap": {
      "type": "map",
      "key": {
        "shape": "AttributeName"
      },
      "value": {
        "shape": "AttributeDefaultValue"
      }
    },
    "DeletePlacementRequest": {
      "type": "structure",
      "required": [
        "placementName",
        "projectName"
      ],
      "members": {
        "placementName": {
          "shape": "PlacementName",
          "documentation": "<p>The name of the empty placement to delete.</p>",
          "location": "uri",
          "locationName": "placementName"
        },
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The project containing the empty placement to delete.</p>",
          "location": "uri",
          "locationName": "projectName"
        }
      }
    },
    "DeletePlacementResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteProjectRequest": {
      "type": "structure",
      "required": [
        "projectName"
      ],
      "members": {
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the empty project to delete.</p>",
          "location": "uri",
          "locationName": "projectName"
        }
      }
    },
    "DeleteProjectResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribePlacementRequest": {
      "type": "structure",
      "required": [
        "placementName",
        "projectName"
      ],
      "members": {
        "placementName": {
          "shape": "PlacementName",
          "documentation": "<p>The name of the placement within a project.</p>",
          "location": "uri",
          "locationName": "placementName"
        },
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The project containing the placement to be described.</p>",
          "location": "uri",
          "locationName": "projectName"
        }
      }
    },
    "DescribePlacementResponse": {
      "type": "structure",
      "required": [
        "placement"
      ],
      "members": {
        "placement": {
          "shape": "PlacementDescription",
          "documentation": "<p>An object describing the placement.</p>"
        }
      }
    },
    "DescribeProjectRequest": {
      "type": "structure",
      "required": [
        "projectName"
      ],
      "members": {
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the project to be described.</p>",
          "location": "uri",
          "locationName": "projectName"
        }
      }
    },
    "DescribeProjectResponse": {
      "type": "structure",
      "required": [
        "project"
      ],
      "members": {
        "project": {
          "shape": "ProjectDescription",
          "documentation": "<p>An object describing the project.</p>"
        }
      }
    },
    "Description": {
      "type": "string",
      "max": 500,
      "min": 0
    },
    "DeviceCallbackKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "DeviceCallbackOverrideMap": {
      "type": "map",
      "key": {
        "shape": "DeviceCallbackKey"
      },
      "value": {
        "shape": "DeviceCallbackValue"
      }
    },
    "DeviceCallbackValue": {
      "type": "string",
      "max": 200
    },
    "DeviceId": {
      "type": "string",
      "max": 32,
      "min": 1
    },
    "DeviceMap": {
      "type": "map",
      "key": {
        "shape": "DeviceTemplateName"
      },
      "value": {
        "shape": "DeviceId"
      }
    },
    "DeviceTemplate": {
      "type": "structure",
      "members": {
        "deviceType": {
          "shape": "DeviceType",
          "documentation": "<p>The device type, which currently must be <code>\"button\"</code>.</p>"
        },
        "callbackOverrides": {
          "shape": "DeviceCallbackOverrideMap",
          "documentation": "<p>An optional Lambda function to invoke instead of the default Lambda function provided by the placement template.</p>"
        }
      },
      "documentation": "<p>An object representing a device for a placement template (see <a>PlacementTemplate</a>).</p>"
    },
    "DeviceTemplateMap": {
      "type": "map",
      "key": {
        "shape": "DeviceTemplateName"
      },
      "value": {
        "shape": "DeviceTemplate"
      }
    },
    "DeviceTemplateName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^[a-zA-Z0-9_-]+$"
    },
    "DeviceType": {
      "type": "string",
      "max": 128
    },
    "DisassociateDeviceFromPlacementRequest": {
      "type": "structure",
      "required": [
        "projectName",
        "placementName",
        "deviceTemplateName"
      ],
      "members": {
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the project that contains the placement.</p>",
          "location": "uri",
          "locationName": "projectName"
        },
        "placementName": {
          "shape": "PlacementName",
          "documentation": "<p>The name of the placement that the device should be removed from.</p>",
          "location": "uri",
          "locationName": "placementName"
        },
        "deviceTemplateName": {
          "shape": "DeviceTemplateName",
          "documentation": "<p>The device ID that should be removed from the placement.</p>",
          "location": "uri",
          "locationName": "deviceTemplateName"
        }
      }
    },
    "DisassociateDeviceFromPlacementResponse": {
      "type": "structure",
      "members": {}
    },
    "GetDevicesInPlacementRequest": {
      "type": "structure",
      "required": [
        "projectName",
        "placementName"
      ],
      "members": {
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the project containing the placement.</p>",
          "location": "uri",
          "locationName": "projectName"
        },
        "placementName": {
          "shape": "PlacementName",
          "documentation": "<p>The name of the placement to get the devices from.</p>",
          "location": "uri",
          "locationName": "placementName"
        }
      }
    },
    "GetDevicesInPlacementResponse": {
      "type": "structure",
      "required": [
        "devices"
      ],
      "members": {
        "devices": {
          "shape": "DeviceMap",
          "documentation": "<p>An object containing the devices (zero or more) within the placement.</p>"
        }
      }
    },
    "ListPlacementsRequest": {
      "type": "structure",
      "required": [
        "projectName"
      ],
      "members": {
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The project containing the placements to be listed.</p>",
          "location": "uri",
          "locationName": "projectName"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to retrieve the next set of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return per request. If not set, a default value of 100 is used.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListPlacementsResponse": {
      "type": "structure",
      "required": [
        "placements"
      ],
      "members": {
        "placements": {
          "shape": "PlacementSummaryList",
          "documentation": "<p>An object listing the requested placements.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token used to retrieve the next set of results - will be effectively empty if there are no further results.</p>"
        }
      }
    },
    "ListProjectsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to retrieve the next set of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return per request. If not set, a default value of 100 is used.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListProjectsResponse": {
      "type": "structure",
      "required": [
        "projects"
      ],
      "members": {
        "projects": {
          "shape": "ProjectSummaryList",
          "documentation": "<p>An object containing the list of projects.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token used to retrieve the next set of results - will be effectively empty if there are no further results.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "ProjectArn",
          "documentation": "<p>The ARN of the resource whose tags you want to list.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags (metadata key/value pairs) which you have assigned to the resource.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 250,
      "min": 1
    },
    "NextToken": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "PlacementAttributeMap": {
      "type": "map",
      "key": {
        "shape": "AttributeName"
      },
      "value": {
        "shape": "AttributeValue"
      }
    },
    "PlacementDescription": {
      "type": "structure",
      "required": [
        "projectName",
        "placementName",
        "attributes",
        "createdDate",
        "updatedDate"
      ],
      "members": {
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the project containing the placement.</p>"
        },
        "placementName": {
          "shape": "PlacementName",
          "documentation": "<p>The name of the placement.</p>"
        },
        "attributes": {
          "shape": "PlacementAttributeMap",
          "documentation": "<p>The user-defined attributes associated with the placement.</p>"
        },
        "createdDate": {
          "shape": "Time",
          "documentation": "<p>The date when the placement was initially created, in UNIX epoch time format.</p>"
        },
        "updatedDate": {
          "shape": "Time",
          "documentation": "<p>The date when the placement was last updated, in UNIX epoch time format. If the placement was not updated, then <code>createdDate</code> and <code>updatedDate</code> are the same.</p>"
        }
      },
      "documentation": "<p>An object describing a project's placement.</p>"
    },
    "PlacementName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^[a-zA-Z0-9_-]+$"
    },
    "PlacementSummary": {
      "type": "structure",
      "required": [
        "projectName",
        "placementName",
        "createdDate",
        "updatedDate"
      ],
      "members": {
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the project containing the placement.</p>"
        },
        "placementName": {
          "shape": "PlacementName",
          "documentation": "<p>The name of the placement being summarized.</p>"
        },
        "createdDate": {
          "shape": "Time",
          "documentation": "<p>The date when the placement was originally created, in UNIX epoch time format.</p>"
        },
        "updatedDate": {
          "shape": "Time",
          "documentation": "<p>The date when the placement was last updated, in UNIX epoch time format. If the placement was not updated, then <code>createdDate</code> and <code>updatedDate</code> are the same.</p>"
        }
      },
      "documentation": "<p>An object providing summary information for a particular placement.</p>"
    },
    "PlacementSummaryList": {
      "type": "list",
      "member": {
        "shape": "PlacementSummary"
      }
    },
    "PlacementTemplate": {
      "type": "structure",
      "members": {
        "defaultAttributes": {
          "shape": "DefaultPlacementAttributeMap",
          "documentation": "<p>The default attributes (key/value pairs) to be applied to all placements using this template.</p>"
        },
        "deviceTemplates": {
          "shape": "DeviceTemplateMap",
          "documentation": "<p>An object specifying the <a>DeviceTemplate</a> for all placements using this (<a>PlacementTemplate</a>) template.</p>"
        }
      },
      "documentation": "<p>An object defining the template for a placement.</p>"
    },
    "ProjectArn": {
      "type": "string",
      "pattern": "^arn:aws:iot1click:[A-Za-z0-9_/.-]{0,63}:\\d+:projects/[0-9A-Za-z_-]{1,128}$"
    },
    "ProjectDescription": {
      "type": "structure",
      "required": [
        "projectName",
        "createdDate",
        "updatedDate"
      ],
      "members": {
        "arn": {
          "shape": "ProjectArn",
          "documentation": "<p>The ARN of the project.</p>"
        },
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the project for which to obtain information from.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The description of the project.</p>"
        },
        "createdDate": {
          "shape": "Time",
          "documentation": "<p>The date when the project was originally created, in UNIX epoch time format.</p>"
        },
        "updatedDate": {
          "shape": "Time",
          "documentation": "<p>The date when the project was last updated, in UNIX epoch time format. If the project was not updated, then <code>createdDate</code> and <code>updatedDate</code> are the same.</p>"
        },
        "placementTemplate": {
          "shape": "PlacementTemplate",
          "documentation": "<p>An object describing the project's placement specifications.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags (metadata key/value pairs) associated with the project.</p>"
        }
      },
      "documentation": "<p>An object providing detailed information for a particular project associated with an AWS account and region.</p>"
    },
    "ProjectName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^[0-9A-Za-z_-]+$"
    },
    "ProjectSummary": {
      "type": "structure",
      "required": [
        "projectName",
        "createdDate",
        "updatedDate"
      ],
      "members": {
        "arn": {
          "shape": "ProjectArn",
          "documentation": "<p>The ARN of the project.</p>"
        },
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the project being summarized.</p>"
        },
        "createdDate": {
          "shape": "Time",
          "documentation": "<p>The date when the project was originally created, in UNIX epoch time format.</p>"
        },
        "updatedDate": {
          "shape": "Time",
          "documentation": "<p>The date when the project was last updated, in UNIX epoch time format. If the project was not updated, then <code>createdDate</code> and <code>updatedDate</code> are the same.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags (metadata key/value pairs) associated with the project.</p>"
        }
      },
      "documentation": "<p>An object providing summary information for a particular project for an associated AWS account and region.</p>"
    },
    "ProjectSummaryList": {
      "type": "list",
      "member": {
        "shape": "ProjectSummary"
      }
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^(?!aws:)[a-zA-Z+-=._:/]+$"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 50,
      "min": 1
    },
    "TagMap": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      },
      "max": 50,
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
          "shape": "ProjectArn",
          "documentation": "<p>The ARN of the resouce for which tag(s) should be added or modified.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The new or modifying tag(s) for the resource. See <a href=\"https://docs.aws.amazon.com/iot-1-click/latest/developerguide/1click-appendix.html#1click-limits\">AWS IoT 1-Click Service Limits</a> for the maximum number of tags allowed per resource.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256
    },
    "Time": {
      "type": "timestamp"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "ProjectArn",
          "documentation": "<p>The ARN of the resource whose tag you want to remove.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The keys of those tags which you want to remove.</p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdatePlacementRequest": {
      "type": "structure",
      "required": [
        "placementName",
        "projectName"
      ],
      "members": {
        "placementName": {
          "shape": "PlacementName",
          "documentation": "<p>The name of the placement to update.</p>",
          "location": "uri",
          "locationName": "placementName"
        },
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the project containing the placement to be updated.</p>",
          "location": "uri",
          "locationName": "projectName"
        },
        "attributes": {
          "shape": "PlacementAttributeMap",
          "documentation": "<p>The user-defined object of attributes used to update the placement. The maximum number of key/value pairs is 50.</p>"
        }
      }
    },
    "UpdatePlacementResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateProjectRequest": {
      "type": "structure",
      "required": [
        "projectName"
      ],
      "members": {
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the project to be updated.</p>",
          "location": "uri",
          "locationName": "projectName"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>An optional user-defined description for the project.</p>"
        },
        "placementTemplate": {
          "shape": "PlacementTemplate",
          "documentation": "<p>An object defining the project update. Once a project has been created, you cannot add device template names to the project. However, for a given <code>placementTemplate</code>, you can update the associated <code>callbackOverrides</code> for the device definition using this API.</p>"
        }
      }
    },
    "UpdateProjectResponse": {
      "type": "structure",
      "members": {}
    }
  },
  "documentation": "<p>The AWS IoT 1-Click Projects API Reference</p>"
}
]===]))
