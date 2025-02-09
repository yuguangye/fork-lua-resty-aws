local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-11-01",
    "endpointPrefix": "compute-optimizer",
    "jsonVersion": "1.0",
    "protocol": "json",
    "serviceFullName": "AWS Compute Optimizer",
    "serviceId": "Compute Optimizer",
    "signatureVersion": "v4",
    "signingName": "compute-optimizer",
    "targetPrefix": "ComputeOptimizerService",
    "uid": "compute-optimizer-2019-11-01"
  },
  "operations": {
    "DescribeRecommendationExportJobs": {
      "name": "DescribeRecommendationExportJobs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeRecommendationExportJobsRequest"
      },
      "output": {
        "shape": "DescribeRecommendationExportJobsResponse"
      },
      "errors": [
        {
          "shape": "OptInRequiredException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "MissingAuthenticationToken"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Describes recommendation export jobs created in the last seven days.</p> <p>Use the <code>ExportAutoScalingGroupRecommendations</code> or <code>ExportEC2InstanceRecommendations</code> actions to request an export of your recommendations. Then use the <code>DescribeRecommendationExportJobs</code> action to view your export jobs.</p>"
    },
    "ExportAutoScalingGroupRecommendations": {
      "name": "ExportAutoScalingGroupRecommendations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ExportAutoScalingGroupRecommendationsRequest"
      },
      "output": {
        "shape": "ExportAutoScalingGroupRecommendationsResponse"
      },
      "errors": [
        {
          "shape": "OptInRequiredException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingAuthenticationToken"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Exports optimization recommendations for Auto Scaling groups.</p> <p>Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html\">Exporting Recommendations</a> in the <i>Compute Optimizer User Guide</i>.</p> <p>You can have only one Auto Scaling group export job in progress per AWS Region.</p>"
    },
    "ExportEC2InstanceRecommendations": {
      "name": "ExportEC2InstanceRecommendations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ExportEC2InstanceRecommendationsRequest"
      },
      "output": {
        "shape": "ExportEC2InstanceRecommendationsResponse"
      },
      "errors": [
        {
          "shape": "OptInRequiredException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingAuthenticationToken"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Exports optimization recommendations for Amazon EC2 instances.</p> <p>Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html\">Exporting Recommendations</a> in the <i>Compute Optimizer User Guide</i>.</p> <p>You can have only one Amazon EC2 instance export job in progress per AWS Region.</p>"
    },
    "GetAutoScalingGroupRecommendations": {
      "name": "GetAutoScalingGroupRecommendations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAutoScalingGroupRecommendationsRequest"
      },
      "output": {
        "shape": "GetAutoScalingGroupRecommendationsResponse"
      },
      "errors": [
        {
          "shape": "OptInRequiredException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "MissingAuthenticationToken"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Returns Auto Scaling group recommendations.</p> <p>AWS Compute Optimizer currently generates recommendations for Auto Scaling groups that are configured to run instances of the M, C, R, T, and X instance families. The service does not generate recommendations for Auto Scaling groups that have a scaling policy attached to them, or that do not have the same values for desired, minimum, and maximum capacity. In order for Compute Optimizer to analyze your Auto Scaling groups, they must be of a fixed size. For more information, see the <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/what-is.html\">AWS Compute Optimizer User Guide</a>.</p>"
    },
    "GetEC2InstanceRecommendations": {
      "name": "GetEC2InstanceRecommendations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetEC2InstanceRecommendationsRequest"
      },
      "output": {
        "shape": "GetEC2InstanceRecommendationsResponse"
      },
      "errors": [
        {
          "shape": "OptInRequiredException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "MissingAuthenticationToken"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Returns Amazon EC2 instance recommendations.</p> <p>AWS Compute Optimizer currently generates recommendations for Amazon Elastic Compute Cloud (Amazon EC2) and Amazon EC2 Auto Scaling. It generates recommendations for M, C, R, T, and X instance families. For more information, see the <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/what-is.html\">AWS Compute Optimizer User Guide</a>.</p>"
    },
    "GetEC2RecommendationProjectedMetrics": {
      "name": "GetEC2RecommendationProjectedMetrics",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetEC2RecommendationProjectedMetricsRequest"
      },
      "output": {
        "shape": "GetEC2RecommendationProjectedMetricsResponse"
      },
      "errors": [
        {
          "shape": "OptInRequiredException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "MissingAuthenticationToken"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Returns the projected utilization metrics of Amazon EC2 instance recommendations.</p>"
    },
    "GetEnrollmentStatus": {
      "name": "GetEnrollmentStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetEnrollmentStatusRequest"
      },
      "output": {
        "shape": "GetEnrollmentStatusResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingAuthenticationToken"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Returns the enrollment (opt in) status of an account to the AWS Compute Optimizer service.</p> <p>If the account is the master account of an organization, this action also confirms the enrollment status of member accounts within the organization.</p>"
    },
    "GetRecommendationSummaries": {
      "name": "GetRecommendationSummaries",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetRecommendationSummariesRequest"
      },
      "output": {
        "shape": "GetRecommendationSummariesResponse"
      },
      "errors": [
        {
          "shape": "OptInRequiredException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingAuthenticationToken"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Returns the optimization findings for an account.</p> <p>For example, it returns the number of Amazon EC2 instances in an account that are under-provisioned, over-provisioned, or optimized. It also returns the number of Auto Scaling groups in an account that are not optimized, or optimized.</p>"
    },
    "UpdateEnrollmentStatus": {
      "name": "UpdateEnrollmentStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateEnrollmentStatusRequest"
      },
      "output": {
        "shape": "UpdateEnrollmentStatusResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingAuthenticationToken"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Updates the enrollment (opt in) status of an account to the AWS Compute Optimizer service.</p> <p>If the account is a master account of an organization, this action can also be used to enroll member accounts within the organization.</p>"
    }
  },
  "shapes": {
    "AccountId": {
      "type": "string"
    },
    "AccountIds": {
      "type": "list",
      "member": {
        "shape": "AccountId"
      }
    },
    "AutoScalingGroupArn": {
      "type": "string"
    },
    "AutoScalingGroupArns": {
      "type": "list",
      "member": {
        "shape": "AutoScalingGroupArn"
      }
    },
    "AutoScalingGroupConfiguration": {
      "type": "structure",
      "members": {
        "desiredCapacity": {
          "shape": "DesiredCapacity",
          "documentation": "<p>The desired capacity, or number of instances, for the Auto Scaling group.</p>"
        },
        "minSize": {
          "shape": "MinSize",
          "documentation": "<p>The minimum size, or minimum number of instances, for the Auto Scaling group.</p>"
        },
        "maxSize": {
          "shape": "MaxSize",
          "documentation": "<p>The maximum size, or maximum number of instances, for the Auto Scaling group.</p>"
        },
        "instanceType": {
          "shape": "InstanceType",
          "documentation": "<p>The instance type for the Auto Scaling group.</p>"
        }
      },
      "documentation": "<p>Describes the configuration of an Auto Scaling group.</p>"
    },
    "AutoScalingGroupName": {
      "type": "string"
    },
    "AutoScalingGroupRecommendation": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID of the Auto Scaling group.</p>"
        },
        "autoScalingGroupArn": {
          "shape": "AutoScalingGroupArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Auto Scaling group.</p>"
        },
        "autoScalingGroupName": {
          "shape": "AutoScalingGroupName",
          "documentation": "<p>The name of the Auto Scaling group.</p>"
        },
        "finding": {
          "shape": "Finding",
          "documentation": "<p>The finding classification for the Auto Scaling group.</p> <p>Findings for Auto Scaling groups include:</p> <ul> <li> <p> <b> <code>NotOptimized</code> </b>—An Auto Scaling group is considered not optimized when AWS Compute Optimizer identifies a recommendation that can provide better performance for your workload.</p> </li> <li> <p> <b> <code>Optimized</code> </b>—An Auto Scaling group is considered optimized when Compute Optimizer determines that the group is correctly provisioned to run your workload based on the chosen instance type. For optimized resources, Compute Optimizer might recommend a new generation instance type.</p> </li> </ul> <note> <p>The values that are returned might be <code>NOT_OPTIMIZED</code> or <code>OPTIMIZED</code>.</p> </note>"
        },
        "utilizationMetrics": {
          "shape": "UtilizationMetrics",
          "documentation": "<p>An array of objects that describe the utilization metrics of the Auto Scaling group.</p>"
        },
        "lookBackPeriodInDays": {
          "shape": "LookBackPeriodInDays",
          "documentation": "<p>The number of days for which utilization metrics were analyzed for the Auto Scaling group.</p>"
        },
        "currentConfiguration": {
          "shape": "AutoScalingGroupConfiguration",
          "documentation": "<p>An array of objects that describe the current configuration of the Auto Scaling group.</p>"
        },
        "recommendationOptions": {
          "shape": "AutoScalingGroupRecommendationOptions",
          "documentation": "<p>An array of objects that describe the recommendation options for the Auto Scaling group.</p>"
        },
        "lastRefreshTimestamp": {
          "shape": "LastRefreshTimestamp",
          "documentation": "<p>The time stamp of when the Auto Scaling group recommendation was last refreshed.</p>"
        }
      },
      "documentation": "<p>Describes an Auto Scaling group recommendation.</p>"
    },
    "AutoScalingGroupRecommendationOption": {
      "type": "structure",
      "members": {
        "configuration": {
          "shape": "AutoScalingGroupConfiguration",
          "documentation": "<p>An array of objects that describe an Auto Scaling group configuration.</p>"
        },
        "projectedUtilizationMetrics": {
          "shape": "ProjectedUtilizationMetrics",
          "documentation": "<p>An array of objects that describe the projected utilization metrics of the Auto Scaling group recommendation option.</p>"
        },
        "performanceRisk": {
          "shape": "PerformanceRisk",
          "documentation": "<p>The performance risk of the Auto Scaling group configuration recommendation.</p> <p>Performance risk is the likelihood of the recommended instance type not meeting the performance requirement of your workload.</p> <p>The lowest performance risk is categorized as <code>0</code>, and the highest as <code>5</code>.</p>"
        },
        "rank": {
          "shape": "Rank",
          "documentation": "<p>The rank of the Auto Scaling group recommendation option.</p> <p>The top recommendation option is ranked as <code>1</code>.</p>"
        }
      },
      "documentation": "<p>Describes a recommendation option for an Auto Scaling group.</p>"
    },
    "AutoScalingGroupRecommendationOptions": {
      "type": "list",
      "member": {
        "shape": "AutoScalingGroupRecommendationOption"
      }
    },
    "AutoScalingGroupRecommendations": {
      "type": "list",
      "member": {
        "shape": "AutoScalingGroupRecommendation"
      }
    },
    "Code": {
      "type": "string"
    },
    "CreationTimestamp": {
      "type": "timestamp"
    },
    "CurrentInstanceType": {
      "type": "string"
    },
    "DescribeRecommendationExportJobsRequest": {
      "type": "structure",
      "members": {
        "jobIds": {
          "shape": "JobIds",
          "documentation": "<p>The identification numbers of the export jobs to return.</p> <p>An export job ID is returned when you create an export using the <code>ExportAutoScalingGroupRecommendations</code> or <code>ExportEC2InstanceRecommendations</code> actions.</p> <p>All export jobs created in the last seven days are returned if this parameter is omitted.</p>"
        },
        "filters": {
          "shape": "JobFilters",
          "documentation": "<p>An array of objects that describe a filter to return a more specific list of export jobs.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to advance to the next page of export jobs.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of export jobs to return with a single request.</p> <p>To retrieve the remaining results, make another request with the returned <code>NextToken</code> value.</p>"
        }
      }
    },
    "DescribeRecommendationExportJobsResponse": {
      "type": "structure",
      "members": {
        "recommendationExportJobs": {
          "shape": "RecommendationExportJobs",
          "documentation": "<p>An array of objects that describe recommendation export jobs.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to advance to the next page of export jobs.</p> <p>This value is null when there are no more pages of export jobs to return.</p>"
        }
      }
    },
    "DesiredCapacity": {
      "type": "integer"
    },
    "DestinationBucket": {
      "type": "string"
    },
    "DestinationKey": {
      "type": "string"
    },
    "DestinationKeyPrefix": {
      "type": "string"
    },
    "ExportAutoScalingGroupRecommendationsRequest": {
      "type": "structure",
      "required": [
        "s3DestinationConfig"
      ],
      "members": {
        "accountIds": {
          "shape": "AccountIds",
          "documentation": "<p>The IDs of the AWS accounts for which to export Auto Scaling group recommendations.</p> <p>If your account is the master account of an organization, use this parameter to specify the member accounts for which you want to export recommendations.</p> <p>This parameter cannot be specified together with the include member accounts parameter. The parameters are mutually exclusive.</p> <p>Recommendations for member accounts are not included in the export if this parameter, or the include member accounts parameter, is omitted.</p> <p>You can specify multiple account IDs per request.</p>"
        },
        "filters": {
          "shape": "Filters",
          "documentation": "<p>An array of objects that describe a filter to export a more specific set of Auto Scaling group recommendations.</p>"
        },
        "fieldsToExport": {
          "shape": "ExportableAutoScalingGroupFields",
          "documentation": "<p>The recommendations data to include in the export file.</p>"
        },
        "s3DestinationConfig": {
          "shape": "S3DestinationConfig",
          "documentation": "<p>An object to specify the destination Amazon Simple Storage Service (Amazon S3) bucket name and key prefix for the export job.</p> <p>You must create the destination Amazon S3 bucket for your recommendations export before you create the export job. Compute Optimizer does not create the S3 bucket for you. After you create the S3 bucket, ensure that it has the required permission policy to allow Compute Optimizer to write the export file to it. If you plan to specify an object prefix when you create the export job, you must include the object prefix in the policy that you add to the S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html\">Amazon S3 Bucket Policy for Compute Optimizer</a> in the <i>Compute Optimizer user guide</i>.</p>"
        },
        "fileFormat": {
          "shape": "FileFormat",
          "documentation": "<p>The format of the export file.</p> <p>The only export file format currently supported is <code>Csv</code>.</p>"
        },
        "includeMemberAccounts": {
          "shape": "IncludeMemberAccounts",
          "documentation": "<p>Indicates whether to include recommendations for resources in all member accounts of the organization if your account is the master account of an organization.</p> <p>The member accounts must also be opted in to Compute Optimizer.</p> <p>Recommendations for member accounts of the organization are not included in the export file if this parameter is omitted.</p> <p>This parameter cannot be specified together with the account IDs parameter. The parameters are mutually exclusive.</p> <p>Recommendations for member accounts are not included in the export if this parameter, or the account IDs parameter, is omitted.</p>"
        }
      }
    },
    "ExportAutoScalingGroupRecommendationsResponse": {
      "type": "structure",
      "members": {
        "jobId": {
          "shape": "JobId",
          "documentation": "<p>The identification number of the export job.</p> <p>Use the <code>DescribeRecommendationExportJobs</code> action, and specify the job ID to view the status of an export job.</p>"
        },
        "s3Destination": {
          "shape": "S3Destination",
          "documentation": "<p>An object that describes the destination Amazon S3 bucket of a recommendations export file.</p>"
        }
      }
    },
    "ExportDestination": {
      "type": "structure",
      "members": {
        "s3": {
          "shape": "S3Destination",
          "documentation": "<p>An object that describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and object keys of a recommendations export file, and its associated metadata file.</p>"
        }
      },
      "documentation": "<p>Describes the destination of the recommendations export and metadata files.</p>"
    },
    "ExportEC2InstanceRecommendationsRequest": {
      "type": "structure",
      "required": [
        "s3DestinationConfig"
      ],
      "members": {
        "accountIds": {
          "shape": "AccountIds",
          "documentation": "<p>The IDs of the AWS accounts for which to export instance recommendations.</p> <p>If your account is the master account of an organization, use this parameter to specify the member accounts for which you want to export recommendations.</p> <p>This parameter cannot be specified together with the include member accounts parameter. The parameters are mutually exclusive.</p> <p>Recommendations for member accounts are not included in the export if this parameter, or the include member accounts parameter, is omitted.</p> <p>You can specify multiple account IDs per request.</p>"
        },
        "filters": {
          "shape": "Filters",
          "documentation": "<p>An array of objects that describe a filter to export a more specific set of instance recommendations.</p>"
        },
        "fieldsToExport": {
          "shape": "ExportableInstanceFields",
          "documentation": "<p>The recommendations data to include in the export file.</p>"
        },
        "s3DestinationConfig": {
          "shape": "S3DestinationConfig",
          "documentation": "<p>An object to specify the destination Amazon Simple Storage Service (Amazon S3) bucket name and key prefix for the export job.</p> <p>You must create the destination Amazon S3 bucket for your recommendations export before you create the export job. Compute Optimizer does not create the S3 bucket for you. After you create the S3 bucket, ensure that it has the required permission policy to allow Compute Optimizer to write the export file to it. If you plan to specify an object prefix when you create the export job, you must include the object prefix in the policy that you add to the S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html\">Amazon S3 Bucket Policy for Compute Optimizer</a> in the <i>Compute Optimizer user guide</i>.</p>"
        },
        "fileFormat": {
          "shape": "FileFormat",
          "documentation": "<p>The format of the export file.</p> <p>The only export file format currently supported is <code>Csv</code>.</p>"
        },
        "includeMemberAccounts": {
          "shape": "IncludeMemberAccounts",
          "documentation": "<p>Indicates whether to include recommendations for resources in all member accounts of the organization if your account is the master account of an organization.</p> <p>The member accounts must also be opted in to Compute Optimizer.</p> <p>Recommendations for member accounts of the organization are not included in the export file if this parameter is omitted.</p> <p>Recommendations for member accounts are not included in the export if this parameter, or the account IDs parameter, is omitted.</p>"
        }
      }
    },
    "ExportEC2InstanceRecommendationsResponse": {
      "type": "structure",
      "members": {
        "jobId": {
          "shape": "JobId",
          "documentation": "<p>The identification number of the export job.</p> <p>Use the <code>DescribeRecommendationExportJobs</code> action, and specify the job ID to view the status of an export job.</p>"
        },
        "s3Destination": {
          "shape": "S3Destination",
          "documentation": "<p>An object that describes the destination Amazon S3 bucket of a recommendations export file.</p>"
        }
      }
    },
    "ExportableAutoScalingGroupField": {
      "type": "string",
      "enum": [
        "AccountId",
        "AutoScalingGroupArn",
        "AutoScalingGroupName",
        "Finding",
        "UtilizationMetricsCpuMaximum",
        "UtilizationMetricsMemoryMaximum",
        "LookbackPeriodInDays",
        "CurrentConfigurationInstanceType",
        "CurrentConfigurationDesiredCapacity",
        "CurrentConfigurationMinSize",
        "CurrentConfigurationMaxSize",
        "CurrentOnDemandPrice",
        "CurrentStandardOneYearNoUpfrontReservedPrice",
        "CurrentStandardThreeYearNoUpfrontReservedPrice",
        "CurrentVCpus",
        "CurrentMemory",
        "CurrentStorage",
        "CurrentNetwork",
        "RecommendationOptionsConfigurationInstanceType",
        "RecommendationOptionsConfigurationDesiredCapacity",
        "RecommendationOptionsConfigurationMinSize",
        "RecommendationOptionsConfigurationMaxSize",
        "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum",
        "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum",
        "RecommendationOptionsPerformanceRisk",
        "RecommendationOptionsOnDemandPrice",
        "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice",
        "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice",
        "RecommendationOptionsVcpus",
        "RecommendationOptionsMemory",
        "RecommendationOptionsStorage",
        "RecommendationOptionsNetwork",
        "LastRefreshTimestamp"
      ]
    },
    "ExportableAutoScalingGroupFields": {
      "type": "list",
      "member": {
        "shape": "ExportableAutoScalingGroupField"
      }
    },
    "ExportableInstanceField": {
      "type": "string",
      "enum": [
        "AccountId",
        "InstanceArn",
        "InstanceName",
        "Finding",
        "LookbackPeriodInDays",
        "CurrentInstanceType",
        "UtilizationMetricsCpuMaximum",
        "UtilizationMetricsMemoryMaximum",
        "CurrentOnDemandPrice",
        "CurrentStandardOneYearNoUpfrontReservedPrice",
        "CurrentStandardThreeYearNoUpfrontReservedPrice",
        "CurrentVCpus",
        "CurrentMemory",
        "CurrentStorage",
        "CurrentNetwork",
        "RecommendationOptionsInstanceType",
        "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum",
        "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum",
        "RecommendationOptionsPerformanceRisk",
        "RecommendationOptionsVcpus",
        "RecommendationOptionsMemory",
        "RecommendationOptionsStorage",
        "RecommendationOptionsNetwork",
        "RecommendationOptionsOnDemandPrice",
        "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice",
        "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice",
        "RecommendationsSourcesRecommendationSourceArn",
        "RecommendationsSourcesRecommendationSourceType",
        "LastRefreshTimestamp"
      ]
    },
    "ExportableInstanceFields": {
      "type": "list",
      "member": {
        "shape": "ExportableInstanceField"
      }
    },
    "FailureReason": {
      "type": "string"
    },
    "FileFormat": {
      "type": "string",
      "enum": [
        "Csv"
      ]
    },
    "Filter": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "FilterName",
          "documentation": "<p>The name of the filter.</p> <p>Specify <code>Finding</code> to return recommendations with a specific findings classification (e.g., <code>Overprovisioned</code>).</p> <p>Specify <code>RecommendationSourceType</code> to return recommendations of a specific resource type (e.g., <code>AutoScalingGroup</code>).</p>"
        },
        "values": {
          "shape": "FilterValues",
          "documentation": "<p>The value of the filter.</p> <p>If you specify the <code>name</code> parameter as <code>Finding</code>, and you request recommendations for an <i>instance</i>, then the valid values are <code>Underprovisioned</code>, <code>Overprovisioned</code>, <code>NotOptimized</code>, or <code>Optimized</code>.</p> <p>If you specify the <code>name</code> parameter as <code>Finding</code>, and you request recommendations for an <i>Auto Scaling group</i>, then the valid values are <code>Optimized</code>, or <code>NotOptimized</code>.</p> <p>If you specify the <code>name</code> parameter as <code>RecommendationSourceType</code>, then the valid values are <code>Ec2Instance</code>, or <code>AutoScalingGroup</code>.</p>"
        }
      },
      "documentation": "<p>Describes a filter that returns a more specific list of recommendations.</p>"
    },
    "FilterName": {
      "type": "string",
      "enum": [
        "Finding",
        "RecommendationSourceType"
      ]
    },
    "FilterValue": {
      "type": "string"
    },
    "FilterValues": {
      "type": "list",
      "member": {
        "shape": "FilterValue"
      }
    },
    "Filters": {
      "type": "list",
      "member": {
        "shape": "Filter"
      }
    },
    "Finding": {
      "type": "string",
      "enum": [
        "Underprovisioned",
        "Overprovisioned",
        "Optimized",
        "NotOptimized"
      ]
    },
    "GetAutoScalingGroupRecommendationsRequest": {
      "type": "structure",
      "members": {
        "accountIds": {
          "shape": "AccountIds",
          "documentation": "<p>The IDs of the AWS accounts for which to return Auto Scaling group recommendations.</p> <p>If your account is the master account of an organization, use this parameter to specify the member accounts for which you want to return Auto Scaling group recommendations.</p> <p>Only one account ID can be specified per request.</p>"
        },
        "autoScalingGroupArns": {
          "shape": "AutoScalingGroupArns",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Auto Scaling groups for which to return recommendations.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to advance to the next page of Auto Scaling group recommendations.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of Auto Scaling group recommendations to return with a single request.</p> <p>To retrieve the remaining results, make another request with the returned <code>NextToken</code> value.</p>"
        },
        "filters": {
          "shape": "Filters",
          "documentation": "<p>An array of objects that describe a filter that returns a more specific list of Auto Scaling group recommendations.</p>"
        }
      }
    },
    "GetAutoScalingGroupRecommendationsResponse": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to advance to the next page of Auto Scaling group recommendations.</p> <p>This value is null when there are no more pages of Auto Scaling group recommendations to return.</p>"
        },
        "autoScalingGroupRecommendations": {
          "shape": "AutoScalingGroupRecommendations",
          "documentation": "<p>An array of objects that describe Auto Scaling group recommendations.</p>"
        },
        "errors": {
          "shape": "GetRecommendationErrors",
          "documentation": "<p>An array of objects that describe errors of the request.</p> <p>For example, an error is returned if you request recommendations for an unsupported Auto Scaling group.</p>"
        }
      }
    },
    "GetEC2InstanceRecommendationsRequest": {
      "type": "structure",
      "members": {
        "instanceArns": {
          "shape": "InstanceArns",
          "documentation": "<p>The Amazon Resource Name (ARN) of the instances for which to return recommendations.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to advance to the next page of instance recommendations.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of instance recommendations to return with a single request.</p> <p>To retrieve the remaining results, make another request with the returned <code>NextToken</code> value.</p>"
        },
        "filters": {
          "shape": "Filters",
          "documentation": "<p>An array of objects that describe a filter that returns a more specific list of instance recommendations.</p>"
        },
        "accountIds": {
          "shape": "AccountIds",
          "documentation": "<p>The IDs of the AWS accounts for which to return instance recommendations.</p> <p>If your account is the master account of an organization, use this parameter to specify the member accounts for which you want to return instance recommendations.</p> <p>Only one account ID can be specified per request.</p>"
        }
      }
    },
    "GetEC2InstanceRecommendationsResponse": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to advance to the next page of instance recommendations.</p> <p>This value is null when there are no more pages of instance recommendations to return.</p>"
        },
        "instanceRecommendations": {
          "shape": "InstanceRecommendations",
          "documentation": "<p>An array of objects that describe instance recommendations.</p>"
        },
        "errors": {
          "shape": "GetRecommendationErrors",
          "documentation": "<p>An array of objects that describe errors of the request.</p> <p>For example, an error is returned if you request recommendations for an instance of an unsupported instance family.</p>"
        }
      }
    },
    "GetEC2RecommendationProjectedMetricsRequest": {
      "type": "structure",
      "required": [
        "instanceArn",
        "stat",
        "period",
        "startTime",
        "endTime"
      ],
      "members": {
        "instanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the instances for which to return recommendation projected metrics.</p>"
        },
        "stat": {
          "shape": "MetricStatistic",
          "documentation": "<p>The statistic of the projected metrics.</p>"
        },
        "period": {
          "shape": "Period",
          "documentation": "<p>The granularity, in seconds, of the projected metrics data points.</p>"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp of the first projected metrics data point to return.</p>"
        },
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp of the last projected metrics data point to return.</p>"
        }
      }
    },
    "GetEC2RecommendationProjectedMetricsResponse": {
      "type": "structure",
      "members": {
        "recommendedOptionProjectedMetrics": {
          "shape": "RecommendedOptionProjectedMetrics",
          "documentation": "<p>An array of objects that describe a projected metrics.</p>"
        }
      }
    },
    "GetEnrollmentStatusRequest": {
      "type": "structure",
      "members": {}
    },
    "GetEnrollmentStatusResponse": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "Status",
          "documentation": "<p>The enrollment status of the account.</p>"
        },
        "statusReason": {
          "shape": "StatusReason",
          "documentation": "<p>The reason for the enrollment status of the account.</p> <p>For example, an account might show a status of <code>Pending</code> because member accounts of an organization require more time to be enrolled in the service.</p>"
        },
        "memberAccountsEnrolled": {
          "shape": "MemberAccountsEnrolled",
          "documentation": "<p>Confirms the enrollment status of member accounts within the organization, if the account is a master account of an organization.</p>"
        }
      }
    },
    "GetRecommendationError": {
      "type": "structure",
      "members": {
        "identifier": {
          "shape": "Identifier",
          "documentation": "<p>The ID of the error.</p>"
        },
        "code": {
          "shape": "Code",
          "documentation": "<p>The error code.</p>"
        },
        "message": {
          "shape": "Message",
          "documentation": "<p>The message, or reason, for the error.</p>"
        }
      },
      "documentation": "<p>Describes an error experienced when getting recommendations.</p> <p>For example, an error is returned if you request recommendations for an unsupported Auto Scaling group, or if you request recommendations for an instance of an unsupported instance family.</p>"
    },
    "GetRecommendationErrors": {
      "type": "list",
      "member": {
        "shape": "GetRecommendationError"
      }
    },
    "GetRecommendationSummariesRequest": {
      "type": "structure",
      "members": {
        "accountIds": {
          "shape": "AccountIds",
          "documentation": "<p>The IDs of the AWS accounts for which to return recommendation summaries.</p> <p>If your account is the master account of an organization, use this parameter to specify the member accounts for which you want to return recommendation summaries.</p> <p>Only one account ID can be specified per request.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to advance to the next page of recommendation summaries.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of recommendation summaries to return with a single request.</p> <p>To retrieve the remaining results, make another request with the returned <code>NextToken</code> value.</p>"
        }
      }
    },
    "GetRecommendationSummariesResponse": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to advance to the next page of recommendation summaries.</p> <p>This value is null when there are no more pages of recommendation summaries to return.</p>"
        },
        "recommendationSummaries": {
          "shape": "RecommendationSummaries",
          "documentation": "<p>An array of objects that summarize a recommendation.</p>"
        }
      }
    },
    "Identifier": {
      "type": "string"
    },
    "IncludeMemberAccounts": {
      "type": "boolean"
    },
    "InstanceArn": {
      "type": "string"
    },
    "InstanceArns": {
      "type": "list",
      "member": {
        "shape": "InstanceArn"
      }
    },
    "InstanceName": {
      "type": "string"
    },
    "InstanceRecommendation": {
      "type": "structure",
      "members": {
        "instanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the current instance.</p>"
        },
        "accountId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID of the instance.</p>"
        },
        "instanceName": {
          "shape": "InstanceName",
          "documentation": "<p>The name of the current instance.</p>"
        },
        "currentInstanceType": {
          "shape": "CurrentInstanceType",
          "documentation": "<p>The instance type of the current instance.</p>"
        },
        "finding": {
          "shape": "Finding",
          "documentation": "<p>The finding classification for the instance.</p> <p>Findings for instances include:</p> <ul> <li> <p> <b> <code>Underprovisioned</code> </b>—An instance is considered under-provisioned when at least one specification of your instance, such as CPU, memory, or network, does not meet the performance requirements of your workload. Under-provisioned instances may lead to poor application performance.</p> </li> <li> <p> <b> <code>Overprovisioned</code> </b>—An instance is considered over-provisioned when at least one specification of your instance, such as CPU, memory, or network, can be sized down while still meeting the performance requirements of your workload, and no specification is under-provisioned. Over-provisioned instances may lead to unnecessary infrastructure cost.</p> </li> <li> <p> <b> <code>Optimized</code> </b>—An instance is considered optimized when all specifications of your instance, such as CPU, memory, and network, meet the performance requirements of your workload and is not over provisioned. An optimized instance runs your workloads with optimal performance and infrastructure cost. For optimized resources, AWS Compute Optimizer might recommend a new generation instance type.</p> </li> </ul> <note> <p>The values that are returned might be <code>UNDER_PROVISIONED</code>, <code>OVER_PROVISIONED</code>, or <code>OPTIMIZED</code>.</p> </note>"
        },
        "utilizationMetrics": {
          "shape": "UtilizationMetrics",
          "documentation": "<p>An array of objects that describe the utilization metrics of the instance.</p>"
        },
        "lookBackPeriodInDays": {
          "shape": "LookBackPeriodInDays",
          "documentation": "<p>The number of days for which utilization metrics were analyzed for the instance.</p>"
        },
        "recommendationOptions": {
          "shape": "RecommendationOptions",
          "documentation": "<p>An array of objects that describe the recommendation options for the instance.</p>"
        },
        "recommendationSources": {
          "shape": "RecommendationSources",
          "documentation": "<p>An array of objects that describe the source resource of the recommendation.</p>"
        },
        "lastRefreshTimestamp": {
          "shape": "LastRefreshTimestamp",
          "documentation": "<p>The time stamp of when the instance recommendation was last refreshed.</p>"
        }
      },
      "documentation": "<p>Describes an Amazon EC2 instance recommendation.</p>"
    },
    "InstanceRecommendationOption": {
      "type": "structure",
      "members": {
        "instanceType": {
          "shape": "InstanceType",
          "documentation": "<p>The instance type of the instance recommendation.</p>"
        },
        "projectedUtilizationMetrics": {
          "shape": "ProjectedUtilizationMetrics",
          "documentation": "<p>An array of objects that describe the projected utilization metrics of the instance recommendation option.</p>"
        },
        "performanceRisk": {
          "shape": "PerformanceRisk",
          "documentation": "<p>The performance risk of the instance recommendation option.</p> <p>Performance risk is the likelihood of the recommended instance type not meeting the performance requirement of your workload.</p> <p>The lowest performance risk is categorized as <code>0</code>, and the highest as <code>5</code>.</p>"
        },
        "rank": {
          "shape": "Rank",
          "documentation": "<p>The rank of the instance recommendation option.</p> <p>The top recommendation option is ranked as <code>1</code>.</p>"
        }
      },
      "documentation": "<p>Describes a recommendation option for an Amazon EC2 instance.</p>"
    },
    "InstanceRecommendations": {
      "type": "list",
      "member": {
        "shape": "InstanceRecommendation"
      }
    },
    "InstanceType": {
      "type": "string"
    },
    "JobFilter": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "JobFilterName",
          "documentation": "<p>The name of the filter.</p> <p>Specify <code>ResourceType</code> to return export jobs of a specific resource type (e.g., <code>Ec2Instance</code>).</p> <p>Specify <code>JobStatus</code> to return export jobs with a specific status (e.g, <code>Complete</code>).</p>"
        },
        "values": {
          "shape": "FilterValues",
          "documentation": "<p>The value of the filter.</p> <p>If you specify the <code>name</code> parameter as <code>ResourceType</code>, the valid values are <code>Ec2Instance</code> or <code>AutoScalingGroup</code>.</p> <p>If you specify the <code>name</code> parameter as <code>JobStatus</code>, the valid values are <code>Queued</code>, <code>InProgress</code>, <code>Complete</code>, or <code>Failed</code>.</p>"
        }
      },
      "documentation": "<p>Describes a filter that returns a more specific list of recommendation export jobs.</p> <p>This filter is used with the <code>DescribeRecommendationExportJobs</code> action.</p>"
    },
    "JobFilterName": {
      "type": "string",
      "enum": [
        "ResourceType",
        "JobStatus"
      ]
    },
    "JobFilters": {
      "type": "list",
      "member": {
        "shape": "JobFilter"
      }
    },
    "JobId": {
      "type": "string"
    },
    "JobIds": {
      "type": "list",
      "member": {
        "shape": "JobId"
      }
    },
    "JobStatus": {
      "type": "string",
      "enum": [
        "Queued",
        "InProgress",
        "Complete",
        "Failed"
      ]
    },
    "LastRefreshTimestamp": {
      "type": "timestamp"
    },
    "LastUpdatedTimestamp": {
      "type": "timestamp"
    },
    "LookBackPeriodInDays": {
      "type": "double"
    },
    "MaxResults": {
      "type": "integer",
      "box": true
    },
    "MaxSize": {
      "type": "integer"
    },
    "MemberAccountsEnrolled": {
      "type": "boolean"
    },
    "Message": {
      "type": "string"
    },
    "MetadataKey": {
      "type": "string"
    },
    "MetricName": {
      "type": "string",
      "enum": [
        "Cpu",
        "Memory"
      ]
    },
    "MetricStatistic": {
      "type": "string",
      "enum": [
        "Maximum",
        "Average"
      ]
    },
    "MetricValue": {
      "type": "double"
    },
    "MetricValues": {
      "type": "list",
      "member": {
        "shape": "MetricValue"
      }
    },
    "MinSize": {
      "type": "integer"
    },
    "NextToken": {
      "type": "string"
    },
    "PerformanceRisk": {
      "type": "double",
      "max": 5,
      "min": 0
    },
    "Period": {
      "type": "integer"
    },
    "ProjectedMetric": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "MetricName",
          "documentation": "<p>The name of the projected utilization metric.</p> <note> <p>Memory metrics are only returned for resources that have the unified CloudWatch agent installed on them. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Install-CloudWatch-Agent.html\">Enabling Memory Utilization with the CloudWatch Agent</a>.</p> </note>"
        },
        "timestamps": {
          "shape": "Timestamps",
          "documentation": "<p>The time stamps of the projected utilization metric.</p>"
        },
        "values": {
          "shape": "MetricValues",
          "documentation": "<p>The values of the projected utilization metrics.</p>"
        }
      },
      "documentation": "<p>Describes a projected utilization metric of a recommendation option, such as an Amazon EC2 instance.</p>"
    },
    "ProjectedMetrics": {
      "type": "list",
      "member": {
        "shape": "ProjectedMetric"
      }
    },
    "ProjectedUtilizationMetrics": {
      "type": "list",
      "member": {
        "shape": "UtilizationMetric"
      }
    },
    "Rank": {
      "type": "integer"
    },
    "RecommendationExportJob": {
      "type": "structure",
      "members": {
        "jobId": {
          "shape": "JobId",
          "documentation": "<p>The identification number of the export job.</p>"
        },
        "destination": {
          "shape": "ExportDestination",
          "documentation": "<p>An object that describes the destination of the export file.</p>"
        },
        "resourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The resource type of the exported recommendations.</p>"
        },
        "status": {
          "shape": "JobStatus",
          "documentation": "<p>The status of the export job.</p>"
        },
        "creationTimestamp": {
          "shape": "CreationTimestamp",
          "documentation": "<p>The timestamp of when the export job was created.</p>"
        },
        "lastUpdatedTimestamp": {
          "shape": "LastUpdatedTimestamp",
          "documentation": "<p>The timestamp of when the export job was last updated.</p>"
        },
        "failureReason": {
          "shape": "FailureReason",
          "documentation": "<p>The reason for an export job failure.</p>"
        }
      },
      "documentation": "<p>Describes a recommendation export job.</p> <p>Use the <code>DescribeRecommendationExportJobs</code> action to view your recommendation export jobs.</p> <p>Use the <code>ExportAutoScalingGroupRecommendations</code> or <code>ExportEC2InstanceRecommendations</code> actions to request an export of your recommendations.</p>"
    },
    "RecommendationExportJobs": {
      "type": "list",
      "member": {
        "shape": "RecommendationExportJob"
      }
    },
    "RecommendationOptions": {
      "type": "list",
      "member": {
        "shape": "InstanceRecommendationOption"
      }
    },
    "RecommendationSource": {
      "type": "structure",
      "members": {
        "recommendationSourceArn": {
          "shape": "RecommendationSourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the recommendation source.</p>"
        },
        "recommendationSourceType": {
          "shape": "RecommendationSourceType",
          "documentation": "<p>The resource type of the recommendation source.</p>"
        }
      },
      "documentation": "<p>Describes the source of a recommendation, such as an Amazon EC2 instance or Auto Scaling group.</p>"
    },
    "RecommendationSourceArn": {
      "type": "string"
    },
    "RecommendationSourceType": {
      "type": "string",
      "enum": [
        "Ec2Instance",
        "AutoScalingGroup"
      ]
    },
    "RecommendationSources": {
      "type": "list",
      "member": {
        "shape": "RecommendationSource"
      }
    },
    "RecommendationSummaries": {
      "type": "list",
      "member": {
        "shape": "RecommendationSummary"
      }
    },
    "RecommendationSummary": {
      "type": "structure",
      "members": {
        "summaries": {
          "shape": "Summaries",
          "documentation": "<p>An array of objects that describe a recommendation summary.</p>"
        },
        "recommendationResourceType": {
          "shape": "RecommendationSourceType",
          "documentation": "<p>The resource type of the recommendation.</p>"
        },
        "accountId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID of the recommendation summary.</p>"
        }
      },
      "documentation": "<p>A summary of a recommendation.</p>"
    },
    "RecommendedInstanceType": {
      "type": "string"
    },
    "RecommendedOptionProjectedMetric": {
      "type": "structure",
      "members": {
        "recommendedInstanceType": {
          "shape": "RecommendedInstanceType",
          "documentation": "<p>The recommended instance type.</p>"
        },
        "rank": {
          "shape": "Rank",
          "documentation": "<p>The rank of the recommendation option projected metric.</p> <p>The top recommendation option is ranked as <code>1</code>.</p> <p>The projected metric rank correlates to the recommendation option rank. For example, the projected metric ranked as <code>1</code> is related to the recommendation option that is also ranked as <code>1</code> in the same response.</p>"
        },
        "projectedMetrics": {
          "shape": "ProjectedMetrics",
          "documentation": "<p>An array of objects that describe a projected utilization metric.</p>"
        }
      },
      "documentation": "<p>Describes a projected utilization metric of a recommendation option.</p>"
    },
    "RecommendedOptionProjectedMetrics": {
      "type": "list",
      "member": {
        "shape": "RecommendedOptionProjectedMetric"
      }
    },
    "ResourceType": {
      "type": "string",
      "enum": [
        "Ec2Instance",
        "AutoScalingGroup"
      ]
    },
    "S3Destination": {
      "type": "structure",
      "members": {
        "bucket": {
          "shape": "DestinationBucket",
          "documentation": "<p>The name of the Amazon S3 bucket used as the destination of an export file.</p>"
        },
        "key": {
          "shape": "DestinationKey",
          "documentation": "<p>The Amazon S3 bucket key of an export file.</p> <p>The key uniquely identifies the object, or export file, in the S3 bucket.</p>"
        },
        "metadataKey": {
          "shape": "MetadataKey",
          "documentation": "<p>The Amazon S3 bucket key of a metadata file.</p> <p>The key uniquely identifies the object, or metadata file, in the S3 bucket.</p>"
        }
      },
      "documentation": "<p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and object keys of a recommendations export file, and its associated metadata file.</p>"
    },
    "S3DestinationConfig": {
      "type": "structure",
      "members": {
        "bucket": {
          "shape": "DestinationBucket",
          "documentation": "<p>The name of the Amazon S3 bucket to use as the destination for an export job.</p>"
        },
        "keyPrefix": {
          "shape": "DestinationKeyPrefix",
          "documentation": "<p>The Amazon S3 bucket prefix for an export job.</p>"
        }
      },
      "documentation": "<p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and key prefix for a recommendations export job.</p> <p>You must create the destination Amazon S3 bucket for your recommendations export before you create the export job. Compute Optimizer does not create the S3 bucket for you. After you create the S3 bucket, ensure that it has the required permission policy to allow Compute Optimizer to write the export file to it. If you plan to specify an object prefix when you create the export job, you must include the object prefix in the policy that you add to the S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html\">Amazon S3 Bucket Policy for Compute Optimizer</a> in the <i>Compute Optimizer user guide</i>.</p>"
    },
    "Status": {
      "type": "string",
      "enum": [
        "Active",
        "Inactive",
        "Pending",
        "Failed"
      ]
    },
    "StatusReason": {
      "type": "string"
    },
    "Summaries": {
      "type": "list",
      "member": {
        "shape": "Summary"
      }
    },
    "Summary": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Finding",
          "documentation": "<p>The finding classification of the recommendation.</p>"
        },
        "value": {
          "shape": "SummaryValue",
          "documentation": "<p>The value of the recommendation summary.</p>"
        }
      },
      "documentation": "<p>The summary of a recommendation.</p>"
    },
    "SummaryValue": {
      "type": "double"
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "Timestamps": {
      "type": "list",
      "member": {
        "shape": "Timestamp"
      }
    },
    "UpdateEnrollmentStatusRequest": {
      "type": "structure",
      "required": [
        "status"
      ],
      "members": {
        "status": {
          "shape": "Status",
          "documentation": "<p>The new enrollment status of the account.</p> <p>Accepted options are <code>Active</code> or <code>Inactive</code>. You will get an error if <code>Pending</code> or <code>Failed</code> are specified.</p>"
        },
        "includeMemberAccounts": {
          "shape": "IncludeMemberAccounts",
          "documentation": "<p>Indicates whether to enroll member accounts of the organization if the your account is the master account of an organization.</p>"
        }
      }
    },
    "UpdateEnrollmentStatusResponse": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "Status",
          "documentation": "<p>The enrollment status of the account.</p>"
        },
        "statusReason": {
          "shape": "StatusReason",
          "documentation": "<p>The reason for the enrollment status of the account. For example, an account might show a status of <code>Pending</code> because member accounts of an organization require more time to be enrolled in the service.</p>"
        }
      }
    },
    "UtilizationMetric": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "MetricName",
          "documentation": "<p>The name of the utilization metric.</p> <note> <p>Memory metrics are only returned for resources that have the unified CloudWatch agent installed on them. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Install-CloudWatch-Agent.html\">Enabling Memory Utilization with the CloudWatch Agent</a>.</p> </note>"
        },
        "statistic": {
          "shape": "MetricStatistic",
          "documentation": "<p>The statistic of the utilization metric.</p>"
        },
        "value": {
          "shape": "MetricValue",
          "documentation": "<p>The value of the utilization metric.</p>"
        }
      },
      "documentation": "<p>Describes a utilization metric of a resource, such as an Amazon EC2 instance.</p>"
    },
    "UtilizationMetrics": {
      "type": "list",
      "member": {
        "shape": "UtilizationMetric"
      }
    }
  },
  "documentation": "<p>AWS Compute Optimizer is a service that analyzes the configuration and utilization metrics of your AWS resources, such as EC2 instances and Auto Scaling groups. It reports whether your resources are optimal, and generates optimization recommendations to reduce the cost and improve the performance of your workloads. Compute Optimizer also provides recent utilization metric data, as well as projected utilization metric data for the recommendations, which you can use to evaluate which recommendation provides the best price-performance trade-off. The analysis of your usage patterns can help you decide when to move or resize your running resources, and still meet your performance and capacity requirements. For more information about Compute Optimizer, including the required permissions to use the service, see the <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/\">AWS Compute Optimizer User Guide</a>.</p>"
}
]===]))
