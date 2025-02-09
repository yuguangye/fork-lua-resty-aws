local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-11-25",
    "endpointPrefix": "applicationinsights",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "Application Insights",
    "serviceFullName": "Amazon CloudWatch Application Insights",
    "serviceId": "Application Insights",
    "signatureVersion": "v4",
    "signingName": "applicationinsights",
    "targetPrefix": "EC2WindowsBarleyService",
    "uid": "application-insights-2018-11-25"
  },
  "operations": {
    "CreateApplication": {
      "name": "CreateApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateApplicationRequest"
      },
      "output": {
        "shape": "CreateApplicationResponse"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "TagsAlreadyExistException"
        }
      ],
      "documentation": "<p>Adds an application that is created from a resource group.</p>"
    },
    "CreateComponent": {
      "name": "CreateComponent",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateComponentRequest"
      },
      "output": {
        "shape": "CreateComponentResponse"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Creates a custom component by grouping similar standalone instances to monitor.</p>"
    },
    "CreateLogPattern": {
      "name": "CreateLogPattern",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateLogPatternRequest"
      },
      "output": {
        "shape": "CreateLogPatternResponse"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Adds an log pattern to a <code>LogPatternSet</code>.</p>"
    },
    "DeleteApplication": {
      "name": "DeleteApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationRequest"
      },
      "output": {
        "shape": "DeleteApplicationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Removes the specified application from monitoring. Does not delete the application.</p>"
    },
    "DeleteComponent": {
      "name": "DeleteComponent",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteComponentRequest"
      },
      "output": {
        "shape": "DeleteComponentResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Ungroups a custom component. When you ungroup custom components, all applicable monitors that are set up for the component are removed and the instances revert to their standalone status.</p>"
    },
    "DeleteLogPattern": {
      "name": "DeleteLogPattern",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteLogPatternRequest"
      },
      "output": {
        "shape": "DeleteLogPatternResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Removes the specified log pattern from a <code>LogPatternSet</code>.</p>"
    },
    "DescribeApplication": {
      "name": "DescribeApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeApplicationRequest"
      },
      "output": {
        "shape": "DescribeApplicationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Describes the application.</p>"
    },
    "DescribeComponent": {
      "name": "DescribeComponent",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeComponentRequest"
      },
      "output": {
        "shape": "DescribeComponentResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Describes a component and lists the resources that are grouped together in a component.</p>"
    },
    "DescribeComponentConfiguration": {
      "name": "DescribeComponentConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeComponentConfigurationRequest"
      },
      "output": {
        "shape": "DescribeComponentConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Describes the monitoring configuration of the component.</p>"
    },
    "DescribeComponentConfigurationRecommendation": {
      "name": "DescribeComponentConfigurationRecommendation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeComponentConfigurationRecommendationRequest"
      },
      "output": {
        "shape": "DescribeComponentConfigurationRecommendationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Describes the recommended monitoring configuration of the component.</p>"
    },
    "DescribeLogPattern": {
      "name": "DescribeLogPattern",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeLogPatternRequest"
      },
      "output": {
        "shape": "DescribeLogPatternResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Describe a specific log pattern from a <code>LogPatternSet</code>.</p>"
    },
    "DescribeObservation": {
      "name": "DescribeObservation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeObservationRequest"
      },
      "output": {
        "shape": "DescribeObservationResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes an anomaly or error with the application.</p>"
    },
    "DescribeProblem": {
      "name": "DescribeProblem",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeProblemRequest"
      },
      "output": {
        "shape": "DescribeProblemResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes an application problem.</p>"
    },
    "DescribeProblemObservations": {
      "name": "DescribeProblemObservations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeProblemObservationsRequest"
      },
      "output": {
        "shape": "DescribeProblemObservationsResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes the anomalies or errors associated with the problem.</p>"
    },
    "ListApplications": {
      "name": "ListApplications",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListApplicationsRequest"
      },
      "output": {
        "shape": "ListApplicationsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Lists the IDs of the applications that you are monitoring. </p>"
    },
    "ListComponents": {
      "name": "ListComponents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListComponentsRequest"
      },
      "output": {
        "shape": "ListComponentsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Lists the auto-grouped, standalone, and custom components of the application.</p>"
    },
    "ListConfigurationHistory": {
      "name": "ListConfigurationHistory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListConfigurationHistoryRequest"
      },
      "output": {
        "shape": "ListConfigurationHistoryResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by Application Insights. Examples of events represented are: </p> <ul> <li> <p>INFO: creating a new alarm or updating an alarm threshold.</p> </li> <li> <p>WARN: alarm not created due to insufficient data points used to predict thresholds.</p> </li> <li> <p>ERROR: alarm not created due to permission errors or exceeding quotas. </p> </li> </ul>"
    },
    "ListLogPatternSets": {
      "name": "ListLogPatternSets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListLogPatternSetsRequest"
      },
      "output": {
        "shape": "ListLogPatternSetsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Lists the log pattern sets in the specific application.</p>"
    },
    "ListLogPatterns": {
      "name": "ListLogPatterns",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListLogPatternsRequest"
      },
      "output": {
        "shape": "ListLogPatternsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Lists the log patterns in the specific log <code>LogPatternSet</code>.</p>"
    },
    "ListProblems": {
      "name": "ListProblems",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListProblemsRequest"
      },
      "output": {
        "shape": "ListProblemsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Lists the problems with your application.</p>"
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
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Retrieve a list of the tags (keys and values) that are associated with a specified application. A <i>tag</i> is a label that you optionally define and associate with an application. Each tag consists of a required <i>tag key</i> and an optional associated <i>tag value</i>. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.</p>"
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
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Add one or more tags (keys and values) to a specified application. A <i>tag</i> is a label that you optionally define and associate with an application. Tags can help you categorize and manage application in different ways, such as by purpose, owner, environment, or other criteria. </p> <p>Each tag consists of a required <i>tag key</i> and an associated <i>tag value</i>, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.</p>"
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
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Remove one or more tags (keys and values) from a specified application.</p>"
    },
    "UpdateApplication": {
      "name": "UpdateApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateApplicationRequest"
      },
      "output": {
        "shape": "UpdateApplicationResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Updates the application.</p>"
    },
    "UpdateComponent": {
      "name": "UpdateComponent",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateComponentRequest"
      },
      "output": {
        "shape": "UpdateComponentResponse"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Updates the custom component name and/or the list of resources that make up the component.</p>"
    },
    "UpdateComponentConfiguration": {
      "name": "UpdateComponentConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateComponentConfigurationRequest"
      },
      "output": {
        "shape": "UpdateComponentConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Updates the monitoring configurations for the component. The configuration input parameter is an escaped JSON of the configuration and should match the schema of what is returned by <code>DescribeComponentConfigurationRecommendation</code>. </p>"
    },
    "UpdateLogPattern": {
      "name": "UpdateLogPattern",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateLogPatternRequest"
      },
      "output": {
        "shape": "UpdateLogPatternResponse"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Adds a log pattern to a <code>LogPatternSet</code>.</p>"
    }
  },
  "shapes": {
    "AffectedResource": {
      "type": "string"
    },
    "AmazonResourceName": {
      "type": "string",
      "max": 1011,
      "min": 1
    },
    "ApplicationComponent": {
      "type": "structure",
      "members": {
        "ComponentName": {
          "shape": "ComponentName",
          "documentation": "<p>The name of the component.</p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The resource type. Supported resource types include EC2 instances, Auto Scaling group, Classic ELB, Application ELB, and SQS Queue.</p>"
        },
        "Tier": {
          "shape": "Tier",
          "documentation": "<p>The stack tier of the application component.</p>"
        },
        "Monitor": {
          "shape": "Monitor",
          "documentation": "<p>Indicates whether the application component is monitored. </p>"
        }
      },
      "documentation": "<p>Describes a standalone resource or similarly grouped resources that the application is made up of.</p>"
    },
    "ApplicationComponentList": {
      "type": "list",
      "member": {
        "shape": "ApplicationComponent"
      }
    },
    "ApplicationInfo": {
      "type": "structure",
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group used for the application.</p>"
        },
        "LifeCycle": {
          "shape": "LifeCycle",
          "documentation": "<p>The lifecycle of the application. </p>"
        },
        "OpsItemSNSTopicArn": {
          "shape": "OpsItemSNSTopicArn",
          "documentation": "<p> The SNS topic provided to Application Insights that is associated to the created opsItems to receive SNS notifications for opsItem updates. </p>"
        },
        "OpsCenterEnabled": {
          "shape": "OpsCenterEnabled",
          "documentation": "<p> Indicates whether Application Insights will create opsItems for any problem detected by Application Insights for an application. </p>"
        },
        "CWEMonitorEnabled": {
          "shape": "CWEMonitorEnabled",
          "documentation": "<p> Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as <code>instance terminated</code>, <code>failed deployment</code>, and others. </p>"
        },
        "Remarks": {
          "shape": "Remarks",
          "documentation": "<p>The issues on the user side that block Application Insights from successfully monitoring an application. Example remarks include:</p> <ul> <li> <p>“Configuring application, detected 1 Errors, 3 Warnings”</p> </li> <li> <p>“Configuring application, detected 1 Unconfigured Components”</p> </li> </ul>"
        }
      },
      "documentation": "<p>Describes the status of the application.</p>"
    },
    "ApplicationInfoList": {
      "type": "list",
      "member": {
        "shape": "ApplicationInfo"
      }
    },
    "CWEMonitorEnabled": {
      "type": "boolean"
    },
    "CloudWatchEventDetailType": {
      "type": "string"
    },
    "CloudWatchEventId": {
      "type": "string"
    },
    "CloudWatchEventSource": {
      "type": "string",
      "enum": [
        "EC2",
        "CODE_DEPLOY",
        "HEALTH"
      ]
    },
    "CodeDeployApplication": {
      "type": "string"
    },
    "CodeDeployDeploymentGroup": {
      "type": "string"
    },
    "CodeDeployDeploymentId": {
      "type": "string"
    },
    "CodeDeployInstanceGroupId": {
      "type": "string"
    },
    "CodeDeployState": {
      "type": "string"
    },
    "ComponentConfiguration": {
      "type": "string",
      "max": 10000,
      "min": 1
    },
    "ComponentName": {
      "type": "string"
    },
    "ConfigurationEvent": {
      "type": "structure",
      "members": {
        "MonitoredResourceARN": {
          "shape": "ConfigurationEventMonitoredResourceARN",
          "documentation": "<p> The resource monitored by Application Insights. </p>"
        },
        "EventStatus": {
          "shape": "ConfigurationEventStatus",
          "documentation": "<p> The status of the configuration update event. Possible values include INFO, WARN, and ERROR. </p>"
        },
        "EventResourceType": {
          "shape": "ConfigurationEventResourceType",
          "documentation": "<p> The resource type that Application Insights attempted to configure, for example, CLOUDWATCH_ALARM. </p>"
        },
        "EventTime": {
          "shape": "ConfigurationEventTime",
          "documentation": "<p> The timestamp of the event. </p>"
        },
        "EventDetail": {
          "shape": "ConfigurationEventDetail",
          "documentation": "<p> The details of the event in plain text. </p>"
        },
        "EventResourceName": {
          "shape": "ConfigurationEventResourceName",
          "documentation": "<p> The name of the resource Application Insights attempted to configure. </p>"
        }
      },
      "documentation": "<p> The event information. </p>"
    },
    "ConfigurationEventDetail": {
      "type": "string"
    },
    "ConfigurationEventList": {
      "type": "list",
      "member": {
        "shape": "ConfigurationEvent"
      }
    },
    "ConfigurationEventMonitoredResourceARN": {
      "type": "string"
    },
    "ConfigurationEventResourceName": {
      "type": "string"
    },
    "ConfigurationEventResourceType": {
      "type": "string",
      "enum": [
        "CLOUDWATCH_ALARM",
        "CLOUDFORMATION",
        "SSM_ASSOCIATION"
      ]
    },
    "ConfigurationEventStatus": {
      "type": "string",
      "enum": [
        "INFO",
        "WARN",
        "ERROR"
      ]
    },
    "ConfigurationEventTime": {
      "type": "timestamp"
    },
    "CreateApplicationRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "OpsCenterEnabled": {
          "shape": "OpsCenterEnabled",
          "documentation": "<p> When set to <code>true</code>, creates opsItems for any problems detected on an application. </p>"
        },
        "CWEMonitorEnabled": {
          "shape": "CWEMonitorEnabled",
          "documentation": "<p> Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as <code>instance terminated</code>, <code>failed deployment</code>, and others. </p>"
        },
        "OpsItemSNSTopicArn": {
          "shape": "OpsItemSNSTopicArn",
          "documentation": "<p> The SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>List of tags to add to the application. tag key (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>"
        }
      }
    },
    "CreateApplicationResponse": {
      "type": "structure",
      "members": {
        "ApplicationInfo": {
          "shape": "ApplicationInfo",
          "documentation": "<p>Information about the application.</p>"
        }
      }
    },
    "CreateComponentRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName",
        "ComponentName",
        "ResourceList"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "ComponentName": {
          "shape": "ComponentName",
          "documentation": "<p>The name of the component.</p>"
        },
        "ResourceList": {
          "shape": "ResourceList",
          "documentation": "<p>The list of resource ARNs that belong to the component.</p>"
        }
      }
    },
    "CreateComponentResponse": {
      "type": "structure",
      "members": {}
    },
    "CreateLogPatternRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName",
        "PatternSetName",
        "PatternName",
        "Pattern",
        "Rank"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "PatternSetName": {
          "shape": "LogPatternSetName",
          "documentation": "<p>The name of the log pattern set.</p>"
        },
        "PatternName": {
          "shape": "LogPatternName",
          "documentation": "<p>The name of the log pattern.</p>"
        },
        "Pattern": {
          "shape": "LogPatternRegex",
          "documentation": "<p>The log pattern.</p>"
        },
        "Rank": {
          "shape": "LogPatternRank",
          "documentation": "<p>Rank of the log pattern.</p>"
        }
      }
    },
    "CreateLogPatternResponse": {
      "type": "structure",
      "members": {
        "LogPattern": {
          "shape": "LogPattern",
          "documentation": "<p>The successfully created log pattern.</p>"
        },
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        }
      }
    },
    "DeleteApplicationRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        }
      }
    },
    "DeleteApplicationResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteComponentRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName",
        "ComponentName"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "ComponentName": {
          "shape": "ComponentName",
          "documentation": "<p>The name of the component.</p>"
        }
      }
    },
    "DeleteComponentResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteLogPatternRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName",
        "PatternSetName",
        "PatternName"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "PatternSetName": {
          "shape": "LogPatternSetName",
          "documentation": "<p>The name of the log pattern set.</p>"
        },
        "PatternName": {
          "shape": "LogPatternName",
          "documentation": "<p>The name of the log pattern.</p>"
        }
      }
    },
    "DeleteLogPatternResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeApplicationRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        }
      }
    },
    "DescribeApplicationResponse": {
      "type": "structure",
      "members": {
        "ApplicationInfo": {
          "shape": "ApplicationInfo",
          "documentation": "<p>Information about the application.</p>"
        }
      }
    },
    "DescribeComponentConfigurationRecommendationRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName",
        "ComponentName",
        "Tier"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "ComponentName": {
          "shape": "ComponentName",
          "documentation": "<p>The name of the component.</p>"
        },
        "Tier": {
          "shape": "Tier",
          "documentation": "<p>The tier of the application component. Supported tiers include <code>DOT_NET_CORE</code>, <code>DOT_NET_WORKER</code>, <code>DOT_NET_WEB</code>, <code>SQL_SERVER</code>, and <code>DEFAULT</code>.</p>"
        }
      }
    },
    "DescribeComponentConfigurationRecommendationResponse": {
      "type": "structure",
      "members": {
        "ComponentConfiguration": {
          "shape": "ComponentConfiguration",
          "documentation": "<p>The recommended configuration settings of the component. The value is the escaped JSON of the configuration.</p>"
        }
      }
    },
    "DescribeComponentConfigurationRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName",
        "ComponentName"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "ComponentName": {
          "shape": "ComponentName",
          "documentation": "<p>The name of the component.</p>"
        }
      }
    },
    "DescribeComponentConfigurationResponse": {
      "type": "structure",
      "members": {
        "Monitor": {
          "shape": "Monitor",
          "documentation": "<p>Indicates whether the application component is monitored.</p>"
        },
        "Tier": {
          "shape": "Tier",
          "documentation": "<p>The tier of the application component. Supported tiers include <code>DOT_NET_CORE</code>, <code>DOT_NET_WORKER</code>, <code>DOT_NET_WEB</code>, <code>SQL_SERVER</code>, and <code>DEFAULT</code> </p>"
        },
        "ComponentConfiguration": {
          "shape": "ComponentConfiguration",
          "documentation": "<p>The configuration settings of the component. The value is the escaped JSON of the configuration.</p>"
        }
      }
    },
    "DescribeComponentRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName",
        "ComponentName"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "ComponentName": {
          "shape": "ComponentName",
          "documentation": "<p>The name of the component.</p>"
        }
      }
    },
    "DescribeComponentResponse": {
      "type": "structure",
      "members": {
        "ApplicationComponent": {
          "shape": "ApplicationComponent"
        },
        "ResourceList": {
          "shape": "ResourceList",
          "documentation": "<p>The list of resource ARNs that belong to the component.</p>"
        }
      }
    },
    "DescribeLogPatternRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName",
        "PatternSetName",
        "PatternName"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "PatternSetName": {
          "shape": "LogPatternSetName",
          "documentation": "<p>The name of the log pattern set.</p>"
        },
        "PatternName": {
          "shape": "LogPatternName",
          "documentation": "<p>The name of the log pattern.</p>"
        }
      }
    },
    "DescribeLogPatternResponse": {
      "type": "structure",
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "LogPattern": {
          "shape": "LogPattern",
          "documentation": "<p>The successfully created log pattern.</p>"
        }
      }
    },
    "DescribeObservationRequest": {
      "type": "structure",
      "required": [
        "ObservationId"
      ],
      "members": {
        "ObservationId": {
          "shape": "ObservationId",
          "documentation": "<p>The ID of the observation.</p>"
        }
      }
    },
    "DescribeObservationResponse": {
      "type": "structure",
      "members": {
        "Observation": {
          "shape": "Observation",
          "documentation": "<p>Information about the observation.</p>"
        }
      }
    },
    "DescribeProblemObservationsRequest": {
      "type": "structure",
      "required": [
        "ProblemId"
      ],
      "members": {
        "ProblemId": {
          "shape": "ProblemId",
          "documentation": "<p>The ID of the problem.</p>"
        }
      }
    },
    "DescribeProblemObservationsResponse": {
      "type": "structure",
      "members": {
        "RelatedObservations": {
          "shape": "RelatedObservations",
          "documentation": "<p>Observations related to the problem.</p>"
        }
      }
    },
    "DescribeProblemRequest": {
      "type": "structure",
      "required": [
        "ProblemId"
      ],
      "members": {
        "ProblemId": {
          "shape": "ProblemId",
          "documentation": "<p>The ID of the problem.</p>"
        }
      }
    },
    "DescribeProblemResponse": {
      "type": "structure",
      "members": {
        "Problem": {
          "shape": "Problem",
          "documentation": "<p>Information about the problem. </p>"
        }
      }
    },
    "Ec2State": {
      "type": "string"
    },
    "EndTime": {
      "type": "timestamp"
    },
    "Feedback": {
      "type": "map",
      "key": {
        "shape": "FeedbackKey"
      },
      "value": {
        "shape": "FeedbackValue"
      },
      "max": 10
    },
    "FeedbackKey": {
      "type": "string",
      "enum": [
        "INSIGHTS_FEEDBACK"
      ]
    },
    "FeedbackValue": {
      "type": "string",
      "enum": [
        "NOT_SPECIFIED",
        "USEFUL",
        "NOT_USEFUL"
      ]
    },
    "HealthEventArn": {
      "type": "string"
    },
    "HealthEventDescription": {
      "type": "string"
    },
    "HealthEventTypeCategory": {
      "type": "string"
    },
    "HealthEventTypeCode": {
      "type": "string"
    },
    "HealthService": {
      "type": "string"
    },
    "Insights": {
      "type": "string"
    },
    "LifeCycle": {
      "type": "string"
    },
    "LineTime": {
      "type": "timestamp"
    },
    "ListApplicationsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxEntities",
          "documentation": "<p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned <code>NextToken</code> value.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to request the next page of results.</p>"
        }
      }
    },
    "ListApplicationsResponse": {
      "type": "structure",
      "members": {
        "ApplicationInfoList": {
          "shape": "ApplicationInfoList",
          "documentation": "<p>The list of applications.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return. </p>"
        }
      }
    },
    "ListComponentsRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "MaxResults": {
          "shape": "MaxEntities",
          "documentation": "<p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned <code>NextToken</code> value.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to request the next page of results.</p>"
        }
      }
    },
    "ListComponentsResponse": {
      "type": "structure",
      "members": {
        "ApplicationComponentList": {
          "shape": "ApplicationComponentList",
          "documentation": "<p>The list of application components.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to request the next page of results.</p>"
        }
      }
    },
    "ListConfigurationHistoryRequest": {
      "type": "structure",
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>Resource group to which the application belongs. </p>"
        },
        "StartTime": {
          "shape": "StartTime",
          "documentation": "<p>The start time of the event. </p>"
        },
        "EndTime": {
          "shape": "EndTime",
          "documentation": "<p>The end time of the event.</p>"
        },
        "EventStatus": {
          "shape": "ConfigurationEventStatus",
          "documentation": "<p>The status of the configuration update event. Possible values include INFO, WARN, and ERROR.</p>"
        },
        "MaxResults": {
          "shape": "MaxEntities",
          "documentation": "<p> The maximum number of results returned by <code>ListConfigurationHistory</code> in paginated output. When this parameter is used, <code>ListConfigurationHistory</code> returns only <code>MaxResults</code> in a single page along with a <code>NextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListConfigurationHistory</code> request with the returned <code>NextToken</code> value. If this parameter is not used, then <code>ListConfigurationHistory</code> returns all results. </p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The <code>NextToken</code> value returned from a previous paginated <code>ListConfigurationHistory</code> request where <code>MaxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>NextToken</code> value. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "ListConfigurationHistoryResponse": {
      "type": "structure",
      "members": {
        "EventList": {
          "shape": "ConfigurationEventList",
          "documentation": "<p> The list of configuration events and their corresponding details. </p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The <code>NextToken</code> value to include in a future <code>ListConfigurationHistory</code> request. When the results of a <code>ListConfigurationHistory</code> request exceed <code>MaxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "ListLogPatternSetsRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "MaxResults": {
          "shape": "MaxEntities",
          "documentation": "<p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned <code>NextToken</code> value.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to request the next page of results.</p>"
        }
      }
    },
    "ListLogPatternSetsResponse": {
      "type": "structure",
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "LogPatternSets": {
          "shape": "LogPatternSetList",
          "documentation": "<p>The list of log pattern sets.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return. </p>"
        }
      }
    },
    "ListLogPatternsRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "PatternSetName": {
          "shape": "LogPatternSetName",
          "documentation": "<p>The name of the log pattern set.</p>"
        },
        "MaxResults": {
          "shape": "MaxEntities",
          "documentation": "<p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned <code>NextToken</code> value.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to request the next page of results.</p>"
        }
      }
    },
    "ListLogPatternsResponse": {
      "type": "structure",
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "LogPatterns": {
          "shape": "LogPatternList",
          "documentation": "<p>The list of log patterns.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return. </p>"
        }
      }
    },
    "ListProblemsRequest": {
      "type": "structure",
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "StartTime": {
          "shape": "StartTime",
          "documentation": "<p>The time when the problem was detected, in epoch seconds. If you don't specify a time frame for the request, problems within the past seven days are returned.</p>"
        },
        "EndTime": {
          "shape": "EndTime",
          "documentation": "<p>The time when the problem ended, in epoch seconds. If not specified, problems within the past seven days are returned.</p>"
        },
        "MaxResults": {
          "shape": "MaxEntities",
          "documentation": "<p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned <code>NextToken</code> value.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to request the next page of results.</p>"
        }
      }
    },
    "ListProblemsResponse": {
      "type": "structure",
      "members": {
        "ProblemList": {
          "shape": "ProblemList",
          "documentation": "<p>The list of problems. </p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return. </p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application that you want to retrieve tag information for.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array that lists all the tags that are associated with the application. Each tag consists of a required tag key (<code>Key</code>) and an associated tag value (<code>Value</code>).</p>"
        }
      }
    },
    "LogFilter": {
      "type": "string",
      "enum": [
        "ERROR",
        "WARN",
        "INFO"
      ]
    },
    "LogGroup": {
      "type": "string"
    },
    "LogPattern": {
      "type": "structure",
      "members": {
        "PatternSetName": {
          "shape": "LogPatternSetName",
          "documentation": "<p>The name of the log pattern. A log pattern name can contains at many as 30 characters, and it cannot be empty. The characters can be Unicode letters, digits or one of the following symbols: period, dash, underscore.</p>"
        },
        "PatternName": {
          "shape": "LogPatternName",
          "documentation": "<p>The name of the log pattern. A log pattern name can contains at many as 50 characters, and it cannot be empty. The characters can be Unicode letters, digits or one of the following symbols: period, dash, underscore.</p>"
        },
        "Pattern": {
          "shape": "LogPatternRegex",
          "documentation": "<p>A regular expression that defines the log pattern. A log pattern can contains at many as 50 characters, and it cannot be empty.</p>"
        },
        "Rank": {
          "shape": "LogPatternRank",
          "documentation": "<p>Rank of the log pattern.</p>"
        }
      },
      "documentation": "<p>An object that defines the log patterns that belongs to a <code>LogPatternSet</code>.</p>"
    },
    "LogPatternList": {
      "type": "list",
      "member": {
        "shape": "LogPattern"
      }
    },
    "LogPatternName": {
      "type": "string",
      "max": 50,
      "min": 1,
      "pattern": "[a-zA-Z0-9\\.\\-_]*"
    },
    "LogPatternRank": {
      "type": "integer"
    },
    "LogPatternRegex": {
      "type": "string",
      "max": 50,
      "min": 1
    },
    "LogPatternSetList": {
      "type": "list",
      "member": {
        "shape": "LogPatternSetName"
      }
    },
    "LogPatternSetName": {
      "type": "string",
      "max": 30,
      "min": 1,
      "pattern": "[a-zA-Z0-9\\.\\-_]*"
    },
    "LogText": {
      "type": "string"
    },
    "MaxEntities": {
      "type": "integer",
      "max": 40,
      "min": 1
    },
    "MetricName": {
      "type": "string"
    },
    "MetricNamespace": {
      "type": "string"
    },
    "Monitor": {
      "type": "boolean"
    },
    "NewComponentName": {
      "type": "string"
    },
    "Observation": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ObservationId",
          "documentation": "<p>The ID of the observation type.</p>"
        },
        "StartTime": {
          "shape": "StartTime",
          "documentation": "<p>The time when the observation was first detected, in epoch seconds.</p>"
        },
        "EndTime": {
          "shape": "EndTime",
          "documentation": "<p>The time when the observation ended, in epoch seconds.</p>"
        },
        "SourceType": {
          "shape": "SourceType",
          "documentation": "<p>The source type of the observation.</p>"
        },
        "SourceARN": {
          "shape": "SourceARN",
          "documentation": "<p>The source resource ARN of the observation.</p>"
        },
        "LogGroup": {
          "shape": "LogGroup",
          "documentation": "<p>The log group name.</p>"
        },
        "LineTime": {
          "shape": "LineTime",
          "documentation": "<p>The timestamp in the CloudWatch Logs that specifies when the matched line occurred.</p>"
        },
        "LogText": {
          "shape": "LogText",
          "documentation": "<p>The log text of the observation.</p>"
        },
        "LogFilter": {
          "shape": "LogFilter",
          "documentation": "<p>The log filter of the observation.</p>"
        },
        "MetricNamespace": {
          "shape": "MetricNamespace",
          "documentation": "<p>The namespace of the observation metric.</p>"
        },
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>The name of the observation metric.</p>"
        },
        "Unit": {
          "shape": "Unit",
          "documentation": "<p>The unit of the source observation metric.</p>"
        },
        "Value": {
          "shape": "Value",
          "documentation": "<p>The value of the source observation metric.</p>"
        },
        "CloudWatchEventId": {
          "shape": "CloudWatchEventId",
          "documentation": "<p> The ID of the CloudWatch Event-based observation related to the detected problem. </p>"
        },
        "CloudWatchEventSource": {
          "shape": "CloudWatchEventSource",
          "documentation": "<p> The source of the CloudWatch Event. </p>"
        },
        "CloudWatchEventDetailType": {
          "shape": "CloudWatchEventDetailType",
          "documentation": "<p> The detail type of the CloudWatch Event-based observation, for example, <code>EC2 Instance State-change Notification</code>. </p>"
        },
        "HealthEventArn": {
          "shape": "HealthEventArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the AWS Health Event-based observation.</p>"
        },
        "HealthService": {
          "shape": "HealthService",
          "documentation": "<p> The service to which the AWS Health Event belongs, such as EC2. </p>"
        },
        "HealthEventTypeCode": {
          "shape": "HealthEventTypeCode",
          "documentation": "<p> The type of the AWS Health event, for example, <code>AWS_EC2_POWER_CONNECTIVITY_ISSUE</code>. </p>"
        },
        "HealthEventTypeCategory": {
          "shape": "HealthEventTypeCategory",
          "documentation": "<p> The category of the AWS Health event, such as <code>issue</code>. </p>"
        },
        "HealthEventDescription": {
          "shape": "HealthEventDescription",
          "documentation": "<p> The description of the AWS Health event provided by the service, such as Amazon EC2. </p>"
        },
        "CodeDeployDeploymentId": {
          "shape": "CodeDeployDeploymentId",
          "documentation": "<p> The deployment ID of the CodeDeploy-based observation related to the detected problem. </p>"
        },
        "CodeDeployDeploymentGroup": {
          "shape": "CodeDeployDeploymentGroup",
          "documentation": "<p> The deployment group to which the CodeDeploy deployment belongs. </p>"
        },
        "CodeDeployState": {
          "shape": "CodeDeployState",
          "documentation": "<p> The status of the CodeDeploy deployment, for example <code>SUCCESS</code> or <code> FAILURE</code>. </p>"
        },
        "CodeDeployApplication": {
          "shape": "CodeDeployApplication",
          "documentation": "<p> The CodeDeploy application to which the deployment belongs. </p>"
        },
        "CodeDeployInstanceGroupId": {
          "shape": "CodeDeployInstanceGroupId",
          "documentation": "<p> The instance group to which the CodeDeploy instance belongs. </p>"
        },
        "Ec2State": {
          "shape": "Ec2State",
          "documentation": "<p> The state of the instance, such as <code>STOPPING</code> or <code>TERMINATING</code>. </p>"
        },
        "XRayFaultPercent": {
          "shape": "XRayFaultPercent",
          "documentation": "<p> The X-Ray request fault percentage for this node. </p>"
        },
        "XRayThrottlePercent": {
          "shape": "XRayThrottlePercent",
          "documentation": "<p> The X-Ray request throttle percentage for this node. </p>"
        },
        "XRayErrorPercent": {
          "shape": "XRayErrorPercent",
          "documentation": "<p> The X-Ray request error percentage for this node. </p>"
        },
        "XRayRequestCount": {
          "shape": "XRayRequestCount",
          "documentation": "<p> The X-Ray request count for this node. </p>"
        },
        "XRayRequestAverageLatency": {
          "shape": "XRayRequestAverageLatency",
          "documentation": "<p> The X-Ray node request average latency for this node. </p>"
        },
        "XRayNodeName": {
          "shape": "XRayNodeName",
          "documentation": "<p> The name of the X-Ray node. </p>"
        },
        "XRayNodeType": {
          "shape": "XRayNodeType",
          "documentation": "<p> The type of the X-Ray node. </p>"
        }
      },
      "documentation": "<p>Describes an anomaly or error with the application.</p>"
    },
    "ObservationId": {
      "type": "string",
      "max": 38,
      "min": 38,
      "pattern": "o-[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}"
    },
    "ObservationList": {
      "type": "list",
      "member": {
        "shape": "Observation"
      }
    },
    "OpsCenterEnabled": {
      "type": "boolean"
    },
    "OpsItemSNSTopicArn": {
      "type": "string",
      "max": 300,
      "min": 20
    },
    "PaginationToken": {
      "type": "string"
    },
    "Problem": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ProblemId",
          "documentation": "<p>The ID of the problem.</p>"
        },
        "Title": {
          "shape": "Title",
          "documentation": "<p>The name of the problem.</p>"
        },
        "Insights": {
          "shape": "Insights",
          "documentation": "<p>A detailed analysis of the problem using machine learning.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the problem.</p>"
        },
        "AffectedResource": {
          "shape": "AffectedResource",
          "documentation": "<p>The resource affected by the problem.</p>"
        },
        "StartTime": {
          "shape": "StartTime",
          "documentation": "<p>The time when the problem started, in epoch seconds.</p>"
        },
        "EndTime": {
          "shape": "EndTime",
          "documentation": "<p>The time when the problem ended, in epoch seconds.</p>"
        },
        "SeverityLevel": {
          "shape": "SeverityLevel",
          "documentation": "<p>A measure of the level of impact of the problem.</p>"
        },
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group affected by the problem.</p>"
        },
        "Feedback": {
          "shape": "Feedback",
          "documentation": "<p>Feedback provided by the user about the problem.</p>"
        }
      },
      "documentation": "<p>Describes a problem that is detected by correlating observations.</p>"
    },
    "ProblemId": {
      "type": "string",
      "max": 38,
      "min": 38,
      "pattern": "p-[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}"
    },
    "ProblemList": {
      "type": "list",
      "member": {
        "shape": "Problem"
      }
    },
    "RelatedObservations": {
      "type": "structure",
      "members": {
        "ObservationList": {
          "shape": "ObservationList",
          "documentation": "<p>The list of observations related to the problem.</p>"
        }
      },
      "documentation": "<p>Describes observations related to the problem.</p>"
    },
    "Remarks": {
      "type": "string"
    },
    "RemoveSNSTopic": {
      "type": "boolean"
    },
    "ResourceARN": {
      "type": "string",
      "max": 1011,
      "min": 1
    },
    "ResourceGroupName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[a-zA-Z0-9\\.\\-_]*"
    },
    "ResourceList": {
      "type": "list",
      "member": {
        "shape": "ResourceARN"
      }
    },
    "ResourceType": {
      "type": "string"
    },
    "SeverityLevel": {
      "type": "string",
      "enum": [
        "Low",
        "Medium",
        "High"
      ]
    },
    "SourceARN": {
      "type": "string"
    },
    "SourceType": {
      "type": "string"
    },
    "StartTime": {
      "type": "timestamp"
    },
    "Status": {
      "type": "string",
      "enum": [
        "IGNORE",
        "RESOLVED",
        "PENDING"
      ]
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>One part of a key-value pair that defines a tag. The maximum length of a tag key is 128 characters. The minimum length is 1 character.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The optional part of a key-value pair that defines a tag. The maximum length of a tag value is 256 characters. The minimum length is 0 characters. If you don't want an application to have a specific tag value, don't specify a value for this parameter.</p>"
        }
      },
      "documentation": "<p>An object that defines the tags associated with an application. A <i>tag</i> is a label that you optionally define and associate with an application. Tags can help you categorize and manage resources in different ways, such as by purpose, owner, environment, or other criteria.</p> <p>Each tag consists of a required <i>tag key</i> and an associated <i>tag value</i>, both of which you define. A tag key is a general label that acts as a category for a more specific tag value. A tag value acts as a descriptor within a tag key. A tag key can contain as many as 128 characters. A tag value can contain as many as 256 characters. The characters can be Unicode letters, digits, white space, or one of the following symbols: _ . : / = + -. The following additional restrictions apply to tags:</p> <ul> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>For each associated resource, each tag key must be unique and it can have only one value.</p> </li> <li> <p>The <code>aws:</code> prefix is reserved for use by AWS; you can’t use it in any tag keys or values that you define. In addition, you can't edit or remove tag keys or values that use this prefix. </p> </li> </ul>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1
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
      "min": 0
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "Tags"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application that you want to add one or more tags to.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tags that to add to the application. A tag consists of a required tag key (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>"
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
      "min": 0
    },
    "Tier": {
      "type": "string",
      "enum": [
        "DEFAULT",
        "DOT_NET_CORE",
        "DOT_NET_WORKER",
        "DOT_NET_WEB",
        "SQL_SERVER"
      ],
      "max": 50,
      "min": 1
    },
    "Title": {
      "type": "string"
    },
    "Unit": {
      "type": "string"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "TagKeys"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application that you want to remove one or more tags from.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The tags (tag keys) that you want to remove from the resource. When you specify a tag key, the action removes both that key and its associated tag value.</p> <p>To remove more than one tag from the application, append the <code>TagKeys</code> parameter and argument for each additional tag to remove, separated by an ampersand. </p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateApplicationRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "OpsCenterEnabled": {
          "shape": "OpsCenterEnabled",
          "documentation": "<p> When set to <code>true</code>, creates opsItems for any problems detected on an application. </p>"
        },
        "CWEMonitorEnabled": {
          "shape": "CWEMonitorEnabled",
          "documentation": "<p> Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as <code>instance terminated</code>, <code>failed deployment</code>, and others. </p>"
        },
        "OpsItemSNSTopicArn": {
          "shape": "OpsItemSNSTopicArn",
          "documentation": "<p> The SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem.</p>"
        },
        "RemoveSNSTopic": {
          "shape": "RemoveSNSTopic",
          "documentation": "<p> Disassociates the SNS topic from the opsItem created for detected problems.</p>"
        }
      }
    },
    "UpdateApplicationResponse": {
      "type": "structure",
      "members": {
        "ApplicationInfo": {
          "shape": "ApplicationInfo",
          "documentation": "<p>Information about the application. </p>"
        }
      }
    },
    "UpdateComponentConfigurationRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName",
        "ComponentName"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "ComponentName": {
          "shape": "ComponentName",
          "documentation": "<p>The name of the component.</p>"
        },
        "Monitor": {
          "shape": "Monitor",
          "documentation": "<p>Indicates whether the application component is monitored.</p>"
        },
        "Tier": {
          "shape": "Tier",
          "documentation": "<p>The tier of the application component. Supported tiers include <code>DOT_NET_WORKER</code>, <code>DOT_NET_WEB</code>, <code>DOT_NET_CORE</code>, <code>SQL_SERVER</code>, and <code>DEFAULT</code>.</p>"
        },
        "ComponentConfiguration": {
          "shape": "ComponentConfiguration",
          "documentation": "<p>The configuration settings of the component. The value is the escaped JSON of the configuration. For more information about the JSON format, see <a href=\"https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/working-with-json.html\">Working with JSON</a>. You can send a request to <code>DescribeComponentConfigurationRecommendation</code> to see the recommended configuration for a component. For the complete format of the component configuration file, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/component-config.html\">Component Configuration</a>.</p>"
        }
      }
    },
    "UpdateComponentConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateComponentRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName",
        "ComponentName"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "ComponentName": {
          "shape": "ComponentName",
          "documentation": "<p>The name of the component.</p>"
        },
        "NewComponentName": {
          "shape": "NewComponentName",
          "documentation": "<p>The new name of the component.</p>"
        },
        "ResourceList": {
          "shape": "ResourceList",
          "documentation": "<p>The list of resource ARNs that belong to the component.</p>"
        }
      }
    },
    "UpdateComponentResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateLogPatternRequest": {
      "type": "structure",
      "required": [
        "ResourceGroupName",
        "PatternSetName",
        "PatternName"
      ],
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "PatternSetName": {
          "shape": "LogPatternSetName",
          "documentation": "<p>The name of the log pattern set.</p>"
        },
        "PatternName": {
          "shape": "LogPatternName",
          "documentation": "<p>The name of the log pattern.</p>"
        },
        "Pattern": {
          "shape": "LogPatternRegex",
          "documentation": "<p>The log pattern.</p>"
        },
        "Rank": {
          "shape": "LogPatternRank",
          "documentation": "<p>Rank of the log pattern.</p>"
        }
      }
    },
    "UpdateLogPatternResponse": {
      "type": "structure",
      "members": {
        "ResourceGroupName": {
          "shape": "ResourceGroupName",
          "documentation": "<p>The name of the resource group.</p>"
        },
        "LogPattern": {
          "shape": "LogPattern",
          "documentation": "<p>The successfully created log pattern.</p>"
        }
      }
    },
    "Value": {
      "type": "double"
    },
    "XRayErrorPercent": {
      "type": "integer"
    },
    "XRayFaultPercent": {
      "type": "integer"
    },
    "XRayNodeName": {
      "type": "string"
    },
    "XRayNodeType": {
      "type": "string"
    },
    "XRayRequestAverageLatency": {
      "type": "long"
    },
    "XRayRequestCount": {
      "type": "integer"
    },
    "XRayThrottlePercent": {
      "type": "integer"
    }
  },
  "documentation": "<fullname>Amazon CloudWatch Application Insights for .NET and SQL Server</fullname> <p> Amazon CloudWatch Application Insights for .NET and SQL Server is a service that helps you detect common problems with your .NET and SQL Server-based applications. It enables you to pinpoint the source of issues in your applications (built with technologies such as Microsoft IIS, .NET, and Microsoft SQL Server), by providing key insights into detected problems.</p> <p>After you onboard your application, CloudWatch Application Insights for .NET and SQL Server identifies, recommends, and sets up metrics and logs. It continuously analyzes and correlates your metrics and logs for unusual behavior to surface actionable problems with your application. For example, if your application is slow and unresponsive and leading to HTTP 500 errors in your Application Load Balancer (ALB), Application Insights informs you that a memory pressure problem with your SQL Server database is occurring. It bases this analysis on impactful metrics and log errors. </p>"
}
]===]))
