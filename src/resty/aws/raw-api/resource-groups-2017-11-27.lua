local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-11-27",
    "endpointPrefix": "resource-groups",
    "protocol": "rest-json",
    "serviceAbbreviation": "Resource Groups",
    "serviceFullName": "AWS Resource Groups",
    "serviceId": "Resource Groups",
    "signatureVersion": "v4",
    "signingName": "resource-groups",
    "uid": "resource-groups-2017-11-27"
  },
  "operations": {
    "CreateGroup": {
      "name": "CreateGroup",
      "http": {
        "method": "POST",
        "requestUri": "/groups"
      },
      "input": {
        "shape": "CreateGroupInput"
      },
      "output": {
        "shape": "CreateGroupOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "MethodNotAllowedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Creates a resource group with the specified name and description. You can optionally include a resource query, or a service configuration.</p>"
    },
    "DeleteGroup": {
      "name": "DeleteGroup",
      "http": {
        "method": "POST",
        "requestUri": "/delete-group"
      },
      "input": {
        "shape": "DeleteGroupInput"
      },
      "output": {
        "shape": "DeleteGroupOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "MethodNotAllowedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Deletes the specified resource group. Deleting a resource group does not delete any resources that are members of the group; it only deletes the group structure.</p>"
    },
    "GetGroup": {
      "name": "GetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/get-group"
      },
      "input": {
        "shape": "GetGroupInput"
      },
      "output": {
        "shape": "GetGroupOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "MethodNotAllowedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Returns information about a specified resource group.</p>"
    },
    "GetGroupConfiguration": {
      "name": "GetGroupConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/get-group-configuration"
      },
      "input": {
        "shape": "GetGroupConfigurationInput"
      },
      "output": {
        "shape": "GetGroupConfigurationOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "MethodNotAllowedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Returns the service configuration associated with the specified resource group. AWS Resource Groups supports configurations for the following resource group types:</p> <ul> <li> <p> <code>AWS::EC2::CapacityReservationPool</code> - Amazon EC2 capacity reservation pools. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-reservations-using.html#create-cr-group\">Working with capacity reservation groups</a> in the <i>EC2 Users Guide</i>.</p> </li> </ul>"
    },
    "GetGroupQuery": {
      "name": "GetGroupQuery",
      "http": {
        "method": "POST",
        "requestUri": "/get-group-query"
      },
      "input": {
        "shape": "GetGroupQueryInput"
      },
      "output": {
        "shape": "GetGroupQueryOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "MethodNotAllowedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Retrieves the resource query associated with the specified resource group.</p>"
    },
    "GetTags": {
      "name": "GetTags",
      "http": {
        "method": "GET",
        "requestUri": "/resources/{Arn}/tags"
      },
      "input": {
        "shape": "GetTagsInput"
      },
      "output": {
        "shape": "GetTagsOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "MethodNotAllowedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Returns a list of tags that are associated with a resource group, specified by an ARN.</p>"
    },
    "GroupResources": {
      "name": "GroupResources",
      "http": {
        "method": "POST",
        "requestUri": "/group-resources"
      },
      "input": {
        "shape": "GroupResourcesInput"
      },
      "output": {
        "shape": "GroupResourcesOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "MethodNotAllowedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Adds the specified resources to the specified group.</p>"
    },
    "ListGroupResources": {
      "name": "ListGroupResources",
      "http": {
        "method": "POST",
        "requestUri": "/list-group-resources"
      },
      "input": {
        "shape": "ListGroupResourcesInput"
      },
      "output": {
        "shape": "ListGroupResourcesOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "MethodNotAllowedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Returns a list of ARNs of the resources that are members of a specified resource group.</p>"
    },
    "ListGroups": {
      "name": "ListGroups",
      "http": {
        "method": "POST",
        "requestUri": "/groups-list"
      },
      "input": {
        "shape": "ListGroupsInput"
      },
      "output": {
        "shape": "ListGroupsOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "MethodNotAllowedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Returns a list of existing resource groups in your account.</p>"
    },
    "SearchResources": {
      "name": "SearchResources",
      "http": {
        "method": "POST",
        "requestUri": "/resources/search"
      },
      "input": {
        "shape": "SearchResourcesInput"
      },
      "output": {
        "shape": "SearchResourcesOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "MethodNotAllowedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Returns a list of AWS resource identifiers that matches tne specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.</p>"
    },
    "Tag": {
      "name": "Tag",
      "http": {
        "method": "PUT",
        "requestUri": "/resources/{Arn}/tags"
      },
      "input": {
        "shape": "TagInput"
      },
      "output": {
        "shape": "TagOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "MethodNotAllowedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Adds tags to a resource group with the specified ARN. Existing tags on a resource group are not changed if they are not specified in the request parameters.</p> <important> <p>Do not store personally identifiable information (PII) or other confidential or sensitive information in tags. We use tags to provide you with billing and administration services. Tags are not intended to be used for private or sensitive data.</p> </important>"
    },
    "UngroupResources": {
      "name": "UngroupResources",
      "http": {
        "method": "POST",
        "requestUri": "/ungroup-resources"
      },
      "input": {
        "shape": "UngroupResourcesInput"
      },
      "output": {
        "shape": "UngroupResourcesOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "MethodNotAllowedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Removes the specified resources from the specified group.</p>"
    },
    "Untag": {
      "name": "Untag",
      "http": {
        "method": "PATCH",
        "requestUri": "/resources/{Arn}/tags"
      },
      "input": {
        "shape": "UntagInput"
      },
      "output": {
        "shape": "UntagOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "MethodNotAllowedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Deletes tags from a specified resource group.</p>"
    },
    "UpdateGroup": {
      "name": "UpdateGroup",
      "http": {
        "method": "POST",
        "requestUri": "/update-group"
      },
      "input": {
        "shape": "UpdateGroupInput"
      },
      "output": {
        "shape": "UpdateGroupOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "MethodNotAllowedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Updates the description for an existing group. You cannot update the name of a resource group.</p>"
    },
    "UpdateGroupQuery": {
      "name": "UpdateGroupQuery",
      "http": {
        "method": "POST",
        "requestUri": "/update-group-query"
      },
      "input": {
        "shape": "UpdateGroupQueryInput"
      },
      "output": {
        "shape": "UpdateGroupQueryOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "MethodNotAllowedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Updates the resource query of a group.</p>"
    }
  },
  "shapes": {
    "CreateGroupInput": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "GroupName",
          "documentation": "<p>The name of the group, which is the identifier of the group in other operations. You can't change the name of a resource group after you create it. A resource group name can consist of letters, numbers, hyphens, periods, and underscores. The name cannot start with <code>AWS</code> or <code>aws</code>; these are reserved. A resource group name must be unique within each AWS Region in your AWS account.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description of the resource group. Descriptions can consist of letters, numbers, hyphens, underscores, periods, and spaces.</p>"
        },
        "ResourceQuery": {
          "shape": "ResourceQuery",
          "documentation": "<p>The resource query that determines which AWS resources are members of this group.</p> <note> <p>You can specify either a <code>ResourceQuery</code> or a <code>Configuration</code>, but not both.</p> </note>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags to add to the group. A tag is key-value pair string.</p>"
        },
        "Configuration": {
          "shape": "GroupConfigurationList",
          "documentation": "<p>A configuration associates the resource group with an AWS service and specifies how the service can interact with the resources in the group. A configuration is an array of <a>GroupConfigurationItem</a> elements.</p> <note> <p>You can specify either a <code>Configuration</code> or a <code>ResourceQuery</code> in a group, but not both.</p> </note>"
        }
      }
    },
    "CreateGroupOutput": {
      "type": "structure",
      "members": {
        "Group": {
          "shape": "Group",
          "documentation": "<p>The description of the resource group.</p>"
        },
        "ResourceQuery": {
          "shape": "ResourceQuery",
          "documentation": "<p>The resource query associated with the group.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags associated with the group.</p>"
        },
        "GroupConfiguration": {
          "shape": "GroupConfiguration",
          "documentation": "<p>The service configuration associated with the resource group. AWS Resource Groups supports adding service configurations for the following resource group types:</p> <ul> <li> <p> <code>AWS::EC2::CapacityReservationPool</code> - Amazon EC2 capacity reservation pools. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-reservations-using.html#create-cr-group\">Working with capacity reservation groups</a> in the <i>EC2 Users Guide</i>.</p> </li> </ul>"
        }
      }
    },
    "DeleteGroupInput": {
      "type": "structure",
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>Don't use this parameter. Use <code>Group</code> instead.</p>",
          "deprecated": true,
          "deprecatedMessage": "This field is deprecated, use Group instead."
        },
        "Group": {
          "shape": "GroupString",
          "documentation": "<p>The name or the ARN of the resource group to delete.</p>"
        }
      }
    },
    "DeleteGroupOutput": {
      "type": "structure",
      "members": {
        "Group": {
          "shape": "Group",
          "documentation": "<p>A full description of the deleted resource group.</p>"
        }
      }
    },
    "Description": {
      "type": "string",
      "max": 512,
      "pattern": "[\\sa-zA-Z0-9_\\.-]*"
    },
    "ErrorCode": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "ErrorMessage": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "FailedResource": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The ARN of the resource that failed to be added or removed.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>The error message text associated with the failure.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The error code associated with the failure.</p>"
        }
      },
      "documentation": "<p>A resource that failed to be added to or removed from a group.</p>"
    },
    "FailedResourceList": {
      "type": "list",
      "member": {
        "shape": "FailedResource"
      }
    },
    "GetGroupConfigurationInput": {
      "type": "structure",
      "members": {
        "Group": {
          "shape": "GroupString",
          "documentation": "<p>The name or the ARN of the resource group.</p>"
        }
      }
    },
    "GetGroupConfigurationOutput": {
      "type": "structure",
      "members": {
        "GroupConfiguration": {
          "shape": "GroupConfiguration",
          "documentation": "<p>The configuration associated with the specified group.</p>"
        }
      }
    },
    "GetGroupInput": {
      "type": "structure",
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>Don't use this parameter. Use <code>Group</code> instead.</p>",
          "deprecated": true,
          "deprecatedMessage": "This field is deprecated, use Group instead."
        },
        "Group": {
          "shape": "GroupString",
          "documentation": "<p>The name or the ARN of the resource group to retrieve.</p>"
        }
      }
    },
    "GetGroupOutput": {
      "type": "structure",
      "members": {
        "Group": {
          "shape": "Group",
          "documentation": "<p>A full description of the resource group.</p>"
        }
      }
    },
    "GetGroupQueryInput": {
      "type": "structure",
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>Don't use this parameter. Use <code>Group</code> instead.</p>",
          "deprecated": true,
          "deprecatedMessage": "This field is deprecated, use Group instead."
        },
        "Group": {
          "shape": "GroupString",
          "documentation": "<p>The name or the ARN of the resource group to query.</p>"
        }
      }
    },
    "GetGroupQueryOutput": {
      "type": "structure",
      "members": {
        "GroupQuery": {
          "shape": "GroupQuery",
          "documentation": "<p>The resource query associated with the specified group.</p>"
        }
      }
    },
    "GetTagsInput": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "GroupArn",
          "documentation": "<p>The ARN of the resource group whose tags you want to retrieve.</p>",
          "location": "uri",
          "locationName": "Arn"
        }
      }
    },
    "GetTagsOutput": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "GroupArn",
          "documentation": "<p>The ARN of the tagged resource group.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags associated with the specified resource group.</p>"
        }
      }
    },
    "Group": {
      "type": "structure",
      "required": [
        "GroupArn",
        "Name"
      ],
      "members": {
        "GroupArn": {
          "shape": "GroupArn",
          "documentation": "<p>The ARN of the resource group.</p>"
        },
        "Name": {
          "shape": "GroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description of the resource group.</p>"
        }
      },
      "documentation": "<p>A resource group that contains AWS resources. You can assign resources to the group by associating either of the following elements with the group:</p> <ul> <li> <p> <a>ResourceQuery</a> - Use a resource query to specify a set of tag keys and values. All resources in the same AWS Region and AWS account that have those keys with the same values are included in the group. You can add a resource query when you create the group.</p> </li> <li> <p> <a>GroupConfiguration</a> - Use a service configuration to associate the group with an AWS service. The configuration specifies which resource types can be included in the group.</p> </li> </ul>"
    },
    "GroupArn": {
      "type": "string",
      "max": 1600,
      "min": 12,
      "pattern": "arn:aws(-[a-z]+)*:resource-groups:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,128}"
    },
    "GroupConfiguration": {
      "type": "structure",
      "members": {
        "Configuration": {
          "shape": "GroupConfigurationList",
          "documentation": "<p>The configuration currently associated with the group and in effect.</p>"
        },
        "ProposedConfiguration": {
          "shape": "GroupConfigurationList",
          "documentation": "<p>If present, the new configuration that is in the process of being applied to the group.</p>"
        },
        "Status": {
          "shape": "GroupConfigurationStatus",
          "documentation": "<p>The current status of an attempt to update the group configuration.</p>"
        },
        "FailureReason": {
          "shape": "GroupConfigurationFailureReason",
          "documentation": "<p>If present, the reason why a request to update the group configuration failed.</p>"
        }
      },
      "documentation": "<p>A service configuration associated with a resource group. The configuration options are determined by the AWS service that defines the <code>Type</code>, and specifies which resources can be included in the group. You can add a service configuration when you create the group.</p>"
    },
    "GroupConfigurationFailureReason": {
      "type": "string"
    },
    "GroupConfigurationItem": {
      "type": "structure",
      "required": [
        "Type"
      ],
      "members": {
        "Type": {
          "shape": "GroupConfigurationType",
          "documentation": "<p>Specifies the type of group configuration item. Each item must have a unique value for <code>type</code>.</p> <p>You can specify the following string values:</p> <ul> <li> <p> <code>AWS::EC2::CapacityReservationPool</code> </p> <p>For more information about EC2 capacity reservation groups, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-reservations-using.html#create-cr-group\">Working with capacity reservation groups</a> in the <i>EC2 Users Guide</i>.</p> </li> <li> <p> <code>AWS::ResourceGroups::Generic</code> - Supports parameters that configure the behavior of resource groups of any type.</p> </li> </ul>"
        },
        "Parameters": {
          "shape": "GroupParameterList",
          "documentation": "<p>A collection of parameters for this group configuration item.</p>"
        }
      },
      "documentation": "<p>An item in a group configuration. A group configuration can have one or more items.</p>"
    },
    "GroupConfigurationList": {
      "type": "list",
      "member": {
        "shape": "GroupConfigurationItem"
      },
      "max": 2
    },
    "GroupConfigurationParameter": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "GroupConfigurationParameterName",
          "documentation": "<p>The name of the group configuration parameter.</p> <p>You can specify the following string values:</p> <ul> <li> <p>For configuration item type <code>AWS::ResourceGroups::Generic</code>:</p> <ul> <li> <p> <code>allowed-resource-types</code> </p> <p>Specifies the types of resources that you can add to this group by using the <a>GroupResources</a> operation.</p> </li> </ul> </li> <li> <p>For configuration item type <code>AWS::EC2::CapacityReservationPool</code>:</p> <ul> <li> <p>None - This configuration item type doesn't support any parameters.</p> </li> </ul> <p>For more information about EC2 capacity reservation groups, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-reservations-using.html#create-cr-group\">Working with capacity reservation groups</a> in the <i>EC2 Users Guide</i>.</p> </li> </ul>"
        },
        "Values": {
          "shape": "GroupConfigurationParameterValueList",
          "documentation": "<p>The values of for this parameter.</p> <p>You can specify the following string value:</p> <ul> <li> <p>For item type <code>allowed-resource-types</code>: the only supported parameter value is <code>AWS::EC2::CapacityReservation</code>.</p> </li> </ul>"
        }
      },
      "documentation": "<p>A parameter for a group configuration item.</p>"
    },
    "GroupConfigurationParameterName": {
      "type": "string",
      "max": 40,
      "min": 1,
      "pattern": "[a-z-]+"
    },
    "GroupConfigurationParameterValue": {
      "type": "string",
      "max": 40,
      "min": 1,
      "pattern": "[a-zA-Z0-9:]+"
    },
    "GroupConfigurationParameterValueList": {
      "type": "list",
      "member": {
        "shape": "GroupConfigurationParameterValue"
      }
    },
    "GroupConfigurationStatus": {
      "type": "string",
      "enum": [
        "UPDATING",
        "UPDATE_COMPLETE",
        "UPDATE_FAILED"
      ]
    },
    "GroupConfigurationType": {
      "type": "string",
      "max": 40,
      "pattern": "AWS::[a-zA-Z0-9]+::[a-zA-Z0-9]+"
    },
    "GroupFilter": {
      "type": "structure",
      "required": [
        "Name",
        "Values"
      ],
      "members": {
        "Name": {
          "shape": "GroupFilterName",
          "documentation": "<p>The name of the filter. Filter names are case-sensitive.</p>"
        },
        "Values": {
          "shape": "GroupFilterValues",
          "documentation": "<p>One or more filter values. Allowed filter values vary by group filter name, and are case-sensitive.</p>"
        }
      },
      "documentation": "<p>A filter collection that you can use to restrict the results from a <code>List</code> operation to only those you want to include.</p>"
    },
    "GroupFilterList": {
      "type": "list",
      "member": {
        "shape": "GroupFilter"
      }
    },
    "GroupFilterName": {
      "type": "string",
      "enum": [
        "resource-type",
        "configuration-type"
      ]
    },
    "GroupFilterValue": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "AWS::(AllSupported|[a-zA-Z0-9]+::[a-zA-Z0-9]+)"
    },
    "GroupFilterValues": {
      "type": "list",
      "member": {
        "shape": "GroupFilterValue"
      },
      "max": 5,
      "min": 1
    },
    "GroupIdentifier": {
      "type": "structure",
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "GroupArn": {
          "shape": "GroupArn",
          "documentation": "<p>The ARN of the resource group.</p>"
        }
      },
      "documentation": "<p>The unique identifiers for a resource group.</p>"
    },
    "GroupIdentifierList": {
      "type": "list",
      "member": {
        "shape": "GroupIdentifier"
      }
    },
    "GroupList": {
      "type": "list",
      "member": {
        "shape": "Group"
      }
    },
    "GroupName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9_\\.-]+"
    },
    "GroupParameterList": {
      "type": "list",
      "member": {
        "shape": "GroupConfigurationParameter"
      }
    },
    "GroupQuery": {
      "type": "structure",
      "required": [
        "GroupName",
        "ResourceQuery"
      ],
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The name of the resource group that is associated with the specified resource query.</p>"
        },
        "ResourceQuery": {
          "shape": "ResourceQuery",
          "documentation": "<p>The resource query that determines which AWS resources are members of the associated resource group.</p>"
        }
      },
      "documentation": "<p>A mapping of a query attached to a resource group that determines the AWS resources that are members of the group.</p>"
    },
    "GroupResourcesInput": {
      "type": "structure",
      "required": [
        "Group",
        "ResourceArns"
      ],
      "members": {
        "Group": {
          "shape": "GroupString",
          "documentation": "<p>The name or the ARN of the resource group to add resources to.</p>"
        },
        "ResourceArns": {
          "shape": "ResourceArnList",
          "documentation": "<p>The list of ARNs for resources to be added to the group. </p>"
        }
      }
    },
    "GroupResourcesOutput": {
      "type": "structure",
      "members": {
        "Succeeded": {
          "shape": "ResourceArnList",
          "documentation": "<p>The ARNs of the resources that were successfully added to the group by this operation.</p>"
        },
        "Failed": {
          "shape": "FailedResourceList",
          "documentation": "<p>The ARNs of the resources that failed to be added to the group by this operation.</p>"
        }
      }
    },
    "GroupString": {
      "type": "string",
      "max": 1600,
      "min": 1,
      "pattern": "(arn:aws(-[a-z]+)*:resource-groups:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/)?[a-zA-Z0-9_\\.-]{1,128}"
    },
    "ListGroupResourcesInput": {
      "type": "structure",
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>Don't use this parameter. Use <code>Group</code> instead.</p>",
          "deprecated": true,
          "deprecatedMessage": "This field is deprecated, use Group instead."
        },
        "Group": {
          "shape": "GroupString",
          "documentation": "<p>The name or the ARN of the resource group</p>"
        },
        "Filters": {
          "shape": "ResourceFilterList",
          "documentation": "<p>Filters, formatted as <a>ResourceFilter</a> objects, that you want to apply to a <code>ListGroupResources</code> operation. Filters the results to include only those of the specified resource types.</p> <ul> <li> <p> <code>resource-type</code> - Filter resources by their type. Specify up to five resource types in the format <code>AWS::ServiceCode::ResourceType</code>. For example, <code>AWS::EC2::Instance</code>, or <code>AWS::S3::Bucket</code>. </p> </li> </ul> <p>When you specify a <code>resource-type</code> filter for <code>ListGroupResources</code>, AWS Resource Groups validates your filter resource types against the types that are defined in the query associated with the group. For example, if a group contains only S3 buckets because its query specifies only that resource type, but your <code>resource-type</code> filter includes EC2 instances, AWS Resource Groups does not filter for EC2 instances. In this case, a <code>ListGroupResources</code> request returns a <code>BadRequestException</code> error with a message similar to the following:</p> <p> <code>The resource types specified as filters in the request are not valid.</code> </p> <p>The error includes a list of resource types that failed the validation because they are not part of the query associated with the group. This validation doesn't occur when the group query specifies <code>AWS::AllSupported</code>, because a group based on such a query can contain any of the allowed resource types for the query type (tag-based or AWS CloudFormation stack-based queries).</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value provided by a previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        }
      }
    },
    "ListGroupResourcesOutput": {
      "type": "structure",
      "members": {
        "ResourceIdentifiers": {
          "shape": "ResourceIdentifierList",
          "documentation": "<p>The ARNs and resource types of resources that are members of the group that you specified.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        },
        "QueryErrors": {
          "shape": "QueryErrorList",
          "documentation": "<p>A list of <code>QueryError</code> objects. Each error is an object that contains <code>ErrorCode</code> and <code>Message</code> structures. Possible values for <code>ErrorCode</code> are <code>CLOUDFORMATION_STACK_INACTIVE</code> and <code>CLOUDFORMATION_STACK_NOT_EXISTING</code>.</p>"
        }
      }
    },
    "ListGroupsInput": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "GroupFilterList",
          "documentation": "<p>Filters, formatted as <a>GroupFilter</a> objects, that you want to apply to a <code>ListGroups</code> operation.</p> <ul> <li> <p> <code>resource-type</code> - Filter the results to include only those of the specified resource types. Specify up to five resource types in the format <code>AWS::<i>ServiceCode</i>::<i>ResourceType</i> </code>. For example, <code>AWS::EC2::Instance</code>, or <code>AWS::S3::Bucket</code>.</p> </li> <li> <p> <code>configuration-type</code> - Filter the results to include only those groups that have the specified configuration types attached. The current supported values are:</p> <ul> <li> <p>AWS:EC2::CapacityReservationPool</p> </li> </ul> </li> </ul>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value provided by a previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListGroupsOutput": {
      "type": "structure",
      "members": {
        "GroupIdentifiers": {
          "shape": "GroupIdentifierList",
          "documentation": "<p>A list of <a>GroupIdentifier</a> objects. Each identifier is an object that contains both the <code>Name</code> and the <code>GroupArn</code>.</p>"
        },
        "Groups": {
          "shape": "GroupList",
          "documentation": "<p>This output element is deprecated and shouldn't be used. Refer to <code>GroupIdentifiers</code> instead.</p>",
          "deprecated": true,
          "deprecatedMessage": "This field is deprecated, use GroupIdentifiers instead."
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "NextToken": {
      "type": "string",
      "max": 8192,
      "min": 0,
      "pattern": "^[a-zA-Z0-9+/]*={0,2}$"
    },
    "Query": {
      "type": "string",
      "max": 4096,
      "pattern": "[\\s\\S]*"
    },
    "QueryError": {
      "type": "structure",
      "members": {
        "ErrorCode": {
          "shape": "QueryErrorCode",
          "documentation": "<p>Possible values are <code>CLOUDFORMATION_STACK_INACTIVE</code> and <code>CLOUDFORMATION_STACK_NOT_EXISTING</code>.</p>"
        },
        "Message": {
          "shape": "QueryErrorMessage",
          "documentation": "<p>A message that explains the <code>ErrorCode</code> value. Messages might state that the specified CloudFormation stack does not exist (or no longer exists). For <code>CLOUDFORMATION_STACK_INACTIVE</code>, the message typically states that the CloudFormation stack has a status that is not (or no longer) active, such as <code>CREATE_FAILED</code>.</p>"
        }
      },
      "documentation": "<p>A two-part error structure that can occur in <code>ListGroupResources</code> or <code>SearchResources</code> operations on CloudFormation stack-based queries. The error occurs if the CloudFormation stack on which the query is based either does not exist, or has a status that renders the stack inactive. A <code>QueryError</code> occurrence does not necessarily mean that AWS Resource Groups could not complete the operation, but the resulting group might have no member resources.</p>"
    },
    "QueryErrorCode": {
      "type": "string",
      "enum": [
        "CLOUDFORMATION_STACK_INACTIVE",
        "CLOUDFORMATION_STACK_NOT_EXISTING"
      ]
    },
    "QueryErrorList": {
      "type": "list",
      "member": {
        "shape": "QueryError"
      }
    },
    "QueryErrorMessage": {
      "type": "string"
    },
    "QueryType": {
      "type": "string",
      "enum": [
        "TAG_FILTERS_1_0",
        "CLOUDFORMATION_STACK_1_0"
      ],
      "max": 128,
      "min": 1,
      "pattern": "^\\w+$"
    },
    "ResourceArn": {
      "type": "string",
      "pattern": "arn:aws(-[a-z]+)*:[a-z0-9\\-]*:([a-z]{2}(-[a-z]+)+-\\d{1})?:([0-9]{12})?:.+"
    },
    "ResourceArnList": {
      "type": "list",
      "member": {
        "shape": "ResourceArn"
      },
      "max": 10,
      "min": 1
    },
    "ResourceFilter": {
      "type": "structure",
      "required": [
        "Name",
        "Values"
      ],
      "members": {
        "Name": {
          "shape": "ResourceFilterName",
          "documentation": "<p>The name of the filter. Filter names are case-sensitive.</p>"
        },
        "Values": {
          "shape": "ResourceFilterValues",
          "documentation": "<p>One or more filter values. Allowed filter values vary by resource filter name, and are case-sensitive.</p>"
        }
      },
      "documentation": "<p>A filter name and value pair that is used to obtain more specific results from a list of resources.</p>"
    },
    "ResourceFilterList": {
      "type": "list",
      "member": {
        "shape": "ResourceFilter"
      }
    },
    "ResourceFilterName": {
      "type": "string",
      "enum": [
        "resource-type"
      ]
    },
    "ResourceFilterValue": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "AWS::[a-zA-Z0-9]+::[a-zA-Z0-9]+"
    },
    "ResourceFilterValues": {
      "type": "list",
      "member": {
        "shape": "ResourceFilterValue"
      },
      "max": 5,
      "min": 1
    },
    "ResourceIdentifier": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The ARN of a resource.</p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The resource type of a resource, such as <code>AWS::EC2::Instance</code>.</p>"
        }
      },
      "documentation": "<p>The ARN of a resource, and its resource type.</p>"
    },
    "ResourceIdentifierList": {
      "type": "list",
      "member": {
        "shape": "ResourceIdentifier"
      }
    },
    "ResourceQuery": {
      "type": "structure",
      "required": [
        "Type",
        "Query"
      ],
      "members": {
        "Type": {
          "shape": "QueryType",
          "documentation": "<p>The type of the query. You can use the following values:</p> <ul> <li> <p> <i> <code>CLOUDFORMATION_STACK_1_0:</code> </i> A JSON syntax that lets you specify a CloudFormation stack ARN.</p> </li> <li> <p> <i> <code>TAG_FILTERS_1_0:</code> </i> A JSON syntax that lets you specify a collection of simple tag filters for resource types and tags, as supported by the AWS Tagging API <a href=\"https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html#resourcegrouptagging-GetResources-request-ResourceTypeFilters\"> <code>ResourceTypeFilters</code> parameter of the <code>tagging:GetResources</code> </a> operation. If you specify more than one tag key, only resources that match all tag keys, and at least one value of each specified tag key, are returned in your query. If you specify more than one value for a tag key, a resource matches the filter if it has a tag key value that matches <i>any</i> of the specified values.</p> <p>For example, consider the following sample query for resources that have two tags, <code>Stage</code> and <code>Version</code>, with two values each:</p> <p> <code>[{\"Key\":\"Stage\",\"Values\":[\"Test\",\"Deploy\"]},{\"Key\":\"Version\",\"Values\":[\"1\",\"2\"]}]</code> </p> <p>The results of this query could include the following.</p> <ul> <li> <p>An EC2 instance that has the following two tags: <code>{\"Key\":\"Stage\",\"Value\":\"Deploy\"}</code>, and <code>{\"Key\":\"Version\",\"Value\":\"2\"}</code> </p> </li> <li> <p>An S3 bucket that has the following two tags: <code>{\"Key\":\"Stage\",\"Value\":\"Test\"}</code>, and <code>{\"Key\":\"Version\",\"Value\":\"1\"}</code> </p> </li> </ul> <p>The query would not include the following items in the results, however. </p> <ul> <li> <p>An EC2 instance that has only the following tag: <code>{\"Key\":\"Stage\",\"Value\":\"Deploy\"}</code>.</p> <p>The instance does not have <b>all</b> of the tag keys specified in the filter, so it is excluded from the results.</p> </li> <li> <p>An RDS database that has the following two tags: <code>{\"Key\":\"Stage\",\"Value\":\"Archived\"}</code>, and <code>{\"Key\":\"Version\",\"Value\":\"4\"}</code> </p> <p>The database has all of the tag keys, but none of those keys has an associated value that matches at least one of the specified values in the filter.</p> </li> </ul> </li> </ul>"
        },
        "Query": {
          "shape": "Query",
          "documentation": "<p>The query that defines a group or a search.</p>"
        }
      },
      "documentation": "<p>The query that is used to define a resource group or a search for resources.</p>"
    },
    "ResourceType": {
      "type": "string",
      "pattern": "AWS::[a-zA-Z0-9]+::\\w+"
    },
    "SearchResourcesInput": {
      "type": "structure",
      "required": [
        "ResourceQuery"
      ],
      "members": {
        "ResourceQuery": {
          "shape": "ResourceQuery",
          "documentation": "<p>The search query, using the same formats that are supported for resource group definition. For more information, see <a>CreateGroup</a>.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value provided by a previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        }
      }
    },
    "SearchResourcesOutput": {
      "type": "structure",
      "members": {
        "ResourceIdentifiers": {
          "shape": "ResourceIdentifierList",
          "documentation": "<p>The ARNs and resource types of resources that are members of the group that you specified.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        },
        "QueryErrors": {
          "shape": "QueryErrorList",
          "documentation": "<p>A list of <code>QueryError</code> objects. Each error is an object that contains <code>ErrorCode</code> and <code>Message</code> structures. Possible values for <code>ErrorCode</code> are <code>CLOUDFORMATION_STACK_INACTIVE</code> and <code>CLOUDFORMATION_STACK_NOT_EXISTING</code>.</p>"
        }
      }
    },
    "TagInput": {
      "type": "structure",
      "required": [
        "Arn",
        "Tags"
      ],
      "members": {
        "Arn": {
          "shape": "GroupArn",
          "documentation": "<p>The ARN of the resource group to which to add tags.</p>",
          "location": "uri",
          "locationName": "Arn"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags to add to the specified resource group. A tag is a string-to-string map of key-value pairs.</p>"
        }
      }
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
      }
    },
    "TagOutput": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "GroupArn",
          "documentation": "<p>The ARN of the tagged resource.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags that have been added to the specified resource group.</p>"
        }
      }
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "Tags": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      }
    },
    "UngroupResourcesInput": {
      "type": "structure",
      "required": [
        "Group",
        "ResourceArns"
      ],
      "members": {
        "Group": {
          "shape": "GroupString",
          "documentation": "<p>The name or the ARN of the resource group from which to remove the resources.</p>"
        },
        "ResourceArns": {
          "shape": "ResourceArnList",
          "documentation": "<p>The ARNs of the resources to be removed from the group.</p>"
        }
      }
    },
    "UngroupResourcesOutput": {
      "type": "structure",
      "members": {
        "Succeeded": {
          "shape": "ResourceArnList",
          "documentation": "<p>The ARNs of the resources that were successfully removed from the group.</p>"
        },
        "Failed": {
          "shape": "FailedResourceList",
          "documentation": "<p>The resources that failed to be removed from the group.</p>"
        }
      }
    },
    "UntagInput": {
      "type": "structure",
      "required": [
        "Arn",
        "Keys"
      ],
      "members": {
        "Arn": {
          "shape": "GroupArn",
          "documentation": "<p>The ARN of the resource group from which to remove tags. The command removed both the specified keys and any values associated with those keys.</p>",
          "location": "uri",
          "locationName": "Arn"
        },
        "Keys": {
          "shape": "TagKeyList",
          "documentation": "<p>The keys of the tags to be removed.</p>"
        }
      }
    },
    "UntagOutput": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "GroupArn",
          "documentation": "<p>The ARN of the resource group from which tags have been removed.</p>"
        },
        "Keys": {
          "shape": "TagKeyList",
          "documentation": "<p>The keys of the tags that were removed.</p>"
        }
      }
    },
    "UpdateGroupInput": {
      "type": "structure",
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>Don't use this parameter. Use <code>Group</code> instead.</p>",
          "deprecated": true,
          "deprecatedMessage": "This field is deprecated, use Group instead."
        },
        "Group": {
          "shape": "GroupString",
          "documentation": "<p>The name or the ARN of the resource group to modify.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The new description that you want to update the resource group with. Descriptions can contain letters, numbers, hyphens, underscores, periods, and spaces.</p>"
        }
      }
    },
    "UpdateGroupOutput": {
      "type": "structure",
      "members": {
        "Group": {
          "shape": "Group",
          "documentation": "<p>The update description of the resource group.</p>"
        }
      }
    },
    "UpdateGroupQueryInput": {
      "type": "structure",
      "required": [
        "ResourceQuery"
      ],
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>Don't use this parameter. Use <code>Group</code> instead.</p>",
          "deprecated": true,
          "deprecatedMessage": "This field is deprecated, use Group instead."
        },
        "Group": {
          "shape": "GroupString",
          "documentation": "<p>The name or the ARN of the resource group to query.</p>"
        },
        "ResourceQuery": {
          "shape": "ResourceQuery",
          "documentation": "<p>The resource query to determine which AWS resources are members of this resource group.</p>"
        }
      }
    },
    "UpdateGroupQueryOutput": {
      "type": "structure",
      "members": {
        "GroupQuery": {
          "shape": "GroupQuery",
          "documentation": "<p>The updated resource query associated with the resource group after the update.</p>"
        }
      }
    }
  },
  "documentation": "<fullname>AWS Resource Groups</fullname> <p>AWS Resource Groups lets you organize AWS resources such as Amazon EC2 instances, Amazon Relational Database Service databases, and Amazon S3 buckets into groups using criteria that you define as tags. A resource group is a collection of resources that match the resource types specified in a query, and share one or more tags or portions of tags. You can create a group of resources based on their roles in your cloud infrastructure, lifecycle stages, regions, application layers, or virtually any criteria. Resource groups enable you to automate management tasks, such as those in AWS Systems Manager Automation documents, on tag-related resources in AWS Systems Manager. Groups of tagged resources also let you quickly view a custom console in AWS Systems Manager that shows AWS Config compliance and other monitoring data about member resources.</p> <p>To create a resource group, build a resource query, and specify tags that identify the criteria that members of the group have in common. Tags are key-value pairs.</p> <p>For more information about Resource Groups, see the <a href=\"https://docs.aws.amazon.com/ARG/latest/userguide/welcome.html\">AWS Resource Groups User Guide</a>.</p> <p>AWS Resource Groups uses a REST-compliant API that you can use to perform the following types of operations.</p> <ul> <li> <p>Create, Read, Update, and Delete (CRUD) operations on resource groups and resource query entities</p> </li> <li> <p>Applying, editing, and removing tags from resource groups</p> </li> <li> <p>Resolving resource group member ARNs so they can be returned as search results</p> </li> <li> <p>Getting data about resources that are members of a group</p> </li> <li> <p>Searching AWS resources based on a resource query</p> </li> </ul>"
}
]===]))
