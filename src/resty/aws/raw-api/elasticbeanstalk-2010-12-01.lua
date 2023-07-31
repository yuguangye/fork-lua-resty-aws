local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2010-12-01",
    "endpointPrefix": "elasticbeanstalk",
    "protocol": "query",
    "serviceAbbreviation": "Elastic Beanstalk",
    "serviceFullName": "AWS Elastic Beanstalk",
    "serviceId": "Elastic Beanstalk",
    "signatureVersion": "v4",
    "uid": "elasticbeanstalk-2010-12-01",
    "xmlNamespace": "http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/"
  },
  "operations": {
    "AbortEnvironmentUpdate": {
      "name": "AbortEnvironmentUpdate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AbortEnvironmentUpdateMessage"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        }
      ],
      "documentation": "<p>Cancels in-progress environment configuration update or application version deployment.</p>"
    },
    "ApplyEnvironmentManagedAction": {
      "name": "ApplyEnvironmentManagedAction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ApplyEnvironmentManagedActionRequest"
      },
      "output": {
        "shape": "ApplyEnvironmentManagedActionResult",
        "resultWrapper": "ApplyEnvironmentManagedActionResult"
      },
      "errors": [
        {
          "shape": "ElasticBeanstalkServiceException"
        },
        {
          "shape": "ManagedActionInvalidStateException"
        }
      ],
      "documentation": "<p>Applies a scheduled managed action immediately. A managed action can be applied only if its status is <code>Scheduled</code>. Get the status and action ID of a managed action with <a>DescribeEnvironmentManagedActions</a>.</p>"
    },
    "AssociateEnvironmentOperationsRole": {
      "name": "AssociateEnvironmentOperationsRole",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateEnvironmentOperationsRoleMessage"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        }
      ],
      "documentation": "<p>Add or change the operations role used by an environment. After this call is made, Elastic Beanstalk uses the associated operations role for permissions to downstream services during subsequent calls acting on this environment. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html\">Operations roles</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p>"
    },
    "CheckDNSAvailability": {
      "name": "CheckDNSAvailability",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CheckDNSAvailabilityMessage"
      },
      "output": {
        "shape": "CheckDNSAvailabilityResultMessage",
        "resultWrapper": "CheckDNSAvailabilityResult"
      },
      "documentation": "<p>Checks if the specified CNAME is available.</p>"
    },
    "ComposeEnvironments": {
      "name": "ComposeEnvironments",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ComposeEnvironmentsMessage"
      },
      "output": {
        "shape": "EnvironmentDescriptionsMessage",
        "resultWrapper": "ComposeEnvironmentsResult"
      },
      "errors": [
        {
          "shape": "TooManyEnvironmentsException"
        },
        {
          "shape": "InsufficientPrivilegesException"
        }
      ],
      "documentation": "<p>Create or update a group of environments that each run a separate component of a single application. Takes a list of version labels that specify application source bundles for each of the environments to create or update. The name of each environment and other required information must be included in the source bundles in an environment manifest named <code>env.yaml</code>. See <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html\">Compose Environments</a> for details.</p>"
    },
    "CreateApplication": {
      "name": "CreateApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateApplicationMessage"
      },
      "output": {
        "shape": "ApplicationDescriptionMessage",
        "resultWrapper": "CreateApplicationResult"
      },
      "errors": [
        {
          "shape": "TooManyApplicationsException"
        }
      ],
      "documentation": "<p>Creates an application that has one configuration template named <code>default</code> and no application versions.</p>"
    },
    "CreateApplicationVersion": {
      "name": "CreateApplicationVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateApplicationVersionMessage"
      },
      "output": {
        "shape": "ApplicationVersionDescriptionMessage",
        "resultWrapper": "CreateApplicationVersionResult"
      },
      "errors": [
        {
          "shape": "TooManyApplicationsException"
        },
        {
          "shape": "TooManyApplicationVersionsException"
        },
        {
          "shape": "InsufficientPrivilegesException"
        },
        {
          "shape": "S3LocationNotInServiceRegionException"
        },
        {
          "shape": "CodeBuildNotInServiceRegionException"
        }
      ],
      "documentation": "<p>Creates an application version for the specified application. You can create an application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the output of an AWS CodeBuild build as follows:</p> <p>Specify a commit in an AWS CodeCommit repository with <code>SourceBuildInformation</code>.</p> <p>Specify a build in an AWS CodeBuild with <code>SourceBuildInformation</code> and <code>BuildConfiguration</code>.</p> <p>Specify a source bundle in S3 with <code>SourceBundle</code> </p> <p>Omit both <code>SourceBuildInformation</code> and <code>SourceBundle</code> to use the default sample application.</p> <note> <p>After you create an application version with a specified Amazon S3 bucket and key location, you can't change that Amazon S3 location. If you change the Amazon S3 location, you receive an exception when you attempt to launch an environment from the application version.</p> </note>"
    },
    "CreateConfigurationTemplate": {
      "name": "CreateConfigurationTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateConfigurationTemplateMessage"
      },
      "output": {
        "shape": "ConfigurationSettingsDescription",
        "resultWrapper": "CreateConfigurationTemplateResult"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        },
        {
          "shape": "TooManyBucketsException"
        },
        {
          "shape": "TooManyConfigurationTemplatesException"
        }
      ],
      "documentation": "<p>Creates an AWS Elastic Beanstalk configuration template, associated with a specific Elastic Beanstalk application. You define application configuration settings in a configuration template. You can then use the configuration template to deploy different versions of the application with the same configuration settings.</p> <p>Templates aren't associated with any environment. The <code>EnvironmentName</code> response element is always <code>null</code>.</p> <p>Related Topics</p> <ul> <li> <p> <a>DescribeConfigurationOptions</a> </p> </li> <li> <p> <a>DescribeConfigurationSettings</a> </p> </li> <li> <p> <a>ListAvailableSolutionStacks</a> </p> </li> </ul>"
    },
    "CreateEnvironment": {
      "name": "CreateEnvironment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateEnvironmentMessage"
      },
      "output": {
        "shape": "EnvironmentDescription",
        "resultWrapper": "CreateEnvironmentResult"
      },
      "errors": [
        {
          "shape": "TooManyEnvironmentsException"
        },
        {
          "shape": "InsufficientPrivilegesException"
        }
      ],
      "documentation": "<p>Launches an AWS Elastic Beanstalk environment for the specified application using the specified configuration.</p>"
    },
    "CreatePlatformVersion": {
      "name": "CreatePlatformVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePlatformVersionRequest"
      },
      "output": {
        "shape": "CreatePlatformVersionResult",
        "resultWrapper": "CreatePlatformVersionResult"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        },
        {
          "shape": "ElasticBeanstalkServiceException"
        },
        {
          "shape": "TooManyPlatformsException"
        }
      ],
      "documentation": "<p>Create a new version of your custom platform.</p>"
    },
    "CreateStorageLocation": {
      "name": "CreateStorageLocation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "CreateStorageLocationResultMessage",
        "resultWrapper": "CreateStorageLocationResult"
      },
      "errors": [
        {
          "shape": "TooManyBucketsException"
        },
        {
          "shape": "S3SubscriptionRequiredException"
        },
        {
          "shape": "InsufficientPrivilegesException"
        }
      ],
      "documentation": "<p>Creates a bucket in Amazon S3 to store application versions, logs, and other files used by Elastic Beanstalk environments. The Elastic Beanstalk console and EB CLI call this API the first time you create an environment in a region. If the storage location already exists, <code>CreateStorageLocation</code> still returns the bucket name but does not create a new bucket.</p>"
    },
    "DeleteApplication": {
      "name": "DeleteApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationMessage"
      },
      "errors": [
        {
          "shape": "OperationInProgressException"
        }
      ],
      "documentation": "<p>Deletes the specified application along with all associated versions and configurations. The application versions will not be deleted from your Amazon S3 bucket.</p> <note> <p>You cannot delete an application that has a running environment.</p> </note>"
    },
    "DeleteApplicationVersion": {
      "name": "DeleteApplicationVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationVersionMessage"
      },
      "errors": [
        {
          "shape": "SourceBundleDeletionException"
        },
        {
          "shape": "InsufficientPrivilegesException"
        },
        {
          "shape": "OperationInProgressException"
        },
        {
          "shape": "S3LocationNotInServiceRegionException"
        }
      ],
      "documentation": "<p>Deletes the specified version from the specified application.</p> <note> <p>You cannot delete an application version that is associated with a running environment.</p> </note>"
    },
    "DeleteConfigurationTemplate": {
      "name": "DeleteConfigurationTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteConfigurationTemplateMessage"
      },
      "errors": [
        {
          "shape": "OperationInProgressException"
        }
      ],
      "documentation": "<p>Deletes the specified configuration template.</p> <note> <p>When you launch an environment using a configuration template, the environment gets a copy of the template. You can delete or modify the environment's copy of the template without affecting the running environment.</p> </note>"
    },
    "DeleteEnvironmentConfiguration": {
      "name": "DeleteEnvironmentConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteEnvironmentConfigurationMessage"
      },
      "documentation": "<p>Deletes the draft configuration associated with the running environment.</p> <p>Updating a running environment with any configuration changes creates a draft configuration set. You can get the draft configuration using <a>DescribeConfigurationSettings</a> while the update is in progress or if the update fails. The <code>DeploymentStatus</code> for the draft configuration indicates whether the deployment is in process or has failed. The draft configuration remains in existence until it is deleted with this action.</p>"
    },
    "DeletePlatformVersion": {
      "name": "DeletePlatformVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePlatformVersionRequest"
      },
      "output": {
        "shape": "DeletePlatformVersionResult",
        "resultWrapper": "DeletePlatformVersionResult"
      },
      "errors": [
        {
          "shape": "OperationInProgressException"
        },
        {
          "shape": "InsufficientPrivilegesException"
        },
        {
          "shape": "ElasticBeanstalkServiceException"
        },
        {
          "shape": "PlatformVersionStillReferencedException"
        }
      ],
      "documentation": "<p>Deletes the specified version of a custom platform.</p>"
    },
    "DescribeAccountAttributes": {
      "name": "DescribeAccountAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "DescribeAccountAttributesResult",
        "resultWrapper": "DescribeAccountAttributesResult"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        }
      ],
      "documentation": "<p>Returns attributes related to AWS Elastic Beanstalk that are associated with the calling AWS account.</p> <p>The result currently has one set of attributes—resource quotas.</p>"
    },
    "DescribeApplicationVersions": {
      "name": "DescribeApplicationVersions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeApplicationVersionsMessage"
      },
      "output": {
        "shape": "ApplicationVersionDescriptionsMessage",
        "resultWrapper": "DescribeApplicationVersionsResult"
      },
      "documentation": "<p>Retrieve a list of application versions.</p>"
    },
    "DescribeApplications": {
      "name": "DescribeApplications",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeApplicationsMessage"
      },
      "output": {
        "shape": "ApplicationDescriptionsMessage",
        "resultWrapper": "DescribeApplicationsResult"
      },
      "documentation": "<p>Returns the descriptions of existing applications.</p>"
    },
    "DescribeConfigurationOptions": {
      "name": "DescribeConfigurationOptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConfigurationOptionsMessage"
      },
      "output": {
        "shape": "ConfigurationOptionsDescription",
        "resultWrapper": "DescribeConfigurationOptionsResult"
      },
      "errors": [
        {
          "shape": "TooManyBucketsException"
        }
      ],
      "documentation": "<p>Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed.</p>"
    },
    "DescribeConfigurationSettings": {
      "name": "DescribeConfigurationSettings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConfigurationSettingsMessage"
      },
      "output": {
        "shape": "ConfigurationSettingsDescriptions",
        "resultWrapper": "DescribeConfigurationSettingsResult"
      },
      "errors": [
        {
          "shape": "TooManyBucketsException"
        }
      ],
      "documentation": "<p>Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment.</p> <p>When describing the settings for the configuration set associated with a running environment, it is possible to receive two sets of setting descriptions. One is the deployed configuration set, and the other is a draft configuration of an environment that is either in the process of deployment or that failed to deploy.</p> <p>Related Topics</p> <ul> <li> <p> <a>DeleteEnvironmentConfiguration</a> </p> </li> </ul>"
    },
    "DescribeEnvironmentHealth": {
      "name": "DescribeEnvironmentHealth",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEnvironmentHealthRequest"
      },
      "output": {
        "shape": "DescribeEnvironmentHealthResult",
        "resultWrapper": "DescribeEnvironmentHealthResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ElasticBeanstalkServiceException"
        }
      ],
      "documentation": "<p>Returns information about the overall health of the specified environment. The <b>DescribeEnvironmentHealth</b> operation is only available with AWS Elastic Beanstalk Enhanced Health.</p>"
    },
    "DescribeEnvironmentManagedActionHistory": {
      "name": "DescribeEnvironmentManagedActionHistory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEnvironmentManagedActionHistoryRequest"
      },
      "output": {
        "shape": "DescribeEnvironmentManagedActionHistoryResult",
        "resultWrapper": "DescribeEnvironmentManagedActionHistoryResult"
      },
      "errors": [
        {
          "shape": "ElasticBeanstalkServiceException"
        }
      ],
      "documentation": "<p>Lists an environment's completed and failed managed actions.</p>"
    },
    "DescribeEnvironmentManagedActions": {
      "name": "DescribeEnvironmentManagedActions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEnvironmentManagedActionsRequest"
      },
      "output": {
        "shape": "DescribeEnvironmentManagedActionsResult",
        "resultWrapper": "DescribeEnvironmentManagedActionsResult"
      },
      "errors": [
        {
          "shape": "ElasticBeanstalkServiceException"
        }
      ],
      "documentation": "<p>Lists an environment's upcoming and in-progress managed actions.</p>"
    },
    "DescribeEnvironmentResources": {
      "name": "DescribeEnvironmentResources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEnvironmentResourcesMessage"
      },
      "output": {
        "shape": "EnvironmentResourceDescriptionsMessage",
        "resultWrapper": "DescribeEnvironmentResourcesResult"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        }
      ],
      "documentation": "<p>Returns AWS resources for this environment.</p>"
    },
    "DescribeEnvironments": {
      "name": "DescribeEnvironments",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEnvironmentsMessage"
      },
      "output": {
        "shape": "EnvironmentDescriptionsMessage",
        "resultWrapper": "DescribeEnvironmentsResult"
      },
      "documentation": "<p>Returns descriptions for existing environments.</p>"
    },
    "DescribeEvents": {
      "name": "DescribeEvents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventsMessage"
      },
      "output": {
        "shape": "EventDescriptionsMessage",
        "resultWrapper": "DescribeEventsResult"
      },
      "documentation": "<p>Returns list of event descriptions matching criteria up to the last 6 weeks.</p> <note> <p>This action returns the most recent 1,000 events from the specified <code>NextToken</code>.</p> </note>"
    },
    "DescribeInstancesHealth": {
      "name": "DescribeInstancesHealth",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeInstancesHealthRequest"
      },
      "output": {
        "shape": "DescribeInstancesHealthResult",
        "resultWrapper": "DescribeInstancesHealthResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ElasticBeanstalkServiceException"
        }
      ],
      "documentation": "<p>Retrieves detailed information about the health of instances in your AWS Elastic Beanstalk. This operation requires <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html\">enhanced health reporting</a>.</p>"
    },
    "DescribePlatformVersion": {
      "name": "DescribePlatformVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePlatformVersionRequest"
      },
      "output": {
        "shape": "DescribePlatformVersionResult",
        "resultWrapper": "DescribePlatformVersionResult"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        },
        {
          "shape": "ElasticBeanstalkServiceException"
        }
      ],
      "documentation": "<p>Describes a platform version. Provides full details. Compare to <a>ListPlatformVersions</a>, which provides summary information about a list of platform versions.</p> <p>For definitions of platform version and other platform-related terms, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html\">AWS Elastic Beanstalk Platforms Glossary</a>.</p>"
    },
    "DisassociateEnvironmentOperationsRole": {
      "name": "DisassociateEnvironmentOperationsRole",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateEnvironmentOperationsRoleMessage"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        }
      ],
      "documentation": "<p>Disassociate the operations role from an environment. After this call is made, Elastic Beanstalk uses the caller's permissions for permissions to downstream services during subsequent calls acting on this environment. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html\">Operations roles</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p>"
    },
    "ListAvailableSolutionStacks": {
      "name": "ListAvailableSolutionStacks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "ListAvailableSolutionStacksResultMessage",
        "resultWrapper": "ListAvailableSolutionStacksResult"
      },
      "documentation": "<p>Returns a list of the available solution stack names, with the public version first and then in reverse chronological order.</p>"
    },
    "ListPlatformBranches": {
      "name": "ListPlatformBranches",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPlatformBranchesRequest"
      },
      "output": {
        "shape": "ListPlatformBranchesResult",
        "resultWrapper": "ListPlatformBranchesResult"
      },
      "documentation": "<p>Lists the platform branches available for your account in an AWS Region. Provides summary information about each platform branch.</p> <p>For definitions of platform branch and other platform-related terms, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html\">AWS Elastic Beanstalk Platforms Glossary</a>.</p>"
    },
    "ListPlatformVersions": {
      "name": "ListPlatformVersions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPlatformVersionsRequest"
      },
      "output": {
        "shape": "ListPlatformVersionsResult",
        "resultWrapper": "ListPlatformVersionsResult"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        },
        {
          "shape": "ElasticBeanstalkServiceException"
        }
      ],
      "documentation": "<p>Lists the platform versions available for your account in an AWS Region. Provides summary information about each platform version. Compare to <a>DescribePlatformVersion</a>, which provides full details about a single platform version.</p> <p>For definitions of platform version and other platform-related terms, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html\">AWS Elastic Beanstalk Platforms Glossary</a>.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceMessage"
      },
      "output": {
        "shape": "ResourceTagsDescriptionMessage",
        "resultWrapper": "ListTagsForResourceResult"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceTypeNotSupportedException"
        }
      ],
      "documentation": "<p>Return the tags applied to an AWS Elastic Beanstalk resource. The response contains a list of tag key-value pairs.</p> <p>Elastic Beanstalk supports tagging of all of its resources. For details about resource tagging, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html\">Tagging Application Resources</a>.</p>"
    },
    "RebuildEnvironment": {
      "name": "RebuildEnvironment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RebuildEnvironmentMessage"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        }
      ],
      "documentation": "<p>Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc.) for a specified environment and forces a restart.</p>"
    },
    "RequestEnvironmentInfo": {
      "name": "RequestEnvironmentInfo",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RequestEnvironmentInfoMessage"
      },
      "documentation": "<p>Initiates a request to compile the specified type of information of the deployed environment.</p> <p> Setting the <code>InfoType</code> to <code>tail</code> compiles the last lines from the application server log files of every Amazon EC2 instance in your environment. </p> <p> Setting the <code>InfoType</code> to <code>bundle</code> compresses the application server log files for every Amazon EC2 instance into a <code>.zip</code> file. Legacy and .NET containers do not support bundle logs. </p> <p> Use <a>RetrieveEnvironmentInfo</a> to obtain the set of logs. </p> <p>Related Topics</p> <ul> <li> <p> <a>RetrieveEnvironmentInfo</a> </p> </li> </ul>"
    },
    "RestartAppServer": {
      "name": "RestartAppServer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestartAppServerMessage"
      },
      "documentation": "<p>Causes the environment to restart the application container server running on each Amazon EC2 instance.</p>"
    },
    "RetrieveEnvironmentInfo": {
      "name": "RetrieveEnvironmentInfo",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RetrieveEnvironmentInfoMessage"
      },
      "output": {
        "shape": "RetrieveEnvironmentInfoResultMessage",
        "resultWrapper": "RetrieveEnvironmentInfoResult"
      },
      "documentation": "<p>Retrieves the compiled information from a <a>RequestEnvironmentInfo</a> request.</p> <p>Related Topics</p> <ul> <li> <p> <a>RequestEnvironmentInfo</a> </p> </li> </ul>"
    },
    "SwapEnvironmentCNAMEs": {
      "name": "SwapEnvironmentCNAMEs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SwapEnvironmentCNAMEsMessage"
      },
      "documentation": "<p>Swaps the CNAMEs of two environments.</p>"
    },
    "TerminateEnvironment": {
      "name": "TerminateEnvironment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TerminateEnvironmentMessage"
      },
      "output": {
        "shape": "EnvironmentDescription",
        "resultWrapper": "TerminateEnvironmentResult"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        }
      ],
      "documentation": "<p>Terminates the specified environment.</p>"
    },
    "UpdateApplication": {
      "name": "UpdateApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateApplicationMessage"
      },
      "output": {
        "shape": "ApplicationDescriptionMessage",
        "resultWrapper": "UpdateApplicationResult"
      },
      "documentation": "<p>Updates the specified application to have the specified properties.</p> <note> <p>If a property (for example, <code>description</code>) is not provided, the value remains unchanged. To clear these properties, specify an empty string.</p> </note>"
    },
    "UpdateApplicationResourceLifecycle": {
      "name": "UpdateApplicationResourceLifecycle",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateApplicationResourceLifecycleMessage"
      },
      "output": {
        "shape": "ApplicationResourceLifecycleDescriptionMessage",
        "resultWrapper": "UpdateApplicationResourceLifecycleResult"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        }
      ],
      "documentation": "<p>Modifies lifecycle settings for an application.</p>"
    },
    "UpdateApplicationVersion": {
      "name": "UpdateApplicationVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateApplicationVersionMessage"
      },
      "output": {
        "shape": "ApplicationVersionDescriptionMessage",
        "resultWrapper": "UpdateApplicationVersionResult"
      },
      "documentation": "<p>Updates the specified application version to have the specified properties.</p> <note> <p>If a property (for example, <code>description</code>) is not provided, the value remains unchanged. To clear properties, specify an empty string.</p> </note>"
    },
    "UpdateConfigurationTemplate": {
      "name": "UpdateConfigurationTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateConfigurationTemplateMessage"
      },
      "output": {
        "shape": "ConfigurationSettingsDescription",
        "resultWrapper": "UpdateConfigurationTemplateResult"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        },
        {
          "shape": "TooManyBucketsException"
        }
      ],
      "documentation": "<p>Updates the specified configuration template to have the specified properties or configuration option values.</p> <note> <p>If a property (for example, <code>ApplicationName</code>) is not provided, its value remains unchanged. To clear such properties, specify an empty string.</p> </note> <p>Related Topics</p> <ul> <li> <p> <a>DescribeConfigurationOptions</a> </p> </li> </ul>"
    },
    "UpdateEnvironment": {
      "name": "UpdateEnvironment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateEnvironmentMessage"
      },
      "output": {
        "shape": "EnvironmentDescription",
        "resultWrapper": "UpdateEnvironmentResult"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        },
        {
          "shape": "TooManyBucketsException"
        }
      ],
      "documentation": "<p>Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment.</p> <p> Attempting to update both the release and configuration is not allowed and AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code> error. </p> <p> When updating the configuration settings to a new template or individual settings, a draft configuration is created and <a>DescribeConfigurationSettings</a> for this environment returns two setting descriptions with different <code>DeploymentStatus</code> values. </p>"
    },
    "UpdateTagsForResource": {
      "name": "UpdateTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateTagsForResourceMessage"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        },
        {
          "shape": "OperationInProgressException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceTypeNotSupportedException"
        }
      ],
      "documentation": "<p>Update the list of tags applied to an AWS Elastic Beanstalk resource. Two lists can be passed: <code>TagsToAdd</code> for tags to add or update, and <code>TagsToRemove</code>.</p> <p>Elastic Beanstalk supports tagging of all of its resources. For details about resource tagging, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html\">Tagging Application Resources</a>.</p> <p>If you create a custom IAM user policy to control permission to this operation, specify one of the following two virtual actions (or both) instead of the API operation name:</p> <dl> <dt>elasticbeanstalk:AddTags</dt> <dd> <p>Controls permission to call <code>UpdateTagsForResource</code> and pass a list of tags to add in the <code>TagsToAdd</code> parameter.</p> </dd> <dt>elasticbeanstalk:RemoveTags</dt> <dd> <p>Controls permission to call <code>UpdateTagsForResource</code> and pass a list of tag keys to remove in the <code>TagsToRemove</code> parameter.</p> </dd> </dl> <p>For details about creating a custom user policy, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies\">Creating a Custom User Policy</a>.</p>"
    },
    "ValidateConfigurationSettings": {
      "name": "ValidateConfigurationSettings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ValidateConfigurationSettingsMessage"
      },
      "output": {
        "shape": "ConfigurationSettingsValidationMessages",
        "resultWrapper": "ValidateConfigurationSettingsResult"
      },
      "errors": [
        {
          "shape": "InsufficientPrivilegesException"
        },
        {
          "shape": "TooManyBucketsException"
        }
      ],
      "documentation": "<p>Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid.</p> <p>This action returns a list of messages indicating any errors or warnings associated with the selection of option values.</p>"
    }
  },
  "shapes": {
    "ARN": {
      "type": "string"
    },
    "AbortEnvironmentUpdateMessage": {
      "type": "structure",
      "members": {
        "EnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>This specifies the ID of the environment with the in-progress update that you want to cancel.</p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>This specifies the name of the environment with the in-progress update that you want to cancel.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "AbortableOperationInProgress": {
      "type": "boolean"
    },
    "ActionHistoryStatus": {
      "type": "string",
      "enum": [
        "Completed",
        "Failed",
        "Unknown"
      ]
    },
    "ActionStatus": {
      "type": "string",
      "enum": [
        "Scheduled",
        "Pending",
        "Running",
        "Unknown"
      ]
    },
    "ActionType": {
      "type": "string",
      "enum": [
        "InstanceRefresh",
        "PlatformUpdate",
        "Unknown"
      ]
    },
    "ApplicationArn": {
      "type": "string"
    },
    "ApplicationDescription": {
      "type": "structure",
      "members": {
        "ApplicationArn": {
          "shape": "ApplicationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        },
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>User-defined description of the application.</p>"
        },
        "DateCreated": {
          "shape": "CreationDate",
          "documentation": "<p>The date when the application was created.</p>"
        },
        "DateUpdated": {
          "shape": "UpdateDate",
          "documentation": "<p>The date when the application was last modified.</p>"
        },
        "Versions": {
          "shape": "VersionLabelsList",
          "documentation": "<p>The names of the versions for this application.</p>"
        },
        "ConfigurationTemplates": {
          "shape": "ConfigurationTemplateNamesList",
          "documentation": "<p>The names of the configuration templates associated with this application.</p>"
        },
        "ResourceLifecycleConfig": {
          "shape": "ApplicationResourceLifecycleConfig",
          "documentation": "<p>The lifecycle settings for the application.</p>"
        }
      },
      "documentation": "<p>Describes the properties of an application.</p>"
    },
    "ApplicationDescriptionList": {
      "type": "list",
      "member": {
        "shape": "ApplicationDescription"
      }
    },
    "ApplicationDescriptionMessage": {
      "type": "structure",
      "members": {
        "Application": {
          "shape": "ApplicationDescription",
          "documentation": "<p> The <a>ApplicationDescription</a> of the application. </p>"
        }
      },
      "documentation": "<p>Result message containing a single description of an application.</p>"
    },
    "ApplicationDescriptionsMessage": {
      "type": "structure",
      "members": {
        "Applications": {
          "shape": "ApplicationDescriptionList",
          "documentation": "<p>This parameter contains a list of <a>ApplicationDescription</a>.</p>"
        }
      },
      "documentation": "<p>Result message containing a list of application descriptions.</p>"
    },
    "ApplicationMetrics": {
      "type": "structure",
      "members": {
        "Duration": {
          "shape": "NullableInteger",
          "documentation": "<p>The amount of time that the metrics cover (usually 10 seconds). For example, you might have 5 requests (<code>request_count</code>) within the most recent time slice of 10 seconds (<code>duration</code>).</p>"
        },
        "RequestCount": {
          "shape": "RequestCount",
          "documentation": "<p>Average number of requests handled by the web server per second over the last 10 seconds.</p>"
        },
        "StatusCodes": {
          "shape": "StatusCodes",
          "documentation": "<p>Represents the percentage of requests over the last 10 seconds that resulted in each type of status code response.</p>"
        },
        "Latency": {
          "shape": "Latency",
          "documentation": "<p>Represents the average latency for the slowest X percent of requests over the last 10 seconds. Latencies are in seconds with one millisecond resolution.</p>"
        }
      },
      "documentation": "<p>Application request metrics for an AWS Elastic Beanstalk environment.</p>"
    },
    "ApplicationName": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "ApplicationNamesList": {
      "type": "list",
      "member": {
        "shape": "ApplicationName"
      }
    },
    "ApplicationResourceLifecycleConfig": {
      "type": "structure",
      "members": {
        "ServiceRole": {
          "shape": "String",
          "documentation": "<p>The ARN of an IAM service role that Elastic Beanstalk has permission to assume.</p> <p>The <code>ServiceRole</code> property is required the first time that you provide a <code>VersionLifecycleConfig</code> for the application in one of the supporting calls (<code>CreateApplication</code> or <code>UpdateApplicationResourceLifecycle</code>). After you provide it once, in either one of the calls, Elastic Beanstalk persists the Service Role with the application, and you don't need to specify it again in subsequent <code>UpdateApplicationResourceLifecycle</code> calls. You can, however, specify it in subsequent calls to change the Service Role to another value.</p>"
        },
        "VersionLifecycleConfig": {
          "shape": "ApplicationVersionLifecycleConfig",
          "documentation": "<p>Defines lifecycle settings for application versions.</p>"
        }
      },
      "documentation": "<p>The resource lifecycle configuration for an application. Defines lifecycle settings for resources that belong to the application, and the service role that AWS Elastic Beanstalk assumes in order to apply lifecycle settings. The version lifecycle configuration defines lifecycle settings for application versions.</p>"
    },
    "ApplicationResourceLifecycleDescriptionMessage": {
      "type": "structure",
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application.</p>"
        },
        "ResourceLifecycleConfig": {
          "shape": "ApplicationResourceLifecycleConfig",
          "documentation": "<p>The lifecycle configuration.</p>"
        }
      }
    },
    "ApplicationVersionArn": {
      "type": "string"
    },
    "ApplicationVersionDescription": {
      "type": "structure",
      "members": {
        "ApplicationVersionArn": {
          "shape": "ApplicationVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application version.</p>"
        },
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application to which the application version belongs.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description of the application version.</p>"
        },
        "VersionLabel": {
          "shape": "VersionLabel",
          "documentation": "<p>A unique identifier for the application version.</p>"
        },
        "SourceBuildInformation": {
          "shape": "SourceBuildInformation",
          "documentation": "<p>If the version's source code was retrieved from AWS CodeCommit, the location of the source code for the application version.</p>"
        },
        "BuildArn": {
          "shape": "String",
          "documentation": "<p>Reference to the artifact from the AWS CodeBuild build.</p>"
        },
        "SourceBundle": {
          "shape": "S3Location",
          "documentation": "<p>The storage location of the application version's source bundle in Amazon S3.</p>"
        },
        "DateCreated": {
          "shape": "CreationDate",
          "documentation": "<p>The creation date of the application version.</p>"
        },
        "DateUpdated": {
          "shape": "UpdateDate",
          "documentation": "<p>The last modified date of the application version.</p>"
        },
        "Status": {
          "shape": "ApplicationVersionStatus",
          "documentation": "<p>The processing status of the application version. Reflects the state of the application version during its creation. Many of the values are only applicable if you specified <code>True</code> for the <code>Process</code> parameter of the <code>CreateApplicationVersion</code> action. The following list describes the possible values.</p> <ul> <li> <p> <code>Unprocessed</code> – Application version wasn't pre-processed or validated. Elastic Beanstalk will validate configuration files during deployment of the application version to an environment.</p> </li> <li> <p> <code>Processing</code> – Elastic Beanstalk is currently processing the application version.</p> </li> <li> <p> <code>Building</code> – Application version is currently undergoing an AWS CodeBuild build.</p> </li> <li> <p> <code>Processed</code> – Elastic Beanstalk was successfully pre-processed and validated.</p> </li> <li> <p> <code>Failed</code> – Either the AWS CodeBuild build failed or configuration files didn't pass validation. This application version isn't usable.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Describes the properties of an application version.</p>"
    },
    "ApplicationVersionDescriptionList": {
      "type": "list",
      "member": {
        "shape": "ApplicationVersionDescription"
      }
    },
    "ApplicationVersionDescriptionMessage": {
      "type": "structure",
      "members": {
        "ApplicationVersion": {
          "shape": "ApplicationVersionDescription",
          "documentation": "<p> The <a>ApplicationVersionDescription</a> of the application version. </p>"
        }
      },
      "documentation": "<p>Result message wrapping a single description of an application version.</p>"
    },
    "ApplicationVersionDescriptionsMessage": {
      "type": "structure",
      "members": {
        "ApplicationVersions": {
          "shape": "ApplicationVersionDescriptionList",
          "documentation": "<p>List of <code>ApplicationVersionDescription</code> objects sorted in order of creation.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>In a paginated request, the token that you can pass in a subsequent request to get the next response page.</p>"
        }
      },
      "documentation": "<p>Result message wrapping a list of application version descriptions.</p>"
    },
    "ApplicationVersionLifecycleConfig": {
      "type": "structure",
      "members": {
        "MaxCountRule": {
          "shape": "MaxCountRule",
          "documentation": "<p>Specify a max count rule to restrict the number of application versions that are retained for an application.</p>"
        },
        "MaxAgeRule": {
          "shape": "MaxAgeRule",
          "documentation": "<p>Specify a max age rule to restrict the length of time that application versions are retained for an application.</p>"
        }
      },
      "documentation": "<p>The application version lifecycle settings for an application. Defines the rules that Elastic Beanstalk applies to an application's versions in order to avoid hitting the per-region limit for application versions.</p> <p>When Elastic Beanstalk deletes an application version from its database, you can no longer deploy that version to an environment. The source bundle remains in S3 unless you configure the rule to delete it.</p>"
    },
    "ApplicationVersionProccess": {
      "type": "boolean"
    },
    "ApplicationVersionStatus": {
      "type": "string",
      "enum": [
        "Processed",
        "Unprocessed",
        "Failed",
        "Processing",
        "Building"
      ]
    },
    "ApplyEnvironmentManagedActionRequest": {
      "type": "structure",
      "required": [
        "ActionId"
      ],
      "members": {
        "EnvironmentName": {
          "shape": "String",
          "documentation": "<p>The name of the target environment.</p>"
        },
        "EnvironmentId": {
          "shape": "String",
          "documentation": "<p>The environment ID of the target environment.</p>"
        },
        "ActionId": {
          "shape": "String",
          "documentation": "<p>The action ID of the scheduled managed action to execute.</p>"
        }
      },
      "documentation": "<p>Request to execute a scheduled managed action immediately.</p>"
    },
    "ApplyEnvironmentManagedActionResult": {
      "type": "structure",
      "members": {
        "ActionId": {
          "shape": "String",
          "documentation": "<p>The action ID of the managed action.</p>"
        },
        "ActionDescription": {
          "shape": "String",
          "documentation": "<p>A description of the managed action.</p>"
        },
        "ActionType": {
          "shape": "ActionType",
          "documentation": "<p>The type of managed action.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the managed action.</p>"
        }
      },
      "documentation": "<p>The result message containing information about the managed action.</p>"
    },
    "AssociateEnvironmentOperationsRoleMessage": {
      "type": "structure",
      "required": [
        "EnvironmentName",
        "OperationsRole"
      ],
      "members": {
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment to which to set the operations role.</p>"
        },
        "OperationsRole": {
          "shape": "OperationsRole",
          "documentation": "<p>The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's operations role.</p>"
        }
      },
      "documentation": "<p>Request to add or change the operations role used by an environment.</p>"
    },
    "AutoCreateApplication": {
      "type": "boolean"
    },
    "AutoScalingGroup": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "ResourceId",
          "documentation": "<p>The name of the <code>AutoScalingGroup</code> . </p>"
        }
      },
      "documentation": "<p>Describes an Auto Scaling launch configuration.</p>"
    },
    "AutoScalingGroupList": {
      "type": "list",
      "member": {
        "shape": "AutoScalingGroup"
      }
    },
    "AvailableSolutionStackDetailsList": {
      "type": "list",
      "member": {
        "shape": "SolutionStackDescription"
      }
    },
    "AvailableSolutionStackNamesList": {
      "type": "list",
      "member": {
        "shape": "SolutionStackName"
      }
    },
    "BoxedBoolean": {
      "type": "boolean"
    },
    "BoxedInt": {
      "type": "integer"
    },
    "BranchName": {
      "type": "string"
    },
    "BranchOrder": {
      "type": "integer"
    },
    "BuildConfiguration": {
      "type": "structure",
      "required": [
        "CodeBuildServiceRole",
        "Image"
      ],
      "members": {
        "ArtifactName": {
          "shape": "String",
          "documentation": "<p>The name of the artifact of the CodeBuild build. If provided, Elastic Beanstalk stores the build artifact in the S3 location <i>S3-bucket</i>/resources/<i>application-name</i>/codebuild/codebuild-<i>version-label</i>-<i>artifact-name</i>.zip. If not provided, Elastic Beanstalk stores the build artifact in the S3 location <i>S3-bucket</i>/resources/<i>application-name</i>/codebuild/codebuild-<i>version-label</i>.zip. </p>"
        },
        "CodeBuildServiceRole": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>"
        },
        "ComputeType": {
          "shape": "ComputeType",
          "documentation": "<p>Information about the compute resources the build project will use.</p> <ul> <li> <p> <code>BUILD_GENERAL1_SMALL: Use up to 3 GB memory and 2 vCPUs for builds</code> </p> </li> <li> <p> <code>BUILD_GENERAL1_MEDIUM: Use up to 7 GB memory and 4 vCPUs for builds</code> </p> </li> <li> <p> <code>BUILD_GENERAL1_LARGE: Use up to 15 GB memory and 8 vCPUs for builds</code> </p> </li> </ul>"
        },
        "Image": {
          "shape": "NonEmptyString",
          "documentation": "<p>The ID of the Docker image to use for this build project.</p>"
        },
        "TimeoutInMinutes": {
          "shape": "BoxedInt",
          "documentation": "<p>How long in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait until timing out any related build that does not get marked as completed. The default is 60 minutes.</p>"
        }
      },
      "documentation": "<p>Settings for an AWS CodeBuild build.</p>"
    },
    "Builder": {
      "type": "structure",
      "members": {
        "ARN": {
          "shape": "ARN",
          "documentation": "<p>The ARN of the builder.</p>"
        }
      },
      "documentation": "<p>The builder used to build the custom platform.</p>"
    },
    "CPUUtilization": {
      "type": "structure",
      "members": {
        "User": {
          "shape": "NullableDouble",
          "documentation": "<p>Percentage of time that the CPU has spent in the <code>User</code> state over the last 10 seconds.</p>"
        },
        "Nice": {
          "shape": "NullableDouble",
          "documentation": "<p>Available on Linux environments only.</p> <p>Percentage of time that the CPU has spent in the <code>Nice</code> state over the last 10 seconds.</p>"
        },
        "System": {
          "shape": "NullableDouble",
          "documentation": "<p>Available on Linux environments only.</p> <p>Percentage of time that the CPU has spent in the <code>System</code> state over the last 10 seconds.</p>"
        },
        "Idle": {
          "shape": "NullableDouble",
          "documentation": "<p>Percentage of time that the CPU has spent in the <code>Idle</code> state over the last 10 seconds.</p>"
        },
        "IOWait": {
          "shape": "NullableDouble",
          "documentation": "<p>Available on Linux environments only.</p> <p>Percentage of time that the CPU has spent in the <code>I/O Wait</code> state over the last 10 seconds.</p>"
        },
        "IRQ": {
          "shape": "NullableDouble",
          "documentation": "<p>Available on Linux environments only.</p> <p>Percentage of time that the CPU has spent in the <code>IRQ</code> state over the last 10 seconds.</p>"
        },
        "SoftIRQ": {
          "shape": "NullableDouble",
          "documentation": "<p>Available on Linux environments only.</p> <p>Percentage of time that the CPU has spent in the <code>SoftIRQ</code> state over the last 10 seconds.</p>"
        },
        "Privileged": {
          "shape": "NullableDouble",
          "documentation": "<p>Available on Windows environments only.</p> <p>Percentage of time that the CPU has spent in the <code>Privileged</code> state over the last 10 seconds.</p>"
        }
      },
      "documentation": "<p>CPU utilization metrics for an instance.</p>"
    },
    "Cause": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "Causes": {
      "type": "list",
      "member": {
        "shape": "Cause"
      }
    },
    "CheckDNSAvailabilityMessage": {
      "type": "structure",
      "required": [
        "CNAMEPrefix"
      ],
      "members": {
        "CNAMEPrefix": {
          "shape": "DNSCnamePrefix",
          "documentation": "<p>The prefix used when this CNAME is reserved.</p>"
        }
      },
      "documentation": "<p>Results message indicating whether a CNAME is available.</p>"
    },
    "CheckDNSAvailabilityResultMessage": {
      "type": "structure",
      "members": {
        "Available": {
          "shape": "CnameAvailability",
          "documentation": "<p>Indicates if the specified CNAME is available:</p> <ul> <li> <p> <code>true</code> : The CNAME is available.</p> </li> <li> <p> <code>false</code> : The CNAME is not available.</p> </li> </ul>"
        },
        "FullyQualifiedCNAME": {
          "shape": "DNSCname",
          "documentation": "<p>The fully qualified CNAME to reserve when <a>CreateEnvironment</a> is called with the provided prefix.</p>"
        }
      },
      "documentation": "<p>Indicates if the specified CNAME is available.</p>"
    },
    "CnameAvailability": {
      "type": "boolean"
    },
    "ComposeEnvironmentsMessage": {
      "type": "structure",
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application to which the specified source bundles belong.</p>"
        },
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The name of the group to which the target environments belong. Specify a group name only if the environment name defined in each target environment's manifest ends with a + (plus) character. See <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html\">Environment Manifest (env.yaml)</a> for details.</p>"
        },
        "VersionLabels": {
          "shape": "VersionLabels",
          "documentation": "<p>A list of version labels, specifying one or more application source bundles that belong to the target application. Each source bundle must include an environment manifest that specifies the name of the environment and the name of the solution stack to use, and optionally can specify environment links to create.</p>"
        }
      },
      "documentation": "<p>Request to create or update a group of environments.</p>"
    },
    "ComputeType": {
      "type": "string",
      "enum": [
        "BUILD_GENERAL1_SMALL",
        "BUILD_GENERAL1_MEDIUM",
        "BUILD_GENERAL1_LARGE"
      ]
    },
    "ConfigurationDeploymentStatus": {
      "type": "string",
      "enum": [
        "deployed",
        "pending",
        "failed"
      ]
    },
    "ConfigurationOptionDefaultValue": {
      "type": "string"
    },
    "ConfigurationOptionDescription": {
      "type": "structure",
      "members": {
        "Namespace": {
          "shape": "OptionNamespace",
          "documentation": "<p>A unique namespace identifying the option's associated AWS resource.</p>"
        },
        "Name": {
          "shape": "ConfigurationOptionName",
          "documentation": "<p>The name of the configuration option.</p>"
        },
        "DefaultValue": {
          "shape": "ConfigurationOptionDefaultValue",
          "documentation": "<p>The default value for this configuration option.</p>"
        },
        "ChangeSeverity": {
          "shape": "ConfigurationOptionSeverity",
          "documentation": "<p>An indication of which action is required if the value for this configuration option changes:</p> <ul> <li> <p> <code>NoInterruption</code> : There is no interruption to the environment or application availability.</p> </li> <li> <p> <code>RestartEnvironment</code> : The environment is entirely restarted, all AWS resources are deleted and recreated, and the environment is unavailable during the process.</p> </li> <li> <p> <code>RestartApplicationServer</code> : The environment is available the entire time. However, a short application outage occurs when the application servers on the running Amazon EC2 instances are restarted.</p> </li> </ul>"
        },
        "UserDefined": {
          "shape": "UserDefinedOption",
          "documentation": "<p>An indication of whether the user defined this configuration option:</p> <ul> <li> <p> <code>true</code> : This configuration option was defined by the user. It is a valid choice for specifying if this as an <code>Option to Remove</code> when updating configuration settings. </p> </li> <li> <p> <code>false</code> : This configuration was not defined by the user.</p> </li> </ul> <p> Constraint: You can remove only <code>UserDefined</code> options from a configuration. </p> <p> Valid Values: <code>true</code> | <code>false</code> </p>"
        },
        "ValueType": {
          "shape": "ConfigurationOptionValueType",
          "documentation": "<p>An indication of which type of values this option has and whether it is allowable to select one or more than one of the possible values:</p> <ul> <li> <p> <code>Scalar</code> : Values for this option are a single selection from the possible values, or an unformatted string, or numeric value governed by the <code>MIN/MAX/Regex</code> constraints.</p> </li> <li> <p> <code>List</code> : Values for this option are multiple selections from the possible values.</p> </li> <li> <p> <code>Boolean</code> : Values for this option are either <code>true</code> or <code>false</code> .</p> </li> <li> <p> <code>Json</code> : Values for this option are a JSON representation of a <code>ConfigDocument</code>.</p> </li> </ul>"
        },
        "ValueOptions": {
          "shape": "ConfigurationOptionPossibleValues",
          "documentation": "<p>If specified, values for the configuration option are selected from this list.</p>"
        },
        "MinValue": {
          "shape": "OptionRestrictionMinValue",
          "documentation": "<p>If specified, the configuration option must be a numeric value greater than this value.</p>"
        },
        "MaxValue": {
          "shape": "OptionRestrictionMaxValue",
          "documentation": "<p>If specified, the configuration option must be a numeric value less than this value.</p>"
        },
        "MaxLength": {
          "shape": "OptionRestrictionMaxLength",
          "documentation": "<p>If specified, the configuration option must be a string value no longer than this value.</p>"
        },
        "Regex": {
          "shape": "OptionRestrictionRegex",
          "documentation": "<p>If specified, the configuration option must be a string value that satisfies this regular expression.</p>"
        }
      },
      "documentation": "<p>Describes the possible values for a configuration option.</p>"
    },
    "ConfigurationOptionDescriptionsList": {
      "type": "list",
      "member": {
        "shape": "ConfigurationOptionDescription"
      }
    },
    "ConfigurationOptionName": {
      "type": "string"
    },
    "ConfigurationOptionPossibleValue": {
      "type": "string"
    },
    "ConfigurationOptionPossibleValues": {
      "type": "list",
      "member": {
        "shape": "ConfigurationOptionPossibleValue"
      }
    },
    "ConfigurationOptionSetting": {
      "type": "structure",
      "members": {
        "ResourceName": {
          "shape": "ResourceName",
          "documentation": "<p>A unique resource name for the option setting. Use it for a time–based scaling configuration option.</p>"
        },
        "Namespace": {
          "shape": "OptionNamespace",
          "documentation": "<p>A unique namespace that identifies the option's associated AWS resource.</p>"
        },
        "OptionName": {
          "shape": "ConfigurationOptionName",
          "documentation": "<p>The name of the configuration option.</p>"
        },
        "Value": {
          "shape": "ConfigurationOptionValue",
          "documentation": "<p>The current value for the configuration option.</p>"
        }
      },
      "documentation": "<p>A specification identifying an individual configuration option along with its current value. For a list of possible namespaces and option values, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html\">Option Values</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>. </p>"
    },
    "ConfigurationOptionSettingsList": {
      "type": "list",
      "member": {
        "shape": "ConfigurationOptionSetting"
      }
    },
    "ConfigurationOptionSeverity": {
      "type": "string"
    },
    "ConfigurationOptionValue": {
      "type": "string"
    },
    "ConfigurationOptionValueType": {
      "type": "string",
      "enum": [
        "Scalar",
        "List"
      ]
    },
    "ConfigurationOptionsDescription": {
      "type": "structure",
      "members": {
        "SolutionStackName": {
          "shape": "SolutionStackName",
          "documentation": "<p>The name of the solution stack these configuration options belong to.</p>"
        },
        "PlatformArn": {
          "shape": "PlatformArn",
          "documentation": "<p>The ARN of the platform version.</p>"
        },
        "Options": {
          "shape": "ConfigurationOptionDescriptionsList",
          "documentation": "<p> A list of <a>ConfigurationOptionDescription</a>. </p>"
        }
      },
      "documentation": "<p>Describes the settings for a specified configuration set.</p>"
    },
    "ConfigurationSettingsDescription": {
      "type": "structure",
      "members": {
        "SolutionStackName": {
          "shape": "SolutionStackName",
          "documentation": "<p>The name of the solution stack this configuration set uses.</p>"
        },
        "PlatformArn": {
          "shape": "PlatformArn",
          "documentation": "<p>The ARN of the platform version.</p>"
        },
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application associated with this configuration set.</p>"
        },
        "TemplateName": {
          "shape": "ConfigurationTemplateName",
          "documentation": "<p> If not <code>null</code>, the name of the configuration template for this configuration set. </p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>Describes this configuration set.</p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p> If not <code>null</code>, the name of the environment for this configuration set. </p>"
        },
        "DeploymentStatus": {
          "shape": "ConfigurationDeploymentStatus",
          "documentation": "<p> If this configuration set is associated with an environment, the <code>DeploymentStatus</code> parameter indicates the deployment status of this configuration set: </p> <ul> <li> <p> <code>null</code>: This configuration is not associated with a running environment.</p> </li> <li> <p> <code>pending</code>: This is a draft configuration that is not deployed to the associated environment but is in the process of deploying.</p> </li> <li> <p> <code>deployed</code>: This is the configuration that is currently deployed to the associated running environment.</p> </li> <li> <p> <code>failed</code>: This is a draft configuration that failed to successfully deploy.</p> </li> </ul>"
        },
        "DateCreated": {
          "shape": "CreationDate",
          "documentation": "<p>The date (in UTC time) when this configuration set was created.</p>"
        },
        "DateUpdated": {
          "shape": "UpdateDate",
          "documentation": "<p>The date (in UTC time) when this configuration set was last modified.</p>"
        },
        "OptionSettings": {
          "shape": "ConfigurationOptionSettingsList",
          "documentation": "<p>A list of the configuration options and their values in this configuration set.</p>"
        }
      },
      "documentation": "<p>Describes the settings for a configuration set.</p>"
    },
    "ConfigurationSettingsDescriptionList": {
      "type": "list",
      "member": {
        "shape": "ConfigurationSettingsDescription"
      }
    },
    "ConfigurationSettingsDescriptions": {
      "type": "structure",
      "members": {
        "ConfigurationSettings": {
          "shape": "ConfigurationSettingsDescriptionList",
          "documentation": "<p> A list of <a>ConfigurationSettingsDescription</a>. </p>"
        }
      },
      "documentation": "<p>The results from a request to change the configuration settings of an environment.</p>"
    },
    "ConfigurationSettingsValidationMessages": {
      "type": "structure",
      "members": {
        "Messages": {
          "shape": "ValidationMessagesList",
          "documentation": "<p> A list of <a>ValidationMessage</a>. </p>"
        }
      },
      "documentation": "<p>Provides a list of validation messages.</p>"
    },
    "ConfigurationTemplateName": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "ConfigurationTemplateNamesList": {
      "type": "list",
      "member": {
        "shape": "ConfigurationTemplateName"
      }
    },
    "CreateApplicationMessage": {
      "type": "structure",
      "required": [
        "ApplicationName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application. Must be unique within your account.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>Your description of the application.</p>"
        },
        "ResourceLifecycleConfig": {
          "shape": "ApplicationResourceLifecycleConfig",
          "documentation": "<p>Specifies an application resource lifecycle configuration to prevent your application from accumulating too many versions.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Specifies the tags applied to the application.</p> <p>Elastic Beanstalk applies these tags only to the application. Environments that you create in the application don't inherit the tags.</p>"
        }
      },
      "documentation": "<p>Request to create an application.</p>"
    },
    "CreateApplicationVersionMessage": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "VersionLabel"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p> The name of the application. If no application is found with this name, and <code>AutoCreateApplication</code> is <code>false</code>, returns an <code>InvalidParameterValue</code> error. </p>"
        },
        "VersionLabel": {
          "shape": "VersionLabel",
          "documentation": "<p>A label identifying this version.</p> <p>Constraint: Must be unique per application. If an application version already exists with this label for the specified application, AWS Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A description of this application version.</p>"
        },
        "SourceBuildInformation": {
          "shape": "SourceBuildInformation",
          "documentation": "<p>Specify a commit in an AWS CodeCommit Git repository to use as the source code for the application version.</p>"
        },
        "SourceBundle": {
          "shape": "S3Location",
          "documentation": "<p>The Amazon S3 bucket and key that identify the location of the source bundle for this version.</p> <note> <p>The Amazon S3 bucket must be in the same region as the environment.</p> </note> <p>Specify a source bundle in S3 or a commit in an AWS CodeCommit repository (with <code>SourceBuildInformation</code>), but not both. If neither <code>SourceBundle</code> nor <code>SourceBuildInformation</code> are provided, Elastic Beanstalk uses a sample application.</p>"
        },
        "BuildConfiguration": {
          "shape": "BuildConfiguration",
          "documentation": "<p>Settings for an AWS CodeBuild build.</p>"
        },
        "AutoCreateApplication": {
          "shape": "AutoCreateApplication",
          "documentation": "<p>Set to <code>true</code> to create an application with the specified name if it doesn't already exist.</p>"
        },
        "Process": {
          "shape": "ApplicationVersionProccess",
          "documentation": "<p>Pre-processes and validates the environment manifest (<code>env.yaml</code>) and configuration files (<code>*.config</code> files in the <code>.ebextensions</code> folder) in the source bundle. Validating configuration files can identify issues prior to deploying the application version to an environment.</p> <p>You must turn processing on for application versions that you create using AWS CodeBuild or AWS CodeCommit. For application versions built from a source bundle in Amazon S3, processing is optional.</p> <note> <p>The <code>Process</code> option validates Elastic Beanstalk configuration files. It doesn't validate your application's configuration files, like proxy server or Docker configuration.</p> </note>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Specifies the tags applied to the application version.</p> <p>Elastic Beanstalk applies these tags only to the application version. Environments that use the application version don't inherit the tags.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateConfigurationTemplateMessage": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "TemplateName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the Elastic Beanstalk application to associate with this configuration template.</p>"
        },
        "TemplateName": {
          "shape": "ConfigurationTemplateName",
          "documentation": "<p>The name of the configuration template.</p> <p>Constraint: This name must be unique per application.</p>"
        },
        "SolutionStackName": {
          "shape": "SolutionStackName",
          "documentation": "<p>The name of an Elastic Beanstalk solution stack (platform version) that this configuration uses. For example, <code>64bit Amazon Linux 2013.09 running Tomcat 7 Java 7</code>. A solution stack specifies the operating system, runtime, and application server for a configuration template. It also determines the set of configuration options as well as the possible and default values. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html\">Supported Platforms</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p> <p>You must specify <code>SolutionStackName</code> if you don't specify <code>PlatformArn</code>, <code>EnvironmentId</code>, or <code>SourceConfiguration</code>.</p> <p>Use the <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_ListAvailableSolutionStacks.html\"> <code>ListAvailableSolutionStacks</code> </a> API to obtain a list of available solution stacks.</p>"
        },
        "PlatformArn": {
          "shape": "PlatformArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the custom platform. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html\"> Custom Platforms</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p> <note> <p>If you specify <code>PlatformArn</code>, then don't specify <code>SolutionStackName</code>.</p> </note>"
        },
        "SourceConfiguration": {
          "shape": "SourceConfiguration",
          "documentation": "<p>An Elastic Beanstalk configuration template to base this one on. If specified, Elastic Beanstalk uses the configuration values from the specified configuration template to create a new configuration.</p> <p>Values specified in <code>OptionSettings</code> override any values obtained from the <code>SourceConfiguration</code>.</p> <p>You must specify <code>SourceConfiguration</code> if you don't specify <code>PlatformArn</code>, <code>EnvironmentId</code>, or <code>SolutionStackName</code>.</p> <p>Constraint: If both solution stack name and source configuration are specified, the solution stack of the source configuration template must match the specified solution stack name.</p>"
        },
        "EnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of an environment whose settings you want to use to create the configuration template. You must specify <code>EnvironmentId</code> if you don't specify <code>PlatformArn</code>, <code>SolutionStackName</code>, or <code>SourceConfiguration</code>.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>An optional description for this configuration.</p>"
        },
        "OptionSettings": {
          "shape": "ConfigurationOptionSettingsList",
          "documentation": "<p>Option values for the Elastic Beanstalk configuration, such as the instance type. If specified, these values override the values obtained from the solution stack or the source configuration template. For a complete list of Elastic Beanstalk configuration options, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html\">Option Values</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Specifies the tags applied to the configuration template.</p>"
        }
      },
      "documentation": "<p>Request to create a configuration template.</p>"
    },
    "CreateEnvironmentMessage": {
      "type": "structure",
      "required": [
        "ApplicationName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application that is associated with this environment.</p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>A unique name for the environment.</p> <p>Constraint: Must be from 4 to 40 characters in length. The name can contain only letters, numbers, and hyphens. It can't start or end with a hyphen. This name must be unique within a region in your account. If the specified name already exists in the region, Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p> <p>If you don't specify the <code>CNAMEPrefix</code> parameter, the environment name becomes part of the CNAME, and therefore part of the visible URL for your application.</p>"
        },
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The name of the group to which the target environment belongs. Specify a group name only if the environment's name is specified in an environment manifest and not with the environment name parameter. See <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html\">Environment Manifest (env.yaml)</a> for details.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>Your description for this environment.</p>"
        },
        "CNAMEPrefix": {
          "shape": "DNSCnamePrefix",
          "documentation": "<p>If specified, the environment attempts to use this value as the prefix for the CNAME in your Elastic Beanstalk environment URL. If not specified, the CNAME is generated automatically by appending a random alphanumeric string to the environment name.</p>"
        },
        "Tier": {
          "shape": "EnvironmentTier",
          "documentation": "<p>Specifies the tier to use in creating this environment. The environment tier that you choose determines whether Elastic Beanstalk provisions resources to support a web application that handles HTTP(S) requests or a web application that handles background-processing tasks.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Specifies the tags applied to resources in the environment.</p>"
        },
        "VersionLabel": {
          "shape": "VersionLabel",
          "documentation": "<p>The name of the application version to deploy.</p> <p>Default: If not specified, Elastic Beanstalk attempts to deploy the sample application.</p>"
        },
        "TemplateName": {
          "shape": "ConfigurationTemplateName",
          "documentation": "<p>The name of the Elastic Beanstalk configuration template to use with the environment.</p> <note> <p>If you specify <code>TemplateName</code>, then don't specify <code>SolutionStackName</code>.</p> </note>"
        },
        "SolutionStackName": {
          "shape": "SolutionStackName",
          "documentation": "<p>The name of an Elastic Beanstalk solution stack (platform version) to use with the environment. If specified, Elastic Beanstalk sets the configuration values to the default values associated with the specified solution stack. For a list of current solution stacks, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/platforms/platforms-supported.html\">Elastic Beanstalk Supported Platforms</a> in the <i>AWS Elastic Beanstalk Platforms</i> guide.</p> <note> <p>If you specify <code>SolutionStackName</code>, don't specify <code>PlatformArn</code> or <code>TemplateName</code>.</p> </note>"
        },
        "PlatformArn": {
          "shape": "PlatformArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the custom platform to use with the environment. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html\">Custom Platforms</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p> <note> <p>If you specify <code>PlatformArn</code>, don't specify <code>SolutionStackName</code>.</p> </note>"
        },
        "OptionSettings": {
          "shape": "ConfigurationOptionSettingsList",
          "documentation": "<p>If specified, AWS Elastic Beanstalk sets the specified configuration options to the requested value in the configuration set for the new environment. These override the values obtained from the solution stack or the configuration template.</p>"
        },
        "OptionsToRemove": {
          "shape": "OptionsSpecifierList",
          "documentation": "<p>A list of custom user-defined configuration options to remove from the configuration set for this new environment.</p>"
        },
        "OperationsRole": {
          "shape": "OperationsRole",
          "documentation": "<p>The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's operations role. If specified, Elastic Beanstalk uses the operations role for permissions to downstream services during this call and during subsequent calls acting on this environment. To specify an operations role, you must have the <code>iam:PassRole</code> permission for the role. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html\">Operations roles</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreatePlatformVersionRequest": {
      "type": "structure",
      "required": [
        "PlatformName",
        "PlatformVersion",
        "PlatformDefinitionBundle"
      ],
      "members": {
        "PlatformName": {
          "shape": "PlatformName",
          "documentation": "<p>The name of your custom platform.</p>"
        },
        "PlatformVersion": {
          "shape": "PlatformVersion",
          "documentation": "<p>The number, such as 1.0.2, for the new platform version.</p>"
        },
        "PlatformDefinitionBundle": {
          "shape": "S3Location",
          "documentation": "<p>The location of the platform definition archive in Amazon S3.</p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the builder environment.</p>"
        },
        "OptionSettings": {
          "shape": "ConfigurationOptionSettingsList",
          "documentation": "<p>The configuration option settings to apply to the builder environment.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Specifies the tags applied to the new platform version.</p> <p>Elastic Beanstalk applies these tags only to the platform version. Environments that you create using the platform version don't inherit the tags.</p>"
        }
      },
      "documentation": "<p>Request to create a new platform version.</p>"
    },
    "CreatePlatformVersionResult": {
      "type": "structure",
      "members": {
        "PlatformSummary": {
          "shape": "PlatformSummary",
          "documentation": "<p>Detailed information about the new version of the custom platform.</p>"
        },
        "Builder": {
          "shape": "Builder",
          "documentation": "<p>The builder used to create the custom platform.</p>"
        }
      }
    },
    "CreateStorageLocationResultMessage": {
      "type": "structure",
      "members": {
        "S3Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>The name of the Amazon S3 bucket created.</p>"
        }
      },
      "documentation": "<p>Results of a <a>CreateStorageLocationResult</a> call.</p>"
    },
    "CreationDate": {
      "type": "timestamp"
    },
    "CustomAmi": {
      "type": "structure",
      "members": {
        "VirtualizationType": {
          "shape": "VirtualizationType",
          "documentation": "<p>The type of virtualization used to create the custom AMI.</p>"
        },
        "ImageId": {
          "shape": "ImageId",
          "documentation": "<p>THe ID of the image used to create the custom AMI.</p>"
        }
      },
      "documentation": "<p>A custom AMI available to platforms.</p>"
    },
    "CustomAmiList": {
      "type": "list",
      "member": {
        "shape": "CustomAmi"
      }
    },
    "DNSCname": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "DNSCnamePrefix": {
      "type": "string",
      "max": 63,
      "min": 4
    },
    "DeleteApplicationMessage": {
      "type": "structure",
      "required": [
        "ApplicationName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application to delete.</p>"
        },
        "TerminateEnvByForce": {
          "shape": "TerminateEnvForce",
          "documentation": "<p>When set to true, running environments will be terminated before deleting the application.</p>"
        }
      },
      "documentation": "<p>Request to delete an application.</p>"
    },
    "DeleteApplicationVersionMessage": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "VersionLabel"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application to which the version belongs.</p>"
        },
        "VersionLabel": {
          "shape": "VersionLabel",
          "documentation": "<p>The label of the version to delete.</p>"
        },
        "DeleteSourceBundle": {
          "shape": "DeleteSourceBundle",
          "documentation": "<p>Set to <code>true</code> to delete the source bundle from your storage bucket. Otherwise, the application version is deleted only from Elastic Beanstalk and the source bundle remains in Amazon S3.</p>"
        }
      },
      "documentation": "<p>Request to delete an application version.</p>"
    },
    "DeleteConfigurationTemplateMessage": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "TemplateName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application to delete the configuration template from.</p>"
        },
        "TemplateName": {
          "shape": "ConfigurationTemplateName",
          "documentation": "<p>The name of the configuration template to delete.</p>"
        }
      },
      "documentation": "<p>Request to delete a configuration template.</p>"
    },
    "DeleteEnvironmentConfigurationMessage": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "EnvironmentName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application the environment is associated with.</p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment to delete the draft configuration from.</p>"
        }
      },
      "documentation": "<p>Request to delete a draft environment configuration.</p>"
    },
    "DeletePlatformVersionRequest": {
      "type": "structure",
      "members": {
        "PlatformArn": {
          "shape": "PlatformArn",
          "documentation": "<p>The ARN of the version of the custom platform.</p>"
        }
      }
    },
    "DeletePlatformVersionResult": {
      "type": "structure",
      "members": {
        "PlatformSummary": {
          "shape": "PlatformSummary",
          "documentation": "<p>Detailed information about the version of the custom platform.</p>"
        }
      }
    },
    "DeleteSourceBundle": {
      "type": "boolean"
    },
    "Deployment": {
      "type": "structure",
      "members": {
        "VersionLabel": {
          "shape": "String",
          "documentation": "<p>The version label of the application version in the deployment.</p>"
        },
        "DeploymentId": {
          "shape": "NullableLong",
          "documentation": "<p>The ID of the deployment. This number increases by one each time that you deploy source code or change instance configuration settings.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the deployment:</p> <ul> <li> <p> <code>In Progress</code> : The deployment is in progress.</p> </li> <li> <p> <code>Deployed</code> : The deployment succeeded.</p> </li> <li> <p> <code>Failed</code> : The deployment failed.</p> </li> </ul>"
        },
        "DeploymentTime": {
          "shape": "DeploymentTimestamp",
          "documentation": "<p>For in-progress deployments, the time that the deployment started.</p> <p>For completed deployments, the time that the deployment ended.</p>"
        }
      },
      "documentation": "<p>Information about an application version deployment.</p>"
    },
    "DeploymentTimestamp": {
      "type": "timestamp"
    },
    "DescribeAccountAttributesResult": {
      "type": "structure",
      "members": {
        "ResourceQuotas": {
          "shape": "ResourceQuotas",
          "documentation": "<p>The Elastic Beanstalk resource quotas associated with the calling AWS account.</p>"
        }
      }
    },
    "DescribeApplicationVersionsMessage": {
      "type": "structure",
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Specify an application name to show only application versions for that application.</p>"
        },
        "VersionLabels": {
          "shape": "VersionLabelsList",
          "documentation": "<p>Specify a version label to show a specific application version.</p>"
        },
        "MaxRecords": {
          "shape": "MaxRecords",
          "documentation": "<p>For a paginated request. Specify a maximum number of application versions to include in each response.</p> <p>If no <code>MaxRecords</code> is specified, all available application versions are retrieved in a single response.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request.</p> <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>"
        }
      },
      "documentation": "<p>Request to describe application versions.</p>"
    },
    "DescribeApplicationsMessage": {
      "type": "structure",
      "members": {
        "ApplicationNames": {
          "shape": "ApplicationNamesList",
          "documentation": "<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to only include those with the specified names.</p>"
        }
      },
      "documentation": "<p>Request to describe one or more applications.</p>"
    },
    "DescribeConfigurationOptionsMessage": {
      "type": "structure",
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application associated with the configuration template or environment. Only needed if you want to describe the configuration options associated with either the configuration template or environment.</p>"
        },
        "TemplateName": {
          "shape": "ConfigurationTemplateName",
          "documentation": "<p>The name of the configuration template whose configuration options you want to describe.</p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment whose configuration options you want to describe.</p>"
        },
        "SolutionStackName": {
          "shape": "SolutionStackName",
          "documentation": "<p>The name of the solution stack whose configuration options you want to describe.</p>"
        },
        "PlatformArn": {
          "shape": "PlatformArn",
          "documentation": "<p>The ARN of the custom platform.</p>"
        },
        "Options": {
          "shape": "OptionsSpecifierList",
          "documentation": "<p>If specified, restricts the descriptions to only the specified options.</p>"
        }
      },
      "documentation": "<p>Result message containing a list of application version descriptions.</p>"
    },
    "DescribeConfigurationSettingsMessage": {
      "type": "structure",
      "required": [
        "ApplicationName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The application for the environment or configuration template.</p>"
        },
        "TemplateName": {
          "shape": "ConfigurationTemplateName",
          "documentation": "<p>The name of the configuration template to describe.</p> <p> Conditional: You must specify either this parameter or an EnvironmentName, but not both. If you specify both, AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code> error. If you do not specify either, AWS Elastic Beanstalk returns a <code>MissingRequiredParameter</code> error. </p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment to describe.</p> <p> Condition: You must specify either this or a TemplateName, but not both. If you specify both, AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code> error. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>"
        }
      },
      "documentation": "<p>Result message containing all of the configuration settings for a specified solution stack or configuration template.</p>"
    },
    "DescribeEnvironmentHealthRequest": {
      "type": "structure",
      "members": {
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>Specify the environment by name.</p> <p>You must specify either this or an EnvironmentName, or both.</p>"
        },
        "EnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>Specify the environment by ID.</p> <p>You must specify either this or an EnvironmentName, or both.</p>"
        },
        "AttributeNames": {
          "shape": "EnvironmentHealthAttributes",
          "documentation": "<p>Specify the response elements to return. To retrieve all attributes, set to <code>All</code>. If no attribute names are specified, returns the name of the environment.</p>"
        }
      },
      "documentation": "<p>See the example below to learn how to create a request body.</p>"
    },
    "DescribeEnvironmentHealthResult": {
      "type": "structure",
      "members": {
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The environment's name.</p>"
        },
        "HealthStatus": {
          "shape": "String",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html\">health status</a> of the environment. For example, <code>Ok</code>.</p>"
        },
        "Status": {
          "shape": "EnvironmentHealth",
          "documentation": "<p>The environment's operational status. <code>Ready</code>, <code>Launching</code>, <code>Updating</code>, <code>Terminating</code>, or <code>Terminated</code>.</p>"
        },
        "Color": {
          "shape": "String",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html\">health color</a> of the environment.</p>"
        },
        "Causes": {
          "shape": "Causes",
          "documentation": "<p>Descriptions of the data that contributed to the environment's current health status.</p>"
        },
        "ApplicationMetrics": {
          "shape": "ApplicationMetrics",
          "documentation": "<p>Application request metrics for the environment.</p>"
        },
        "InstancesHealth": {
          "shape": "InstanceHealthSummary",
          "documentation": "<p>Summary health information for the instances in the environment.</p>"
        },
        "RefreshedAt": {
          "shape": "RefreshedAt",
          "documentation": "<p>The date and time that the health information was retrieved.</p>"
        }
      },
      "documentation": "<p>Health details for an AWS Elastic Beanstalk environment.</p>"
    },
    "DescribeEnvironmentManagedActionHistoryRequest": {
      "type": "structure",
      "members": {
        "EnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The environment ID of the target environment.</p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the target environment.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The pagination token returned by a previous request.</p>"
        },
        "MaxItems": {
          "shape": "Integer",
          "documentation": "<p>The maximum number of items to return for a single request.</p>"
        }
      },
      "documentation": "<p>Request to list completed and failed managed actions.</p>"
    },
    "DescribeEnvironmentManagedActionHistoryResult": {
      "type": "structure",
      "members": {
        "ManagedActionHistoryItems": {
          "shape": "ManagedActionHistoryItems",
          "documentation": "<p>A list of completed and failed managed actions.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token that you pass to <a>DescribeEnvironmentManagedActionHistory</a> to get the next page of results.</p>"
        }
      },
      "documentation": "<p>A result message containing a list of completed and failed managed actions.</p>"
    },
    "DescribeEnvironmentManagedActionsRequest": {
      "type": "structure",
      "members": {
        "EnvironmentName": {
          "shape": "String",
          "documentation": "<p>The name of the target environment.</p>"
        },
        "EnvironmentId": {
          "shape": "String",
          "documentation": "<p>The environment ID of the target environment.</p>"
        },
        "Status": {
          "shape": "ActionStatus",
          "documentation": "<p>To show only actions with a particular status, specify a status.</p>"
        }
      },
      "documentation": "<p>Request to list an environment's upcoming and in-progress managed actions.</p>"
    },
    "DescribeEnvironmentManagedActionsResult": {
      "type": "structure",
      "members": {
        "ManagedActions": {
          "shape": "ManagedActions",
          "documentation": "<p>A list of upcoming and in-progress managed actions.</p>"
        }
      },
      "documentation": "<p>The result message containing a list of managed actions.</p>"
    },
    "DescribeEnvironmentResourcesMessage": {
      "type": "structure",
      "members": {
        "EnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment to retrieve AWS resource usage data.</p> <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment to retrieve AWS resource usage data.</p> <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>"
        }
      },
      "documentation": "<p>Request to describe the resources in an environment.</p>"
    },
    "DescribeEnvironmentsMessage": {
      "type": "structure",
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that are associated with this application.</p>"
        },
        "VersionLabel": {
          "shape": "VersionLabel",
          "documentation": "<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that are associated with this application version.</p>"
        },
        "EnvironmentIds": {
          "shape": "EnvironmentIdList",
          "documentation": "<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that have the specified IDs.</p>"
        },
        "EnvironmentNames": {
          "shape": "EnvironmentNamesList",
          "documentation": "<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that have the specified names.</p>"
        },
        "IncludeDeleted": {
          "shape": "IncludeDeleted",
          "documentation": "<p>Indicates whether to include deleted environments:</p> <p> <code>true</code>: Environments that have been deleted after <code>IncludedDeletedBackTo</code> are displayed.</p> <p> <code>false</code>: Do not include deleted environments.</p>"
        },
        "IncludedDeletedBackTo": {
          "shape": "IncludeDeletedBackTo",
          "documentation": "<p> If specified when <code>IncludeDeleted</code> is set to <code>true</code>, then environments deleted after this date are displayed. </p>"
        },
        "MaxRecords": {
          "shape": "MaxRecords",
          "documentation": "<p>For a paginated request. Specify a maximum number of environments to include in each response.</p> <p>If no <code>MaxRecords</code> is specified, all available environments are retrieved in a single response.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request.</p> <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>"
        }
      },
      "documentation": "<p>Request to describe one or more environments.</p>"
    },
    "DescribeEventsMessage": {
      "type": "structure",
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those associated with this application.</p>"
        },
        "VersionLabel": {
          "shape": "VersionLabel",
          "documentation": "<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this application version.</p>"
        },
        "TemplateName": {
          "shape": "ConfigurationTemplateName",
          "documentation": "<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that are associated with this environment configuration.</p>"
        },
        "EnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this environment.</p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this environment.</p>"
        },
        "PlatformArn": {
          "shape": "PlatformArn",
          "documentation": "<p>The ARN of a custom platform version. If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this custom platform version.</p>"
        },
        "RequestId": {
          "shape": "RequestId",
          "documentation": "<p>If specified, AWS Elastic Beanstalk restricts the described events to include only those associated with this request ID.</p>"
        },
        "Severity": {
          "shape": "EventSeverity",
          "documentation": "<p>If specified, limits the events returned from this call to include only those with the specified severity or higher.</p>"
        },
        "StartTime": {
          "shape": "TimeFilterStart",
          "documentation": "<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that occur on or after this time.</p>"
        },
        "EndTime": {
          "shape": "TimeFilterEnd",
          "documentation": "<p> If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that occur up to, but not including, the <code>EndTime</code>. </p>"
        },
        "MaxRecords": {
          "shape": "MaxRecords",
          "documentation": "<p>Specifies the maximum number of events that can be returned, beginning with the most recent event.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>Pagination token. If specified, the events return the next batch of results.</p>"
        }
      },
      "documentation": "<p>Request to retrieve a list of events for an environment.</p>"
    },
    "DescribeInstancesHealthRequest": {
      "type": "structure",
      "members": {
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>Specify the AWS Elastic Beanstalk environment by name.</p>"
        },
        "EnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>Specify the AWS Elastic Beanstalk environment by ID.</p>"
        },
        "AttributeNames": {
          "shape": "InstancesHealthAttributes",
          "documentation": "<p>Specifies the response elements you wish to receive. To retrieve all attributes, set to <code>All</code>. If no attribute names are specified, returns a list of instances.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Specify the pagination token returned by a previous call.</p>"
        }
      },
      "documentation": "<p>Parameters for a call to <code>DescribeInstancesHealth</code>.</p>"
    },
    "DescribeInstancesHealthResult": {
      "type": "structure",
      "members": {
        "InstanceHealthList": {
          "shape": "InstanceHealthList",
          "documentation": "<p>Detailed health information about each instance.</p> <p>The output differs slightly between Linux and Windows environments. There is a difference in the members that are supported under the <code>&lt;CPUUtilization&gt;</code> type.</p>"
        },
        "RefreshedAt": {
          "shape": "RefreshedAt",
          "documentation": "<p>The date and time that the health information was retrieved.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Pagination token for the next page of results, if available.</p>"
        }
      },
      "documentation": "<p>Detailed health information about the Amazon EC2 instances in an AWS Elastic Beanstalk environment.</p>"
    },
    "DescribePlatformVersionRequest": {
      "type": "structure",
      "members": {
        "PlatformArn": {
          "shape": "PlatformArn",
          "documentation": "<p>The ARN of the platform version.</p>"
        }
      }
    },
    "DescribePlatformVersionResult": {
      "type": "structure",
      "members": {
        "PlatformDescription": {
          "shape": "PlatformDescription",
          "documentation": "<p>Detailed information about the platform version.</p>"
        }
      }
    },
    "Description": {
      "type": "string",
      "max": 200
    },
    "DisassociateEnvironmentOperationsRoleMessage": {
      "type": "structure",
      "required": [
        "EnvironmentName"
      ],
      "members": {
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment from which to disassociate the operations role.</p>"
        }
      },
      "documentation": "<p>Request to disassociate the operations role from an environment.</p>"
    },
    "Ec2InstanceId": {
      "type": "string"
    },
    "EndpointURL": {
      "type": "string"
    },
    "EnvironmentArn": {
      "type": "string"
    },
    "EnvironmentDescription": {
      "type": "structure",
      "members": {
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of this environment.</p>"
        },
        "EnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of this environment.</p>"
        },
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application associated with this environment.</p>"
        },
        "VersionLabel": {
          "shape": "VersionLabel",
          "documentation": "<p>The application version deployed in this environment.</p>"
        },
        "SolutionStackName": {
          "shape": "SolutionStackName",
          "documentation": "<p> The name of the <code>SolutionStack</code> deployed with this environment. </p>"
        },
        "PlatformArn": {
          "shape": "PlatformArn",
          "documentation": "<p>The ARN of the platform version.</p>"
        },
        "TemplateName": {
          "shape": "ConfigurationTemplateName",
          "documentation": "<p>The name of the configuration template used to originally launch this environment.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>Describes this environment.</p>"
        },
        "EndpointURL": {
          "shape": "EndpointURL",
          "documentation": "<p>For load-balanced, autoscaling environments, the URL to the LoadBalancer. For single-instance environments, the IP address of the instance.</p>"
        },
        "CNAME": {
          "shape": "DNSCname",
          "documentation": "<p>The URL to the CNAME for this environment.</p>"
        },
        "DateCreated": {
          "shape": "CreationDate",
          "documentation": "<p>The creation date for this environment.</p>"
        },
        "DateUpdated": {
          "shape": "UpdateDate",
          "documentation": "<p>The last modified date for this environment.</p>"
        },
        "Status": {
          "shape": "EnvironmentStatus",
          "documentation": "<p>The current operational status of the environment:</p> <ul> <li> <p> <code>Launching</code>: Environment is in the process of initial deployment.</p> </li> <li> <p> <code>Updating</code>: Environment is in the process of updating its configuration settings or application version.</p> </li> <li> <p> <code>Ready</code>: Environment is available to have an action performed on it, such as update or terminate.</p> </li> <li> <p> <code>Terminating</code>: Environment is in the shut-down process.</p> </li> <li> <p> <code>Terminated</code>: Environment is not running.</p> </li> </ul>"
        },
        "AbortableOperationInProgress": {
          "shape": "AbortableOperationInProgress",
          "documentation": "<p>Indicates if there is an in-progress environment configuration update or application version deployment that you can cancel.</p> <p> <code>true:</code> There is an update in progress. </p> <p> <code>false:</code> There are no updates currently in progress. </p>"
        },
        "Health": {
          "shape": "EnvironmentHealth",
          "documentation": "<p>Describes the health status of the environment. AWS Elastic Beanstalk indicates the failure levels for a running environment:</p> <ul> <li> <p> <code>Red</code>: Indicates the environment is not responsive. Occurs when three or more consecutive failures occur for an environment.</p> </li> <li> <p> <code>Yellow</code>: Indicates that something is wrong. Occurs when two consecutive failures occur for an environment.</p> </li> <li> <p> <code>Green</code>: Indicates the environment is healthy and fully functional.</p> </li> <li> <p> <code>Grey</code>: Default health for a new environment. The environment is not fully launched and health checks have not started or health checks are suspended during an <code>UpdateEnvironment</code> or <code>RestartEnvironment</code> request.</p> </li> </ul> <p> Default: <code>Grey</code> </p>"
        },
        "HealthStatus": {
          "shape": "EnvironmentHealthStatus",
          "documentation": "<p>Returns the health status of the application running in your environment. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html\">Health Colors and Statuses</a>.</p>"
        },
        "Resources": {
          "shape": "EnvironmentResourcesDescription",
          "documentation": "<p>The description of the AWS resources used by this environment.</p>"
        },
        "Tier": {
          "shape": "EnvironmentTier",
          "documentation": "<p>Describes the current tier of this environment.</p>"
        },
        "EnvironmentLinks": {
          "shape": "EnvironmentLinks",
          "documentation": "<p>A list of links to other environments in the same group.</p>"
        },
        "EnvironmentArn": {
          "shape": "EnvironmentArn",
          "documentation": "<p>The environment's Amazon Resource Name (ARN), which can be used in other API requests that require an ARN.</p>"
        },
        "OperationsRole": {
          "shape": "OperationsRole",
          "documentation": "<p>The Amazon Resource Name (ARN) of the environment's operations role. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html\">Operations roles</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>Describes the properties of an environment.</p>"
    },
    "EnvironmentDescriptionsList": {
      "type": "list",
      "member": {
        "shape": "EnvironmentDescription"
      }
    },
    "EnvironmentDescriptionsMessage": {
      "type": "structure",
      "members": {
        "Environments": {
          "shape": "EnvironmentDescriptionsList",
          "documentation": "<p> Returns an <a>EnvironmentDescription</a> list. </p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>In a paginated request, the token that you can pass in a subsequent request to get the next response page.</p>"
        }
      },
      "documentation": "<p>Result message containing a list of environment descriptions.</p>"
    },
    "EnvironmentHealth": {
      "type": "string",
      "enum": [
        "Green",
        "Yellow",
        "Red",
        "Grey"
      ]
    },
    "EnvironmentHealthAttribute": {
      "type": "string",
      "enum": [
        "Status",
        "Color",
        "Causes",
        "ApplicationMetrics",
        "InstancesHealth",
        "All",
        "HealthStatus",
        "RefreshedAt"
      ]
    },
    "EnvironmentHealthAttributes": {
      "type": "list",
      "member": {
        "shape": "EnvironmentHealthAttribute"
      }
    },
    "EnvironmentHealthStatus": {
      "type": "string",
      "enum": [
        "NoData",
        "Unknown",
        "Pending",
        "Ok",
        "Info",
        "Warning",
        "Degraded",
        "Severe",
        "Suspended"
      ]
    },
    "EnvironmentId": {
      "type": "string"
    },
    "EnvironmentIdList": {
      "type": "list",
      "member": {
        "shape": "EnvironmentId"
      }
    },
    "EnvironmentInfoDescription": {
      "type": "structure",
      "members": {
        "InfoType": {
          "shape": "EnvironmentInfoType",
          "documentation": "<p>The type of information retrieved.</p>"
        },
        "Ec2InstanceId": {
          "shape": "Ec2InstanceId",
          "documentation": "<p>The Amazon EC2 Instance ID for this information.</p>"
        },
        "SampleTimestamp": {
          "shape": "SampleTimestamp",
          "documentation": "<p>The time stamp when this information was retrieved.</p>"
        },
        "Message": {
          "shape": "Message",
          "documentation": "<p>The retrieved information. Currently contains a presigned Amazon S3 URL. The files are deleted after 15 minutes.</p> <p>Anyone in possession of this URL can access the files before they are deleted. Make the URL available only to trusted parties.</p>"
        }
      },
      "documentation": "<p>The information retrieved from the Amazon EC2 instances.</p>"
    },
    "EnvironmentInfoDescriptionList": {
      "type": "list",
      "member": {
        "shape": "EnvironmentInfoDescription"
      }
    },
    "EnvironmentInfoType": {
      "type": "string",
      "enum": [
        "tail",
        "bundle"
      ]
    },
    "EnvironmentLink": {
      "type": "structure",
      "members": {
        "LinkName": {
          "shape": "String",
          "documentation": "<p>The name of the link.</p>"
        },
        "EnvironmentName": {
          "shape": "String",
          "documentation": "<p>The name of the linked environment (the dependency).</p>"
        }
      },
      "documentation": "<p>A link to another environment, defined in the environment's manifest. Links provide connection information in system properties that can be used to connect to another environment in the same group. See <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html\">Environment Manifest (env.yaml)</a> for details.</p>"
    },
    "EnvironmentLinks": {
      "type": "list",
      "member": {
        "shape": "EnvironmentLink"
      }
    },
    "EnvironmentName": {
      "type": "string",
      "max": 40,
      "min": 4
    },
    "EnvironmentNamesList": {
      "type": "list",
      "member": {
        "shape": "EnvironmentName"
      }
    },
    "EnvironmentResourceDescription": {
      "type": "structure",
      "members": {
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment.</p>"
        },
        "AutoScalingGroups": {
          "shape": "AutoScalingGroupList",
          "documentation": "<p> The <code>AutoScalingGroups</code> used by this environment. </p>"
        },
        "Instances": {
          "shape": "InstanceList",
          "documentation": "<p>The Amazon EC2 instances used by this environment.</p>"
        },
        "LaunchConfigurations": {
          "shape": "LaunchConfigurationList",
          "documentation": "<p>The Auto Scaling launch configurations in use by this environment.</p>"
        },
        "LaunchTemplates": {
          "shape": "LaunchTemplateList",
          "documentation": "<p>The Amazon EC2 launch templates in use by this environment.</p>"
        },
        "LoadBalancers": {
          "shape": "LoadBalancerList",
          "documentation": "<p>The LoadBalancers in use by this environment.</p>"
        },
        "Triggers": {
          "shape": "TriggerList",
          "documentation": "<p>The <code>AutoScaling</code> triggers in use by this environment. </p>"
        },
        "Queues": {
          "shape": "QueueList",
          "documentation": "<p>The queues used by this environment.</p>"
        }
      },
      "documentation": "<p>Describes the AWS resources in use by this environment. This data is live.</p>"
    },
    "EnvironmentResourceDescriptionsMessage": {
      "type": "structure",
      "members": {
        "EnvironmentResources": {
          "shape": "EnvironmentResourceDescription",
          "documentation": "<p> A list of <a>EnvironmentResourceDescription</a>. </p>"
        }
      },
      "documentation": "<p>Result message containing a list of environment resource descriptions.</p>"
    },
    "EnvironmentResourcesDescription": {
      "type": "structure",
      "members": {
        "LoadBalancer": {
          "shape": "LoadBalancerDescription",
          "documentation": "<p>Describes the LoadBalancer.</p>"
        }
      },
      "documentation": "<p>Describes the AWS resources in use by this environment. This data is not live data.</p>"
    },
    "EnvironmentStatus": {
      "type": "string",
      "enum": [
        "Launching",
        "Updating",
        "Ready",
        "Terminating",
        "Terminated"
      ]
    },
    "EnvironmentTier": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of this environment tier.</p> <p>Valid values:</p> <ul> <li> <p>For <i>Web server tier</i> – <code>WebServer</code> </p> </li> <li> <p>For <i>Worker tier</i> – <code>Worker</code> </p> </li> </ul>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The type of this environment tier.</p> <p>Valid values:</p> <ul> <li> <p>For <i>Web server tier</i> – <code>Standard</code> </p> </li> <li> <p>For <i>Worker tier</i> – <code>SQS/HTTP</code> </p> </li> </ul>"
        },
        "Version": {
          "shape": "String",
          "documentation": "<p>The version of this environment tier. When you don't set a value to it, Elastic Beanstalk uses the latest compatible worker tier version.</p> <note> <p>This member is deprecated. Any specific version that you set may become out of date. We recommend leaving it unspecified.</p> </note>"
        }
      },
      "documentation": "<p>Describes the properties of an environment tier</p>"
    },
    "EventDate": {
      "type": "timestamp"
    },
    "EventDescription": {
      "type": "structure",
      "members": {
        "EventDate": {
          "shape": "EventDate",
          "documentation": "<p>The date when the event occurred.</p>"
        },
        "Message": {
          "shape": "EventMessage",
          "documentation": "<p>The event message.</p>"
        },
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The application associated with the event.</p>"
        },
        "VersionLabel": {
          "shape": "VersionLabel",
          "documentation": "<p>The release label for the application version associated with this event.</p>"
        },
        "TemplateName": {
          "shape": "ConfigurationTemplateName",
          "documentation": "<p>The name of the configuration associated with this event.</p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment associated with this event.</p>"
        },
        "PlatformArn": {
          "shape": "PlatformArn",
          "documentation": "<p>The ARN of the platform version.</p>"
        },
        "RequestId": {
          "shape": "RequestId",
          "documentation": "<p>The web service request ID for the activity of this event.</p>"
        },
        "Severity": {
          "shape": "EventSeverity",
          "documentation": "<p>The severity level of this event.</p>"
        }
      },
      "documentation": "<p>Describes an event.</p>"
    },
    "EventDescriptionList": {
      "type": "list",
      "member": {
        "shape": "EventDescription"
      }
    },
    "EventDescriptionsMessage": {
      "type": "structure",
      "members": {
        "Events": {
          "shape": "EventDescriptionList",
          "documentation": "<p> A list of <a>EventDescription</a>. </p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p> If returned, this indicates that there are more results to obtain. Use this token in the next <a>DescribeEvents</a> call to get the next batch of events. </p>"
        }
      },
      "documentation": "<p>Result message wrapping a list of event descriptions.</p>"
    },
    "EventMessage": {
      "type": "string"
    },
    "EventSeverity": {
      "type": "string",
      "enum": [
        "TRACE",
        "DEBUG",
        "INFO",
        "WARN",
        "ERROR",
        "FATAL"
      ]
    },
    "FailureType": {
      "type": "string",
      "enum": [
        "UpdateCancelled",
        "CancellationFailed",
        "RollbackFailed",
        "RollbackSuccessful",
        "InternalFailure",
        "InvalidEnvironmentState",
        "PermissionsError"
      ]
    },
    "FileTypeExtension": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "ForceTerminate": {
      "type": "boolean"
    },
    "GroupName": {
      "type": "string",
      "max": 19,
      "min": 1
    },
    "ImageId": {
      "type": "string"
    },
    "IncludeDeleted": {
      "type": "boolean"
    },
    "IncludeDeletedBackTo": {
      "type": "timestamp"
    },
    "Instance": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Amazon EC2 instance.</p>"
        }
      },
      "documentation": "<p>The description of an Amazon EC2 instance.</p>"
    },
    "InstanceHealthList": {
      "type": "list",
      "member": {
        "shape": "SingleInstanceHealth"
      }
    },
    "InstanceHealthSummary": {
      "type": "structure",
      "members": {
        "NoData": {
          "shape": "NullableInteger",
          "documentation": "<p> <b>Grey.</b> AWS Elastic Beanstalk and the health agent are reporting no data on an instance.</p>"
        },
        "Unknown": {
          "shape": "NullableInteger",
          "documentation": "<p> <b>Grey.</b> AWS Elastic Beanstalk and the health agent are reporting an insufficient amount of data on an instance.</p>"
        },
        "Pending": {
          "shape": "NullableInteger",
          "documentation": "<p> <b>Grey.</b> An operation is in progress on an instance within the command timeout.</p>"
        },
        "Ok": {
          "shape": "NullableInteger",
          "documentation": "<p> <b>Green.</b> An instance is passing health checks and the health agent is not reporting any problems.</p>"
        },
        "Info": {
          "shape": "NullableInteger",
          "documentation": "<p> <b>Green.</b> An operation is in progress on an instance.</p>"
        },
        "Warning": {
          "shape": "NullableInteger",
          "documentation": "<p> <b>Yellow.</b> The health agent is reporting a moderate number of request failures or other issues for an instance or environment.</p>"
        },
        "Degraded": {
          "shape": "NullableInteger",
          "documentation": "<p> <b>Red.</b> The health agent is reporting a high number of request failures or other issues for an instance or environment.</p>"
        },
        "Severe": {
          "shape": "NullableInteger",
          "documentation": "<p> <b>Red.</b> The health agent is reporting a very high number of request failures or other issues for an instance or environment.</p>"
        }
      },
      "documentation": "<p>Represents summary information about the health of an instance. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html\">Health Colors and Statuses</a>.</p>"
    },
    "InstanceId": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "InstanceList": {
      "type": "list",
      "member": {
        "shape": "Instance"
      }
    },
    "InstancesHealthAttribute": {
      "type": "string",
      "enum": [
        "HealthStatus",
        "Color",
        "Causes",
        "ApplicationMetrics",
        "RefreshedAt",
        "LaunchedAt",
        "System",
        "Deployment",
        "AvailabilityZone",
        "InstanceType",
        "All"
      ]
    },
    "InstancesHealthAttributes": {
      "type": "list",
      "member": {
        "shape": "InstancesHealthAttribute"
      }
    },
    "Integer": {
      "type": "integer"
    },
    "Latency": {
      "type": "structure",
      "members": {
        "P999": {
          "shape": "NullableDouble",
          "documentation": "<p>The average latency for the slowest 0.1 percent of requests over the last 10 seconds.</p>"
        },
        "P99": {
          "shape": "NullableDouble",
          "documentation": "<p>The average latency for the slowest 1 percent of requests over the last 10 seconds.</p>"
        },
        "P95": {
          "shape": "NullableDouble",
          "documentation": "<p>The average latency for the slowest 5 percent of requests over the last 10 seconds.</p>"
        },
        "P90": {
          "shape": "NullableDouble",
          "documentation": "<p>The average latency for the slowest 10 percent of requests over the last 10 seconds.</p>"
        },
        "P85": {
          "shape": "NullableDouble",
          "documentation": "<p>The average latency for the slowest 15 percent of requests over the last 10 seconds.</p>"
        },
        "P75": {
          "shape": "NullableDouble",
          "documentation": "<p>The average latency for the slowest 25 percent of requests over the last 10 seconds.</p>"
        },
        "P50": {
          "shape": "NullableDouble",
          "documentation": "<p>The average latency for the slowest 50 percent of requests over the last 10 seconds.</p>"
        },
        "P10": {
          "shape": "NullableDouble",
          "documentation": "<p>The average latency for the slowest 90 percent of requests over the last 10 seconds.</p>"
        }
      },
      "documentation": "<p>Represents the average latency for the slowest X percent of requests over the last 10 seconds.</p>"
    },
    "LaunchConfiguration": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "ResourceId",
          "documentation": "<p>The name of the launch configuration.</p>"
        }
      },
      "documentation": "<p>Describes an Auto Scaling launch configuration.</p>"
    },
    "LaunchConfigurationList": {
      "type": "list",
      "member": {
        "shape": "LaunchConfiguration"
      }
    },
    "LaunchTemplate": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the launch template.</p>"
        }
      },
      "documentation": "<p>Describes an Amazon EC2 launch template.</p>"
    },
    "LaunchTemplateList": {
      "type": "list",
      "member": {
        "shape": "LaunchTemplate"
      }
    },
    "LaunchedAt": {
      "type": "timestamp"
    },
    "ListAvailableSolutionStacksResultMessage": {
      "type": "structure",
      "members": {
        "SolutionStacks": {
          "shape": "AvailableSolutionStackNamesList",
          "documentation": "<p>A list of available solution stacks.</p>"
        },
        "SolutionStackDetails": {
          "shape": "AvailableSolutionStackDetailsList",
          "documentation": "<p> A list of available solution stacks and their <a>SolutionStackDescription</a>. </p>"
        }
      },
      "documentation": "<p>A list of available AWS Elastic Beanstalk solution stacks.</p>"
    },
    "ListPlatformBranchesRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "SearchFilters",
          "documentation": "<p>Criteria for restricting the resulting list of platform branches. The filter is evaluated as a logical conjunction (AND) of the separate <code>SearchFilter</code> terms.</p> <p>The following list shows valid attribute values for each of the <code>SearchFilter</code> terms. Most operators take a single value. The <code>in</code> and <code>not_in</code> operators can take multiple values.</p> <ul> <li> <p> <code>Attribute = BranchName</code>:</p> <ul> <li> <p> <code>Operator</code>: <code>=</code> | <code>!=</code> | <code>begins_with</code> | <code>ends_with</code> | <code>contains</code> | <code>in</code> | <code>not_in</code> </p> </li> </ul> </li> <li> <p> <code>Attribute = LifecycleState</code>:</p> <ul> <li> <p> <code>Operator</code>: <code>=</code> | <code>!=</code> | <code>in</code> | <code>not_in</code> </p> </li> <li> <p> <code>Values</code>: <code>beta</code> | <code>supported</code> | <code>deprecated</code> | <code>retired</code> </p> </li> </ul> </li> <li> <p> <code>Attribute = PlatformName</code>:</p> <ul> <li> <p> <code>Operator</code>: <code>=</code> | <code>!=</code> | <code>begins_with</code> | <code>ends_with</code> | <code>contains</code> | <code>in</code> | <code>not_in</code> </p> </li> </ul> </li> <li> <p> <code>Attribute = TierType</code>:</p> <ul> <li> <p> <code>Operator</code>: <code>=</code> | <code>!=</code> </p> </li> <li> <p> <code>Values</code>: <code>WebServer/Standard</code> | <code>Worker/SQS/HTTP</code> </p> </li> </ul> </li> </ul> <p>Array size: limited to 10 <code>SearchFilter</code> objects.</p> <p>Within each <code>SearchFilter</code> item, the <code>Values</code> array is limited to 10 items.</p>"
        },
        "MaxRecords": {
          "shape": "PlatformBranchMaxRecords",
          "documentation": "<p>The maximum number of platform branch values returned in one call.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request.</p> <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>"
        }
      }
    },
    "ListPlatformBranchesResult": {
      "type": "structure",
      "members": {
        "PlatformBranchSummaryList": {
          "shape": "PlatformBranchSummaryList",
          "documentation": "<p>Summary information about the platform branches.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>In a paginated request, if this value isn't <code>null</code>, it's the token that you can pass in a subsequent request to get the next response page.</p>"
        }
      }
    },
    "ListPlatformVersionsRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "PlatformFilters",
          "documentation": "<p>Criteria for restricting the resulting list of platform versions. The filter is interpreted as a logical conjunction (AND) of the separate <code>PlatformFilter</code> terms.</p>"
        },
        "MaxRecords": {
          "shape": "PlatformMaxRecords",
          "documentation": "<p>The maximum number of platform version values returned in one call.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request.</p> <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>"
        }
      }
    },
    "ListPlatformVersionsResult": {
      "type": "structure",
      "members": {
        "PlatformSummaryList": {
          "shape": "PlatformSummaryList",
          "documentation": "<p>Summary information about the platform versions.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>In a paginated request, if this value isn't <code>null</code>, it's the token that you can pass in a subsequent request to get the next response page.</p>"
        }
      }
    },
    "ListTagsForResourceMessage": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resouce for which a tag list is requested.</p> <p>Must be the ARN of an Elastic Beanstalk resource.</p>"
        }
      }
    },
    "Listener": {
      "type": "structure",
      "members": {
        "Protocol": {
          "shape": "String",
          "documentation": "<p>The protocol that is used by the Listener.</p>"
        },
        "Port": {
          "shape": "Integer",
          "documentation": "<p>The port that is used by the Listener.</p>"
        }
      },
      "documentation": "<p>Describes the properties of a Listener for the LoadBalancer.</p>"
    },
    "LoadAverage": {
      "type": "list",
      "member": {
        "shape": "LoadAverageValue"
      }
    },
    "LoadAverageValue": {
      "type": "double"
    },
    "LoadBalancer": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "ResourceId",
          "documentation": "<p>The name of the LoadBalancer.</p>"
        }
      },
      "documentation": "<p>Describes a LoadBalancer.</p>"
    },
    "LoadBalancerDescription": {
      "type": "structure",
      "members": {
        "LoadBalancerName": {
          "shape": "String",
          "documentation": "<p>The name of the LoadBalancer.</p>"
        },
        "Domain": {
          "shape": "String",
          "documentation": "<p>The domain name of the LoadBalancer.</p>"
        },
        "Listeners": {
          "shape": "LoadBalancerListenersDescription",
          "documentation": "<p>A list of Listeners used by the LoadBalancer.</p>"
        }
      },
      "documentation": "<p>Describes the details of a LoadBalancer.</p>"
    },
    "LoadBalancerList": {
      "type": "list",
      "member": {
        "shape": "LoadBalancer"
      }
    },
    "LoadBalancerListenersDescription": {
      "type": "list",
      "member": {
        "shape": "Listener"
      }
    },
    "Maintainer": {
      "type": "string"
    },
    "ManagedAction": {
      "type": "structure",
      "members": {
        "ActionId": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the managed action.</p>"
        },
        "ActionDescription": {
          "shape": "String",
          "documentation": "<p>A description of the managed action.</p>"
        },
        "ActionType": {
          "shape": "ActionType",
          "documentation": "<p>The type of managed action.</p>"
        },
        "Status": {
          "shape": "ActionStatus",
          "documentation": "<p>The status of the managed action. If the action is <code>Scheduled</code>, you can apply it immediately with <a>ApplyEnvironmentManagedAction</a>.</p>"
        },
        "WindowStartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of the maintenance window in which the managed action will execute.</p>"
        }
      },
      "documentation": "<p>The record of an upcoming or in-progress managed action.</p>"
    },
    "ManagedActionHistoryItem": {
      "type": "structure",
      "members": {
        "ActionId": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the managed action.</p>"
        },
        "ActionType": {
          "shape": "ActionType",
          "documentation": "<p>The type of the managed action.</p>"
        },
        "ActionDescription": {
          "shape": "String",
          "documentation": "<p>A description of the managed action.</p>"
        },
        "FailureType": {
          "shape": "FailureType",
          "documentation": "<p>If the action failed, the type of failure.</p>"
        },
        "Status": {
          "shape": "ActionHistoryStatus",
          "documentation": "<p>The status of the action.</p>"
        },
        "FailureDescription": {
          "shape": "String",
          "documentation": "<p>If the action failed, a description of the failure.</p>"
        },
        "ExecutedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the action started executing.</p>"
        },
        "FinishedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the action finished executing.</p>"
        }
      },
      "documentation": "<p>The record of a completed or failed managed action.</p>"
    },
    "ManagedActionHistoryItems": {
      "type": "list",
      "member": {
        "shape": "ManagedActionHistoryItem"
      },
      "max": 100,
      "min": 1
    },
    "ManagedActions": {
      "type": "list",
      "member": {
        "shape": "ManagedAction"
      },
      "max": 100,
      "min": 1
    },
    "MaxAgeRule": {
      "type": "structure",
      "required": [
        "Enabled"
      ],
      "members": {
        "Enabled": {
          "shape": "BoxedBoolean",
          "documentation": "<p>Specify <code>true</code> to apply the rule, or <code>false</code> to disable it.</p>"
        },
        "MaxAgeInDays": {
          "shape": "BoxedInt",
          "documentation": "<p>Specify the number of days to retain an application versions.</p>"
        },
        "DeleteSourceFromS3": {
          "shape": "BoxedBoolean",
          "documentation": "<p>Set to <code>true</code> to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.</p>"
        }
      },
      "documentation": "<p>A lifecycle rule that deletes application versions after the specified number of days.</p>"
    },
    "MaxCountRule": {
      "type": "structure",
      "required": [
        "Enabled"
      ],
      "members": {
        "Enabled": {
          "shape": "BoxedBoolean",
          "documentation": "<p>Specify <code>true</code> to apply the rule, or <code>false</code> to disable it.</p>"
        },
        "MaxCount": {
          "shape": "BoxedInt",
          "documentation": "<p>Specify the maximum number of application versions to retain.</p>"
        },
        "DeleteSourceFromS3": {
          "shape": "BoxedBoolean",
          "documentation": "<p>Set to <code>true</code> to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.</p>"
        }
      },
      "documentation": "<p>A lifecycle rule that deletes the oldest application version when the maximum count is exceeded.</p>"
    },
    "MaxRecords": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "Message": {
      "type": "string"
    },
    "NextToken": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "NonEmptyString": {
      "type": "string",
      "pattern": ".*\\S.*"
    },
    "NullableDouble": {
      "type": "double"
    },
    "NullableInteger": {
      "type": "integer"
    },
    "NullableLong": {
      "type": "long"
    },
    "OperatingSystemName": {
      "type": "string"
    },
    "OperatingSystemVersion": {
      "type": "string"
    },
    "OperationsRole": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "OptionNamespace": {
      "type": "string"
    },
    "OptionRestrictionMaxLength": {
      "type": "integer"
    },
    "OptionRestrictionMaxValue": {
      "type": "integer"
    },
    "OptionRestrictionMinValue": {
      "type": "integer"
    },
    "OptionRestrictionRegex": {
      "type": "structure",
      "members": {
        "Pattern": {
          "shape": "RegexPattern",
          "documentation": "<p>The regular expression pattern that a string configuration option value with this restriction must match.</p>"
        },
        "Label": {
          "shape": "RegexLabel",
          "documentation": "<p>A unique name representing this regular expression.</p>"
        }
      },
      "documentation": "<p>A regular expression representing a restriction on a string configuration option value.</p>"
    },
    "OptionSpecification": {
      "type": "structure",
      "members": {
        "ResourceName": {
          "shape": "ResourceName",
          "documentation": "<p>A unique resource name for a time-based scaling configuration option.</p>"
        },
        "Namespace": {
          "shape": "OptionNamespace",
          "documentation": "<p>A unique namespace identifying the option's associated AWS resource.</p>"
        },
        "OptionName": {
          "shape": "ConfigurationOptionName",
          "documentation": "<p>The name of the configuration option.</p>"
        }
      },
      "documentation": "<p>A specification identifying an individual configuration option.</p>"
    },
    "OptionsSpecifierList": {
      "type": "list",
      "member": {
        "shape": "OptionSpecification"
      }
    },
    "PlatformArn": {
      "type": "string"
    },
    "PlatformBranchLifecycleState": {
      "type": "string"
    },
    "PlatformBranchMaxRecords": {
      "type": "integer",
      "min": 1
    },
    "PlatformBranchSummary": {
      "type": "structure",
      "members": {
        "PlatformName": {
          "shape": "PlatformName",
          "documentation": "<p>The name of the platform to which this platform branch belongs.</p>"
        },
        "BranchName": {
          "shape": "BranchName",
          "documentation": "<p>The name of the platform branch.</p>"
        },
        "LifecycleState": {
          "shape": "PlatformBranchLifecycleState",
          "documentation": "<p>The support life cycle state of the platform branch.</p> <p>Possible values: <code>beta</code> | <code>supported</code> | <code>deprecated</code> | <code>retired</code> </p>"
        },
        "BranchOrder": {
          "shape": "BranchOrder",
          "documentation": "<p>An ordinal number that designates the order in which platform branches have been added to a platform. This can be helpful, for example, if your code calls the <code>ListPlatformBranches</code> action and then displays a list of platform branches.</p> <p>A larger <code>BranchOrder</code> value designates a newer platform branch within the platform.</p>"
        },
        "SupportedTierList": {
          "shape": "SupportedTierList",
          "documentation": "<p>The environment tiers that platform versions in this branch support.</p> <p>Possible values: <code>WebServer/Standard</code> | <code>Worker/SQS/HTTP</code> </p>"
        }
      },
      "documentation": "<p>Summary information about a platform branch.</p>"
    },
    "PlatformBranchSummaryList": {
      "type": "list",
      "member": {
        "shape": "PlatformBranchSummary"
      }
    },
    "PlatformCategory": {
      "type": "string"
    },
    "PlatformDescription": {
      "type": "structure",
      "members": {
        "PlatformArn": {
          "shape": "PlatformArn",
          "documentation": "<p>The ARN of the platform version.</p>"
        },
        "PlatformOwner": {
          "shape": "PlatformOwner",
          "documentation": "<p>The AWS account ID of the person who created the platform version.</p>"
        },
        "PlatformName": {
          "shape": "PlatformName",
          "documentation": "<p>The name of the platform version.</p>"
        },
        "PlatformVersion": {
          "shape": "PlatformVersion",
          "documentation": "<p>The version of the platform version.</p>"
        },
        "SolutionStackName": {
          "shape": "SolutionStackName",
          "documentation": "<p>The name of the solution stack used by the platform version.</p>"
        },
        "PlatformStatus": {
          "shape": "PlatformStatus",
          "documentation": "<p>The status of the platform version.</p>"
        },
        "DateCreated": {
          "shape": "CreationDate",
          "documentation": "<p>The date when the platform version was created.</p>"
        },
        "DateUpdated": {
          "shape": "UpdateDate",
          "documentation": "<p>The date when the platform version was last updated.</p>"
        },
        "PlatformCategory": {
          "shape": "PlatformCategory",
          "documentation": "<p>The category of the platform version.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description of the platform version.</p>"
        },
        "Maintainer": {
          "shape": "Maintainer",
          "documentation": "<p>Information about the maintainer of the platform version.</p>"
        },
        "OperatingSystemName": {
          "shape": "OperatingSystemName",
          "documentation": "<p>The operating system used by the platform version.</p>"
        },
        "OperatingSystemVersion": {
          "shape": "OperatingSystemVersion",
          "documentation": "<p>The version of the operating system used by the platform version.</p>"
        },
        "ProgrammingLanguages": {
          "shape": "PlatformProgrammingLanguages",
          "documentation": "<p>The programming languages supported by the platform version.</p>"
        },
        "Frameworks": {
          "shape": "PlatformFrameworks",
          "documentation": "<p>The frameworks supported by the platform version.</p>"
        },
        "CustomAmiList": {
          "shape": "CustomAmiList",
          "documentation": "<p>The custom AMIs supported by the platform version.</p>"
        },
        "SupportedTierList": {
          "shape": "SupportedTierList",
          "documentation": "<p>The tiers supported by the platform version.</p>"
        },
        "SupportedAddonList": {
          "shape": "SupportedAddonList",
          "documentation": "<p>The additions supported by the platform version.</p>"
        },
        "PlatformLifecycleState": {
          "shape": "PlatformLifecycleState",
          "documentation": "<p>The state of the platform version in its lifecycle.</p> <p>Possible values: <code>Recommended</code> | <code>null</code> </p> <p>If a null value is returned, the platform version isn't the recommended one for its branch. Each platform branch has a single recommended platform version, typically the most recent one.</p>"
        },
        "PlatformBranchName": {
          "shape": "BranchName",
          "documentation": "<p>The platform branch to which the platform version belongs.</p>"
        },
        "PlatformBranchLifecycleState": {
          "shape": "PlatformBranchLifecycleState",
          "documentation": "<p>The state of the platform version's branch in its lifecycle.</p> <p>Possible values: <code>Beta</code> | <code>Supported</code> | <code>Deprecated</code> | <code>Retired</code> </p>"
        }
      },
      "documentation": "<p>Detailed information about a platform version.</p>"
    },
    "PlatformFilter": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "PlatformFilterType",
          "documentation": "<p>The platform version attribute to which the filter values are applied.</p> <p>Valid values: <code>PlatformName</code> | <code>PlatformVersion</code> | <code>PlatformStatus</code> | <code>PlatformBranchName</code> | <code>PlatformLifecycleState</code> | <code>PlatformOwner</code> | <code>SupportedTier</code> | <code>SupportedAddon</code> | <code>ProgrammingLanguageName</code> | <code>OperatingSystemName</code> </p>"
        },
        "Operator": {
          "shape": "PlatformFilterOperator",
          "documentation": "<p>The operator to apply to the <code>Type</code> with each of the <code>Values</code>.</p> <p>Valid values: <code>=</code> | <code>!=</code> | <code>&lt;</code> | <code>&lt;=</code> | <code>&gt;</code> | <code>&gt;=</code> | <code>contains</code> | <code>begins_with</code> | <code>ends_with</code> </p>"
        },
        "Values": {
          "shape": "PlatformFilterValueList",
          "documentation": "<p>The list of values applied to the filtering platform version attribute. Only one value is supported for all current operators.</p> <p>The following list shows valid filter values for some filter attributes.</p> <ul> <li> <p> <code>PlatformStatus</code>: <code>Creating</code> | <code>Failed</code> | <code>Ready</code> | <code>Deleting</code> | <code>Deleted</code> </p> </li> <li> <p> <code>PlatformLifecycleState</code>: <code>recommended</code> </p> </li> <li> <p> <code>SupportedTier</code>: <code>WebServer/Standard</code> | <code>Worker/SQS/HTTP</code> </p> </li> <li> <p> <code>SupportedAddon</code>: <code>Log/S3</code> | <code>Monitoring/Healthd</code> | <code>WorkerDaemon/SQSD</code> </p> </li> </ul>"
        }
      },
      "documentation": "<p>Describes criteria to restrict the results when listing platform versions.</p> <p>The filter is evaluated as follows: <code>Type Operator Values[1]</code> </p>"
    },
    "PlatformFilterOperator": {
      "type": "string"
    },
    "PlatformFilterType": {
      "type": "string"
    },
    "PlatformFilterValue": {
      "type": "string"
    },
    "PlatformFilterValueList": {
      "type": "list",
      "member": {
        "shape": "PlatformFilterValue"
      }
    },
    "PlatformFilters": {
      "type": "list",
      "member": {
        "shape": "PlatformFilter"
      }
    },
    "PlatformFramework": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the framework.</p>"
        },
        "Version": {
          "shape": "String",
          "documentation": "<p>The version of the framework.</p>"
        }
      },
      "documentation": "<p>A framework supported by the platform.</p>"
    },
    "PlatformFrameworks": {
      "type": "list",
      "member": {
        "shape": "PlatformFramework"
      }
    },
    "PlatformLifecycleState": {
      "type": "string"
    },
    "PlatformMaxRecords": {
      "type": "integer",
      "min": 1
    },
    "PlatformName": {
      "type": "string"
    },
    "PlatformOwner": {
      "type": "string"
    },
    "PlatformProgrammingLanguage": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the programming language.</p>"
        },
        "Version": {
          "shape": "String",
          "documentation": "<p>The version of the programming language.</p>"
        }
      },
      "documentation": "<p>A programming language supported by the platform.</p>"
    },
    "PlatformProgrammingLanguages": {
      "type": "list",
      "member": {
        "shape": "PlatformProgrammingLanguage"
      }
    },
    "PlatformStatus": {
      "type": "string",
      "enum": [
        "Creating",
        "Failed",
        "Ready",
        "Deleting",
        "Deleted"
      ]
    },
    "PlatformSummary": {
      "type": "structure",
      "members": {
        "PlatformArn": {
          "shape": "PlatformArn",
          "documentation": "<p>The ARN of the platform version.</p>"
        },
        "PlatformOwner": {
          "shape": "PlatformOwner",
          "documentation": "<p>The AWS account ID of the person who created the platform version.</p>"
        },
        "PlatformStatus": {
          "shape": "PlatformStatus",
          "documentation": "<p>The status of the platform version. You can create an environment from the platform version once it is ready.</p>"
        },
        "PlatformCategory": {
          "shape": "PlatformCategory",
          "documentation": "<p>The category of platform version.</p>"
        },
        "OperatingSystemName": {
          "shape": "OperatingSystemName",
          "documentation": "<p>The operating system used by the platform version.</p>"
        },
        "OperatingSystemVersion": {
          "shape": "OperatingSystemVersion",
          "documentation": "<p>The version of the operating system used by the platform version.</p>"
        },
        "SupportedTierList": {
          "shape": "SupportedTierList",
          "documentation": "<p>The tiers in which the platform version runs.</p>"
        },
        "SupportedAddonList": {
          "shape": "SupportedAddonList",
          "documentation": "<p>The additions associated with the platform version.</p>"
        },
        "PlatformLifecycleState": {
          "shape": "PlatformLifecycleState",
          "documentation": "<p>The state of the platform version in its lifecycle.</p> <p>Possible values: <code>recommended</code> | empty</p> <p>If an empty value is returned, the platform version is supported but isn't the recommended one for its branch.</p>"
        },
        "PlatformVersion": {
          "shape": "PlatformVersion",
          "documentation": "<p>The version string of the platform version.</p>"
        },
        "PlatformBranchName": {
          "shape": "BranchName",
          "documentation": "<p>The platform branch to which the platform version belongs.</p>"
        },
        "PlatformBranchLifecycleState": {
          "shape": "PlatformBranchLifecycleState",
          "documentation": "<p>The state of the platform version's branch in its lifecycle.</p> <p>Possible values: <code>beta</code> | <code>supported</code> | <code>deprecated</code> | <code>retired</code> </p>"
        }
      },
      "documentation": "<p>Summary information about a platform version.</p>"
    },
    "PlatformSummaryList": {
      "type": "list",
      "member": {
        "shape": "PlatformSummary"
      }
    },
    "PlatformVersion": {
      "type": "string"
    },
    "Queue": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the queue.</p>"
        },
        "URL": {
          "shape": "String",
          "documentation": "<p>The URL of the queue.</p>"
        }
      },
      "documentation": "<p>Describes a queue.</p>"
    },
    "QueueList": {
      "type": "list",
      "member": {
        "shape": "Queue"
      }
    },
    "RebuildEnvironmentMessage": {
      "type": "structure",
      "members": {
        "EnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment to rebuild.</p> <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment to rebuild.</p> <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "RefreshedAt": {
      "type": "timestamp"
    },
    "RegexLabel": {
      "type": "string"
    },
    "RegexPattern": {
      "type": "string"
    },
    "RequestCount": {
      "type": "integer"
    },
    "RequestEnvironmentInfoMessage": {
      "type": "structure",
      "required": [
        "InfoType"
      ],
      "members": {
        "EnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment of the requested data.</p> <p>If no such environment is found, <code>RequestEnvironmentInfo</code> returns an <code>InvalidParameterValue</code> error. </p> <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment of the requested data.</p> <p>If no such environment is found, <code>RequestEnvironmentInfo</code> returns an <code>InvalidParameterValue</code> error. </p> <p>Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>"
        },
        "InfoType": {
          "shape": "EnvironmentInfoType",
          "documentation": "<p>The type of information to request.</p>"
        }
      },
      "documentation": "<p>Request to retrieve logs from an environment and store them in your Elastic Beanstalk storage bucket.</p>"
    },
    "RequestId": {
      "type": "string"
    },
    "ResourceArn": {
      "type": "string"
    },
    "ResourceId": {
      "type": "string"
    },
    "ResourceName": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "ResourceQuota": {
      "type": "structure",
      "members": {
        "Maximum": {
          "shape": "BoxedInt",
          "documentation": "<p>The maximum number of instances of this Elastic Beanstalk resource type that an AWS account can use.</p>"
        }
      },
      "documentation": "<p>The AWS Elastic Beanstalk quota information for a single resource type in an AWS account. It reflects the resource's limits for this account.</p>"
    },
    "ResourceQuotas": {
      "type": "structure",
      "members": {
        "ApplicationQuota": {
          "shape": "ResourceQuota",
          "documentation": "<p>The quota for applications in the AWS account.</p>"
        },
        "ApplicationVersionQuota": {
          "shape": "ResourceQuota",
          "documentation": "<p>The quota for application versions in the AWS account.</p>"
        },
        "EnvironmentQuota": {
          "shape": "ResourceQuota",
          "documentation": "<p>The quota for environments in the AWS account.</p>"
        },
        "ConfigurationTemplateQuota": {
          "shape": "ResourceQuota",
          "documentation": "<p>The quota for configuration templates in the AWS account.</p>"
        },
        "CustomPlatformQuota": {
          "shape": "ResourceQuota",
          "documentation": "<p>The quota for custom platforms in the AWS account.</p>"
        }
      },
      "documentation": "<p>A set of per-resource AWS Elastic Beanstalk quotas associated with an AWS account. They reflect Elastic Beanstalk resource limits for this account.</p>"
    },
    "ResourceTagsDescriptionMessage": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource for which a tag list was requested.</p>"
        },
        "ResourceTags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag key-value pairs.</p>"
        }
      }
    },
    "RestartAppServerMessage": {
      "type": "structure",
      "members": {
        "EnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment to restart the server for.</p> <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment to restart the server for.</p> <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "RetrieveEnvironmentInfoMessage": {
      "type": "structure",
      "required": [
        "InfoType"
      ],
      "members": {
        "EnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the data's environment.</p> <p>If no such environment is found, returns an <code>InvalidParameterValue</code> error.</p> <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.</p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the data's environment.</p> <p> If no such environment is found, returns an <code>InvalidParameterValue</code> error. </p> <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>"
        },
        "InfoType": {
          "shape": "EnvironmentInfoType",
          "documentation": "<p>The type of information to retrieve.</p>"
        }
      },
      "documentation": "<p>Request to download logs retrieved with <a>RequestEnvironmentInfo</a>.</p>"
    },
    "RetrieveEnvironmentInfoResultMessage": {
      "type": "structure",
      "members": {
        "EnvironmentInfo": {
          "shape": "EnvironmentInfoDescriptionList",
          "documentation": "<p> The <a>EnvironmentInfoDescription</a> of the environment. </p>"
        }
      },
      "documentation": "<p>Result message containing a description of the requested environment info.</p>"
    },
    "S3Bucket": {
      "type": "string",
      "max": 255
    },
    "S3Key": {
      "type": "string",
      "max": 1024
    },
    "S3Location": {
      "type": "structure",
      "members": {
        "S3Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>The Amazon S3 bucket where the data is located.</p>"
        },
        "S3Key": {
          "shape": "S3Key",
          "documentation": "<p>The Amazon S3 key where the data is located.</p>"
        }
      },
      "documentation": "<p>The bucket and key of an item stored in Amazon S3.</p>"
    },
    "SampleTimestamp": {
      "type": "timestamp"
    },
    "SearchFilter": {
      "type": "structure",
      "members": {
        "Attribute": {
          "shape": "SearchFilterAttribute",
          "documentation": "<p>The result attribute to which the filter values are applied. Valid values vary by API action.</p>"
        },
        "Operator": {
          "shape": "SearchFilterOperator",
          "documentation": "<p>The operator to apply to the <code>Attribute</code> with each of the <code>Values</code>. Valid values vary by <code>Attribute</code>.</p>"
        },
        "Values": {
          "shape": "SearchFilterValues",
          "documentation": "<p>The list of values applied to the <code>Attribute</code> and <code>Operator</code> attributes. Number of values and valid values vary by <code>Attribute</code>.</p>"
        }
      },
      "documentation": "<p>Describes criteria to restrict a list of results.</p> <p>For operators that apply a single value to the attribute, the filter is evaluated as follows: <code>Attribute Operator Values[1]</code> </p> <p>Some operators, e.g. <code>in</code>, can apply multiple values. In this case, the filter is evaluated as a logical union (OR) of applications of the operator to the attribute with each one of the values: <code>(Attribute Operator Values[1]) OR (Attribute Operator Values[2]) OR ...</code> </p> <p>The valid values for attributes of <code>SearchFilter</code> depend on the API action. For valid values, see the reference page for the API action you're calling that takes a <code>SearchFilter</code> parameter.</p>"
    },
    "SearchFilterAttribute": {
      "type": "string"
    },
    "SearchFilterOperator": {
      "type": "string"
    },
    "SearchFilterValue": {
      "type": "string"
    },
    "SearchFilterValues": {
      "type": "list",
      "member": {
        "shape": "SearchFilterValue"
      }
    },
    "SearchFilters": {
      "type": "list",
      "member": {
        "shape": "SearchFilter"
      }
    },
    "SingleInstanceHealth": {
      "type": "structure",
      "members": {
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The ID of the Amazon EC2 instance.</p>"
        },
        "HealthStatus": {
          "shape": "String",
          "documentation": "<p>Returns the health status of the specified instance. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html\">Health Colors and Statuses</a>.</p>"
        },
        "Color": {
          "shape": "String",
          "documentation": "<p>Represents the color indicator that gives you information about the health of the EC2 instance. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html\">Health Colors and Statuses</a>.</p>"
        },
        "Causes": {
          "shape": "Causes",
          "documentation": "<p>Represents the causes, which provide more information about the current health status.</p>"
        },
        "LaunchedAt": {
          "shape": "LaunchedAt",
          "documentation": "<p>The time at which the EC2 instance was launched.</p>"
        },
        "ApplicationMetrics": {
          "shape": "ApplicationMetrics",
          "documentation": "<p>Request metrics from your application.</p>"
        },
        "System": {
          "shape": "SystemStatus",
          "documentation": "<p>Operating system metrics from the instance.</p>"
        },
        "Deployment": {
          "shape": "Deployment",
          "documentation": "<p>Information about the most recent deployment to an instance.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The availability zone in which the instance runs.</p>"
        },
        "InstanceType": {
          "shape": "String",
          "documentation": "<p>The instance's type.</p>"
        }
      },
      "documentation": "<p>Detailed health information about an Amazon EC2 instance in your Elastic Beanstalk environment.</p>"
    },
    "SolutionStackDescription": {
      "type": "structure",
      "members": {
        "SolutionStackName": {
          "shape": "SolutionStackName",
          "documentation": "<p>The name of the solution stack.</p>"
        },
        "PermittedFileTypes": {
          "shape": "SolutionStackFileTypeList",
          "documentation": "<p>The permitted file types allowed for a solution stack.</p>"
        }
      },
      "documentation": "<p>Describes the solution stack.</p>"
    },
    "SolutionStackFileTypeList": {
      "type": "list",
      "member": {
        "shape": "FileTypeExtension"
      }
    },
    "SolutionStackName": {
      "type": "string"
    },
    "SourceBuildInformation": {
      "type": "structure",
      "required": [
        "SourceType",
        "SourceRepository",
        "SourceLocation"
      ],
      "members": {
        "SourceType": {
          "shape": "SourceType",
          "documentation": "<p>The type of repository.</p> <ul> <li> <p> <code>Git</code> </p> </li> <li> <p> <code>Zip</code> </p> </li> </ul>"
        },
        "SourceRepository": {
          "shape": "SourceRepository",
          "documentation": "<p>Location where the repository is stored.</p> <ul> <li> <p> <code>CodeCommit</code> </p> </li> <li> <p> <code>S3</code> </p> </li> </ul>"
        },
        "SourceLocation": {
          "shape": "SourceLocation",
          "documentation": "<p>The location of the source code, as a formatted string, depending on the value of <code>SourceRepository</code> </p> <ul> <li> <p>For <code>CodeCommit</code>, the format is the repository name and commit ID, separated by a forward slash. For example, <code>my-git-repo/265cfa0cf6af46153527f55d6503ec030551f57a</code>.</p> </li> <li> <p>For <code>S3</code>, the format is the S3 bucket name and object key, separated by a forward slash. For example, <code>my-s3-bucket/Folders/my-source-file</code>.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Location of the source code for an application version.</p>"
    },
    "SourceConfiguration": {
      "type": "structure",
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application associated with the configuration.</p>"
        },
        "TemplateName": {
          "shape": "ConfigurationTemplateName",
          "documentation": "<p>The name of the configuration template.</p>"
        }
      },
      "documentation": "<p>A specification for an environment configuration.</p>"
    },
    "SourceLocation": {
      "type": "string",
      "max": 255,
      "min": 3,
      "pattern": ".+/.+"
    },
    "SourceRepository": {
      "type": "string",
      "enum": [
        "CodeCommit",
        "S3"
      ]
    },
    "SourceType": {
      "type": "string",
      "enum": [
        "Git",
        "Zip"
      ]
    },
    "StatusCodes": {
      "type": "structure",
      "members": {
        "Status2xx": {
          "shape": "NullableInteger",
          "documentation": "<p>The percentage of requests over the last 10 seconds that resulted in a 2xx (200, 201, etc.) status code.</p>"
        },
        "Status3xx": {
          "shape": "NullableInteger",
          "documentation": "<p>The percentage of requests over the last 10 seconds that resulted in a 3xx (300, 301, etc.) status code.</p>"
        },
        "Status4xx": {
          "shape": "NullableInteger",
          "documentation": "<p>The percentage of requests over the last 10 seconds that resulted in a 4xx (400, 401, etc.) status code.</p>"
        },
        "Status5xx": {
          "shape": "NullableInteger",
          "documentation": "<p>The percentage of requests over the last 10 seconds that resulted in a 5xx (500, 501, etc.) status code.</p>"
        }
      },
      "documentation": "<p>Represents the percentage of requests over the last 10 seconds that resulted in each type of status code response. For more information, see <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html\">Status Code Definitions</a>.</p>"
    },
    "String": {
      "type": "string"
    },
    "SupportedAddon": {
      "type": "string"
    },
    "SupportedAddonList": {
      "type": "list",
      "member": {
        "shape": "SupportedAddon"
      }
    },
    "SupportedTier": {
      "type": "string"
    },
    "SupportedTierList": {
      "type": "list",
      "member": {
        "shape": "SupportedTier"
      }
    },
    "SwapEnvironmentCNAMEsMessage": {
      "type": "structure",
      "members": {
        "SourceEnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the source environment.</p> <p> Condition: You must specify at least the <code>SourceEnvironmentID</code> or the <code>SourceEnvironmentName</code>. You may also specify both. If you specify the <code>SourceEnvironmentId</code>, you must specify the <code>DestinationEnvironmentId</code>. </p>"
        },
        "SourceEnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the source environment.</p> <p> Condition: You must specify at least the <code>SourceEnvironmentID</code> or the <code>SourceEnvironmentName</code>. You may also specify both. If you specify the <code>SourceEnvironmentName</code>, you must specify the <code>DestinationEnvironmentName</code>. </p>"
        },
        "DestinationEnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the destination environment.</p> <p> Condition: You must specify at least the <code>DestinationEnvironmentID</code> or the <code>DestinationEnvironmentName</code>. You may also specify both. You must specify the <code>SourceEnvironmentId</code> with the <code>DestinationEnvironmentId</code>. </p>"
        },
        "DestinationEnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the destination environment.</p> <p> Condition: You must specify at least the <code>DestinationEnvironmentID</code> or the <code>DestinationEnvironmentName</code>. You may also specify both. You must specify the <code>SourceEnvironmentName</code> with the <code>DestinationEnvironmentName</code>. </p>"
        }
      },
      "documentation": "<p>Swaps the CNAMEs of two environments.</p>"
    },
    "SystemStatus": {
      "type": "structure",
      "members": {
        "CPUUtilization": {
          "shape": "CPUUtilization",
          "documentation": "<p>CPU utilization metrics for the instance.</p>"
        },
        "LoadAverage": {
          "shape": "LoadAverage",
          "documentation": "<p>Load average in the last 1-minute, 5-minute, and 15-minute periods. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-metrics.html#health-enhanced-metrics-os\">Operating System Metrics</a>.</p>"
        }
      },
      "documentation": "<p>CPU utilization and load average metrics for an Amazon EC2 instance.</p>"
    },
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>The key of the tag.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value of the tag.</p>"
        }
      },
      "documentation": "<p>Describes a tag applied to a resource in an environment.</p>"
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
      }
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "Tags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TerminateEnvForce": {
      "type": "boolean"
    },
    "TerminateEnvironmentMessage": {
      "type": "structure",
      "members": {
        "EnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment to terminate.</p> <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment to terminate.</p> <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>"
        },
        "TerminateResources": {
          "shape": "TerminateEnvironmentResources",
          "documentation": "<p>Indicates whether the associated AWS resources should shut down when the environment is terminated:</p> <ul> <li> <p> <code>true</code>: The specified environment as well as the associated AWS resources, such as Auto Scaling group and LoadBalancer, are terminated.</p> </li> <li> <p> <code>false</code>: AWS Elastic Beanstalk resource management is removed from the environment, but the AWS resources continue to operate.</p> </li> </ul> <p> For more information, see the <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/ug/\"> AWS Elastic Beanstalk User Guide. </a> </p> <p> Default: <code>true</code> </p> <p> Valid Values: <code>true</code> | <code>false</code> </p>"
        },
        "ForceTerminate": {
          "shape": "ForceTerminate",
          "documentation": "<p>Terminates the target environment even if another environment in the same group is dependent on it.</p>"
        }
      },
      "documentation": "<p>Request to terminate an environment.</p>"
    },
    "TerminateEnvironmentResources": {
      "type": "boolean"
    },
    "TimeFilterEnd": {
      "type": "timestamp"
    },
    "TimeFilterStart": {
      "type": "timestamp"
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "Token": {
      "type": "string"
    },
    "Trigger": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "ResourceId",
          "documentation": "<p>The name of the trigger.</p>"
        }
      },
      "documentation": "<p>Describes a trigger.</p>"
    },
    "TriggerList": {
      "type": "list",
      "member": {
        "shape": "Trigger"
      }
    },
    "UpdateApplicationMessage": {
      "type": "structure",
      "required": [
        "ApplicationName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application to update. If no such application is found, <code>UpdateApplication</code> returns an <code>InvalidParameterValue</code> error. </p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A new description for the application.</p> <p>Default: If not specified, AWS Elastic Beanstalk does not update the description.</p>"
        }
      },
      "documentation": "<p>Request to update an application.</p>"
    },
    "UpdateApplicationResourceLifecycleMessage": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "ResourceLifecycleConfig"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application.</p>"
        },
        "ResourceLifecycleConfig": {
          "shape": "ApplicationResourceLifecycleConfig",
          "documentation": "<p>The lifecycle configuration.</p>"
        }
      }
    },
    "UpdateApplicationVersionMessage": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "VersionLabel"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application associated with this version.</p> <p> If no application is found with this name, <code>UpdateApplication</code> returns an <code>InvalidParameterValue</code> error.</p>"
        },
        "VersionLabel": {
          "shape": "VersionLabel",
          "documentation": "<p>The name of the version to update.</p> <p>If no application version is found with this label, <code>UpdateApplication</code> returns an <code>InvalidParameterValue</code> error. </p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A new description for this version.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "UpdateConfigurationTemplateMessage": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "TemplateName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application associated with the configuration template to update.</p> <p> If no application is found with this name, <code>UpdateConfigurationTemplate</code> returns an <code>InvalidParameterValue</code> error. </p>"
        },
        "TemplateName": {
          "shape": "ConfigurationTemplateName",
          "documentation": "<p>The name of the configuration template to update.</p> <p> If no configuration template is found with this name, <code>UpdateConfigurationTemplate</code> returns an <code>InvalidParameterValue</code> error. </p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A new description for the configuration.</p>"
        },
        "OptionSettings": {
          "shape": "ConfigurationOptionSettingsList",
          "documentation": "<p>A list of configuration option settings to update with the new specified option value.</p>"
        },
        "OptionsToRemove": {
          "shape": "OptionsSpecifierList",
          "documentation": "<p>A list of configuration options to remove from the configuration set.</p> <p> Constraint: You can remove only <code>UserDefined</code> configuration options. </p>"
        }
      },
      "documentation": "<p>The result message containing the options for the specified solution stack.</p>"
    },
    "UpdateDate": {
      "type": "timestamp"
    },
    "UpdateEnvironmentMessage": {
      "type": "structure",
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application with which the environment is associated.</p>"
        },
        "EnvironmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment to update.</p> <p>If no environment with this ID exists, AWS Elastic Beanstalk returns an <code>InvalidParameterValue</code> error.</p> <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment to update. If no environment with this name exists, AWS Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p> <p>Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>"
        },
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The name of the group to which the target environment belongs. Specify a group name only if the environment's name is specified in an environment manifest and not with the environment name or environment ID parameters. See <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html\">Environment Manifest (env.yaml)</a> for details.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>If this parameter is specified, AWS Elastic Beanstalk updates the description of this environment.</p>"
        },
        "Tier": {
          "shape": "EnvironmentTier",
          "documentation": "<p>This specifies the tier to use to update the environment.</p> <p>Condition: At this time, if you change the tier version, name, or type, AWS Elastic Beanstalk returns <code>InvalidParameterValue</code> error. </p>"
        },
        "VersionLabel": {
          "shape": "VersionLabel",
          "documentation": "<p>If this parameter is specified, AWS Elastic Beanstalk deploys the named application version to the environment. If no such application version is found, returns an <code>InvalidParameterValue</code> error. </p>"
        },
        "TemplateName": {
          "shape": "ConfigurationTemplateName",
          "documentation": "<p>If this parameter is specified, AWS Elastic Beanstalk deploys this configuration template to the environment. If no such configuration template is found, AWS Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p>"
        },
        "SolutionStackName": {
          "shape": "SolutionStackName",
          "documentation": "<p>This specifies the platform version that the environment will run after the environment is updated.</p>"
        },
        "PlatformArn": {
          "shape": "PlatformArn",
          "documentation": "<p>The ARN of the platform, if used.</p>"
        },
        "OptionSettings": {
          "shape": "ConfigurationOptionSettingsList",
          "documentation": "<p>If specified, AWS Elastic Beanstalk updates the configuration set associated with the running environment and sets the specified configuration options to the requested value.</p>"
        },
        "OptionsToRemove": {
          "shape": "OptionsSpecifierList",
          "documentation": "<p>A list of custom user-defined configuration options to remove from the configuration set for this environment.</p>"
        }
      },
      "documentation": "<p>Request to update an environment.</p>"
    },
    "UpdateTagsForResourceMessage": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resouce to be updated.</p> <p>Must be the ARN of an Elastic Beanstalk resource.</p>"
        },
        "TagsToAdd": {
          "shape": "TagList",
          "documentation": "<p>A list of tags to add or update. If a key of an existing tag is added, the tag's value is updated.</p> <p>Specify at least one of these parameters: <code>TagsToAdd</code>, <code>TagsToRemove</code>.</p>"
        },
        "TagsToRemove": {
          "shape": "TagKeyList",
          "documentation": "<p>A list of tag keys to remove. If a tag key doesn't exist, it is silently ignored.</p> <p>Specify at least one of these parameters: <code>TagsToAdd</code>, <code>TagsToRemove</code>.</p>"
        }
      }
    },
    "UserDefinedOption": {
      "type": "boolean"
    },
    "ValidateConfigurationSettingsMessage": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "OptionSettings"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application that the configuration template or environment belongs to.</p>"
        },
        "TemplateName": {
          "shape": "ConfigurationTemplateName",
          "documentation": "<p>The name of the configuration template to validate the settings against.</p> <p>Condition: You cannot specify both this and an environment name.</p>"
        },
        "EnvironmentName": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment to validate the settings against.</p> <p>Condition: You cannot specify both this and a configuration template name.</p>"
        },
        "OptionSettings": {
          "shape": "ConfigurationOptionSettingsList",
          "documentation": "<p>A list of the options and desired values to evaluate.</p>"
        }
      },
      "documentation": "<p>A list of validation messages for a specified configuration template.</p>"
    },
    "ValidationMessage": {
      "type": "structure",
      "members": {
        "Message": {
          "shape": "ValidationMessageString",
          "documentation": "<p>A message describing the error or warning.</p>"
        },
        "Severity": {
          "shape": "ValidationSeverity",
          "documentation": "<p>An indication of the severity of this message:</p> <ul> <li> <p> <code>error</code>: This message indicates that this is not a valid setting for an option.</p> </li> <li> <p> <code>warning</code>: This message is providing information you should take into account.</p> </li> </ul>"
        },
        "Namespace": {
          "shape": "OptionNamespace",
          "documentation": "<p>The namespace to which the option belongs.</p>"
        },
        "OptionName": {
          "shape": "ConfigurationOptionName",
          "documentation": "<p>The name of the option.</p>"
        }
      },
      "documentation": "<p>An error or warning for a desired configuration option value.</p>"
    },
    "ValidationMessageString": {
      "type": "string"
    },
    "ValidationMessagesList": {
      "type": "list",
      "member": {
        "shape": "ValidationMessage"
      }
    },
    "ValidationSeverity": {
      "type": "string",
      "enum": [
        "error",
        "warning"
      ]
    },
    "VersionLabel": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "VersionLabels": {
      "type": "list",
      "member": {
        "shape": "VersionLabel"
      }
    },
    "VersionLabelsList": {
      "type": "list",
      "member": {
        "shape": "VersionLabel"
      }
    },
    "VirtualizationType": {
      "type": "string"
    }
  },
  "documentation": "<fullname>AWS Elastic Beanstalk</fullname> <p>AWS Elastic Beanstalk makes it easy for you to create, deploy, and manage scalable, fault-tolerant applications running on the Amazon Web Services cloud.</p> <p>For more information about this product, go to the <a href=\"http://aws.amazon.com/elasticbeanstalk/\">AWS Elastic Beanstalk</a> details page. The location of the latest AWS Elastic Beanstalk WSDL is <a href=\"https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl\">https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl</a>. To install the Software Development Kits (SDKs), Integrated Development Environment (IDE) Toolkits, and command line tools that enable you to access the API, go to <a href=\"http://aws.amazon.com/tools/\">Tools for Amazon Web Services</a>.</p> <p> <b>Endpoints</b> </p> <p>For a list of region-specific endpoints that AWS Elastic Beanstalk supports, go to <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region\">Regions and Endpoints</a> in the <i>Amazon Web Services Glossary</i>.</p>"
}
]===]))
