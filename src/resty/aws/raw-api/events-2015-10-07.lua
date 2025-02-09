local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2015-10-07",
    "endpointPrefix": "events",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "Amazon CloudWatch Events",
    "serviceId": "CloudWatch Events",
    "signatureVersion": "v4",
    "targetPrefix": "AWSEvents",
    "uid": "events-2015-10-07"
  },
  "operations": {
    "ActivateEventSource": {
      "name": "ActivateEventSource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ActivateEventSourceRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "InternalException"
        },
        {
          "shape": "OperationDisabledException"
        }
      ],
      "documentation": "<p>Activates a partner event source that has been deactivated. Once activated, your matching event bus will start receiving events from the event source.</p>"
    },
    "CreateEventBus": {
      "name": "CreateEventBus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateEventBusRequest"
      },
      "output": {
        "shape": "CreateEventBusResponse"
      },
      "errors": [
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "InternalException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "OperationDisabledException"
        }
      ],
      "documentation": "<p>Creates a new event bus within your account. This can be a custom event bus which you can use to receive events from your custom applications and services, or it can be a partner event bus which can be matched to a partner event source.</p>"
    },
    "CreatePartnerEventSource": {
      "name": "CreatePartnerEventSource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePartnerEventSourceRequest"
      },
      "output": {
        "shape": "CreatePartnerEventSourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "InternalException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "OperationDisabledException"
        }
      ],
      "documentation": "<p>Called by an SaaS partner to create a partner event source. This operation is not used by AWS customers.</p> <p>Each partner event source can be used by one AWS account to create a matching partner event bus in that AWS account. A SaaS partner must create one partner event source for each AWS account that wants to receive those event types. </p> <p>A partner event source creates events based on resources within the SaaS partner's service or application.</p> <p>An AWS account that creates a partner event bus that matches the partner event source can use that event bus to receive events from the partner, and then process them using AWS Events rules and targets.</p> <p>Partner event source names follow this format:</p> <p> <code> <i>partner_name</i>/<i>event_namespace</i>/<i>event_name</i> </code> </p> <p> <i>partner_name</i> is determined during partner registration and identifies the partner to AWS customers. <i>event_namespace</i> is determined by the partner and is a way for the partner to categorize their events. <i>event_name</i> is determined by the partner, and should uniquely identify an event-generating resource within the partner system. The combination of <i>event_namespace</i> and <i>event_name</i> should help AWS customers decide whether to create an event bus to receive these events.</p>"
    },
    "DeactivateEventSource": {
      "name": "DeactivateEventSource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeactivateEventSourceRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "InternalException"
        },
        {
          "shape": "OperationDisabledException"
        }
      ],
      "documentation": "<p>You can use this operation to temporarily stop receiving events from the specified partner event source. The matching event bus is not deleted. </p> <p>When you deactivate a partner event source, the source goes into PENDING state. If it remains in PENDING state for more than two weeks, it is deleted.</p> <p>To activate a deactivated partner event source, use <a>ActivateEventSource</a>.</p>"
    },
    "DeleteEventBus": {
      "name": "DeleteEventBus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteEventBusRequest"
      },
      "errors": [
        {
          "shape": "InternalException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Deletes the specified custom event bus or partner event bus. All rules associated with this event bus need to be deleted. You can't delete your account's default event bus.</p>"
    },
    "DeletePartnerEventSource": {
      "name": "DeletePartnerEventSource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePartnerEventSourceRequest"
      },
      "errors": [
        {
          "shape": "InternalException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "OperationDisabledException"
        }
      ],
      "documentation": "<p>This operation is used by SaaS partners to delete a partner event source. This operation is not used by AWS customers.</p> <p>When you delete an event source, the status of the corresponding partner event bus in the AWS customer account becomes DELETED.</p> <p/>"
    },
    "DeleteRule": {
      "name": "DeleteRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRuleRequest"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ManagedRuleException"
        },
        {
          "shape": "InternalException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes the specified rule.</p> <p>Before you can delete the rule, you must remove all targets, using <a>RemoveTargets</a>.</p> <p>When you delete a rule, incoming events might continue to match to the deleted rule. Allow a short period of time for changes to take effect.</p> <p>Managed rules are rules created and managed by another AWS service on your behalf. These rules are created by those other AWS services to support functionality in those services. You can delete these rules using the <code>Force</code> option, but you should do so only if you are sure the other service is not still using that rule.</p>"
    },
    "DescribeEventBus": {
      "name": "DescribeEventBus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventBusRequest"
      },
      "output": {
        "shape": "DescribeEventBusResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Displays details about an event bus in your account. This can include the external AWS accounts that are permitted to write events to your default event bus, and the associated policy. For custom event buses and partner event buses, it displays the name, ARN, policy, state, and creation time.</p> <p> To enable your account to receive events from other accounts on its default event bus, use <a>PutPermission</a>.</p> <p>For more information about partner event buses, see <a>CreateEventBus</a>.</p>"
    },
    "DescribeEventSource": {
      "name": "DescribeEventSource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventSourceRequest"
      },
      "output": {
        "shape": "DescribeEventSourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalException"
        },
        {
          "shape": "OperationDisabledException"
        }
      ],
      "documentation": "<p>This operation lists details about a partner event source that is shared with your account.</p>"
    },
    "DescribePartnerEventSource": {
      "name": "DescribePartnerEventSource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePartnerEventSourceRequest"
      },
      "output": {
        "shape": "DescribePartnerEventSourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalException"
        },
        {
          "shape": "OperationDisabledException"
        }
      ],
      "documentation": "<p>An SaaS partner can use this operation to list details about a partner event source that they have created. AWS customers do not use this operation. Instead, AWS customers can use <a>DescribeEventSource</a> to see details about a partner event source that is shared with them.</p>"
    },
    "DescribeRule": {
      "name": "DescribeRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeRuleRequest"
      },
      "output": {
        "shape": "DescribeRuleResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Describes the specified rule.</p> <p>DescribeRule does not list the targets of a rule. To see the targets associated with a rule, use <a>ListTargetsByRule</a>.</p>"
    },
    "DisableRule": {
      "name": "DisableRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisableRuleRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ManagedRuleException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Disables the specified rule. A disabled rule won't match any events, and won't self-trigger if it has a schedule expression.</p> <p>When you disable a rule, incoming events might continue to match to the disabled rule. Allow a short period of time for changes to take effect.</p>"
    },
    "EnableRule": {
      "name": "EnableRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EnableRuleRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ManagedRuleException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Enables the specified rule. If the rule does not exist, the operation fails.</p> <p>When you enable a rule, incoming events might not immediately start matching to a newly enabled rule. Allow a short period of time for changes to take effect.</p>"
    },
    "ListEventBuses": {
      "name": "ListEventBuses",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListEventBusesRequest"
      },
      "output": {
        "shape": "ListEventBusesResponse"
      },
      "errors": [
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Lists all the event buses in your account, including the default event bus, custom event buses, and partner event buses.</p>"
    },
    "ListEventSources": {
      "name": "ListEventSources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListEventSourcesRequest"
      },
      "output": {
        "shape": "ListEventSourcesResponse"
      },
      "errors": [
        {
          "shape": "InternalException"
        },
        {
          "shape": "OperationDisabledException"
        }
      ],
      "documentation": "<p>You can use this to see all the partner event sources that have been shared with your AWS account. For more information about partner event sources, see <a>CreateEventBus</a>.</p>"
    },
    "ListPartnerEventSourceAccounts": {
      "name": "ListPartnerEventSourceAccounts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPartnerEventSourceAccountsRequest"
      },
      "output": {
        "shape": "ListPartnerEventSourceAccountsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalException"
        },
        {
          "shape": "OperationDisabledException"
        }
      ],
      "documentation": "<p>An SaaS partner can use this operation to display the AWS account ID that a particular partner event source name is associated with. This operation is not used by AWS customers.</p>"
    },
    "ListPartnerEventSources": {
      "name": "ListPartnerEventSources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPartnerEventSourcesRequest"
      },
      "output": {
        "shape": "ListPartnerEventSourcesResponse"
      },
      "errors": [
        {
          "shape": "InternalException"
        },
        {
          "shape": "OperationDisabledException"
        }
      ],
      "documentation": "<p>An SaaS partner can use this operation to list all the partner event source names that they have created. This operation is not used by AWS customers.</p>"
    },
    "ListRuleNamesByTarget": {
      "name": "ListRuleNamesByTarget",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListRuleNamesByTargetRequest"
      },
      "output": {
        "shape": "ListRuleNamesByTargetResponse"
      },
      "errors": [
        {
          "shape": "InternalException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Lists the rules for the specified target. You can see which of the rules in Amazon EventBridge can invoke a specific target in your account.</p>"
    },
    "ListRules": {
      "name": "ListRules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListRulesRequest"
      },
      "output": {
        "shape": "ListRulesResponse"
      },
      "errors": [
        {
          "shape": "InternalException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Lists your Amazon EventBridge rules. You can either list all the rules or you can provide a prefix to match to the rule names.</p> <p>ListRules does not list the targets of a rule. To see the targets associated with a rule, use <a>ListTargetsByRule</a>.</p>"
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
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Displays the tags associated with an EventBridge resource. In EventBridge, rules and event buses can be tagged.</p>"
    },
    "ListTargetsByRule": {
      "name": "ListTargetsByRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTargetsByRuleRequest"
      },
      "output": {
        "shape": "ListTargetsByRuleResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Lists the targets assigned to the specified rule.</p>"
    },
    "PutEvents": {
      "name": "PutEvents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutEventsRequest"
      },
      "output": {
        "shape": "PutEventsResponse"
      },
      "errors": [
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Sends custom events to Amazon EventBridge so that they can be matched to rules.</p>"
    },
    "PutPartnerEvents": {
      "name": "PutPartnerEvents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutPartnerEventsRequest"
      },
      "output": {
        "shape": "PutPartnerEventsResponse"
      },
      "errors": [
        {
          "shape": "InternalException"
        },
        {
          "shape": "OperationDisabledException"
        }
      ],
      "documentation": "<p>This is used by SaaS partners to write events to a customer's partner event bus. AWS customers do not use this operation.</p>"
    },
    "PutPermission": {
      "name": "PutPermission",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutPermissionRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "PolicyLengthExceededException"
        },
        {
          "shape": "InternalException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Running <code>PutPermission</code> permits the specified AWS account or AWS organization to put events to the specified <i>event bus</i>. Amazon EventBridge (CloudWatch Events) rules in your account are triggered by these events arriving to an event bus in your account. </p> <p>For another account to send events to your account, that external account must have an EventBridge rule with your account's event bus as a target.</p> <p>To enable multiple AWS accounts to put events to your event bus, run <code>PutPermission</code> once for each of these accounts. Or, if all the accounts are members of the same AWS organization, you can run <code>PutPermission</code> once specifying <code>Principal</code> as \"*\" and specifying the AWS organization ID in <code>Condition</code>, to grant permissions to all accounts in that organization.</p> <p>If you grant permissions using an organization, then accounts in that organization must specify a <code>RoleArn</code> with proper permissions when they use <code>PutTarget</code> to add your account's event bus as a target. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html\">Sending and Receiving Events Between AWS Accounts</a> in the <i>Amazon EventBridge User Guide</i>.</p> <p>The permission policy on the default event bus cannot exceed 10 KB in size.</p>"
    },
    "PutRule": {
      "name": "PutRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutRuleRequest"
      },
      "output": {
        "shape": "PutRuleResponse"
      },
      "errors": [
        {
          "shape": "InvalidEventPatternException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ManagedRuleException"
        },
        {
          "shape": "InternalException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Creates or updates the specified rule. Rules are enabled by default, or based on value of the state. You can disable a rule using <a>DisableRule</a>.</p> <p>A single rule watches for events from a single event bus. Events generated by AWS services go to your account's default event bus. Events generated by SaaS partner services or applications go to the matching partner event bus. If you have custom applications or services, you can specify whether their events go to your default event bus or a custom event bus that you have created. For more information, see <a>CreateEventBus</a>.</p> <p>If you are updating an existing rule, the rule is replaced with what you specify in this <code>PutRule</code> command. If you omit arguments in <code>PutRule</code>, the old values for those arguments are not kept. Instead, they are replaced with null values.</p> <p>When you create or update a rule, incoming events might not immediately start matching to new or updated rules. Allow a short period of time for changes to take effect.</p> <p>A rule must contain at least an EventPattern or ScheduleExpression. Rules with EventPatterns are triggered when a matching event is observed. Rules with ScheduleExpressions self-trigger based on the given schedule. A rule can have both an EventPattern and a ScheduleExpression, in which case the rule triggers on matching events as well as on a schedule.</p> <p>When you initially create a rule, you can optionally assign one or more tags to the rule. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only rules with certain tag values. To use the <code>PutRule</code> operation and assign tags, you must have both the <code>events:PutRule</code> and <code>events:TagResource</code> permissions.</p> <p>If you are updating an existing rule, any tags you specify in the <code>PutRule</code> operation are ignored. To update the tags of an existing rule, use <a>TagResource</a> and <a>UntagResource</a>.</p> <p>Most services in AWS treat : or / as the same character in Amazon Resource Names (ARNs). However, EventBridge uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event you want to match.</p> <p>In EventBridge, it is possible to create rules that lead to infinite loops, where a rule is fired repeatedly. For example, a rule might detect that ACLs have changed on an S3 bucket, and trigger software to change them to the desired state. If the rule is not written carefully, the subsequent change to the ACLs fires the rule again, creating an infinite loop.</p> <p>To prevent this, write the rules so that the triggered actions do not re-fire the same rule. For example, your rule could fire only if ACLs are found to be in a bad state, instead of after any change. </p> <p>An infinite loop can quickly cause higher than expected charges. We recommend that you use budgeting, which alerts you when charges exceed your specified limit. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-managing-costs.html\">Managing Your Costs with Budgets</a>.</p>"
    },
    "PutTargets": {
      "name": "PutTargets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutTargetsRequest"
      },
      "output": {
        "shape": "PutTargetsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ManagedRuleException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Adds the specified targets to the specified rule, or updates the targets if they are already associated with the rule.</p> <p>Targets are the resources that are invoked when a rule is triggered.</p> <p>You can configure the following as targets for Events:</p> <ul> <li> <p>EC2 instances</p> </li> <li> <p>SSM Run Command</p> </li> <li> <p>SSM Automation</p> </li> <li> <p>AWS Lambda functions</p> </li> <li> <p>Data streams in Amazon Kinesis Data Streams</p> </li> <li> <p>Data delivery streams in Amazon Kinesis Data Firehose</p> </li> <li> <p>Amazon ECS tasks</p> </li> <li> <p>AWS Step Functions state machines</p> </li> <li> <p>AWS Batch jobs</p> </li> <li> <p>AWS CodeBuild projects</p> </li> <li> <p>Pipelines in AWS CodePipeline</p> </li> <li> <p>Amazon Inspector assessment templates</p> </li> <li> <p>Amazon SNS topics</p> </li> <li> <p>Amazon SQS queues, including FIFO queues</p> </li> <li> <p>The default event bus of another AWS account</p> </li> <li> <p>Amazon API Gateway REST APIs</p> </li> </ul> <p>Creating rules with built-in targets is supported only in the AWS Management Console. The built-in targets are <code>EC2 CreateSnapshot API call</code>, <code>EC2 RebootInstances API call</code>, <code>EC2 StopInstances API call</code>, and <code>EC2 TerminateInstances API call</code>. </p> <p>For some target types, <code>PutTargets</code> provides target-specific parameters. If the target is a Kinesis data stream, you can optionally specify which shard the event goes to by using the <code>KinesisParameters</code> argument. To invoke a command on multiple EC2 instances with one rule, you can use the <code>RunCommandParameters</code> field.</p> <p>To be able to make API calls against the resources that you own, Amazon EventBridge (CloudWatch Events) needs the appropriate permissions. For AWS Lambda and Amazon SNS resources, EventBridge relies on resource-based policies. For EC2 instances, Kinesis data streams, AWS Step Functions state machines and API Gateway REST APIs, EventBridge relies on IAM roles that you specify in the <code>RoleARN</code> argument in <code>PutTargets</code>. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/auth-and-access-control-eventbridge.html\">Authentication and Access Control</a> in the <i>Amazon EventBridge User Guide</i>.</p> <p>If another AWS account is in the same region and has granted you permission (using <code>PutPermission</code>), you can send events to that account. Set that account's event bus as a target of the rules in your account. To send the matched events to the other account, specify that account's event bus as the <code>Arn</code> value when you run <code>PutTargets</code>. If your account sends events to another account, your account is charged for each sent event. Each event sent to another account is charged as a custom event. The account receiving the event is not charged. For more information, see <a href=\"https://aws.amazon.com/eventbridge/pricing/\">Amazon EventBridge (CloudWatch Events) Pricing</a>.</p> <note> <p> <code>Input</code>, <code>InputPath</code>, and <code>InputTransformer</code> are not available with <code>PutTarget</code> if the target is an event bus of a different AWS account.</p> </note> <p>If you are setting the event bus of another account as the target, and that account granted permission to your account through an organization instead of directly by the account ID, then you must specify a <code>RoleArn</code> with proper permissions in the <code>Target</code> structure. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html\">Sending and Receiving Events Between AWS Accounts</a> in the <i>Amazon EventBridge User Guide</i>.</p> <p>For more information about enabling cross-account events, see <a>PutPermission</a>.</p> <p> <b>Input</b>, <b>InputPath</b>, and <b>InputTransformer</b> are mutually exclusive and optional parameters of a target. When a rule is triggered due to a matched event:</p> <ul> <li> <p>If none of the following arguments are specified for a target, then the entire event is passed to the target in JSON format (unless the target is Amazon EC2 Run Command or Amazon ECS task, in which case nothing from the event is passed to the target).</p> </li> <li> <p>If <b>Input</b> is specified in the form of valid JSON, then the matched event is overridden with this constant.</p> </li> <li> <p>If <b>InputPath</b> is specified in the form of JSONPath (for example, <code>$.detail</code>), then only the part of the event specified in the path is passed to the target (for example, only the detail part of the event is passed).</p> </li> <li> <p>If <b>InputTransformer</b> is specified, then one or more specified JSONPaths are extracted from the event and used as values in a template that you specify as the input to the target.</p> </li> </ul> <p>When you specify <code>InputPath</code> or <code>InputTransformer</code>, you must use JSON dot notation, not bracket notation.</p> <p>When you add targets to a rule and the associated rule triggers soon after, new or updated targets might not be immediately invoked. Allow a short period of time for changes to take effect.</p> <p>This action can partially fail if too many requests are made at the same time. If that happens, <code>FailedEntryCount</code> is non-zero in the response and each entry in <code>FailedEntries</code> provides the ID of the failed target and the error code.</p>"
    },
    "RemovePermission": {
      "name": "RemovePermission",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemovePermissionRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Revokes the permission of another AWS account to be able to put events to the specified event bus. Specify the account to revoke by the <code>StatementId</code> value that you associated with the account when you granted it permission with <code>PutPermission</code>. You can find the <code>StatementId</code> by using <a>DescribeEventBus</a>.</p>"
    },
    "RemoveTargets": {
      "name": "RemoveTargets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveTargetsRequest"
      },
      "output": {
        "shape": "RemoveTargetsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ManagedRuleException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Removes the specified targets from the specified rule. When the rule is triggered, those targets are no longer be invoked.</p> <p>When you remove a target, when the associated rule triggers, removed targets might continue to be invoked. Allow a short period of time for changes to take effect.</p> <p>This action can partially fail if too many requests are made at the same time. If that happens, <code>FailedEntryCount</code> is non-zero in the response and each entry in <code>FailedEntries</code> provides the ID of the failed target and the error code.</p>"
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
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InternalException"
        },
        {
          "shape": "ManagedRuleException"
        }
      ],
      "documentation": "<p>Assigns one or more tags (key-value pairs) to the specified EventBridge resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. In EventBridge, rules and event buses can be tagged.</p> <p>Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of characters.</p> <p>You can use the <code>TagResource</code> action with a resource that already has tags. If you specify a new tag key, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag.</p> <p>You can associate as many as 50 tags with a resource.</p>"
    },
    "TestEventPattern": {
      "name": "TestEventPattern",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TestEventPatternRequest"
      },
      "output": {
        "shape": "TestEventPatternResponse"
      },
      "errors": [
        {
          "shape": "InvalidEventPatternException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Tests whether the specified event pattern matches the provided event.</p> <p>Most services in AWS treat : or / as the same character in Amazon Resource Names (ARNs). However, EventBridge uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event you want to match.</p>"
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
          "shape": "InternalException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ManagedRuleException"
        }
      ],
      "documentation": "<p>Removes one or more tags from the specified EventBridge resource. In Amazon EventBridge (CloudWatch Events, rules and event buses can be tagged.</p>"
    }
  },
  "shapes": {
    "AccountId": {
      "type": "string",
      "max": 12,
      "min": 12,
      "pattern": "\\d{12}"
    },
    "Action": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "events:[a-zA-Z]+"
    },
    "ActivateEventSourceRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "EventSourceName",
          "documentation": "<p>The name of the partner event source to activate.</p>"
        }
      }
    },
    "Arn": {
      "type": "string",
      "max": 1600,
      "min": 1
    },
    "AssignPublicIp": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "AwsVpcConfiguration": {
      "type": "structure",
      "required": [
        "Subnets"
      ],
      "members": {
        "Subnets": {
          "shape": "StringList",
          "documentation": "<p>Specifies the subnets associated with the task. These subnets must all be in the same VPC. You can specify as many as 16 subnets.</p>"
        },
        "SecurityGroups": {
          "shape": "StringList",
          "documentation": "<p>Specifies the security groups associated with the task. These security groups must all be in the same VPC. You can specify as many as five security groups. If you do not specify a security group, the default security group for the VPC is used.</p>"
        },
        "AssignPublicIp": {
          "shape": "AssignPublicIp",
          "documentation": "<p>Specifies whether the task's elastic network interface receives a public IP address. You can specify <code>ENABLED</code> only when <code>LaunchType</code> in <code>EcsParameters</code> is set to <code>FARGATE</code>.</p>"
        }
      },
      "documentation": "<p>This structure specifies the VPC subnets and security groups for the task, and whether a public IP address is to be used. This structure is relevant only for ECS tasks that use the <code>awsvpc</code> network mode.</p>"
    },
    "BatchArrayProperties": {
      "type": "structure",
      "members": {
        "Size": {
          "shape": "Integer",
          "documentation": "<p>The size of the array, if this is an array batch job. Valid values are integers between 2 and 10,000.</p>"
        }
      },
      "documentation": "<p>The array properties for the submitted job, such as the size of the array. The array size can be between 2 and 10,000. If you specify array properties for a job, it becomes an array job. This parameter is used only if the target is an AWS Batch job.</p>"
    },
    "BatchParameters": {
      "type": "structure",
      "required": [
        "JobDefinition",
        "JobName"
      ],
      "members": {
        "JobDefinition": {
          "shape": "String",
          "documentation": "<p>The ARN or name of the job definition to use if the event target is an AWS Batch job. This job definition must already exist.</p>"
        },
        "JobName": {
          "shape": "String",
          "documentation": "<p>The name to use for this execution of the job, if the target is an AWS Batch job.</p>"
        },
        "ArrayProperties": {
          "shape": "BatchArrayProperties",
          "documentation": "<p>The array properties for the submitted job, such as the size of the array. The array size can be between 2 and 10,000. If you specify array properties for a job, it becomes an array job. This parameter is used only if the target is an AWS Batch job.</p>"
        },
        "RetryStrategy": {
          "shape": "BatchRetryStrategy",
          "documentation": "<p>The retry strategy to use for failed jobs, if the target is an AWS Batch job. The retry strategy is the number of times to retry the failed job execution. Valid values are 1–10. When you specify a retry strategy here, it overrides the retry strategy defined in the job definition.</p>"
        }
      },
      "documentation": "<p>The custom parameters to be used when the target is an AWS Batch job.</p>"
    },
    "BatchRetryStrategy": {
      "type": "structure",
      "members": {
        "Attempts": {
          "shape": "Integer",
          "documentation": "<p>The number of times to attempt to retry, if the job fails. Valid values are 1–10.</p>"
        }
      },
      "documentation": "<p>The retry strategy to use for failed jobs, if the target is an AWS Batch job. If you specify a retry strategy here, it overrides the retry strategy defined in the job definition.</p>"
    },
    "Boolean": {
      "type": "boolean"
    },
    "Condition": {
      "type": "structure",
      "required": [
        "Type",
        "Key",
        "Value"
      ],
      "members": {
        "Type": {
          "shape": "String",
          "documentation": "<p>Specifies the type of condition. Currently the only supported value is <code>StringEquals</code>.</p>"
        },
        "Key": {
          "shape": "String",
          "documentation": "<p>Specifies the key for the condition. Currently the only supported key is <code>aws:PrincipalOrgID</code>.</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>Specifies the value for the key. Currently, this must be the ID of the organization.</p>"
        }
      },
      "documentation": "<p>A JSON string which you can use to limit the event bus permissions you are granting to only accounts that fulfill the condition. Currently, the only supported condition is membership in a certain AWS organization. The string must contain <code>Type</code>, <code>Key</code>, and <code>Value</code> fields. The <code>Value</code> field specifies the ID of the AWS organization. Following is an example value for <code>Condition</code>:</p> <p> <code>'{\"Type\" : \"StringEquals\", \"Key\": \"aws:PrincipalOrgID\", \"Value\": \"o-1234567890\"}'</code> </p>"
    },
    "CreateEventBusRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "EventBusName",
          "documentation": "<p>The name of the new event bus. </p> <p>Event bus names cannot contain the / character. You can't use the name <code>default</code> for a custom event bus, as this name is already used for your account's default event bus.</p> <p>If this is a partner event bus, the name must exactly match the name of the partner event source that this event bus is matched to.</p>"
        },
        "EventSourceName": {
          "shape": "EventSourceName",
          "documentation": "<p>If you are creating a partner event bus, this specifies the partner event source that the new event bus will be matched with.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Tags to associate with the event bus.</p>"
        }
      }
    },
    "CreateEventBusResponse": {
      "type": "structure",
      "members": {
        "EventBusArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the new event bus.</p>"
        }
      }
    },
    "CreatePartnerEventSourceRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Account"
      ],
      "members": {
        "Name": {
          "shape": "EventSourceName",
          "documentation": "<p>The name of the partner event source. This name must be unique and must be in the format <code> <i>partner_name</i>/<i>event_namespace</i>/<i>event_name</i> </code>. The AWS account that wants to use this partner event source must create a partner event bus with a name that matches the name of the partner event source.</p>"
        },
        "Account": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID that is permitted to create a matching partner event bus for this partner event source.</p>"
        }
      }
    },
    "CreatePartnerEventSourceResponse": {
      "type": "structure",
      "members": {
        "EventSourceArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the partner event source.</p>"
        }
      }
    },
    "DeactivateEventSourceRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "EventSourceName",
          "documentation": "<p>The name of the partner event source to deactivate.</p>"
        }
      }
    },
    "DeleteEventBusRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "EventBusName",
          "documentation": "<p>The name of the event bus to delete.</p>"
        }
      }
    },
    "DeletePartnerEventSourceRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Account"
      ],
      "members": {
        "Name": {
          "shape": "EventSourceName",
          "documentation": "<p>The name of the event source to delete.</p>"
        },
        "Account": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID of the AWS customer that the event source was created for.</p>"
        }
      }
    },
    "DeleteRuleRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "RuleName",
          "documentation": "<p>The name of the rule.</p>"
        },
        "EventBusName": {
          "shape": "EventBusName",
          "documentation": "<p>The event bus associated with the rule. If you omit this, the default event bus is used.</p>"
        },
        "Force": {
          "shape": "Boolean",
          "documentation": "<p>If this is a managed rule, created by an AWS service on your behalf, you must specify <code>Force</code> as <code>True</code> to delete the rule. This parameter is ignored for rules that are not managed rules. You can check whether a rule is a managed rule by using <code>DescribeRule</code> or <code>ListRules</code> and checking the <code>ManagedBy</code> field of the response.</p>"
        }
      }
    },
    "DescribeEventBusRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "EventBusName",
          "documentation": "<p>The name of the event bus to show details for. If you omit this, the default event bus is displayed.</p>"
        }
      }
    },
    "DescribeEventBusResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the event bus. Currently, this is always <code>default</code>.</p>"
        },
        "Arn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the account permitted to write events to the current account.</p>"
        },
        "Policy": {
          "shape": "String",
          "documentation": "<p>The policy that enables the external account to send events to your account.</p>"
        }
      }
    },
    "DescribeEventSourceRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "EventSourceName",
          "documentation": "<p>The name of the partner event source to display the details of.</p>"
        }
      }
    },
    "DescribeEventSourceResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "String",
          "documentation": "<p>The ARN of the partner event source.</p>"
        },
        "CreatedBy": {
          "shape": "String",
          "documentation": "<p>The name of the SaaS partner that created the event source.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the event source was created.</p>"
        },
        "ExpirationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the event source will expire if you do not create a matching event bus.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the partner event source.</p>"
        },
        "State": {
          "shape": "EventSourceState",
          "documentation": "<p>The state of the event source. If it is ACTIVE, you have already created a matching event bus for this event source, and that event bus is active. If it is PENDING, either you haven't yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have created a matching event bus, but the event source has since been deleted.</p>"
        }
      }
    },
    "DescribePartnerEventSourceRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "EventSourceName",
          "documentation": "<p>The name of the event source to display.</p>"
        }
      }
    },
    "DescribePartnerEventSourceResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "String",
          "documentation": "<p>The ARN of the event source.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the event source.</p>"
        }
      }
    },
    "DescribeRuleRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "RuleName",
          "documentation": "<p>The name of the rule.</p>"
        },
        "EventBusName": {
          "shape": "EventBusName",
          "documentation": "<p>The event bus associated with the rule. If you omit this, the default event bus is used.</p>"
        }
      }
    },
    "DescribeRuleResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "RuleName",
          "documentation": "<p>The name of the rule.</p>"
        },
        "Arn": {
          "shape": "RuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the rule.</p>"
        },
        "EventPattern": {
          "shape": "EventPattern",
          "documentation": "<p>The event pattern. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html\">Events and Event Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>"
        },
        "ScheduleExpression": {
          "shape": "ScheduleExpression",
          "documentation": "<p>The scheduling expression. For example, \"cron(0 20 * * ? *)\", \"rate(5 minutes)\".</p>"
        },
        "State": {
          "shape": "RuleState",
          "documentation": "<p>Specifies whether the rule is enabled or disabled.</p>"
        },
        "Description": {
          "shape": "RuleDescription",
          "documentation": "<p>The description of the rule.</p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role associated with the rule.</p>"
        },
        "ManagedBy": {
          "shape": "ManagedBy",
          "documentation": "<p>If this is a managed rule, created by an AWS service on your behalf, this field displays the principal name of the AWS service that created the rule.</p>"
        },
        "EventBusName": {
          "shape": "EventBusName",
          "documentation": "<p>The event bus associated with the rule.</p>"
        }
      }
    },
    "DisableRuleRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "RuleName",
          "documentation": "<p>The name of the rule.</p>"
        },
        "EventBusName": {
          "shape": "EventBusName",
          "documentation": "<p>The event bus associated with the rule. If you omit this, the default event bus is used.</p>"
        }
      }
    },
    "EcsParameters": {
      "type": "structure",
      "required": [
        "TaskDefinitionArn"
      ],
      "members": {
        "TaskDefinitionArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the task definition to use if the event target is an Amazon ECS task. </p>"
        },
        "TaskCount": {
          "shape": "LimitMin1",
          "documentation": "<p>The number of tasks to create based on <code>TaskDefinition</code>. The default is 1.</p>"
        },
        "LaunchType": {
          "shape": "LaunchType",
          "documentation": "<p>Specifies the launch type on which your task is running. The launch type that you specify here must match one of the launch type (compatibilities) of the target task. The <code>FARGATE</code> value is supported only in the Regions where AWS Fargate with Amazon ECS is supported. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html\">AWS Fargate on Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "NetworkConfiguration": {
          "shape": "NetworkConfiguration",
          "documentation": "<p>Use this structure if the ECS task uses the <code>awsvpc</code> network mode. This structure specifies the VPC subnets and security groups associated with the task, and whether a public IP address is to be used. This structure is required if <code>LaunchType</code> is <code>FARGATE</code> because the <code>awsvpc</code> mode is required for Fargate tasks.</p> <p>If you specify <code>NetworkConfiguration</code> when the target ECS task does not use the <code>awsvpc</code> network mode, the task fails.</p>"
        },
        "PlatformVersion": {
          "shape": "String",
          "documentation": "<p>Specifies the platform version for the task. Specify only the numeric portion of the platform version, such as <code>1.1.0</code>.</p> <p>This structure is used only if <code>LaunchType</code> is <code>FARGATE</code>. For more information about valid platform versions, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html\">AWS Fargate Platform Versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "Group": {
          "shape": "String",
          "documentation": "<p>Specifies an ECS task group for the task. The maximum length is 255 characters.</p>"
        }
      },
      "documentation": "<p>The custom parameters to be used when the target is an Amazon ECS task.</p>"
    },
    "EnableRuleRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "RuleName",
          "documentation": "<p>The name of the rule.</p>"
        },
        "EventBusName": {
          "shape": "EventBusName",
          "documentation": "<p>The event bus associated with the rule. If you omit this, the default event bus is used.</p>"
        }
      }
    },
    "ErrorCode": {
      "type": "string"
    },
    "ErrorMessage": {
      "type": "string"
    },
    "EventBus": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the event bus.</p>"
        },
        "Arn": {
          "shape": "String",
          "documentation": "<p>The ARN of the event bus.</p>"
        },
        "Policy": {
          "shape": "String",
          "documentation": "<p>The permissions policy of the event bus, describing which other AWS accounts can write events to this event bus.</p>"
        }
      },
      "documentation": "<p>An event bus receives events from a source and routes them to rules associated with that event bus. Your account's default event bus receives rules from AWS services. A custom event bus can receive rules from AWS services as well as your custom applications and services. A partner event bus receives events from an event source created by an SaaS partner. These events come from the partners services or applications.</p>"
    },
    "EventBusList": {
      "type": "list",
      "member": {
        "shape": "EventBus"
      }
    },
    "EventBusName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[/\\.\\-_A-Za-z0-9]+"
    },
    "EventId": {
      "type": "string"
    },
    "EventPattern": {
      "type": "string"
    },
    "EventResource": {
      "type": "string"
    },
    "EventResourceList": {
      "type": "list",
      "member": {
        "shape": "EventResource"
      }
    },
    "EventSource": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "String",
          "documentation": "<p>The ARN of the event source.</p>"
        },
        "CreatedBy": {
          "shape": "String",
          "documentation": "<p>The name of the partner that created the event source.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time the event source was created.</p>"
        },
        "ExpirationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the event source will expire, if the AWS account doesn't create a matching event bus for it.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the event source.</p>"
        },
        "State": {
          "shape": "EventSourceState",
          "documentation": "<p>The state of the event source. If it is ACTIVE, you have already created a matching event bus for this event source, and that event bus is active. If it is PENDING, either you haven't yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have created a matching event bus, but the event source has since been deleted.</p>"
        }
      },
      "documentation": "<p>A partner event source is created by an SaaS partner. If a customer creates a partner event bus that matches this event source, that AWS account can receive events from the partner's applications or services.</p>"
    },
    "EventSourceList": {
      "type": "list",
      "member": {
        "shape": "EventSource"
      }
    },
    "EventSourceName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "aws\\.partner(/[\\.\\-_A-Za-z0-9]+){2,}"
    },
    "EventSourceNamePrefix": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[/\\.\\-_A-Za-z0-9]+"
    },
    "EventSourceState": {
      "type": "string",
      "enum": [
        "PENDING",
        "ACTIVE",
        "DELETED"
      ]
    },
    "EventTime": {
      "type": "timestamp"
    },
    "HeaderKey": {
      "type": "string",
      "max": 512,
      "pattern": "^[!#$%&'*+-.^_`|~0-9a-zA-Z]+$"
    },
    "HeaderParametersMap": {
      "type": "map",
      "key": {
        "shape": "HeaderKey"
      },
      "value": {
        "shape": "HeaderValue"
      }
    },
    "HeaderValue": {
      "type": "string",
      "max": 512,
      "pattern": "^[ \\t]*[\\x20-\\x7E]+([ \\t]+[\\x20-\\x7E]+)*[ \\t]*$"
    },
    "HttpParameters": {
      "type": "structure",
      "members": {
        "PathParameterValues": {
          "shape": "PathParameterList",
          "documentation": "<p>The path parameter values to be used to populate API Gateway REST API path wildcards (\"*\").</p>"
        },
        "HeaderParameters": {
          "shape": "HeaderParametersMap",
          "documentation": "<p>The headers that need to be sent as part of request invoking the API Gateway REST API.</p>"
        },
        "QueryStringParameters": {
          "shape": "QueryStringParametersMap",
          "documentation": "<p>The query string keys/values that need to be sent as part of request invoking the API Gateway REST API.</p>"
        }
      },
      "documentation": "<p>These are custom parameter to be used when the target is an API Gateway REST APIs.</p>"
    },
    "InputTransformer": {
      "type": "structure",
      "required": [
        "InputTemplate"
      ],
      "members": {
        "InputPathsMap": {
          "shape": "TransformerPaths",
          "documentation": "<p>Map of JSON paths to be extracted from the event. You can then insert these in the template in <code>InputTemplate</code> to produce the output you want to be sent to the target.</p> <p> <code>InputPathsMap</code> is an array key-value pairs, where each value is a valid JSON path. You can have as many as 10 key-value pairs. You must use JSON dot notation, not bracket notation.</p> <p>The keys cannot start with \"AWS.\" </p>"
        },
        "InputTemplate": {
          "shape": "TransformerInput",
          "documentation": "<p>Input template where you specify placeholders that will be filled with the values of the keys from <code>InputPathsMap</code> to customize the data sent to the target. Enclose each <code>InputPathsMaps</code> value in brackets: &lt;<i>value</i>&gt; The InputTemplate must be valid JSON.</p> <p>If <code>InputTemplate</code> is a JSON object (surrounded by curly braces), the following restrictions apply:</p> <ul> <li> <p>The placeholder cannot be used as an object key.</p> </li> <li> <p>Object values cannot include quote marks.</p> </li> </ul> <p>The following example shows the syntax for using <code>InputPathsMap</code> and <code>InputTemplate</code>.</p> <p> <code> \"InputTransformer\":</code> </p> <p> <code>{</code> </p> <p> <code>\"InputPathsMap\": {\"instance\": \"$.detail.instance\",\"status\": \"$.detail.status\"},</code> </p> <p> <code>\"InputTemplate\": \"&lt;instance&gt; is in state &lt;status&gt;\"</code> </p> <p> <code>}</code> </p> <p>To have the <code>InputTemplate</code> include quote marks within a JSON string, escape each quote marks with a slash, as in the following example:</p> <p> <code> \"InputTransformer\":</code> </p> <p> <code>{</code> </p> <p> <code>\"InputPathsMap\": {\"instance\": \"$.detail.instance\",\"status\": \"$.detail.status\"},</code> </p> <p> <code>\"InputTemplate\": \"&lt;instance&gt; is in state \\\"&lt;status&gt;\\\"\"</code> </p> <p> <code>}</code> </p>"
        }
      },
      "documentation": "<p>Contains the parameters needed for you to provide custom input to a target based on one or more pieces of data extracted from the event.</p>"
    },
    "InputTransformerPathKey": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[A-Za-z0-9\\_\\-]+"
    },
    "Integer": {
      "type": "integer"
    },
    "KinesisParameters": {
      "type": "structure",
      "required": [
        "PartitionKeyPath"
      ],
      "members": {
        "PartitionKeyPath": {
          "shape": "TargetPartitionKeyPath",
          "documentation": "<p>The JSON path to be extracted from the event and used as the partition key. For more information, see <a href=\"https://docs.aws.amazon.com/streams/latest/dev/key-concepts.html#partition-key\">Amazon Kinesis Streams Key Concepts</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>This object enables you to specify a JSON path to extract from the event and use as the partition key for the Amazon Kinesis data stream, so that you can control the shard to which the event goes. If you do not include this parameter, the default is to use the <code>eventId</code> as the partition key.</p>"
    },
    "LaunchType": {
      "type": "string",
      "enum": [
        "EC2",
        "FARGATE"
      ]
    },
    "LimitMax100": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "LimitMin1": {
      "type": "integer",
      "min": 1
    },
    "ListEventBusesRequest": {
      "type": "structure",
      "members": {
        "NamePrefix": {
          "shape": "EventBusName",
          "documentation": "<p>Specifying this limits the results to only those event buses with names that start with the specified prefix.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned by a previous call to retrieve the next set of results.</p>"
        },
        "Limit": {
          "shape": "LimitMax100",
          "documentation": "<p>Specifying this limits the number of results returned by this operation. The operation also returns a NextToken which you can use in a subsequent operation to retrieve the next set of results.</p>"
        }
      }
    },
    "ListEventBusesResponse": {
      "type": "structure",
      "members": {
        "EventBuses": {
          "shape": "EventBusList",
          "documentation": "<p>This list of event buses.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token you can use in a subsequent operation to retrieve the next set of results.</p>"
        }
      }
    },
    "ListEventSourcesRequest": {
      "type": "structure",
      "members": {
        "NamePrefix": {
          "shape": "EventSourceNamePrefix",
          "documentation": "<p>Specifying this limits the results to only those partner event sources with names that start with the specified prefix.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned by a previous call to retrieve the next set of results.</p>"
        },
        "Limit": {
          "shape": "LimitMax100",
          "documentation": "<p>Specifying this limits the number of results returned by this operation. The operation also returns a NextToken which you can use in a subsequent operation to retrieve the next set of results.</p>"
        }
      }
    },
    "ListEventSourcesResponse": {
      "type": "structure",
      "members": {
        "EventSources": {
          "shape": "EventSourceList",
          "documentation": "<p>The list of event sources.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token you can use in a subsequent operation to retrieve the next set of results.</p>"
        }
      }
    },
    "ListPartnerEventSourceAccountsRequest": {
      "type": "structure",
      "required": [
        "EventSourceName"
      ],
      "members": {
        "EventSourceName": {
          "shape": "EventSourceName",
          "documentation": "<p>The name of the partner event source to display account information about.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned by a previous call to this operation. Specifying this retrieves the next set of results.</p>"
        },
        "Limit": {
          "shape": "LimitMax100",
          "documentation": "<p>Specifying this limits the number of results returned by this operation. The operation also returns a NextToken which you can use in a subsequent operation to retrieve the next set of results.</p>"
        }
      }
    },
    "ListPartnerEventSourceAccountsResponse": {
      "type": "structure",
      "members": {
        "PartnerEventSourceAccounts": {
          "shape": "PartnerEventSourceAccountList",
          "documentation": "<p>The list of partner event sources returned by the operation.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token you can use in a subsequent operation to retrieve the next set of results.</p>"
        }
      }
    },
    "ListPartnerEventSourcesRequest": {
      "type": "structure",
      "required": [
        "NamePrefix"
      ],
      "members": {
        "NamePrefix": {
          "shape": "PartnerEventSourceNamePrefix",
          "documentation": "<p>If you specify this, the results are limited to only those partner event sources that start with the string you specify.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned by a previous call to this operation. Specifying this retrieves the next set of results.</p>"
        },
        "Limit": {
          "shape": "LimitMax100",
          "documentation": "<p>pecifying this limits the number of results returned by this operation. The operation also returns a NextToken which you can use in a subsequent operation to retrieve the next set of results.</p>"
        }
      }
    },
    "ListPartnerEventSourcesResponse": {
      "type": "structure",
      "members": {
        "PartnerEventSources": {
          "shape": "PartnerEventSourceList",
          "documentation": "<p>The list of partner event sources returned by the operation.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token you can use in a subsequent operation to retrieve the next set of results.</p>"
        }
      }
    },
    "ListRuleNamesByTargetRequest": {
      "type": "structure",
      "required": [
        "TargetArn"
      ],
      "members": {
        "TargetArn": {
          "shape": "TargetArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the target resource.</p>"
        },
        "EventBusName": {
          "shape": "EventBusName",
          "documentation": "<p>Limits the results to show only the rules associated with the specified event bus.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned by a previous call to retrieve the next set of results.</p>"
        },
        "Limit": {
          "shape": "LimitMax100",
          "documentation": "<p>The maximum number of results to return.</p>"
        }
      }
    },
    "ListRuleNamesByTargetResponse": {
      "type": "structure",
      "members": {
        "RuleNames": {
          "shape": "RuleNameList",
          "documentation": "<p>The names of the rules that can invoke the given target.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Indicates whether there are additional results to retrieve. If there are no more results, the value is null.</p>"
        }
      }
    },
    "ListRulesRequest": {
      "type": "structure",
      "members": {
        "NamePrefix": {
          "shape": "RuleName",
          "documentation": "<p>The prefix matching the rule name.</p>"
        },
        "EventBusName": {
          "shape": "EventBusName",
          "documentation": "<p>Limits the results to show only the rules associated with the specified event bus.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned by a previous call to retrieve the next set of results.</p>"
        },
        "Limit": {
          "shape": "LimitMax100",
          "documentation": "<p>The maximum number of results to return.</p>"
        }
      }
    },
    "ListRulesResponse": {
      "type": "structure",
      "members": {
        "Rules": {
          "shape": "RuleResponseList",
          "documentation": "<p>The rules that match the specified criteria.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Indicates whether there are additional results to retrieve. If there are no more results, the value is null.</p>"
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
          "shape": "Arn",
          "documentation": "<p>The ARN of the EventBridge resource for which you want to view tags.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tag keys and values associated with the resource you specified</p>"
        }
      }
    },
    "ListTargetsByRuleRequest": {
      "type": "structure",
      "required": [
        "Rule"
      ],
      "members": {
        "Rule": {
          "shape": "RuleName",
          "documentation": "<p>The name of the rule.</p>"
        },
        "EventBusName": {
          "shape": "EventBusName",
          "documentation": "<p>The event bus associated with the rule. If you omit this, the default event bus is used.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned by a previous call to retrieve the next set of results.</p>"
        },
        "Limit": {
          "shape": "LimitMax100",
          "documentation": "<p>The maximum number of results to return.</p>"
        }
      }
    },
    "ListTargetsByRuleResponse": {
      "type": "structure",
      "members": {
        "Targets": {
          "shape": "TargetList",
          "documentation": "<p>The targets assigned to the rule.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Indicates whether there are additional results to retrieve. If there are no more results, the value is null.</p>"
        }
      }
    },
    "ManagedBy": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "MessageGroupId": {
      "type": "string"
    },
    "NetworkConfiguration": {
      "type": "structure",
      "members": {
        "awsvpcConfiguration": {
          "shape": "AwsVpcConfiguration",
          "documentation": "<p>Use this structure to specify the VPC subnets and security groups for the task, and whether a public IP address is to be used. This structure is relevant only for ECS tasks that use the <code>awsvpc</code> network mode.</p>"
        }
      },
      "documentation": "<p>This structure specifies the network configuration for an ECS task.</p>"
    },
    "NextToken": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "NonPartnerEventBusName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[\\.\\-_A-Za-z0-9]+"
    },
    "PartnerEventSource": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "String",
          "documentation": "<p>The ARN of the partner event source.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the partner event source.</p>"
        }
      },
      "documentation": "<p>A partner event source is created by an SaaS partner. If a customer creates a partner event bus that matches this event source, that AWS account can receive events from the partner's applications or services.</p>"
    },
    "PartnerEventSourceAccount": {
      "type": "structure",
      "members": {
        "Account": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID that the partner event source was offered to.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time the event source was created.</p>"
        },
        "ExpirationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the event source will expire, if the AWS account doesn't create a matching event bus for it.</p>"
        },
        "State": {
          "shape": "EventSourceState",
          "documentation": "<p>The state of the event source. If it is ACTIVE, you have already created a matching event bus for this event source, and that event bus is active. If it is PENDING, either you haven't yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have created a matching event bus, but the event source has since been deleted.</p>"
        }
      },
      "documentation": "<p>The AWS account that a partner event source has been offered to.</p>"
    },
    "PartnerEventSourceAccountList": {
      "type": "list",
      "member": {
        "shape": "PartnerEventSourceAccount"
      }
    },
    "PartnerEventSourceList": {
      "type": "list",
      "member": {
        "shape": "PartnerEventSource"
      }
    },
    "PartnerEventSourceNamePrefix": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "aws\\.partner/[\\.\\-_A-Za-z0-9]+/[/\\.\\-_A-Za-z0-9]*"
    },
    "PathParameter": {
      "type": "string",
      "pattern": "^(?!\\s*$).+"
    },
    "PathParameterList": {
      "type": "list",
      "member": {
        "shape": "PathParameter"
      }
    },
    "Principal": {
      "type": "string",
      "max": 12,
      "min": 1,
      "pattern": "(\\d{12}|\\*)"
    },
    "PutEventsRequest": {
      "type": "structure",
      "required": [
        "Entries"
      ],
      "members": {
        "Entries": {
          "shape": "PutEventsRequestEntryList",
          "documentation": "<p>The entry that defines an event in your system. You can specify several parameters for the entry such as the source and type of the event, resources associated with the event, and so on.</p>"
        }
      }
    },
    "PutEventsRequestEntry": {
      "type": "structure",
      "members": {
        "Time": {
          "shape": "EventTime",
          "documentation": "<p>The time stamp of the event, per <a href=\"https://www.rfc-editor.org/rfc/rfc3339.txt\">RFC3339</a>. If no time stamp is provided, the time stamp of the <a>PutEvents</a> call is used.</p>"
        },
        "Source": {
          "shape": "String",
          "documentation": "<p>The source of the event.</p>"
        },
        "Resources": {
          "shape": "EventResourceList",
          "documentation": "<p>AWS resources, identified by Amazon Resource Name (ARN), which the event primarily concerns. Any number, including zero, may be present.</p>"
        },
        "DetailType": {
          "shape": "String",
          "documentation": "<p>Free-form string used to decide what fields to expect in the event detail.</p>"
        },
        "Detail": {
          "shape": "String",
          "documentation": "<p>A valid JSON string. There is no other schema imposed. The JSON string may contain fields and nested subobjects.</p>"
        },
        "EventBusName": {
          "shape": "NonPartnerEventBusName",
          "documentation": "<p>The event bus that will receive the event. Only the rules that are associated with this event bus will be able to match the event.</p>"
        }
      },
      "documentation": "<p>Represents an event to be submitted.</p>"
    },
    "PutEventsRequestEntryList": {
      "type": "list",
      "member": {
        "shape": "PutEventsRequestEntry"
      },
      "max": 10,
      "min": 1
    },
    "PutEventsResponse": {
      "type": "structure",
      "members": {
        "FailedEntryCount": {
          "shape": "Integer",
          "documentation": "<p>The number of failed entries.</p>"
        },
        "Entries": {
          "shape": "PutEventsResultEntryList",
          "documentation": "<p>The successfully and unsuccessfully ingested events results. If the ingestion was successful, the entry has the event ID in it. Otherwise, you can use the error code and error message to identify the problem with the entry.</p>"
        }
      }
    },
    "PutEventsResultEntry": {
      "type": "structure",
      "members": {
        "EventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the event.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The error code that indicates why the event submission failed.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>The error message that explains why the event submission failed.</p>"
        }
      },
      "documentation": "<p>Represents an event that failed to be submitted.</p>"
    },
    "PutEventsResultEntryList": {
      "type": "list",
      "member": {
        "shape": "PutEventsResultEntry"
      }
    },
    "PutPartnerEventsRequest": {
      "type": "structure",
      "required": [
        "Entries"
      ],
      "members": {
        "Entries": {
          "shape": "PutPartnerEventsRequestEntryList",
          "documentation": "<p>The list of events to write to the event bus.</p>"
        }
      }
    },
    "PutPartnerEventsRequestEntry": {
      "type": "structure",
      "members": {
        "Time": {
          "shape": "EventTime",
          "documentation": "<p>The date and time of the event.</p>"
        },
        "Source": {
          "shape": "EventSourceName",
          "documentation": "<p>The event source that is generating the evntry.</p>"
        },
        "Resources": {
          "shape": "EventResourceList",
          "documentation": "<p>AWS resources, identified by Amazon Resource Name (ARN), which the event primarily concerns. Any number, including zero, may be present.</p>"
        },
        "DetailType": {
          "shape": "String",
          "documentation": "<p>A free-form string used to decide what fields to expect in the event detail.</p>"
        },
        "Detail": {
          "shape": "String",
          "documentation": "<p>A valid JSON string. There is no other schema imposed. The JSON string may contain fields and nested subobjects.</p>"
        }
      },
      "documentation": "<p>The details about an event generated by an SaaS partner.</p>"
    },
    "PutPartnerEventsRequestEntryList": {
      "type": "list",
      "member": {
        "shape": "PutPartnerEventsRequestEntry"
      },
      "max": 20,
      "min": 1
    },
    "PutPartnerEventsResponse": {
      "type": "structure",
      "members": {
        "FailedEntryCount": {
          "shape": "Integer",
          "documentation": "<p>The number of events from this operation that could not be written to the partner event bus.</p>"
        },
        "Entries": {
          "shape": "PutPartnerEventsResultEntryList",
          "documentation": "<p>The list of events from this operation that were successfully written to the partner event bus.</p>"
        }
      }
    },
    "PutPartnerEventsResultEntry": {
      "type": "structure",
      "members": {
        "EventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the event.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The error code that indicates why the event submission failed.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>The error message that explains why the event submission failed.</p>"
        }
      },
      "documentation": "<p>Represents an event that a partner tried to generate, but failed.</p>"
    },
    "PutPartnerEventsResultEntryList": {
      "type": "list",
      "member": {
        "shape": "PutPartnerEventsResultEntry"
      }
    },
    "PutPermissionRequest": {
      "type": "structure",
      "required": [
        "Action",
        "Principal",
        "StatementId"
      ],
      "members": {
        "EventBusName": {
          "shape": "NonPartnerEventBusName",
          "documentation": "<p>The event bus associated with the rule. If you omit this, the default event bus is used.</p>"
        },
        "Action": {
          "shape": "Action",
          "documentation": "<p>The action that you are enabling the other account to perform. Currently, this must be <code>events:PutEvents</code>.</p>"
        },
        "Principal": {
          "shape": "Principal",
          "documentation": "<p>The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify \"*\" to permit any account to put events to your default event bus.</p> <p>If you specify \"*\" without specifying <code>Condition</code>, avoid creating rules that may match undesirable events. To create more secure rules, make sure that the event pattern for each rule contains an <code>account</code> field with a specific account ID from which to receive events. Rules with an account field do not match any events sent from other accounts.</p>"
        },
        "StatementId": {
          "shape": "StatementId",
          "documentation": "<p>An identifier string for the external account that you are granting permissions to. If you later want to revoke the permission for this external account, specify this <code>StatementId</code> when you run <a>RemovePermission</a>.</p>"
        },
        "Condition": {
          "shape": "Condition",
          "documentation": "<p>This parameter enables you to limit the permission to accounts that fulfill a certain condition, such as being a member of a certain AWS organization. For more information about AWS Organizations, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html\">What Is AWS Organizations</a> in the <i>AWS Organizations User Guide</i>.</p> <p>If you specify <code>Condition</code> with an AWS organization ID, and specify \"*\" as the value for <code>Principal</code>, you grant permission to all the accounts in the named organization.</p> <p>The <code>Condition</code> is a JSON string which must contain <code>Type</code>, <code>Key</code>, and <code>Value</code> fields.</p>"
        }
      }
    },
    "PutRuleRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "RuleName",
          "documentation": "<p>The name of the rule that you are creating or updating.</p>"
        },
        "ScheduleExpression": {
          "shape": "ScheduleExpression",
          "documentation": "<p>The scheduling expression. For example, \"cron(0 20 * * ? *)\" or \"rate(5 minutes)\".</p>"
        },
        "EventPattern": {
          "shape": "EventPattern",
          "documentation": "<p>The event pattern. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html\">Events and Event Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>"
        },
        "State": {
          "shape": "RuleState",
          "documentation": "<p>Indicates whether the rule is enabled or disabled.</p>"
        },
        "Description": {
          "shape": "RuleDescription",
          "documentation": "<p>A description of the rule.</p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role associated with the rule.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of key-value pairs to associate with the rule.</p>"
        },
        "EventBusName": {
          "shape": "EventBusName",
          "documentation": "<p>The event bus to associate with this rule. If you omit this, the default event bus is used.</p>"
        }
      }
    },
    "PutRuleResponse": {
      "type": "structure",
      "members": {
        "RuleArn": {
          "shape": "RuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the rule.</p>"
        }
      }
    },
    "PutTargetsRequest": {
      "type": "structure",
      "required": [
        "Rule",
        "Targets"
      ],
      "members": {
        "Rule": {
          "shape": "RuleName",
          "documentation": "<p>The name of the rule.</p>"
        },
        "EventBusName": {
          "shape": "EventBusName",
          "documentation": "<p>The name of the event bus associated with the rule. If you omit this, the default event bus is used.</p>"
        },
        "Targets": {
          "shape": "TargetList",
          "documentation": "<p>The targets to update or add to the rule.</p>"
        }
      }
    },
    "PutTargetsResponse": {
      "type": "structure",
      "members": {
        "FailedEntryCount": {
          "shape": "Integer",
          "documentation": "<p>The number of failed entries.</p>"
        },
        "FailedEntries": {
          "shape": "PutTargetsResultEntryList",
          "documentation": "<p>The failed target entries.</p>"
        }
      }
    },
    "PutTargetsResultEntry": {
      "type": "structure",
      "members": {
        "TargetId": {
          "shape": "TargetId",
          "documentation": "<p>The ID of the target.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The error code that indicates why the target addition failed. If the value is <code>ConcurrentModificationException</code>, too many requests were made at the same time.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>The error message that explains why the target addition failed.</p>"
        }
      },
      "documentation": "<p>Represents a target that failed to be added to a rule.</p>"
    },
    "PutTargetsResultEntryList": {
      "type": "list",
      "member": {
        "shape": "PutTargetsResultEntry"
      }
    },
    "QueryStringKey": {
      "type": "string",
      "max": 512,
      "pattern": "[^\\x00-\\x1F\\x7F]+"
    },
    "QueryStringParametersMap": {
      "type": "map",
      "key": {
        "shape": "QueryStringKey"
      },
      "value": {
        "shape": "QueryStringValue"
      }
    },
    "QueryStringValue": {
      "type": "string",
      "max": 512,
      "pattern": "[^\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]+"
    },
    "RemovePermissionRequest": {
      "type": "structure",
      "required": [
        "StatementId"
      ],
      "members": {
        "StatementId": {
          "shape": "StatementId",
          "documentation": "<p>The statement ID corresponding to the account that is no longer allowed to put events to the default event bus.</p>"
        },
        "EventBusName": {
          "shape": "NonPartnerEventBusName",
          "documentation": "<p>The name of the event bus to revoke permissions for. If you omit this, the default event bus is used.</p>"
        }
      }
    },
    "RemoveTargetsRequest": {
      "type": "structure",
      "required": [
        "Rule",
        "Ids"
      ],
      "members": {
        "Rule": {
          "shape": "RuleName",
          "documentation": "<p>The name of the rule.</p>"
        },
        "EventBusName": {
          "shape": "EventBusName",
          "documentation": "<p>The name of the event bus associated with the rule.</p>"
        },
        "Ids": {
          "shape": "TargetIdList",
          "documentation": "<p>The IDs of the targets to remove from the rule.</p>"
        },
        "Force": {
          "shape": "Boolean",
          "documentation": "<p>If this is a managed rule, created by an AWS service on your behalf, you must specify <code>Force</code> as <code>True</code> to remove targets. This parameter is ignored for rules that are not managed rules. You can check whether a rule is a managed rule by using <code>DescribeRule</code> or <code>ListRules</code> and checking the <code>ManagedBy</code> field of the response.</p>"
        }
      }
    },
    "RemoveTargetsResponse": {
      "type": "structure",
      "members": {
        "FailedEntryCount": {
          "shape": "Integer",
          "documentation": "<p>The number of failed entries.</p>"
        },
        "FailedEntries": {
          "shape": "RemoveTargetsResultEntryList",
          "documentation": "<p>The failed target entries.</p>"
        }
      }
    },
    "RemoveTargetsResultEntry": {
      "type": "structure",
      "members": {
        "TargetId": {
          "shape": "TargetId",
          "documentation": "<p>The ID of the target.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The error code that indicates why the target removal failed. If the value is <code>ConcurrentModificationException</code>, too many requests were made at the same time.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>The error message that explains why the target removal failed.</p>"
        }
      },
      "documentation": "<p>Represents a target that failed to be removed from a rule.</p>"
    },
    "RemoveTargetsResultEntryList": {
      "type": "list",
      "member": {
        "shape": "RemoveTargetsResultEntry"
      }
    },
    "RoleArn": {
      "type": "string",
      "max": 1600,
      "min": 1
    },
    "Rule": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "RuleName",
          "documentation": "<p>The name of the rule.</p>"
        },
        "Arn": {
          "shape": "RuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the rule.</p>"
        },
        "EventPattern": {
          "shape": "EventPattern",
          "documentation": "<p>The event pattern of the rule. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html\">Events and Event Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>"
        },
        "State": {
          "shape": "RuleState",
          "documentation": "<p>The state of the rule.</p>"
        },
        "Description": {
          "shape": "RuleDescription",
          "documentation": "<p>The description of the rule.</p>"
        },
        "ScheduleExpression": {
          "shape": "ScheduleExpression",
          "documentation": "<p>The scheduling expression. For example, \"cron(0 20 * * ? *)\", \"rate(5 minutes)\".</p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the role that is used for target invocation.</p>"
        },
        "ManagedBy": {
          "shape": "ManagedBy",
          "documentation": "<p>If the rule was created on behalf of your account by an AWS service, this field displays the principal name of the service that created the rule.</p>"
        },
        "EventBusName": {
          "shape": "EventBusName",
          "documentation": "<p>The event bus associated with the rule.</p>"
        }
      },
      "documentation": "<p>Contains information about a rule in Amazon EventBridge.</p>"
    },
    "RuleArn": {
      "type": "string",
      "max": 1600,
      "min": 1
    },
    "RuleDescription": {
      "type": "string",
      "max": 512
    },
    "RuleName": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[\\.\\-_A-Za-z0-9]+"
    },
    "RuleNameList": {
      "type": "list",
      "member": {
        "shape": "RuleName"
      }
    },
    "RuleResponseList": {
      "type": "list",
      "member": {
        "shape": "Rule"
      }
    },
    "RuleState": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "RunCommandParameters": {
      "type": "structure",
      "required": [
        "RunCommandTargets"
      ],
      "members": {
        "RunCommandTargets": {
          "shape": "RunCommandTargets",
          "documentation": "<p>Currently, we support including only one RunCommandTarget block, which specifies either an array of InstanceIds or a tag.</p>"
        }
      },
      "documentation": "<p>This parameter contains the criteria (either InstanceIds or a tag) used to specify which EC2 instances are to be sent the command. </p>"
    },
    "RunCommandTarget": {
      "type": "structure",
      "required": [
        "Key",
        "Values"
      ],
      "members": {
        "Key": {
          "shape": "RunCommandTargetKey",
          "documentation": "<p>Can be either <code>tag:</code> <i>tag-key</i> or <code>InstanceIds</code>.</p>"
        },
        "Values": {
          "shape": "RunCommandTargetValues",
          "documentation": "<p>If <code>Key</code> is <code>tag:</code> <i>tag-key</i>, <code>Values</code> is a list of tag values. If <code>Key</code> is <code>InstanceIds</code>, <code>Values</code> is a list of Amazon EC2 instance IDs.</p>"
        }
      },
      "documentation": "<p>Information about the EC2 instances that are to be sent the command, specified as key-value pairs. Each <code>RunCommandTarget</code> block can include only one key, but this key may specify multiple values.</p>"
    },
    "RunCommandTargetKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"
    },
    "RunCommandTargetValue": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "RunCommandTargetValues": {
      "type": "list",
      "member": {
        "shape": "RunCommandTargetValue"
      },
      "max": 50,
      "min": 1
    },
    "RunCommandTargets": {
      "type": "list",
      "member": {
        "shape": "RunCommandTarget"
      },
      "max": 5,
      "min": 1
    },
    "ScheduleExpression": {
      "type": "string",
      "max": 256
    },
    "SqsParameters": {
      "type": "structure",
      "members": {
        "MessageGroupId": {
          "shape": "MessageGroupId",
          "documentation": "<p>The FIFO message group ID to use as the target.</p>"
        }
      },
      "documentation": "<p>This structure includes the custom parameter to be used when the target is an SQS FIFO queue.</p>"
    },
    "StatementId": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[a-zA-Z0-9-_]+"
    },
    "String": {
      "type": "string"
    },
    "StringList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
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
          "documentation": "<p>A string you can use to assign a value. The combination of tag keys and values can help you organize and categorize your resources.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value for the specified tag key.</p>"
        }
      },
      "documentation": "<p>A key-value pair associated with an AWS resource. In EventBridge, rules and event buses support tagging.</p>"
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
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "Tags"
      ],
      "members": {
        "ResourceARN": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the EventBridge resource that you're adding tags to.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of key-value pairs to associate with the resource.</p>"
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
    "Target": {
      "type": "structure",
      "required": [
        "Id",
        "Arn"
      ],
      "members": {
        "Id": {
          "shape": "TargetId",
          "documentation": "<p>The ID of the target.</p>"
        },
        "Arn": {
          "shape": "TargetArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the target.</p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. If one rule triggers multiple targets, you can use a different IAM role for each target.</p>"
        },
        "Input": {
          "shape": "TargetInput",
          "documentation": "<p>Valid JSON text passed to the target. In this case, nothing from the event itself is passed to the target. For more information, see <a href=\"http://www.rfc-editor.org/rfc/rfc7159.txt\">The JavaScript Object Notation (JSON) Data Interchange Format</a>.</p>"
        },
        "InputPath": {
          "shape": "TargetInputPath",
          "documentation": "<p>The value of the JSONPath that is used for extracting part of the matched event when passing it to the target. You must use JSON dot notation, not bracket notation. For more information about JSON paths, see <a href=\"http://goessner.net/articles/JsonPath/\">JSONPath</a>.</p>"
        },
        "InputTransformer": {
          "shape": "InputTransformer",
          "documentation": "<p>Settings to enable you to provide custom input to a target based on certain event data. You can extract one or more key-value pairs from the event and then use that data to send customized input to the target.</p>"
        },
        "KinesisParameters": {
          "shape": "KinesisParameters",
          "documentation": "<p>The custom parameter you can use to control the shard assignment, when the target is a Kinesis data stream. If you do not include this parameter, the default is to use the <code>eventId</code> as the partition key.</p>"
        },
        "RunCommandParameters": {
          "shape": "RunCommandParameters",
          "documentation": "<p>Parameters used when you are using the rule to invoke Amazon EC2 Run Command.</p>"
        },
        "EcsParameters": {
          "shape": "EcsParameters",
          "documentation": "<p>Contains the Amazon ECS task definition and task count to be used, if the event target is an Amazon ECS task. For more information about Amazon ECS tasks, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html\">Task Definitions </a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>"
        },
        "BatchParameters": {
          "shape": "BatchParameters",
          "documentation": "<p>If the event target is an AWS Batch job, this contains the job definition, job name, and other parameters. For more information, see <a href=\"https://docs.aws.amazon.com/batch/latest/userguide/jobs.html\">Jobs</a> in the <i>AWS Batch User Guide</i>.</p>"
        },
        "SqsParameters": {
          "shape": "SqsParameters",
          "documentation": "<p>Contains the message group ID to use when the target is a FIFO queue.</p> <p>If you specify an SQS FIFO queue as a target, the queue must have content-based deduplication enabled.</p>"
        },
        "HttpParameters": {
          "shape": "HttpParameters",
          "documentation": "<p>Contains the HTTP parameters to use when the target is a API Gateway REST endpoint.</p> <p>If you specify an API Gateway REST API as a target, you can use this parameter to specify headers, path parameter, query string keys/values as part of your target invoking request.</p>"
        }
      },
      "documentation": "<p>Targets are the resources to be invoked when a rule is triggered. For a complete list of services and resources that can be set as a target, see <a>PutTargets</a>.</p> <p>If you are setting the event bus of another account as the target, and that account granted permission to your account through an organization instead of directly by the account ID, then you must specify a <code>RoleArn</code> with proper permissions in the <code>Target</code> structure. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html\">Sending and Receiving Events Between AWS Accounts</a> in the <i>Amazon EventBridge User Guide</i>.</p>"
    },
    "TargetArn": {
      "type": "string",
      "max": 1600,
      "min": 1
    },
    "TargetId": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[\\.\\-_A-Za-z0-9]+"
    },
    "TargetIdList": {
      "type": "list",
      "member": {
        "shape": "TargetId"
      },
      "max": 100,
      "min": 1
    },
    "TargetInput": {
      "type": "string",
      "max": 8192
    },
    "TargetInputPath": {
      "type": "string",
      "max": 256
    },
    "TargetList": {
      "type": "list",
      "member": {
        "shape": "Target"
      },
      "max": 100,
      "min": 1
    },
    "TargetPartitionKeyPath": {
      "type": "string",
      "max": 256
    },
    "TestEventPatternRequest": {
      "type": "structure",
      "required": [
        "EventPattern",
        "Event"
      ],
      "members": {
        "EventPattern": {
          "shape": "EventPattern",
          "documentation": "<p>The event pattern. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html\">Events and Event Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>"
        },
        "Event": {
          "shape": "String",
          "documentation": "<p>The event, in JSON format, to test against the event pattern.</p>"
        }
      }
    },
    "TestEventPatternResponse": {
      "type": "structure",
      "members": {
        "Result": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the event matches the event pattern.</p>"
        }
      }
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "TransformerInput": {
      "type": "string",
      "max": 8192,
      "min": 1
    },
    "TransformerPaths": {
      "type": "map",
      "key": {
        "shape": "InputTransformerPathKey"
      },
      "value": {
        "shape": "TargetInputPath"
      },
      "max": 10
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "TagKeys"
      ],
      "members": {
        "ResourceARN": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the EventBridge resource from which you are removing tags.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The list of tag keys to remove from the resource.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    }
  },
  "documentation": "<p>Amazon EventBridge helps you to respond to state changes in your AWS resources. When your resources change state, they automatically send events into an event stream. You can create rules that match selected events in the stream and route them to targets to take action. You can also use rules to take action on a predetermined schedule. For example, you can configure rules to:</p> <ul> <li> <p>Automatically invoke an AWS Lambda function to update DNS entries when an event notifies you that Amazon EC2 instance enters the running state.</p> </li> <li> <p>Direct specific API records from AWS CloudTrail to an Amazon Kinesis data stream for detailed analysis of potential security or availability risks.</p> </li> <li> <p>Periodically invoke a built-in target to create a snapshot of an Amazon EBS volume.</p> </li> </ul> <p>For more information about the features of Amazon EventBridge, see the <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide\">Amazon EventBridge User Guide</a>.</p>"
}
]===]))
