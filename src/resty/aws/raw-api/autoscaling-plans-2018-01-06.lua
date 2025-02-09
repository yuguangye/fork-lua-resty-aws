local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-01-06",
    "endpointPrefix": "autoscaling-plans",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS Auto Scaling Plans",
    "serviceId": "Auto Scaling Plans",
    "signatureVersion": "v4",
    "signingName": "autoscaling-plans",
    "targetPrefix": "AnyScaleScalingPlannerFrontendService",
    "uid": "autoscaling-plans-2018-01-06"
  },
  "operations": {
    "CreateScalingPlan": {
      "name": "CreateScalingPlan",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateScalingPlanRequest"
      },
      "output": {
        "shape": "CreateScalingPlanResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConcurrentUpdateException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Creates a scaling plan.</p>"
    },
    "DeleteScalingPlan": {
      "name": "DeleteScalingPlan",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteScalingPlanRequest"
      },
      "output": {
        "shape": "DeleteScalingPlanResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ObjectNotFoundException"
        },
        {
          "shape": "ConcurrentUpdateException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Deletes the specified scaling plan.</p> <p>Deleting a scaling plan deletes the underlying <a>ScalingInstruction</a> for all of the scalable resources that are covered by the plan.</p> <p>If the plan has launched resources or has scaling activities in progress, you must delete those resources separately.</p>"
    },
    "DescribeScalingPlanResources": {
      "name": "DescribeScalingPlanResources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeScalingPlanResourcesRequest"
      },
      "output": {
        "shape": "DescribeScalingPlanResourcesResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ConcurrentUpdateException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Describes the scalable resources in the specified scaling plan.</p>"
    },
    "DescribeScalingPlans": {
      "name": "DescribeScalingPlans",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeScalingPlansRequest"
      },
      "output": {
        "shape": "DescribeScalingPlansResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ConcurrentUpdateException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Describes one or more of your scaling plans.</p>"
    },
    "GetScalingPlanResourceForecastData": {
      "name": "GetScalingPlanResourceForecastData",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetScalingPlanResourceForecastDataRequest"
      },
      "output": {
        "shape": "GetScalingPlanResourceForecastDataResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Retrieves the forecast data for a scalable resource.</p> <p>Capacity forecasts are represented as predicted values, or data points, that are calculated using historical data points from a specified CloudWatch load metric. Data points are available for up to 56 days. </p>"
    },
    "UpdateScalingPlan": {
      "name": "UpdateScalingPlan",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateScalingPlanRequest"
      },
      "output": {
        "shape": "UpdateScalingPlanResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConcurrentUpdateException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "ObjectNotFoundException"
        }
      ],
      "documentation": "<p>Updates the specified scaling plan.</p> <p>You cannot update a scaling plan if it is in the process of being created, updated, or deleted.</p>"
    }
  },
  "shapes": {
    "ApplicationSource": {
      "type": "structure",
      "members": {
        "CloudFormationStackARN": {
          "shape": "XmlString",
          "documentation": "<p>The Amazon Resource Name (ARN) of a AWS CloudFormation stack.</p>"
        },
        "TagFilters": {
          "shape": "TagFilters",
          "documentation": "<p>A set of tags (up to 50).</p>"
        }
      },
      "documentation": "<p>Represents an application source.</p>"
    },
    "ApplicationSources": {
      "type": "list",
      "member": {
        "shape": "ApplicationSource"
      }
    },
    "Cooldown": {
      "type": "integer"
    },
    "CreateScalingPlanRequest": {
      "type": "structure",
      "required": [
        "ScalingPlanName",
        "ApplicationSource",
        "ScalingInstructions"
      ],
      "members": {
        "ScalingPlanName": {
          "shape": "ScalingPlanName",
          "documentation": "<p>The name of the scaling plan. Names cannot contain vertical bars, colons, or forward slashes.</p>"
        },
        "ApplicationSource": {
          "shape": "ApplicationSource",
          "documentation": "<p>A CloudFormation stack or set of tags. You can create one scaling plan per application source.</p>"
        },
        "ScalingInstructions": {
          "shape": "ScalingInstructions",
          "documentation": "<p>The scaling instructions.</p>"
        }
      }
    },
    "CreateScalingPlanResponse": {
      "type": "structure",
      "required": [
        "ScalingPlanVersion"
      ],
      "members": {
        "ScalingPlanVersion": {
          "shape": "ScalingPlanVersion",
          "documentation": "<p>The version number of the scaling plan. This value is always 1.</p> <p>Currently, you cannot specify multiple scaling plan versions.</p>"
        }
      }
    },
    "CustomizedLoadMetricSpecification": {
      "type": "structure",
      "required": [
        "MetricName",
        "Namespace",
        "Statistic"
      ],
      "members": {
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>The name of the metric.</p>"
        },
        "Namespace": {
          "shape": "MetricNamespace",
          "documentation": "<p>The namespace of the metric.</p>"
        },
        "Dimensions": {
          "shape": "MetricDimensions",
          "documentation": "<p>The dimensions of the metric.</p> <p>Conditional: If you published your metric with dimensions, you must specify the same dimensions in your customized load metric specification.</p>"
        },
        "Statistic": {
          "shape": "MetricStatistic",
          "documentation": "<p>The statistic of the metric. Currently, the value must always be <code>Sum</code>. </p>"
        },
        "Unit": {
          "shape": "MetricUnit",
          "documentation": "<p>The unit of the metric.</p>"
        }
      },
      "documentation": "<p>Represents a CloudWatch metric of your choosing that can be used for predictive scaling. </p> <p>For predictive scaling to work with a customized load metric specification, AWS Auto Scaling needs access to the <code>Sum</code> and <code>Average</code> statistics that CloudWatch computes from metric data. Statistics are calculations used to aggregate data over specified time periods.</p> <p>When you choose a load metric, make sure that the required <code>Sum</code> and <code>Average</code> statistics for your metric are available in CloudWatch and that they provide relevant data for predictive scaling. The <code>Sum</code> statistic must represent the total load on the resource, and the <code>Average</code> statistic must represent the average load per capacity unit of the resource. For example, there is a metric that counts the number of requests processed by your Auto Scaling group. If the <code>Sum</code> statistic represents the total request count processed by the group, then the <code>Average</code> statistic for the specified metric must represent the average request count processed by each instance of the group.</p> <p>For information about terminology, available metrics, or how to publish new metrics, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html\">Amazon CloudWatch Concepts</a> in the <i>Amazon CloudWatch User Guide</i>. </p>"
    },
    "CustomizedScalingMetricSpecification": {
      "type": "structure",
      "required": [
        "MetricName",
        "Namespace",
        "Statistic"
      ],
      "members": {
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>The name of the metric.</p>"
        },
        "Namespace": {
          "shape": "MetricNamespace",
          "documentation": "<p>The namespace of the metric.</p>"
        },
        "Dimensions": {
          "shape": "MetricDimensions",
          "documentation": "<p>The dimensions of the metric.</p> <p>Conditional: If you published your metric with dimensions, you must specify the same dimensions in your customized scaling metric specification.</p>"
        },
        "Statistic": {
          "shape": "MetricStatistic",
          "documentation": "<p>The statistic of the metric.</p>"
        },
        "Unit": {
          "shape": "MetricUnit",
          "documentation": "<p>The unit of the metric. </p>"
        }
      },
      "documentation": "<p>Represents a CloudWatch metric of your choosing that can be used for dynamic scaling as part of a target tracking scaling policy. </p> <p>To create your customized scaling metric specification:</p> <ul> <li> <p>Add values for each required parameter from CloudWatch. You can use an existing metric, or a new metric that you create. To use your own metric, you must first publish the metric to CloudWatch. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html\">Publish Custom Metrics</a> in the <i>Amazon CloudWatch User Guide</i>.</p> </li> <li> <p>Choose a metric that changes proportionally with capacity. The value of the metric should increase or decrease in inverse proportion to the number of capacity units. That is, the value of the metric should decrease when capacity increases. </p> </li> </ul> <p>For more information about CloudWatch, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html\">Amazon CloudWatch Concepts</a>. </p>"
    },
    "Datapoint": {
      "type": "structure",
      "members": {
        "Timestamp": {
          "shape": "TimestampType",
          "documentation": "<p>The time stamp for the data point in UTC format.</p>"
        },
        "Value": {
          "shape": "MetricScale",
          "documentation": "<p>The value of the data point.</p>"
        }
      },
      "documentation": "<p>Represents a single value in the forecast data used for predictive scaling.</p>"
    },
    "Datapoints": {
      "type": "list",
      "member": {
        "shape": "Datapoint"
      }
    },
    "DeleteScalingPlanRequest": {
      "type": "structure",
      "required": [
        "ScalingPlanName",
        "ScalingPlanVersion"
      ],
      "members": {
        "ScalingPlanName": {
          "shape": "ScalingPlanName",
          "documentation": "<p>The name of the scaling plan.</p>"
        },
        "ScalingPlanVersion": {
          "shape": "ScalingPlanVersion",
          "documentation": "<p>The version number of the scaling plan.</p>"
        }
      }
    },
    "DeleteScalingPlanResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeScalingPlanResourcesRequest": {
      "type": "structure",
      "required": [
        "ScalingPlanName",
        "ScalingPlanVersion"
      ],
      "members": {
        "ScalingPlanName": {
          "shape": "ScalingPlanName",
          "documentation": "<p>The name of the scaling plan.</p>"
        },
        "ScalingPlanVersion": {
          "shape": "ScalingPlanVersion",
          "documentation": "<p>The version number of the scaling plan.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of scalable resources to return. The value must be between 1 and 50. The default value is 50.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results.</p>"
        }
      }
    },
    "DescribeScalingPlanResourcesResponse": {
      "type": "structure",
      "members": {
        "ScalingPlanResources": {
          "shape": "ScalingPlanResources",
          "documentation": "<p>Information about the scalable resources.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token required to get the next set of results. This value is <code>null</code> if there are no more results to return.</p>"
        }
      }
    },
    "DescribeScalingPlansRequest": {
      "type": "structure",
      "members": {
        "ScalingPlanNames": {
          "shape": "ScalingPlanNames",
          "documentation": "<p>The names of the scaling plans (up to 10). If you specify application sources, you cannot specify scaling plan names.</p>"
        },
        "ScalingPlanVersion": {
          "shape": "ScalingPlanVersion",
          "documentation": "<p>The version number of the scaling plan. If you specify a scaling plan version, you must also specify a scaling plan name.</p>"
        },
        "ApplicationSources": {
          "shape": "ApplicationSources",
          "documentation": "<p>The sources for the applications (up to 10). If you specify scaling plan names, you cannot specify application sources.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of scalable resources to return. This value can be between 1 and 50. The default value is 50.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results.</p>"
        }
      }
    },
    "DescribeScalingPlansResponse": {
      "type": "structure",
      "members": {
        "ScalingPlans": {
          "shape": "ScalingPlans",
          "documentation": "<p>Information about the scaling plans.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token required to get the next set of results. This value is <code>null</code> if there are no more results to return.</p>"
        }
      }
    },
    "DisableDynamicScaling": {
      "type": "boolean"
    },
    "DisableScaleIn": {
      "type": "boolean"
    },
    "ForecastDataType": {
      "type": "string",
      "enum": [
        "CapacityForecast",
        "LoadForecast",
        "ScheduledActionMinCapacity",
        "ScheduledActionMaxCapacity"
      ]
    },
    "GetScalingPlanResourceForecastDataRequest": {
      "type": "structure",
      "required": [
        "ScalingPlanName",
        "ScalingPlanVersion",
        "ServiceNamespace",
        "ResourceId",
        "ScalableDimension",
        "ForecastDataType",
        "StartTime",
        "EndTime"
      ],
      "members": {
        "ScalingPlanName": {
          "shape": "ScalingPlanName",
          "documentation": "<p>The name of the scaling plan.</p>"
        },
        "ScalingPlanVersion": {
          "shape": "ScalingPlanVersion",
          "documentation": "<p>The version number of the scaling plan.</p>"
        },
        "ServiceNamespace": {
          "shape": "ServiceNamespace",
          "documentation": "<p>The namespace of the AWS service.</p>"
        },
        "ResourceId": {
          "shape": "XmlString",
          "documentation": "<p>The ID of the resource. This string consists of the resource type and unique identifier. </p> <ul> <li> <p>Auto Scaling group - The resource type is <code>autoScalingGroup</code> and the unique identifier is the name of the Auto Scaling group. Example: <code>autoScalingGroup/my-asg</code>.</p> </li> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot Fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> </ul>"
        },
        "ScalableDimension": {
          "shape": "ScalableDimension",
          "documentation": "<p>The scalable dimension for the resource.</p>"
        },
        "ForecastDataType": {
          "shape": "ForecastDataType",
          "documentation": "<p>The type of forecast data to get.</p> <ul> <li> <p> <code>LoadForecast</code>: The load metric forecast. </p> </li> <li> <p> <code>CapacityForecast</code>: The capacity forecast. </p> </li> <li> <p> <code>ScheduledActionMinCapacity</code>: The minimum capacity for each scheduled scaling action. This data is calculated as the larger of two values: the capacity forecast or the minimum capacity in the scaling instruction.</p> </li> <li> <p> <code>ScheduledActionMaxCapacity</code>: The maximum capacity for each scheduled scaling action. The calculation used is determined by the predictive scaling maximum capacity behavior setting in the scaling instruction.</p> </li> </ul>"
        },
        "StartTime": {
          "shape": "TimestampType",
          "documentation": "<p>The inclusive start time of the time range for the forecast data to get. The date and time can be at most 56 days before the current date and time. </p>"
        },
        "EndTime": {
          "shape": "TimestampType",
          "documentation": "<p>The exclusive end time of the time range for the forecast data to get. The maximum time duration between the start and end time is seven days. </p> <p>Although this parameter can accept a date and time that is more than two days in the future, the availability of forecast data has limits. AWS Auto Scaling only issues forecasts for periods of two days in advance.</p>"
        }
      }
    },
    "GetScalingPlanResourceForecastDataResponse": {
      "type": "structure",
      "required": [
        "Datapoints"
      ],
      "members": {
        "Datapoints": {
          "shape": "Datapoints",
          "documentation": "<p>The data points to return.</p>"
        }
      }
    },
    "LoadMetricType": {
      "type": "string",
      "enum": [
        "ASGTotalCPUUtilization",
        "ASGTotalNetworkIn",
        "ASGTotalNetworkOut",
        "ALBTargetGroupRequestCount"
      ]
    },
    "MaxResults": {
      "type": "integer"
    },
    "MetricDimension": {
      "type": "structure",
      "required": [
        "Name",
        "Value"
      ],
      "members": {
        "Name": {
          "shape": "MetricDimensionName",
          "documentation": "<p>The name of the dimension.</p>"
        },
        "Value": {
          "shape": "MetricDimensionValue",
          "documentation": "<p>The value of the dimension.</p>"
        }
      },
      "documentation": "<p>Represents a dimension for a customized metric.</p>"
    },
    "MetricDimensionName": {
      "type": "string"
    },
    "MetricDimensionValue": {
      "type": "string"
    },
    "MetricDimensions": {
      "type": "list",
      "member": {
        "shape": "MetricDimension"
      }
    },
    "MetricName": {
      "type": "string"
    },
    "MetricNamespace": {
      "type": "string"
    },
    "MetricScale": {
      "type": "double"
    },
    "MetricStatistic": {
      "type": "string",
      "enum": [
        "Average",
        "Minimum",
        "Maximum",
        "SampleCount",
        "Sum"
      ]
    },
    "MetricUnit": {
      "type": "string"
    },
    "NextToken": {
      "type": "string"
    },
    "PolicyName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "\\p{Print}+"
    },
    "PolicyType": {
      "type": "string",
      "enum": [
        "TargetTrackingScaling"
      ]
    },
    "PredefinedLoadMetricSpecification": {
      "type": "structure",
      "required": [
        "PredefinedLoadMetricType"
      ],
      "members": {
        "PredefinedLoadMetricType": {
          "shape": "LoadMetricType",
          "documentation": "<p>The metric type.</p>"
        },
        "ResourceLabel": {
          "shape": "ResourceLabel",
          "documentation": "<p>Identifies the resource associated with the metric type. You can't specify a resource label unless the metric type is <code>ALBRequestCountPerTarget</code> and there is a target group for an Application Load Balancer attached to the Auto Scaling group.</p> <p>The format is app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt;/targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt;, where:</p> <ul> <li> <p>app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt; is the final portion of the load balancer ARN.</p> </li> <li> <p>targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt; is the final portion of the target group ARN.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Represents a predefined metric that can be used for predictive scaling. </p>"
    },
    "PredefinedScalingMetricSpecification": {
      "type": "structure",
      "required": [
        "PredefinedScalingMetricType"
      ],
      "members": {
        "PredefinedScalingMetricType": {
          "shape": "ScalingMetricType",
          "documentation": "<p>The metric type. The <code>ALBRequestCountPerTarget</code> metric type applies only to Auto Scaling groups, Spot Fleet requests, and ECS services.</p>"
        },
        "ResourceLabel": {
          "shape": "ResourceLabel",
          "documentation": "<p>Identifies the resource associated with the metric type. You can't specify a resource label unless the metric type is <code>ALBRequestCountPerTarget</code> and there is a target group for an Application Load Balancer attached to the Auto Scaling group, Spot Fleet request, or ECS service.</p> <p>The format is app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt;/targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt;, where:</p> <ul> <li> <p>app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt; is the final portion of the load balancer ARN.</p> </li> <li> <p>targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt; is the final portion of the target group ARN.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Represents a predefined metric that can be used for dynamic scaling as part of a target tracking scaling policy.</p>"
    },
    "PredictiveScalingMaxCapacityBehavior": {
      "type": "string",
      "enum": [
        "SetForecastCapacityToMaxCapacity",
        "SetMaxCapacityToForecastCapacity",
        "SetMaxCapacityAboveForecastCapacity"
      ]
    },
    "PredictiveScalingMode": {
      "type": "string",
      "enum": [
        "ForecastAndScale",
        "ForecastOnly"
      ]
    },
    "ResourceCapacity": {
      "type": "integer"
    },
    "ResourceIdMaxLen1600": {
      "type": "string",
      "max": 1600,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "ResourceLabel": {
      "type": "string",
      "max": 1023,
      "min": 1
    },
    "ScalableDimension": {
      "type": "string",
      "enum": [
        "autoscaling:autoScalingGroup:DesiredCapacity",
        "ecs:service:DesiredCount",
        "ec2:spot-fleet-request:TargetCapacity",
        "rds:cluster:ReadReplicaCount",
        "dynamodb:table:ReadCapacityUnits",
        "dynamodb:table:WriteCapacityUnits",
        "dynamodb:index:ReadCapacityUnits",
        "dynamodb:index:WriteCapacityUnits"
      ]
    },
    "ScalingInstruction": {
      "type": "structure",
      "required": [
        "ServiceNamespace",
        "ResourceId",
        "ScalableDimension",
        "MinCapacity",
        "MaxCapacity",
        "TargetTrackingConfigurations"
      ],
      "members": {
        "ServiceNamespace": {
          "shape": "ServiceNamespace",
          "documentation": "<p>The namespace of the AWS service.</p>"
        },
        "ResourceId": {
          "shape": "ResourceIdMaxLen1600",
          "documentation": "<p>The ID of the resource. This string consists of the resource type and unique identifier.</p> <ul> <li> <p>Auto Scaling group - The resource type is <code>autoScalingGroup</code> and the unique identifier is the name of the Auto Scaling group. Example: <code>autoScalingGroup/my-asg</code>.</p> </li> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot Fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> </ul>"
        },
        "ScalableDimension": {
          "shape": "ScalableDimension",
          "documentation": "<p>The scalable dimension associated with the resource.</p> <ul> <li> <p> <code>autoscaling:autoScalingGroup:DesiredCapacity</code> - The desired capacity of an Auto Scaling group.</p> </li> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet request.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p> </li> </ul>"
        },
        "MinCapacity": {
          "shape": "ResourceCapacity",
          "documentation": "<p>The minimum capacity of the resource. </p>"
        },
        "MaxCapacity": {
          "shape": "ResourceCapacity",
          "documentation": "<p>The maximum capacity of the resource. The exception to this upper limit is if you specify a non-default setting for <b>PredictiveScalingMaxCapacityBehavior</b>. </p>"
        },
        "TargetTrackingConfigurations": {
          "shape": "TargetTrackingConfigurations",
          "documentation": "<p>The structure that defines new target tracking configurations (up to 10). Each of these structures includes a specific scaling metric and a target value for the metric, along with various parameters to use with dynamic scaling. </p> <p>With predictive scaling and dynamic scaling, the resource scales based on the target tracking configuration that provides the largest capacity for both scale in and scale out. </p> <p>Condition: The scaling metric must be unique across target tracking configurations.</p>"
        },
        "PredefinedLoadMetricSpecification": {
          "shape": "PredefinedLoadMetricSpecification",
          "documentation": "<p>The predefined load metric to use for predictive scaling. This parameter or a <b>CustomizedLoadMetricSpecification</b> is required when configuring predictive scaling, and cannot be used otherwise. </p>"
        },
        "CustomizedLoadMetricSpecification": {
          "shape": "CustomizedLoadMetricSpecification",
          "documentation": "<p>The customized load metric to use for predictive scaling. This parameter or a <b>PredefinedLoadMetricSpecification</b> is required when configuring predictive scaling, and cannot be used otherwise. </p>"
        },
        "ScheduledActionBufferTime": {
          "shape": "ScheduledActionBufferTime",
          "documentation": "<p>The amount of time, in seconds, to buffer the run time of scheduled scaling actions when scaling out. For example, if the forecast says to add capacity at 10:00 AM, and the buffer time is 5 minutes, then the run time of the corresponding scheduled scaling action will be 9:55 AM. The intention is to give resources time to be provisioned. For example, it can take a few minutes to launch an EC2 instance. The actual amount of time required depends on several factors, such as the size of the instance and whether there are startup scripts to complete. </p> <p>The value must be less than the forecast interval duration of 3600 seconds (60 minutes). The default is 300 seconds. </p> <p>Only valid when configuring predictive scaling. </p>"
        },
        "PredictiveScalingMaxCapacityBehavior": {
          "shape": "PredictiveScalingMaxCapacityBehavior",
          "documentation": "<p>Defines the behavior that should be applied if the forecast capacity approaches or exceeds the maximum capacity specified for the resource. The default value is <code>SetForecastCapacityToMaxCapacity</code>.</p> <p>The following are possible values:</p> <ul> <li> <p> <code>SetForecastCapacityToMaxCapacity</code> - AWS Auto Scaling cannot scale resource capacity higher than the maximum capacity. The maximum capacity is enforced as a hard limit. </p> </li> <li> <p> <code>SetMaxCapacityToForecastCapacity</code> - AWS Auto Scaling may scale resource capacity higher than the maximum capacity to equal but not exceed forecast capacity.</p> </li> <li> <p> <code>SetMaxCapacityAboveForecastCapacity</code> - AWS Auto Scaling may scale resource capacity higher than the maximum capacity by a specified buffer value. The intention is to give the target tracking scaling policy extra capacity if unexpected traffic occurs. </p> </li> </ul> <p>Only valid when configuring predictive scaling.</p>"
        },
        "PredictiveScalingMaxCapacityBuffer": {
          "shape": "ResourceCapacity",
          "documentation": "<p>The size of the capacity buffer to use when the forecast capacity is close to or exceeds the maximum capacity. The value is specified as a percentage relative to the forecast capacity. For example, if the buffer is 10, this means a 10 percent buffer, such that if the forecast capacity is 50, and the maximum capacity is 40, then the effective maximum capacity is 55.</p> <p>Only valid when configuring predictive scaling. Required if the <b>PredictiveScalingMaxCapacityBehavior</b> is set to <code>SetMaxCapacityAboveForecastCapacity</code>, and cannot be used otherwise.</p> <p>The range is 1-100.</p>"
        },
        "PredictiveScalingMode": {
          "shape": "PredictiveScalingMode",
          "documentation": "<p>The predictive scaling mode. The default value is <code>ForecastAndScale</code>. Otherwise, AWS Auto Scaling forecasts capacity but does not create any scheduled scaling actions based on the capacity forecast. </p>"
        },
        "ScalingPolicyUpdateBehavior": {
          "shape": "ScalingPolicyUpdateBehavior",
          "documentation": "<p>Controls whether a resource's externally created scaling policies are kept or replaced. </p> <p>The default value is <code>KeepExternalPolicies</code>. If the parameter is set to <code>ReplaceExternalPolicies</code>, any scaling policies that are external to AWS Auto Scaling are deleted and new target tracking scaling policies created. </p> <p>Only valid when configuring dynamic scaling. </p> <p>Condition: The number of existing policies to be replaced must be less than or equal to 50. If there are more than 50 policies to be replaced, AWS Auto Scaling keeps all existing policies and does not create new ones.</p>"
        },
        "DisableDynamicScaling": {
          "shape": "DisableDynamicScaling",
          "documentation": "<p>Controls whether dynamic scaling by AWS Auto Scaling is disabled. When dynamic scaling is enabled, AWS Auto Scaling creates target tracking scaling policies based on the specified target tracking configurations. </p> <p>The default is enabled (<code>false</code>). </p>"
        }
      },
      "documentation": "<p>Describes a scaling instruction for a scalable resource.</p> <p>The scaling instruction is used in combination with a scaling plan, which is a set of instructions for configuring dynamic scaling and predictive scaling for the scalable resources in your application. Each scaling instruction applies to one resource.</p> <p>AWS Auto Scaling creates target tracking scaling policies based on the scaling instructions. Target tracking scaling policies adjust the capacity of your scalable resource as required to maintain resource utilization at the target value that you specified. </p> <p>AWS Auto Scaling also configures predictive scaling for your Amazon EC2 Auto Scaling groups using a subset of parameters, including the load metric, the scaling metric, the target value for the scaling metric, the predictive scaling mode (forecast and scale or forecast only), and the desired behavior when the forecast capacity exceeds the maximum capacity of the resource. With predictive scaling, AWS Auto Scaling generates forecasts with traffic predictions for the two days ahead and schedules scaling actions that proactively add and remove resource capacity to match the forecast. </p> <p>We recommend waiting a minimum of 24 hours after creating an Auto Scaling group to configure predictive scaling. At minimum, there must be 24 hours of historical data to generate a forecast.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/plans/userguide/auto-scaling-getting-started.html\">Getting Started with AWS Auto Scaling</a>.</p>"
    },
    "ScalingInstructions": {
      "type": "list",
      "member": {
        "shape": "ScalingInstruction"
      }
    },
    "ScalingMetricType": {
      "type": "string",
      "enum": [
        "ASGAverageCPUUtilization",
        "ASGAverageNetworkIn",
        "ASGAverageNetworkOut",
        "DynamoDBReadCapacityUtilization",
        "DynamoDBWriteCapacityUtilization",
        "ECSServiceAverageCPUUtilization",
        "ECSServiceAverageMemoryUtilization",
        "ALBRequestCountPerTarget",
        "RDSReaderAverageCPUUtilization",
        "RDSReaderAverageDatabaseConnections",
        "EC2SpotFleetRequestAverageCPUUtilization",
        "EC2SpotFleetRequestAverageNetworkIn",
        "EC2SpotFleetRequestAverageNetworkOut"
      ]
    },
    "ScalingPlan": {
      "type": "structure",
      "required": [
        "ScalingPlanName",
        "ScalingPlanVersion",
        "ApplicationSource",
        "ScalingInstructions",
        "StatusCode"
      ],
      "members": {
        "ScalingPlanName": {
          "shape": "ScalingPlanName",
          "documentation": "<p>The name of the scaling plan.</p>"
        },
        "ScalingPlanVersion": {
          "shape": "ScalingPlanVersion",
          "documentation": "<p>The version number of the scaling plan.</p>"
        },
        "ApplicationSource": {
          "shape": "ApplicationSource",
          "documentation": "<p>The application source.</p>"
        },
        "ScalingInstructions": {
          "shape": "ScalingInstructions",
          "documentation": "<p>The scaling instructions.</p>"
        },
        "StatusCode": {
          "shape": "ScalingPlanStatusCode",
          "documentation": "<p>The status of the scaling plan.</p> <ul> <li> <p> <code>Active</code> - The scaling plan is active.</p> </li> <li> <p> <code>ActiveWithProblems</code> - The scaling plan is active, but the scaling configuration for one or more resources could not be applied.</p> </li> <li> <p> <code>CreationInProgress</code> - The scaling plan is being created.</p> </li> <li> <p> <code>CreationFailed</code> - The scaling plan could not be created.</p> </li> <li> <p> <code>DeletionInProgress</code> - The scaling plan is being deleted.</p> </li> <li> <p> <code>DeletionFailed</code> - The scaling plan could not be deleted.</p> </li> <li> <p> <code>UpdateInProgress</code> - The scaling plan is being updated.</p> </li> <li> <p> <code>UpdateFailed</code> - The scaling plan could not be updated.</p> </li> </ul>"
        },
        "StatusMessage": {
          "shape": "XmlString",
          "documentation": "<p>A simple message about the current status of the scaling plan.</p>"
        },
        "StatusStartTime": {
          "shape": "TimestampType",
          "documentation": "<p>The Unix time stamp when the scaling plan entered the current status.</p>"
        },
        "CreationTime": {
          "shape": "TimestampType",
          "documentation": "<p>The Unix time stamp when the scaling plan was created.</p>"
        }
      },
      "documentation": "<p>Represents a scaling plan.</p>"
    },
    "ScalingPlanName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\p{Print}&&[^|:/]]+"
    },
    "ScalingPlanNames": {
      "type": "list",
      "member": {
        "shape": "ScalingPlanName"
      }
    },
    "ScalingPlanResource": {
      "type": "structure",
      "required": [
        "ScalingPlanName",
        "ScalingPlanVersion",
        "ServiceNamespace",
        "ResourceId",
        "ScalableDimension",
        "ScalingStatusCode"
      ],
      "members": {
        "ScalingPlanName": {
          "shape": "ScalingPlanName",
          "documentation": "<p>The name of the scaling plan.</p>"
        },
        "ScalingPlanVersion": {
          "shape": "ScalingPlanVersion",
          "documentation": "<p>The version number of the scaling plan.</p>"
        },
        "ServiceNamespace": {
          "shape": "ServiceNamespace",
          "documentation": "<p>The namespace of the AWS service.</p>"
        },
        "ResourceId": {
          "shape": "ResourceIdMaxLen1600",
          "documentation": "<p>The ID of the resource. This string consists of the resource type and unique identifier.</p> <ul> <li> <p>Auto Scaling group - The resource type is <code>autoScalingGroup</code> and the unique identifier is the name of the Auto Scaling group. Example: <code>autoScalingGroup/my-asg</code>.</p> </li> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot Fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> </ul>"
        },
        "ScalableDimension": {
          "shape": "ScalableDimension",
          "documentation": "<p>The scalable dimension for the resource.</p> <ul> <li> <p> <code>autoscaling:autoScalingGroup:DesiredCapacity</code> - The desired capacity of an Auto Scaling group.</p> </li> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet request.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p> </li> </ul>"
        },
        "ScalingPolicies": {
          "shape": "ScalingPolicies",
          "documentation": "<p>The scaling policies.</p>"
        },
        "ScalingStatusCode": {
          "shape": "ScalingStatusCode",
          "documentation": "<p>The scaling status of the resource.</p> <ul> <li> <p> <code>Active</code> - The scaling configuration is active.</p> </li> <li> <p> <code>Inactive</code> - The scaling configuration is not active because the scaling plan is being created or the scaling configuration could not be applied. Check the status message for more information.</p> </li> <li> <p> <code>PartiallyActive</code> - The scaling configuration is partially active because the scaling plan is being created or deleted or the scaling configuration could not be fully applied. Check the status message for more information.</p> </li> </ul>"
        },
        "ScalingStatusMessage": {
          "shape": "XmlString",
          "documentation": "<p>A simple message about the current scaling status of the resource.</p>"
        }
      },
      "documentation": "<p>Represents a scalable resource.</p>"
    },
    "ScalingPlanResources": {
      "type": "list",
      "member": {
        "shape": "ScalingPlanResource"
      }
    },
    "ScalingPlanStatusCode": {
      "type": "string",
      "enum": [
        "Active",
        "ActiveWithProblems",
        "CreationInProgress",
        "CreationFailed",
        "DeletionInProgress",
        "DeletionFailed",
        "UpdateInProgress",
        "UpdateFailed"
      ]
    },
    "ScalingPlanVersion": {
      "type": "long"
    },
    "ScalingPlans": {
      "type": "list",
      "member": {
        "shape": "ScalingPlan"
      }
    },
    "ScalingPolicies": {
      "type": "list",
      "member": {
        "shape": "ScalingPolicy"
      }
    },
    "ScalingPolicy": {
      "type": "structure",
      "required": [
        "PolicyName",
        "PolicyType"
      ],
      "members": {
        "PolicyName": {
          "shape": "PolicyName",
          "documentation": "<p>The name of the scaling policy.</p>"
        },
        "PolicyType": {
          "shape": "PolicyType",
          "documentation": "<p>The type of scaling policy.</p>"
        },
        "TargetTrackingConfiguration": {
          "shape": "TargetTrackingConfiguration",
          "documentation": "<p>The target tracking scaling policy. Includes support for predefined or customized metrics.</p>"
        }
      },
      "documentation": "<p>Represents a scaling policy.</p>"
    },
    "ScalingPolicyUpdateBehavior": {
      "type": "string",
      "enum": [
        "KeepExternalPolicies",
        "ReplaceExternalPolicies"
      ]
    },
    "ScalingStatusCode": {
      "type": "string",
      "enum": [
        "Inactive",
        "PartiallyActive",
        "Active"
      ]
    },
    "ScheduledActionBufferTime": {
      "type": "integer",
      "min": 0
    },
    "ServiceNamespace": {
      "type": "string",
      "enum": [
        "autoscaling",
        "ecs",
        "ec2",
        "rds",
        "dynamodb"
      ]
    },
    "TagFilter": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "XmlStringMaxLen128",
          "documentation": "<p>The tag key.</p>"
        },
        "Values": {
          "shape": "TagValues",
          "documentation": "<p>The tag values (0 to 20).</p>"
        }
      },
      "documentation": "<p>Represents a tag.</p>"
    },
    "TagFilters": {
      "type": "list",
      "member": {
        "shape": "TagFilter"
      }
    },
    "TagValues": {
      "type": "list",
      "member": {
        "shape": "XmlStringMaxLen256"
      }
    },
    "TargetTrackingConfiguration": {
      "type": "structure",
      "required": [
        "TargetValue"
      ],
      "members": {
        "PredefinedScalingMetricSpecification": {
          "shape": "PredefinedScalingMetricSpecification",
          "documentation": "<p>A predefined metric. You can specify either a predefined metric or a customized metric.</p>"
        },
        "CustomizedScalingMetricSpecification": {
          "shape": "CustomizedScalingMetricSpecification",
          "documentation": "<p>A customized metric. You can specify either a predefined metric or a customized metric. </p>"
        },
        "TargetValue": {
          "shape": "MetricScale",
          "documentation": "<p>The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).</p>"
        },
        "DisableScaleIn": {
          "shape": "DisableScaleIn",
          "documentation": "<p>Indicates whether scale in by the target tracking scaling policy is disabled. If the value is <code>true</code>, scale in is disabled and the target tracking scaling policy doesn't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking scaling policy can remove capacity from the scalable resource. </p> <p>The default value is <code>false</code>.</p>"
        },
        "ScaleOutCooldown": {
          "shape": "Cooldown",
          "documentation": "<p>The amount of time, in seconds, after a scale-out activity completes before another scale-out activity can start. This value is not used if the scalable resource is an Auto Scaling group.</p> <p>While the cooldown period is in effect, the capacity that has been added by the previous scale-out event that initiated the cooldown is calculated as part of the desired capacity for the next scale out. The intention is to continuously (but not excessively) scale out.</p>"
        },
        "ScaleInCooldown": {
          "shape": "Cooldown",
          "documentation": "<p>The amount of time, in seconds, after a scale in activity completes before another scale in activity can start. This value is not used if the scalable resource is an Auto Scaling group.</p> <p>The cooldown period is used to block subsequent scale in requests until it has expired. The intention is to scale in conservatively to protect your application's availability. However, if another alarm triggers a scale-out policy during the cooldown period after a scale-in, AWS Auto Scaling scales out your scalable target immediately.</p>"
        },
        "EstimatedInstanceWarmup": {
          "shape": "Cooldown",
          "documentation": "<p>The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics. This value is used only if the resource is an Auto Scaling group.</p>"
        }
      },
      "documentation": "<p>Describes a target tracking configuration to use with AWS Auto Scaling. Used with <a>ScalingInstruction</a> and <a>ScalingPolicy</a>.</p>"
    },
    "TargetTrackingConfigurations": {
      "type": "list",
      "member": {
        "shape": "TargetTrackingConfiguration"
      }
    },
    "TimestampType": {
      "type": "timestamp"
    },
    "UpdateScalingPlanRequest": {
      "type": "structure",
      "required": [
        "ScalingPlanName",
        "ScalingPlanVersion"
      ],
      "members": {
        "ScalingPlanName": {
          "shape": "ScalingPlanName",
          "documentation": "<p>The name of the scaling plan.</p>"
        },
        "ScalingPlanVersion": {
          "shape": "ScalingPlanVersion",
          "documentation": "<p>The version number of the scaling plan.</p>"
        },
        "ApplicationSource": {
          "shape": "ApplicationSource",
          "documentation": "<p>A CloudFormation stack or set of tags.</p>"
        },
        "ScalingInstructions": {
          "shape": "ScalingInstructions",
          "documentation": "<p>The scaling instructions.</p>"
        }
      }
    },
    "UpdateScalingPlanResponse": {
      "type": "structure",
      "members": {}
    },
    "XmlString": {
      "type": "string",
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "XmlStringMaxLen128": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "XmlStringMaxLen256": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    }
  },
  "documentation": "<fullname>AWS Auto Scaling</fullname> <p>Use AWS Auto Scaling to quickly discover all the scalable AWS resources for your application and configure dynamic scaling and predictive scaling for your resources using scaling plans. Use this service in conjunction with the Amazon EC2 Auto Scaling, Application Auto Scaling, Amazon CloudWatch, and AWS CloudFormation services. </p> <p>Currently, predictive scaling is only available for Amazon EC2 Auto Scaling groups.</p> <p>For more information about AWS Auto Scaling, including information about granting IAM users required permissions for AWS Auto Scaling actions, see the <a href=\"https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html\">AWS Auto Scaling User Guide</a>.</p>"
}
]===]))
