local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2016-06-02",
    "endpointPrefix": "shield",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "AWS Shield",
    "serviceFullName": "AWS Shield",
    "serviceId": "Shield",
    "signatureVersion": "v4",
    "targetPrefix": "AWSShield_20160616",
    "uid": "shield-2016-06-02"
  },
  "operations": {
    "AssociateDRTLogBucket": {
      "name": "AssociateDRTLogBucket",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateDRTLogBucketRequest"
      },
      "output": {
        "shape": "AssociateDRTLogBucketResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "NoAssociatedRoleException"
        },
        {
          "shape": "LimitsExceededException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "AccessDeniedForDependencyException"
        },
        {
          "shape": "OptimisticLockException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Authorizes the DDoS Response Team (DRT) to access the specified Amazon S3 bucket containing your AWS WAF logs. You can associate up to 10 Amazon S3 buckets with your subscription.</p> <p>To use the services of the DRT and make an <code>AssociateDRTLogBucket</code> request, you must be subscribed to the <a href=\"https://aws.amazon.com/premiumsupport/business-support/\">Business Support plan</a> or the <a href=\"https://aws.amazon.com/premiumsupport/enterprise-support/\">Enterprise Support plan</a>.</p>"
    },
    "AssociateDRTRole": {
      "name": "AssociateDRTRole",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateDRTRoleRequest"
      },
      "output": {
        "shape": "AssociateDRTRoleResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "AccessDeniedForDependencyException"
        },
        {
          "shape": "OptimisticLockException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Authorizes the DDoS Response Team (DRT), using the specified role, to access your AWS account to assist with DDoS attack mitigation during potential attacks. This enables the DRT to inspect your AWS WAF configuration and create or update AWS WAF rules and web ACLs.</p> <p>You can associate only one <code>RoleArn</code> with your subscription. If you submit an <code>AssociateDRTRole</code> request for an account that already has an associated role, the new <code>RoleArn</code> will replace the existing <code>RoleArn</code>. </p> <p>Prior to making the <code>AssociateDRTRole</code> request, you must attach the <a href=\"https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy\">AWSShieldDRTAccessPolicy</a> managed policy to the role you will specify in the request. For more information see <a href=\" https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html\">Attaching and Detaching IAM Policies</a>. The role must also trust the service principal <code> drt.shield.amazonaws.com</code>. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html\">IAM JSON Policy Elements: Principal</a>.</p> <p>The DRT will have access only to your AWS WAF and Shield resources. By submitting this request, you authorize the DRT to inspect your AWS WAF and Shield configuration and create and update AWS WAF rules and web ACLs on your behalf. The DRT takes these actions only if explicitly authorized by you.</p> <p>You must have the <code>iam:PassRole</code> permission to make an <code>AssociateDRTRole</code> request. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html\">Granting a User Permissions to Pass a Role to an AWS Service</a>. </p> <p>To use the services of the DRT and make an <code>AssociateDRTRole</code> request, you must be subscribed to the <a href=\"https://aws.amazon.com/premiumsupport/business-support/\">Business Support plan</a> or the <a href=\"https://aws.amazon.com/premiumsupport/enterprise-support/\">Enterprise Support plan</a>.</p>"
    },
    "AssociateHealthCheck": {
      "name": "AssociateHealthCheck",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateHealthCheckRequest"
      },
      "output": {
        "shape": "AssociateHealthCheckResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "LimitsExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OptimisticLockException"
        }
      ],
      "documentation": "<p>Adds health-based detection to the Shield Advanced protection for a resource. Shield Advanced health-based detection uses the health of your AWS resource to improve responsiveness and accuracy in attack detection and mitigation. </p> <p>You define the health check in Route 53 and then associate it with your Shield Advanced protection. For more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option\">Shield Advanced Health-Based Detection</a> in the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/\">AWS WAF and AWS Shield Developer Guide</a>. </p>"
    },
    "AssociateProactiveEngagementDetails": {
      "name": "AssociateProactiveEngagementDetails",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateProactiveEngagementDetailsRequest"
      },
      "output": {
        "shape": "AssociateProactiveEngagementDetailsResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "OptimisticLockException"
        }
      ],
      "documentation": "<p>Initializes proactive engagement and sets the list of contacts for the DDoS Response Team (DRT) to use. You must provide at least one phone number in the emergency contact list. </p> <p>After you have initialized proactive engagement using this call, to disable or enable proactive engagement, use the calls <code>DisableProactiveEngagement</code> and <code>EnableProactiveEngagement</code>. </p> <note> <p>This call defines the list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you for escalations to the DRT and to initiate proactive customer support.</p> <p>The contacts that you provide in the request replace any contacts that were already defined. If you already have contacts defined and want to use them, retrieve the list using <code>DescribeEmergencyContactSettings</code> and then provide it to this call. </p> </note>"
    },
    "CreateProtection": {
      "name": "CreateProtection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateProtectionRequest"
      },
      "output": {
        "shape": "CreateProtectionResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidResourceException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "LimitsExceededException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "OptimisticLockException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Enables AWS Shield Advanced for a specific AWS resource. The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, AWS Global Accelerator accelerator, Elastic IP Address, or an Amazon Route 53 hosted zone.</p> <p>You can add protection to only a single resource with each CreateProtection request. If you want to add protection to multiple resources at once, use the <a href=\"https://console.aws.amazon.com/waf/\">AWS WAF console</a>. For more information see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html\">Getting Started with AWS Shield Advanced</a> and <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/configure-new-protection.html\">Add AWS Shield Advanced Protection to more AWS Resources</a>.</p>"
    },
    "CreateSubscription": {
      "name": "CreateSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateSubscriptionRequest"
      },
      "output": {
        "shape": "CreateSubscriptionResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        }
      ],
      "documentation": "<p>Activates AWS Shield Advanced for an account.</p> <p>When you initally create a subscription, your subscription is set to be automatically renewed at the end of the existing subscription period. You can change this by submitting an <code>UpdateSubscription</code> request. </p>"
    },
    "DeleteProtection": {
      "name": "DeleteProtection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteProtectionRequest"
      },
      "output": {
        "shape": "DeleteProtectionResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "OptimisticLockException"
        }
      ],
      "documentation": "<p>Deletes an AWS Shield Advanced <a>Protection</a>.</p>"
    },
    "DeleteSubscription": {
      "name": "DeleteSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSubscriptionRequest"
      },
      "output": {
        "shape": "DeleteSubscriptionResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "LockedSubscriptionException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Removes AWS Shield Advanced from an account. AWS Shield Advanced requires a 1-year subscription commitment. You cannot delete a subscription prior to the completion of that commitment. </p>",
      "deprecated": true
    },
    "DescribeAttack": {
      "name": "DescribeAttack",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAttackRequest"
      },
      "output": {
        "shape": "DescribeAttackResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Describes the details of a DDoS attack. </p>"
    },
    "DescribeDRTAccess": {
      "name": "DescribeDRTAccess",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDRTAccessRequest"
      },
      "output": {
        "shape": "DescribeDRTAccessResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns the current role and list of Amazon S3 log buckets used by the DDoS Response Team (DRT) to access your AWS account while assisting with attack mitigation.</p>"
    },
    "DescribeEmergencyContactSettings": {
      "name": "DescribeEmergencyContactSettings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEmergencyContactSettingsRequest"
      },
      "output": {
        "shape": "DescribeEmergencyContactSettingsResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>A list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you if you have proactive engagement enabled, for escalations to the DRT and to initiate proactive customer support.</p>"
    },
    "DescribeProtection": {
      "name": "DescribeProtection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeProtectionRequest"
      },
      "output": {
        "shape": "DescribeProtectionResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Lists the details of a <a>Protection</a> object.</p>"
    },
    "DescribeSubscription": {
      "name": "DescribeSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeSubscriptionRequest"
      },
      "output": {
        "shape": "DescribeSubscriptionResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Provides details about the AWS Shield Advanced subscription for an account.</p>"
    },
    "DisableProactiveEngagement": {
      "name": "DisableProactiveEngagement",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisableProactiveEngagementRequest"
      },
      "output": {
        "shape": "DisableProactiveEngagementResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "OptimisticLockException"
        }
      ],
      "documentation": "<p>Removes authorization from the DDoS Response Team (DRT) to notify contacts about escalations to the DRT and to initiate proactive customer support.</p>"
    },
    "DisassociateDRTLogBucket": {
      "name": "DisassociateDRTLogBucket",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateDRTLogBucketRequest"
      },
      "output": {
        "shape": "DisassociateDRTLogBucketResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "NoAssociatedRoleException"
        },
        {
          "shape": "AccessDeniedForDependencyException"
        },
        {
          "shape": "OptimisticLockException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Removes the DDoS Response Team's (DRT) access to the specified Amazon S3 bucket containing your AWS WAF logs.</p> <p>To make a <code>DisassociateDRTLogBucket</code> request, you must be subscribed to the <a href=\"https://aws.amazon.com/premiumsupport/business-support/\">Business Support plan</a> or the <a href=\"https://aws.amazon.com/premiumsupport/enterprise-support/\">Enterprise Support plan</a>. However, if you are not subscribed to one of these support plans, but had been previously and had granted the DRT access to your account, you can submit a <code>DisassociateDRTLogBucket</code> request to remove this access.</p>"
    },
    "DisassociateDRTRole": {
      "name": "DisassociateDRTRole",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateDRTRoleRequest"
      },
      "output": {
        "shape": "DisassociateDRTRoleResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "OptimisticLockException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Removes the DDoS Response Team's (DRT) access to your AWS account.</p> <p>To make a <code>DisassociateDRTRole</code> request, you must be subscribed to the <a href=\"https://aws.amazon.com/premiumsupport/business-support/\">Business Support plan</a> or the <a href=\"https://aws.amazon.com/premiumsupport/enterprise-support/\">Enterprise Support plan</a>. However, if you are not subscribed to one of these support plans, but had been previously and had granted the DRT access to your account, you can submit a <code>DisassociateDRTRole</code> request to remove this access.</p>"
    },
    "DisassociateHealthCheck": {
      "name": "DisassociateHealthCheck",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateHealthCheckRequest"
      },
      "output": {
        "shape": "DisassociateHealthCheckResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "OptimisticLockException"
        }
      ],
      "documentation": "<p>Removes health-based detection from the Shield Advanced protection for a resource. Shield Advanced health-based detection uses the health of your AWS resource to improve responsiveness and accuracy in attack detection and mitigation. </p> <p>You define the health check in Route 53 and then associate or disassociate it with your Shield Advanced protection. For more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option\">Shield Advanced Health-Based Detection</a> in the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/\">AWS WAF and AWS Shield Developer Guide</a>. </p>"
    },
    "EnableProactiveEngagement": {
      "name": "EnableProactiveEngagement",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EnableProactiveEngagementRequest"
      },
      "output": {
        "shape": "EnableProactiveEngagementResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "OptimisticLockException"
        }
      ],
      "documentation": "<p>Authorizes the DDoS Response Team (DRT) to use email and phone to notify contacts about escalations to the DRT and to initiate proactive customer support.</p>"
    },
    "GetSubscriptionState": {
      "name": "GetSubscriptionState",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSubscriptionStateRequest"
      },
      "output": {
        "shape": "GetSubscriptionStateResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Returns the <code>SubscriptionState</code>, either <code>Active</code> or <code>Inactive</code>.</p>"
    },
    "ListAttacks": {
      "name": "ListAttacks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAttacksRequest"
      },
      "output": {
        "shape": "ListAttacksResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidOperationException"
        }
      ],
      "documentation": "<p>Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.</p>"
    },
    "ListProtections": {
      "name": "ListProtections",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListProtectionsRequest"
      },
      "output": {
        "shape": "ListProtectionsResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidPaginationTokenException"
        }
      ],
      "documentation": "<p>Lists all <a>Protection</a> objects for the account.</p>"
    },
    "UpdateEmergencyContactSettings": {
      "name": "UpdateEmergencyContactSettings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateEmergencyContactSettingsRequest"
      },
      "output": {
        "shape": "UpdateEmergencyContactSettingsResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OptimisticLockException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Updates the details of the list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you if you have proactive engagement enabled, for escalations to the DRT and to initiate proactive customer support.</p>"
    },
    "UpdateSubscription": {
      "name": "UpdateSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateSubscriptionRequest"
      },
      "output": {
        "shape": "UpdateSubscriptionResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "LockedSubscriptionException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OptimisticLockException"
        }
      ],
      "documentation": "<p>Updates the details of an existing subscription. Only enter values for parameters you want to change. Empty parameters are not updated.</p>"
    }
  },
  "shapes": {
    "AssociateDRTLogBucketRequest": {
      "type": "structure",
      "required": [
        "LogBucket"
      ],
      "members": {
        "LogBucket": {
          "shape": "LogBucket",
          "documentation": "<p>The Amazon S3 bucket that contains your AWS WAF logs.</p>"
        }
      }
    },
    "AssociateDRTLogBucketResponse": {
      "type": "structure",
      "members": {}
    },
    "AssociateDRTRoleRequest": {
      "type": "structure",
      "required": [
        "RoleArn"
      ],
      "members": {
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the role the DRT will use to access your AWS account.</p> <p>Prior to making the <code>AssociateDRTRole</code> request, you must attach the <a href=\"https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy\">AWSShieldDRTAccessPolicy</a> managed policy to this role. For more information see <a href=\" https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html\">Attaching and Detaching IAM Policies</a>.</p>"
        }
      }
    },
    "AssociateDRTRoleResponse": {
      "type": "structure",
      "members": {}
    },
    "AssociateHealthCheckRequest": {
      "type": "structure",
      "required": [
        "ProtectionId",
        "HealthCheckArn"
      ],
      "members": {
        "ProtectionId": {
          "shape": "ProtectionId",
          "documentation": "<p>The unique identifier (ID) for the <a>Protection</a> object to add the health check association to. </p>"
        },
        "HealthCheckArn": {
          "shape": "HealthCheckArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the health check to associate with the protection.</p>"
        }
      }
    },
    "AssociateHealthCheckResponse": {
      "type": "structure",
      "members": {}
    },
    "AssociateProactiveEngagementDetailsRequest": {
      "type": "structure",
      "required": [
        "EmergencyContactList"
      ],
      "members": {
        "EmergencyContactList": {
          "shape": "EmergencyContactList",
          "documentation": "<p>A list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you for escalations to the DRT and to initiate proactive customer support. </p> <p>To enable proactive engagement, the contact list must include at least one phone number.</p> <note> <p>The contacts that you provide here replace any contacts that were already defined. If you already have contacts defined and want to use them, retrieve the list using <code>DescribeEmergencyContactSettings</code> and then provide it here. </p> </note>"
        }
      }
    },
    "AssociateProactiveEngagementDetailsResponse": {
      "type": "structure",
      "members": {}
    },
    "AttackDetail": {
      "type": "structure",
      "members": {
        "AttackId": {
          "shape": "AttackId",
          "documentation": "<p>The unique identifier (ID) of the attack.</p>"
        },
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The ARN (Amazon Resource Name) of the resource that was attacked.</p>"
        },
        "SubResources": {
          "shape": "SubResourceSummaryList",
          "documentation": "<p>If applicable, additional detail about the resource being attacked, for example, IP address or URL.</p>"
        },
        "StartTime": {
          "shape": "AttackTimestamp",
          "documentation": "<p>The time the attack started, in Unix time in seconds. For more information see <a href=\"http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types\">timestamp</a>.</p>"
        },
        "EndTime": {
          "shape": "AttackTimestamp",
          "documentation": "<p>The time the attack ended, in Unix time in seconds. For more information see <a href=\"http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types\">timestamp</a>.</p>"
        },
        "AttackCounters": {
          "shape": "SummarizedCounterList",
          "documentation": "<p>List of counters that describe the attack for the specified time period.</p>"
        },
        "AttackProperties": {
          "shape": "AttackProperties",
          "documentation": "<p>The array of <a>AttackProperty</a> objects.</p>"
        },
        "Mitigations": {
          "shape": "MitigationList",
          "documentation": "<p>List of mitigation actions taken for the attack.</p>"
        }
      },
      "documentation": "<p>The details of a DDoS attack.</p>"
    },
    "AttackId": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9\\\\-]*"
    },
    "AttackLayer": {
      "type": "string",
      "enum": [
        "NETWORK",
        "APPLICATION"
      ]
    },
    "AttackProperties": {
      "type": "list",
      "member": {
        "shape": "AttackProperty"
      }
    },
    "AttackProperty": {
      "type": "structure",
      "members": {
        "AttackLayer": {
          "shape": "AttackLayer",
          "documentation": "<p>The type of distributed denial of service (DDoS) event that was observed. <code>NETWORK</code> indicates layer 3 and layer 4 events and <code>APPLICATION</code> indicates layer 7 events.</p>"
        },
        "AttackPropertyIdentifier": {
          "shape": "AttackPropertyIdentifier",
          "documentation": "<p>Defines the DDoS attack property information that is provided. The <code>WORDPRESS_PINGBACK_REFLECTOR</code> and <code>WORDPRESS_PINGBACK_SOURCE</code> values are valid only for WordPress reflective pingback DDoS attacks.</p>"
        },
        "TopContributors": {
          "shape": "TopContributors",
          "documentation": "<p>The array of <a>Contributor</a> objects that includes the top five contributors to an attack. </p>"
        },
        "Unit": {
          "shape": "Unit",
          "documentation": "<p>The unit of the <code>Value</code> of the contributions.</p>"
        },
        "Total": {
          "shape": "Long",
          "documentation": "<p>The total contributions made to this attack by all contributors, not just the five listed in the <code>TopContributors</code> list.</p>"
        }
      },
      "documentation": "<p>Details of the described attack.</p>"
    },
    "AttackPropertyIdentifier": {
      "type": "string",
      "enum": [
        "DESTINATION_URL",
        "REFERRER",
        "SOURCE_ASN",
        "SOURCE_COUNTRY",
        "SOURCE_IP_ADDRESS",
        "SOURCE_USER_AGENT",
        "WORDPRESS_PINGBACK_REFLECTOR",
        "WORDPRESS_PINGBACK_SOURCE"
      ]
    },
    "AttackSummaries": {
      "type": "list",
      "member": {
        "shape": "AttackSummary"
      }
    },
    "AttackSummary": {
      "type": "structure",
      "members": {
        "AttackId": {
          "shape": "String",
          "documentation": "<p>The unique identifier (ID) of the attack.</p>"
        },
        "ResourceArn": {
          "shape": "String",
          "documentation": "<p>The ARN (Amazon Resource Name) of the resource that was attacked.</p>"
        },
        "StartTime": {
          "shape": "AttackTimestamp",
          "documentation": "<p>The start time of the attack, in Unix time in seconds. For more information see <a href=\"http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types\">timestamp</a>.</p>"
        },
        "EndTime": {
          "shape": "AttackTimestamp",
          "documentation": "<p>The end time of the attack, in Unix time in seconds. For more information see <a href=\"http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types\">timestamp</a>.</p>"
        },
        "AttackVectors": {
          "shape": "AttackVectorDescriptionList",
          "documentation": "<p>The list of attacks for a specified time period.</p>"
        }
      },
      "documentation": "<p>Summarizes all DDoS attacks for a specified time period.</p>"
    },
    "AttackTimestamp": {
      "type": "timestamp"
    },
    "AttackVectorDescription": {
      "type": "structure",
      "required": [
        "VectorType"
      ],
      "members": {
        "VectorType": {
          "shape": "String",
          "documentation": "<p>The attack type. Valid values:</p> <ul> <li> <p>UDP_TRAFFIC</p> </li> <li> <p>UDP_FRAGMENT</p> </li> <li> <p>GENERIC_UDP_REFLECTION</p> </li> <li> <p>DNS_REFLECTION</p> </li> <li> <p>NTP_REFLECTION</p> </li> <li> <p>CHARGEN_REFLECTION</p> </li> <li> <p>SSDP_REFLECTION</p> </li> <li> <p>PORT_MAPPER</p> </li> <li> <p>RIP_REFLECTION</p> </li> <li> <p>SNMP_REFLECTION</p> </li> <li> <p>MSSQL_REFLECTION</p> </li> <li> <p>NET_BIOS_REFLECTION</p> </li> <li> <p>SYN_FLOOD</p> </li> <li> <p>ACK_FLOOD</p> </li> <li> <p>REQUEST_FLOOD</p> </li> <li> <p>HTTP_REFLECTION</p> </li> <li> <p>UDS_REFLECTION</p> </li> <li> <p>MEMCACHED_REFLECTION</p> </li> </ul>"
        }
      },
      "documentation": "<p>Describes the attack.</p>"
    },
    "AttackVectorDescriptionList": {
      "type": "list",
      "member": {
        "shape": "AttackVectorDescription"
      }
    },
    "AutoRenew": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "ContactNotes": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "^[\\w\\s\\.\\-,:/()+@]*$"
    },
    "Contributor": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the contributor. This is dependent on the <code>AttackPropertyIdentifier</code>. For example, if the <code>AttackPropertyIdentifier</code> is <code>SOURCE_COUNTRY</code>, the <code>Name</code> could be <code>United States</code>.</p>"
        },
        "Value": {
          "shape": "Long",
          "documentation": "<p>The contribution of this contributor expressed in <a>Protection</a> units. For example <code>10,000</code>.</p>"
        }
      },
      "documentation": "<p>A contributor to the attack and their contribution.</p>"
    },
    "CreateProtectionRequest": {
      "type": "structure",
      "required": [
        "Name",
        "ResourceArn"
      ],
      "members": {
        "Name": {
          "shape": "ProtectionName",
          "documentation": "<p>Friendly name for the <code>Protection</code> you are creating.</p>"
        },
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The ARN (Amazon Resource Name) of the resource to be protected.</p> <p>The ARN should be in one of the following formats:</p> <ul> <li> <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i> </code> </p> </li> <li> <p>For an Elastic Load Balancer (Classic Load Balancer): <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/<i>load-balancer-name</i> </code> </p> </li> <li> <p>For an AWS CloudFront distribution: <code>arn:aws:cloudfront::<i>account-id</i>:distribution/<i>distribution-id</i> </code> </p> </li> <li> <p>For an AWS Global Accelerator accelerator: <code>arn:aws:globalaccelerator::<i>account-id</i>:accelerator/<i>accelerator-id</i> </code> </p> </li> <li> <p>For Amazon Route 53: <code>arn:aws:route53:::hostedzone/<i>hosted-zone-id</i> </code> </p> </li> <li> <p>For an Elastic IP address: <code>arn:aws:ec2:<i>region</i>:<i>account-id</i>:eip-allocation/<i>allocation-id</i> </code> </p> </li> </ul>"
        }
      }
    },
    "CreateProtectionResponse": {
      "type": "structure",
      "members": {
        "ProtectionId": {
          "shape": "ProtectionId",
          "documentation": "<p>The unique identifier (ID) for the <a>Protection</a> object that is created.</p>"
        }
      }
    },
    "CreateSubscriptionRequest": {
      "type": "structure",
      "members": {}
    },
    "CreateSubscriptionResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteProtectionRequest": {
      "type": "structure",
      "required": [
        "ProtectionId"
      ],
      "members": {
        "ProtectionId": {
          "shape": "ProtectionId",
          "documentation": "<p>The unique identifier (ID) for the <a>Protection</a> object to be deleted.</p>"
        }
      }
    },
    "DeleteProtectionResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteSubscriptionRequest": {
      "type": "structure",
      "members": {},
      "deprecated": true
    },
    "DeleteSubscriptionResponse": {
      "type": "structure",
      "members": {},
      "deprecated": true
    },
    "DescribeAttackRequest": {
      "type": "structure",
      "required": [
        "AttackId"
      ],
      "members": {
        "AttackId": {
          "shape": "AttackId",
          "documentation": "<p>The unique identifier (ID) for the attack that to be described.</p>"
        }
      }
    },
    "DescribeAttackResponse": {
      "type": "structure",
      "members": {
        "Attack": {
          "shape": "AttackDetail",
          "documentation": "<p>The attack that is described.</p>"
        }
      }
    },
    "DescribeDRTAccessRequest": {
      "type": "structure",
      "members": {}
    },
    "DescribeDRTAccessResponse": {
      "type": "structure",
      "members": {
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the role the DRT used to access your AWS account.</p>"
        },
        "LogBucketList": {
          "shape": "LogBucketList",
          "documentation": "<p>The list of Amazon S3 buckets accessed by the DRT.</p>"
        }
      }
    },
    "DescribeEmergencyContactSettingsRequest": {
      "type": "structure",
      "members": {}
    },
    "DescribeEmergencyContactSettingsResponse": {
      "type": "structure",
      "members": {
        "EmergencyContactList": {
          "shape": "EmergencyContactList",
          "documentation": "<p>A list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you if you have proactive engagement enabled, for escalations to the DRT and to initiate proactive customer support.</p>"
        }
      }
    },
    "DescribeProtectionRequest": {
      "type": "structure",
      "members": {
        "ProtectionId": {
          "shape": "ProtectionId",
          "documentation": "<p>The unique identifier (ID) for the <a>Protection</a> object that is described. When submitting the <code>DescribeProtection</code> request you must provide either the <code>ResourceArn</code> or the <code>ProtectionID</code>, but not both.</p>"
        },
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The ARN (Amazon Resource Name) of the AWS resource for the <a>Protection</a> object that is described. When submitting the <code>DescribeProtection</code> request you must provide either the <code>ResourceArn</code> or the <code>ProtectionID</code>, but not both.</p>"
        }
      }
    },
    "DescribeProtectionResponse": {
      "type": "structure",
      "members": {
        "Protection": {
          "shape": "Protection",
          "documentation": "<p>The <a>Protection</a> object that is described.</p>"
        }
      }
    },
    "DescribeSubscriptionRequest": {
      "type": "structure",
      "members": {}
    },
    "DescribeSubscriptionResponse": {
      "type": "structure",
      "members": {
        "Subscription": {
          "shape": "Subscription",
          "documentation": "<p>The AWS Shield Advanced subscription details for an account.</p>"
        }
      }
    },
    "DisableProactiveEngagementRequest": {
      "type": "structure",
      "members": {}
    },
    "DisableProactiveEngagementResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociateDRTLogBucketRequest": {
      "type": "structure",
      "required": [
        "LogBucket"
      ],
      "members": {
        "LogBucket": {
          "shape": "LogBucket",
          "documentation": "<p>The Amazon S3 bucket that contains your AWS WAF logs.</p>"
        }
      }
    },
    "DisassociateDRTLogBucketResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociateDRTRoleRequest": {
      "type": "structure",
      "members": {}
    },
    "DisassociateDRTRoleResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociateHealthCheckRequest": {
      "type": "structure",
      "required": [
        "ProtectionId",
        "HealthCheckArn"
      ],
      "members": {
        "ProtectionId": {
          "shape": "ProtectionId",
          "documentation": "<p>The unique identifier (ID) for the <a>Protection</a> object to remove the health check association from. </p>"
        },
        "HealthCheckArn": {
          "shape": "HealthCheckArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the health check that is associated with the protection.</p>"
        }
      }
    },
    "DisassociateHealthCheckResponse": {
      "type": "structure",
      "members": {}
    },
    "Double": {
      "type": "double"
    },
    "DurationInSeconds": {
      "type": "long",
      "min": 0
    },
    "EmailAddress": {
      "type": "string",
      "max": 150,
      "min": 1,
      "pattern": "^\\S+@\\S+\\.\\S+$"
    },
    "EmergencyContact": {
      "type": "structure",
      "required": [
        "EmailAddress"
      ],
      "members": {
        "EmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The email address for the contact.</p>"
        },
        "PhoneNumber": {
          "shape": "PhoneNumber",
          "documentation": "<p>The phone number for the contact.</p>"
        },
        "ContactNotes": {
          "shape": "ContactNotes",
          "documentation": "<p>Additional notes regarding the contact. </p>"
        }
      },
      "documentation": "<p>Contact information that the DRT can use to contact you if you have proactive engagement enabled, for escalations to the DRT and to initiate proactive customer support.</p>"
    },
    "EmergencyContactList": {
      "type": "list",
      "member": {
        "shape": "EmergencyContact"
      },
      "max": 10,
      "min": 0
    },
    "EnableProactiveEngagementRequest": {
      "type": "structure",
      "members": {}
    },
    "EnableProactiveEngagementResponse": {
      "type": "structure",
      "members": {}
    },
    "GetSubscriptionStateRequest": {
      "type": "structure",
      "members": {}
    },
    "GetSubscriptionStateResponse": {
      "type": "structure",
      "required": [
        "SubscriptionState"
      ],
      "members": {
        "SubscriptionState": {
          "shape": "SubscriptionState",
          "documentation": "<p>The status of the subscription.</p>"
        }
      }
    },
    "HealthCheckArn": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "^arn:aws:route53:::healthcheck/\\S{36}$"
    },
    "HealthCheckId": {
      "type": "string"
    },
    "HealthCheckIds": {
      "type": "list",
      "member": {
        "shape": "HealthCheckId"
      }
    },
    "Integer": {
      "type": "integer"
    },
    "Limit": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "String",
          "documentation": "<p>The type of protection.</p>"
        },
        "Max": {
          "shape": "Long",
          "documentation": "<p>The maximum number of protections that can be created for the specified <code>Type</code>.</p>"
        }
      },
      "documentation": "<p>Specifies how many protections of a given type you can create.</p>"
    },
    "Limits": {
      "type": "list",
      "member": {
        "shape": "Limit"
      }
    },
    "ListAttacksRequest": {
      "type": "structure",
      "members": {
        "ResourceArns": {
          "shape": "ResourceArnFilterList",
          "documentation": "<p>The ARN (Amazon Resource Name) of the resource that was attacked. If this is left blank, all applicable resources for this account will be included.</p>"
        },
        "StartTime": {
          "shape": "TimeRange",
          "documentation": "<p>The start of the time period for the attacks. This is a <code>timestamp</code> type. The sample request above indicates a <code>number</code> type because the default used by WAF is Unix time in seconds. However any valid <a href=\"http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types\">timestamp format</a> is allowed. </p>"
        },
        "EndTime": {
          "shape": "TimeRange",
          "documentation": "<p>The end of the time period for the attacks. This is a <code>timestamp</code> type. The sample request above indicates a <code>number</code> type because the default used by WAF is Unix time in seconds. However any valid <a href=\"http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types\">timestamp format</a> is allowed. </p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The <code>ListAttacksRequest.NextMarker</code> value from a previous call to <code>ListAttacksRequest</code>. Pass null if this is the first call.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of <a>AttackSummary</a> objects to be returned. If this is left blank, the first 20 results will be returned.</p> <p>This is a maximum value; it is possible that AWS WAF will return the results in smaller batches. That is, the number of <a>AttackSummary</a> objects returned could be less than <code>MaxResults</code>, even if there are still more <a>AttackSummary</a> objects yet to return. If there are more <a>AttackSummary</a> objects to return, AWS WAF will always also return a <code>NextToken</code>.</p>"
        }
      }
    },
    "ListAttacksResponse": {
      "type": "structure",
      "members": {
        "AttackSummaries": {
          "shape": "AttackSummaries",
          "documentation": "<p>The attack information for the specified time range.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The token returned by a previous call to indicate that there is more data available. If not null, more results are available. Pass this value for the <code>NextMarker</code> parameter in a subsequent call to <code>ListAttacks</code> to retrieve the next set of items.</p> <p>AWS WAF might return the list of <a>AttackSummary</a> objects in batches smaller than the number specified by MaxResults. If there are more <a>AttackSummary</a> objects to return, AWS WAF will always also return a <code>NextToken</code>.</p>"
        }
      }
    },
    "ListProtectionsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The <code>ListProtectionsRequest.NextToken</code> value from a previous call to <code>ListProtections</code>. Pass null if this is the first call.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of <a>Protection</a> objects to be returned. If this is left blank the first 20 results will be returned.</p> <p>This is a maximum value; it is possible that AWS WAF will return the results in smaller batches. That is, the number of <a>Protection</a> objects returned could be less than <code>MaxResults</code>, even if there are still more <a>Protection</a> objects yet to return. If there are more <a>Protection</a> objects to return, AWS WAF will always also return a <code>NextToken</code>.</p>"
        }
      }
    },
    "ListProtectionsResponse": {
      "type": "structure",
      "members": {
        "Protections": {
          "shape": "Protections",
          "documentation": "<p>The array of enabled <a>Protection</a> objects.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>If you specify a value for <code>MaxResults</code> and you have more Protections than the value of MaxResults, AWS Shield Advanced returns a NextToken value in the response that allows you to list another group of Protections. For the second and subsequent ListProtections requests, specify the value of NextToken from the previous response to get information about another batch of Protections.</p> <p>AWS WAF might return the list of <a>Protection</a> objects in batches smaller than the number specified by MaxResults. If there are more <a>Protection</a> objects to return, AWS WAF will always also return a <code>NextToken</code>.</p>"
        }
      }
    },
    "LogBucket": {
      "type": "string",
      "max": 63,
      "min": 3,
      "pattern": "^([a-z]|(\\d(?!\\d{0,2}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})))([a-z\\d]|(\\.(?!(\\.|-)))|(-(?!\\.))){1,61}[a-z\\d]$"
    },
    "LogBucketList": {
      "type": "list",
      "member": {
        "shape": "LogBucket"
      },
      "max": 10,
      "min": 0
    },
    "Long": {
      "type": "long"
    },
    "MaxResults": {
      "type": "integer",
      "box": true,
      "max": 10000,
      "min": 0
    },
    "Mitigation": {
      "type": "structure",
      "members": {
        "MitigationName": {
          "shape": "String",
          "documentation": "<p>The name of the mitigation taken for this attack.</p>"
        }
      },
      "documentation": "<p>The mitigation applied to a DDoS attack.</p>"
    },
    "MitigationList": {
      "type": "list",
      "member": {
        "shape": "Mitigation"
      }
    },
    "PhoneNumber": {
      "type": "string",
      "max": 16,
      "min": 1,
      "pattern": "^\\+[1-9]\\d{1,14}$"
    },
    "ProactiveEngagementStatus": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED",
        "PENDING"
      ]
    },
    "Protection": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ProtectionId",
          "documentation": "<p>The unique identifier (ID) of the protection.</p>"
        },
        "Name": {
          "shape": "ProtectionName",
          "documentation": "<p>The friendly name of the protection. For example, <code>My CloudFront distributions</code>.</p>"
        },
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The ARN (Amazon Resource Name) of the AWS resource that is protected.</p>"
        },
        "HealthCheckIds": {
          "shape": "HealthCheckIds",
          "documentation": "<p>The unique identifier (ID) for the Route 53 health check that's associated with the protection. </p>"
        }
      },
      "documentation": "<p>An object that represents a resource that is under DDoS protection.</p>"
    },
    "ProtectionId": {
      "type": "string",
      "max": 36,
      "min": 1,
      "pattern": "[a-zA-Z0-9\\\\-]*"
    },
    "ProtectionName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[ a-zA-Z0-9_\\\\.\\\\-]*"
    },
    "Protections": {
      "type": "list",
      "member": {
        "shape": "Protection"
      }
    },
    "ResourceArn": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "^arn:aws.*"
    },
    "ResourceArnFilterList": {
      "type": "list",
      "member": {
        "shape": "ResourceArn"
      }
    },
    "RoleArn": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "^arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"
    },
    "String": {
      "type": "string"
    },
    "SubResourceSummary": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "SubResourceType",
          "documentation": "<p>The <code>SubResource</code> type.</p>"
        },
        "Id": {
          "shape": "String",
          "documentation": "<p>The unique identifier (ID) of the <code>SubResource</code>.</p>"
        },
        "AttackVectors": {
          "shape": "SummarizedAttackVectorList",
          "documentation": "<p>The list of attack types and associated counters.</p>"
        },
        "Counters": {
          "shape": "SummarizedCounterList",
          "documentation": "<p>The counters that describe the details of the attack.</p>"
        }
      },
      "documentation": "<p>The attack information for the specified SubResource.</p>"
    },
    "SubResourceSummaryList": {
      "type": "list",
      "member": {
        "shape": "SubResourceSummary"
      }
    },
    "SubResourceType": {
      "type": "string",
      "enum": [
        "IP",
        "URL"
      ]
    },
    "Subscription": {
      "type": "structure",
      "members": {
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of the subscription, in Unix time in seconds. For more information see <a href=\"http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types\">timestamp</a>.</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time your subscription will end.</p>"
        },
        "TimeCommitmentInSeconds": {
          "shape": "DurationInSeconds",
          "documentation": "<p>The length, in seconds, of the AWS Shield Advanced subscription for the account.</p>"
        },
        "AutoRenew": {
          "shape": "AutoRenew",
          "documentation": "<p>If <code>ENABLED</code>, the subscription will be automatically renewed at the end of the existing subscription period.</p> <p>When you initally create a subscription, <code>AutoRenew</code> is set to <code>ENABLED</code>. You can change this by submitting an <code>UpdateSubscription</code> request. If the <code>UpdateSubscription</code> request does not included a value for <code>AutoRenew</code>, the existing value for <code>AutoRenew</code> remains unchanged.</p>"
        },
        "Limits": {
          "shape": "Limits",
          "documentation": "<p>Specifies how many protections of a given type you can create.</p>"
        },
        "ProactiveEngagementStatus": {
          "shape": "ProactiveEngagementStatus",
          "documentation": "<p>If <code>ENABLED</code>, the DDoS Response Team (DRT) will use email and phone to notify contacts about escalations to the DRT and to initiate proactive customer support.</p> <p>If <code>PENDING</code>, you have requested proactive engagement and the request is pending. The status changes to <code>ENABLED</code> when your request is fully processed.</p> <p>If <code>DISABLED</code>, the DRT will not proactively notify contacts about escalations or to initiate proactive customer support. </p>"
        }
      },
      "documentation": "<p>Information about the AWS Shield Advanced subscription for an account.</p>"
    },
    "SubscriptionState": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "INACTIVE"
      ]
    },
    "SummarizedAttackVector": {
      "type": "structure",
      "required": [
        "VectorType"
      ],
      "members": {
        "VectorType": {
          "shape": "String",
          "documentation": "<p>The attack type, for example, SNMP reflection or SYN flood.</p>"
        },
        "VectorCounters": {
          "shape": "SummarizedCounterList",
          "documentation": "<p>The list of counters that describe the details of the attack.</p>"
        }
      },
      "documentation": "<p>A summary of information about the attack.</p>"
    },
    "SummarizedAttackVectorList": {
      "type": "list",
      "member": {
        "shape": "SummarizedAttackVector"
      }
    },
    "SummarizedCounter": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The counter name.</p>"
        },
        "Max": {
          "shape": "Double",
          "documentation": "<p>The maximum value of the counter for a specified time period.</p>"
        },
        "Average": {
          "shape": "Double",
          "documentation": "<p>The average value of the counter for a specified time period.</p>"
        },
        "Sum": {
          "shape": "Double",
          "documentation": "<p>The total of counter values for a specified time period.</p>"
        },
        "N": {
          "shape": "Integer",
          "documentation": "<p>The number of counters for a specified time period.</p>"
        },
        "Unit": {
          "shape": "String",
          "documentation": "<p>The unit of the counters.</p>"
        }
      },
      "documentation": "<p>The counter that describes a DDoS attack.</p>"
    },
    "SummarizedCounterList": {
      "type": "list",
      "member": {
        "shape": "SummarizedCounter"
      }
    },
    "TimeRange": {
      "type": "structure",
      "members": {
        "FromInclusive": {
          "shape": "AttackTimestamp",
          "documentation": "<p>The start time, in Unix time in seconds. For more information see <a href=\"http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types\">timestamp</a>.</p>"
        },
        "ToExclusive": {
          "shape": "AttackTimestamp",
          "documentation": "<p>The end time, in Unix time in seconds. For more information see <a href=\"http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types\">timestamp</a>.</p>"
        }
      },
      "documentation": "<p>The time range.</p>"
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "Token": {
      "type": "string",
      "max": 4096,
      "min": 1,
      "pattern": "^.*$"
    },
    "TopContributors": {
      "type": "list",
      "member": {
        "shape": "Contributor"
      }
    },
    "Unit": {
      "type": "string",
      "enum": [
        "BITS",
        "BYTES",
        "PACKETS",
        "REQUESTS"
      ]
    },
    "UpdateEmergencyContactSettingsRequest": {
      "type": "structure",
      "members": {
        "EmergencyContactList": {
          "shape": "EmergencyContactList",
          "documentation": "<p>A list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you if you have proactive engagement enabled, for escalations to the DRT and to initiate proactive customer support.</p> <p>If you have proactive engagement enabled, the contact list must include at least one phone number.</p>"
        }
      }
    },
    "UpdateEmergencyContactSettingsResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateSubscriptionRequest": {
      "type": "structure",
      "members": {
        "AutoRenew": {
          "shape": "AutoRenew",
          "documentation": "<p>When you initally create a subscription, <code>AutoRenew</code> is set to <code>ENABLED</code>. If <code>ENABLED</code>, the subscription will be automatically renewed at the end of the existing subscription period. You can change this by submitting an <code>UpdateSubscription</code> request. If the <code>UpdateSubscription</code> request does not included a value for <code>AutoRenew</code>, the existing value for <code>AutoRenew</code> remains unchanged.</p>"
        }
      }
    },
    "UpdateSubscriptionResponse": {
      "type": "structure",
      "members": {}
    }
  },
  "documentation": "<fullname>AWS Shield Advanced</fullname> <p>This is the <i>AWS Shield Advanced API Reference</i>. This guide is for developers who need detailed information about the AWS Shield Advanced API actions, data types, and errors. For detailed information about AWS WAF and AWS Shield Advanced features and an overview of how to use the AWS WAF and AWS Shield Advanced APIs, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/\">AWS WAF and AWS Shield Developer Guide</a>.</p>"
}
]===]))
