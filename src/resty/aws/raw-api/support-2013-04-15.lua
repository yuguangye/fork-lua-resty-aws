local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2013-04-15",
    "endpointPrefix": "support",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS Support",
    "serviceId": "Support",
    "signatureVersion": "v4",
    "targetPrefix": "AWSSupport_20130415",
    "uid": "support-2013-04-15"
  },
  "operations": {
    "AddAttachmentsToSet": {
      "name": "AddAttachmentsToSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddAttachmentsToSetRequest"
      },
      "output": {
        "shape": "AddAttachmentsToSetResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "AttachmentSetIdNotFound"
        },
        {
          "shape": "AttachmentSetExpired"
        },
        {
          "shape": "AttachmentSetSizeLimitExceeded"
        },
        {
          "shape": "AttachmentLimitExceeded"
        }
      ],
      "documentation": "<p>Adds one or more attachments to an attachment set. </p> <p>An attachment set is a temporary container for attachments that you add to a case or case communication. The set is available for 1 hour after it's created. The <code>expiryTime</code> returned in the response is when the set expires. </p> <note> <ul> <li> <p>You must have a Business or Enterprise support plan to use the AWS Support API. </p> </li> <li> <p>If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p> </li> </ul> </note>"
    },
    "AddCommunicationToCase": {
      "name": "AddCommunicationToCase",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddCommunicationToCaseRequest"
      },
      "output": {
        "shape": "AddCommunicationToCaseResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "CaseIdNotFound"
        },
        {
          "shape": "AttachmentSetIdNotFound"
        },
        {
          "shape": "AttachmentSetExpired"
        }
      ],
      "documentation": "<p>Adds additional customer communication to an AWS Support case. Use the <code>caseId</code> parameter to identify the case to which to add communication. You can list a set of email addresses to copy on the communication by using the <code>ccEmailAddresses</code> parameter. The <code>communicationBody</code> value contains the text of the communication.</p> <note> <ul> <li> <p>You must have a Business or Enterprise support plan to use the AWS Support API. </p> </li> <li> <p>If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p> </li> </ul> </note>"
    },
    "CreateCase": {
      "name": "CreateCase",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateCaseRequest"
      },
      "output": {
        "shape": "CreateCaseResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "CaseCreationLimitExceeded"
        },
        {
          "shape": "AttachmentSetIdNotFound"
        },
        {
          "shape": "AttachmentSetExpired"
        }
      ],
      "documentation": "<p>Creates a case in the AWS Support Center. This operation is similar to how you create a case in the AWS Support Center <a href=\"https://console.aws.amazon.com/support/home#/case/create\">Create Case</a> page.</p> <p>The AWS Support API doesn't support requesting service limit increases. You can submit a service limit increase in the following ways: </p> <ul> <li> <p>Submit a request from the AWS Support Center <a href=\"https://console.aws.amazon.com/support/home#/case/create\">Create Case</a> page.</p> </li> <li> <p>Use the Service Quotas <a href=\"https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_RequestServiceQuotaIncrease.html\">RequestServiceQuotaIncrease</a> operation.</p> </li> </ul> <p>A successful <code>CreateCase</code> request returns an AWS Support case number. You can use the <a>DescribeCases</a> operation and specify the case number to get existing AWS Support cases. After you create a case, use the <a>AddCommunicationToCase</a> operation to add additional communication or attachments to an existing case.</p> <p>The <code>caseId</code> is separate from the <code>displayId</code> that appears in the <a href=\"https://console.aws.amazon.com/support\">AWS Support Center</a>. Use the <a>DescribeCases</a> operation to get the <code>displayId</code>.</p> <note> <ul> <li> <p>You must have a Business or Enterprise support plan to use the AWS Support API. </p> </li> <li> <p>If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p> </li> </ul> </note>"
    },
    "DescribeAttachment": {
      "name": "DescribeAttachment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAttachmentRequest"
      },
      "output": {
        "shape": "DescribeAttachmentResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "DescribeAttachmentLimitExceeded"
        },
        {
          "shape": "AttachmentIdNotFound"
        }
      ],
      "documentation": "<p>Returns the attachment that has the specified ID. Attachments can include screenshots, error logs, or other files that describe your issue. Attachment IDs are generated by the case management system when you add an attachment to a case or case communication. Attachment IDs are returned in the <a>AttachmentDetails</a> objects that are returned by the <a>DescribeCommunications</a> operation.</p> <note> <ul> <li> <p>You must have a Business or Enterprise support plan to use the AWS Support API. </p> </li> <li> <p>If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p> </li> </ul> </note>"
    },
    "DescribeCases": {
      "name": "DescribeCases",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCasesRequest"
      },
      "output": {
        "shape": "DescribeCasesResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "CaseIdNotFound"
        }
      ],
      "documentation": "<p>Returns a list of cases that you specify by passing one or more case IDs. You can use the <code>afterTime</code> and <code>beforeTime</code> parameters to filter the cases by date. You can set values for the <code>includeResolvedCases</code> and <code>includeCommunications</code> parameters to specify how much information to return.</p> <p>The response returns the following in JSON format:</p> <ul> <li> <p>One or more <a href=\"https://docs.aws.amazon.com/awssupport/latest/APIReference/API_CaseDetails.html\">CaseDetails</a> data types.</p> </li> <li> <p>One or more <code>nextToken</code> values, which specify where to paginate the returned records represented by the <code>CaseDetails</code> objects.</p> </li> </ul> <p>Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request might return an error.</p> <note> <ul> <li> <p>You must have a Business or Enterprise support plan to use the AWS Support API. </p> </li> <li> <p>If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p> </li> </ul> </note>"
    },
    "DescribeCommunications": {
      "name": "DescribeCommunications",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCommunicationsRequest"
      },
      "output": {
        "shape": "DescribeCommunicationsResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "CaseIdNotFound"
        }
      ],
      "documentation": "<p>Returns communications and attachments for one or more support cases. Use the <code>afterTime</code> and <code>beforeTime</code> parameters to filter by date. You can use the <code>caseId</code> parameter to restrict the results to a specific case.</p> <p>Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error.</p> <p>You can use the <code>maxResults</code> and <code>nextToken</code> parameters to control the pagination of the results. Set <code>maxResults</code> to the number of cases that you want to display on each page, and use <code>nextToken</code> to specify the resumption of pagination.</p> <note> <ul> <li> <p>You must have a Business or Enterprise support plan to use the AWS Support API. </p> </li> <li> <p>If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p> </li> </ul> </note>"
    },
    "DescribeServices": {
      "name": "DescribeServices",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeServicesRequest"
      },
      "output": {
        "shape": "DescribeServicesResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Returns the current list of AWS services and a list of service categories for each service. You then use service names and categories in your <a>CreateCase</a> requests. Each AWS service has its own set of categories.</p> <p>The service codes and category codes correspond to the values that appear in the <b>Service</b> and <b>Category</b> lists on the AWS Support Center <a href=\"https://console.aws.amazon.com/support/home#/case/create\">Create Case</a> page. The values in those fields don't necessarily match the service codes and categories returned by the <code>DescribeServices</code> operation. Always use the service codes and categories that the <code>DescribeServices</code> operation returns, so that you have the most recent set of service and category codes.</p> <note> <ul> <li> <p>You must have a Business or Enterprise support plan to use the AWS Support API. </p> </li> <li> <p>If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p> </li> </ul> </note>"
    },
    "DescribeSeverityLevels": {
      "name": "DescribeSeverityLevels",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeSeverityLevelsRequest"
      },
      "output": {
        "shape": "DescribeSeverityLevelsResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Returns the list of severity levels that you can assign to an AWS Support case. The severity level for a case is also a field in the <a>CaseDetails</a> data type that you include for a <a>CreateCase</a> request.</p> <note> <ul> <li> <p>You must have a Business or Enterprise support plan to use the AWS Support API. </p> </li> <li> <p>If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p> </li> </ul> </note>"
    },
    "DescribeTrustedAdvisorCheckRefreshStatuses": {
      "name": "DescribeTrustedAdvisorCheckRefreshStatuses",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTrustedAdvisorCheckRefreshStatusesRequest"
      },
      "output": {
        "shape": "DescribeTrustedAdvisorCheckRefreshStatusesResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Returns the refresh status of the AWS Trusted Advisor checks that have the specified check IDs. You can get the check IDs by calling the <a>DescribeTrustedAdvisorChecks</a> operation.</p> <p>Some checks are refreshed automatically, and you can't return their refresh statuses by using the <code>DescribeTrustedAdvisorCheckRefreshStatuses</code> operation. If you call this operation for these checks, you might see an <code>InvalidParameterValue</code> error.</p> <note> <ul> <li> <p>You must have a Business or Enterprise support plan to use the AWS Support API. </p> </li> <li> <p>If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p> </li> </ul> </note>"
    },
    "DescribeTrustedAdvisorCheckResult": {
      "name": "DescribeTrustedAdvisorCheckResult",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTrustedAdvisorCheckResultRequest"
      },
      "output": {
        "shape": "DescribeTrustedAdvisorCheckResultResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Returns the results of the AWS Trusted Advisor check that has the specified check ID. You can get the check IDs by calling the <a>DescribeTrustedAdvisorChecks</a> operation.</p> <p>The response contains a <a>TrustedAdvisorCheckResult</a> object, which contains these three objects:</p> <ul> <li> <p> <a>TrustedAdvisorCategorySpecificSummary</a> </p> </li> <li> <p> <a>TrustedAdvisorResourceDetail</a> </p> </li> <li> <p> <a>TrustedAdvisorResourcesSummary</a> </p> </li> </ul> <p>In addition, the response contains these fields:</p> <ul> <li> <p> <b>status</b> - The alert status of the check: \"ok\" (green), \"warning\" (yellow), \"error\" (red), or \"not_available\".</p> </li> <li> <p> <b>timestamp</b> - The time of the last refresh of the check.</p> </li> <li> <p> <b>checkId</b> - The unique identifier for the check.</p> </li> </ul> <note> <ul> <li> <p>You must have a Business or Enterprise support plan to use the AWS Support API. </p> </li> <li> <p>If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p> </li> </ul> </note>"
    },
    "DescribeTrustedAdvisorCheckSummaries": {
      "name": "DescribeTrustedAdvisorCheckSummaries",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTrustedAdvisorCheckSummariesRequest"
      },
      "output": {
        "shape": "DescribeTrustedAdvisorCheckSummariesResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Returns the results for the AWS Trusted Advisor check summaries for the check IDs that you specified. You can get the check IDs by calling the <a>DescribeTrustedAdvisorChecks</a> operation.</p> <p>The response contains an array of <a>TrustedAdvisorCheckSummary</a> objects.</p> <note> <ul> <li> <p>You must have a Business or Enterprise support plan to use the AWS Support API. </p> </li> <li> <p>If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p> </li> </ul> </note>"
    },
    "DescribeTrustedAdvisorChecks": {
      "name": "DescribeTrustedAdvisorChecks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTrustedAdvisorChecksRequest"
      },
      "output": {
        "shape": "DescribeTrustedAdvisorChecksResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Returns information about all available AWS Trusted Advisor checks, including the name, ID, category, description, and metadata. You must specify a language code. The AWS Support API currently supports English (\"en\") and Japanese (\"ja\"). The response contains a <a>TrustedAdvisorCheckDescription</a> object for each check. You must set the AWS Region to us-east-1.</p> <note> <ul> <li> <p>You must have a Business or Enterprise support plan to use the AWS Support API. </p> </li> <li> <p>If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p> </li> </ul> </note>"
    },
    "RefreshTrustedAdvisorCheck": {
      "name": "RefreshTrustedAdvisorCheck",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RefreshTrustedAdvisorCheckRequest"
      },
      "output": {
        "shape": "RefreshTrustedAdvisorCheckResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Refreshes the AWS Trusted Advisor check that you specify using the check ID. You can get the check IDs by calling the <a>DescribeTrustedAdvisorChecks</a> operation.</p> <note> <p>Some checks are refreshed automatically. If you call the <code>RefreshTrustedAdvisorCheck</code> operation to refresh them, you might see the <code>InvalidParameterValue</code> error.</p> </note> <p>The response contains a <a>TrustedAdvisorCheckRefreshStatus</a> object.</p> <note> <ul> <li> <p>You must have a Business or Enterprise support plan to use the AWS Support API. </p> </li> <li> <p>If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p> </li> </ul> </note>"
    },
    "ResolveCase": {
      "name": "ResolveCase",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResolveCaseRequest"
      },
      "output": {
        "shape": "ResolveCaseResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "CaseIdNotFound"
        }
      ],
      "documentation": "<p>Resolves a support case. This operation takes a <code>caseId</code> and returns the initial and final state of the case.</p> <note> <ul> <li> <p>You must have a Business or Enterprise support plan to use the AWS Support API. </p> </li> <li> <p>If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p> </li> </ul> </note>"
    }
  },
  "shapes": {
    "AddAttachmentsToSetRequest": {
      "type": "structure",
      "required": [
        "attachments"
      ],
      "members": {
        "attachmentSetId": {
          "shape": "AttachmentSetId",
          "documentation": "<p>The ID of the attachment set. If an <code>attachmentSetId</code> is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an <code>attachmentSetId</code> is specified, the attachments are added to the specified set, if it exists.</p>"
        },
        "attachments": {
          "shape": "Attachments",
          "documentation": "<p>One or more attachments to add to the set. You can add up to three attachments per set. The size limit is 5 MB per attachment.</p> <p>In the <code>Attachment</code> object, use the <code>data</code> parameter to specify the contents of the attachment file. In the previous request syntax, the value for <code>data</code> appear as <code>blob</code>, which is represented as a base64-encoded string. The value for <code>fileName</code> is the name of the attachment, such as <code>troubleshoot-screenshot.png</code>.</p>"
        }
      }
    },
    "AddAttachmentsToSetResponse": {
      "type": "structure",
      "members": {
        "attachmentSetId": {
          "shape": "AttachmentSetId",
          "documentation": "<p>The ID of the attachment set. If an <code>attachmentSetId</code> was not specified, a new attachment set is created, and the ID of the set is returned in the response. If an <code>attachmentSetId</code> was specified, the attachments are added to the specified set, if it exists.</p>"
        },
        "expiryTime": {
          "shape": "ExpiryTime",
          "documentation": "<p>The time and date when the attachment set expires.</p>"
        }
      },
      "documentation": "<p>The ID and expiry time of the attachment set returned by the <a>AddAttachmentsToSet</a> operation.</p>"
    },
    "AddCommunicationToCaseRequest": {
      "type": "structure",
      "required": [
        "communicationBody"
      ],
      "members": {
        "caseId": {
          "shape": "CaseId",
          "documentation": "<p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>"
        },
        "communicationBody": {
          "shape": "CommunicationBody",
          "documentation": "<p>The body of an email communication to add to the support case.</p>"
        },
        "ccEmailAddresses": {
          "shape": "CcEmailAddressList",
          "documentation": "<p>The email addresses in the CC line of an email to be added to the support case.</p>"
        },
        "attachmentSetId": {
          "shape": "AttachmentSetId",
          "documentation": "<p>The ID of a set of one or more attachments for the communication to add to the case. Create the set by calling <a>AddAttachmentsToSet</a> </p>"
        }
      }
    },
    "AddCommunicationToCaseResponse": {
      "type": "structure",
      "members": {
        "result": {
          "shape": "Result",
          "documentation": "<p>True if <a>AddCommunicationToCase</a> succeeds. Otherwise, returns an error.</p>"
        }
      },
      "documentation": "<p>The result of the <a>AddCommunicationToCase</a> operation.</p>"
    },
    "AfterTime": {
      "type": "string"
    },
    "Attachment": {
      "type": "structure",
      "members": {
        "fileName": {
          "shape": "FileName",
          "documentation": "<p>The name of the attachment file.</p>"
        },
        "data": {
          "shape": "Data",
          "documentation": "<p>The content of the attachment file.</p>"
        }
      },
      "documentation": "<p>An attachment to a case communication. The attachment consists of the file name and the content of the file.</p>"
    },
    "AttachmentDetails": {
      "type": "structure",
      "members": {
        "attachmentId": {
          "shape": "AttachmentId",
          "documentation": "<p>The ID of the attachment.</p>"
        },
        "fileName": {
          "shape": "FileName",
          "documentation": "<p>The file name of the attachment.</p>"
        }
      },
      "documentation": "<p>The file name and ID of an attachment to a case communication. You can use the ID to retrieve the attachment with the <a>DescribeAttachment</a> operation.</p>"
    },
    "AttachmentId": {
      "type": "string"
    },
    "AttachmentSet": {
      "type": "list",
      "member": {
        "shape": "AttachmentDetails"
      }
    },
    "AttachmentSetId": {
      "type": "string"
    },
    "Attachments": {
      "type": "list",
      "member": {
        "shape": "Attachment"
      }
    },
    "BeforeTime": {
      "type": "string"
    },
    "Boolean": {
      "type": "boolean"
    },
    "CaseDetails": {
      "type": "structure",
      "members": {
        "caseId": {
          "shape": "CaseId",
          "documentation": "<p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>"
        },
        "displayId": {
          "shape": "DisplayId",
          "documentation": "<p>The ID displayed for the case in the AWS Support Center. This is a numeric string.</p>"
        },
        "subject": {
          "shape": "Subject",
          "documentation": "<p>The subject line for the case in the AWS Support Center.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the case.</p> <p>Valid values:</p> <ul> <li> <p> <code>opened</code> </p> </li> <li> <p> <code>pending-customer-action</code> </p> </li> <li> <p> <code>reopened</code> </p> </li> <li> <p> <code>resolved</code> </p> </li> <li> <p> <code>unassigned</code> </p> </li> <li> <p> <code>work-in-progress</code> </p> </li> </ul>"
        },
        "serviceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>The code for the AWS service. You can get a list of codes and the corresponding service names by calling <a>DescribeServices</a>.</p>"
        },
        "categoryCode": {
          "shape": "CategoryCode",
          "documentation": "<p>The category of problem for the AWS Support case.</p>"
        },
        "severityCode": {
          "shape": "SeverityCode",
          "documentation": "<p>The code for the severity level returned by the call to <a>DescribeSeverityLevels</a>.</p>"
        },
        "submittedBy": {
          "shape": "SubmittedBy",
          "documentation": "<p>The email address of the account that submitted the case.</p>"
        },
        "timeCreated": {
          "shape": "TimeCreated",
          "documentation": "<p>The time that the case was created in the AWS Support Center.</p>"
        },
        "recentCommunications": {
          "shape": "RecentCaseCommunications",
          "documentation": "<p>The five most recent communications between you and AWS Support Center, including the IDs of any attachments to the communications. Also includes a <code>nextToken</code> that you can use to retrieve earlier communications.</p>"
        },
        "ccEmailAddresses": {
          "shape": "CcEmailAddressList",
          "documentation": "<p>The email addresses that receive copies of communication about the case.</p>"
        },
        "language": {
          "shape": "Language",
          "documentation": "<p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them.</p>"
        }
      },
      "documentation": "<p>A JSON-formatted object that contains the metadata for a support case. It is contained in the response from a <a>DescribeCases</a> request. <b>CaseDetails</b> contains the following fields:</p> <ul> <li> <p> <b>caseId.</b> The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>.</p> </li> <li> <p> <b>categoryCode.</b> The category of problem for the AWS Support case. Corresponds to the CategoryCode values returned by a call to <a>DescribeServices</a>.</p> </li> <li> <p> <b>displayId.</b> The identifier for the case on pages in the AWS Support Center.</p> </li> <li> <p> <b>language.</b> The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them.</p> </li> <li> <p> <b>nextToken.</b> A resumption point for pagination.</p> </li> <li> <p> <b>recentCommunications.</b> One or more <a>Communication</a> objects. Fields of these objects are <code>attachments</code>, <code>body</code>, <code>caseId</code>, <code>submittedBy</code>, and <code>timeCreated</code>.</p> </li> <li> <p> <b>serviceCode.</b> The identifier for the AWS service that corresponds to the service code defined in the call to <a>DescribeServices</a>.</p> </li> <li> <p> <b>severityCode.</b> The severity code assigned to the case. Contains one of the values returned by the call to <a>DescribeSeverityLevels</a>. The possible values are: <code>low</code>, <code>normal</code>, <code>high</code>, <code>urgent</code>, and <code>critical</code>.</p> </li> <li> <p> <b>status.</b> The status of the case in the AWS Support Center. Valid values:</p> <ul> <li> <p> <code>opened</code> </p> </li> <li> <p> <code>pending-customer-action</code> </p> </li> <li> <p> <code>reopened</code> </p> </li> <li> <p> <code>resolved</code> </p> </li> <li> <p> <code>unassigned</code> </p> </li> <li> <p> <code>work-in-progress</code> </p> </li> </ul> </li> <li> <p> <b>subject.</b> The subject line of the case.</p> </li> <li> <p> <b>submittedBy.</b> The email address of the account that submitted the case.</p> </li> <li> <p> <b>timeCreated.</b> The time the case was created, in ISO-8601 format.</p> </li> </ul>"
    },
    "CaseId": {
      "type": "string"
    },
    "CaseIdList": {
      "type": "list",
      "member": {
        "shape": "CaseId"
      },
      "max": 100,
      "min": 0
    },
    "CaseList": {
      "type": "list",
      "member": {
        "shape": "CaseDetails"
      }
    },
    "CaseStatus": {
      "type": "string"
    },
    "Category": {
      "type": "structure",
      "members": {
        "code": {
          "shape": "CategoryCode",
          "documentation": "<p>The category code for the support case.</p>"
        },
        "name": {
          "shape": "CategoryName",
          "documentation": "<p>The category name for the support case.</p>"
        }
      },
      "documentation": "<p>A JSON-formatted name/value pair that represents the category name and category code of the problem, selected from the <a>DescribeServices</a> response for each AWS service.</p>"
    },
    "CategoryCode": {
      "type": "string"
    },
    "CategoryList": {
      "type": "list",
      "member": {
        "shape": "Category"
      }
    },
    "CategoryName": {
      "type": "string"
    },
    "CcEmailAddress": {
      "type": "string"
    },
    "CcEmailAddressList": {
      "type": "list",
      "member": {
        "shape": "CcEmailAddress"
      },
      "max": 10,
      "min": 0
    },
    "Communication": {
      "type": "structure",
      "members": {
        "caseId": {
          "shape": "CaseId",
          "documentation": "<p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>"
        },
        "body": {
          "shape": "CommunicationBody",
          "documentation": "<p>The text of the communication between the customer and AWS Support.</p>"
        },
        "submittedBy": {
          "shape": "SubmittedBy",
          "documentation": "<p>The identity of the account that submitted, or responded to, the support case. Customer entries include the role or IAM user as well as the email address. For example, \"AdminRole (Role) &lt;someone@example.com&gt;. Entries from the AWS Support team display \"Amazon Web Services,\" and do not show an email address. </p>"
        },
        "timeCreated": {
          "shape": "TimeCreated",
          "documentation": "<p>The time the communication was created.</p>"
        },
        "attachmentSet": {
          "shape": "AttachmentSet",
          "documentation": "<p>Information about the attachments to the case communication.</p>"
        }
      },
      "documentation": "<p>A communication associated with an AWS Support case. The communication consists of the case ID, the message body, attachment information, the submitter of the communication, and the date and time of the communication.</p>"
    },
    "CommunicationBody": {
      "type": "string",
      "max": 8000,
      "min": 1
    },
    "CommunicationList": {
      "type": "list",
      "member": {
        "shape": "Communication"
      }
    },
    "CreateCaseRequest": {
      "type": "structure",
      "required": [
        "subject",
        "communicationBody"
      ],
      "members": {
        "subject": {
          "shape": "Subject",
          "documentation": "<p>The title of the AWS Support case. The title appears in the <b>Subject</b> field on the AWS Support Center <a href=\"https://console.aws.amazon.com/support/home#/case/create\">Create Case</a> page.</p>"
        },
        "serviceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>The code for the AWS service. You can use the <a>DescribeServices</a> operation to get the possible <code>serviceCode</code> values.</p>"
        },
        "severityCode": {
          "shape": "SeverityCode",
          "documentation": "<p>A value that indicates the urgency of the case. This value determines the response time according to your service level agreement with AWS Support. You can use the <a>DescribeSeverityLevels</a> operation to get the possible values for <code>severityCode</code>. </p> <p>For more information, see <a>SeverityLevel</a> and <a href=\"https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity\">Choosing a Severity</a> in the <i>AWS Support User Guide</i>.</p> <note> <p>The availability of severity levels depends on the support plan for the AWS account.</p> </note>"
        },
        "categoryCode": {
          "shape": "CategoryCode",
          "documentation": "<p>The category of problem for the AWS Support case. You also use the <a>DescribeServices</a> operation to get the category code for a service. Each AWS service defines its own set of category codes.</p>"
        },
        "communicationBody": {
          "shape": "CommunicationBody",
          "documentation": "<p>The communication body text that describes the issue. This text appears in the <b>Description</b> field on the AWS Support Center <a href=\"https://console.aws.amazon.com/support/home#/case/create\">Create Case</a> page.</p>"
        },
        "ccEmailAddresses": {
          "shape": "CcEmailAddressList",
          "documentation": "<p>A list of email addresses that AWS Support copies on case correspondence. AWS Support identifies the account that creates the case when you specify your AWS credentials in an HTTP POST method or use the <a href=\"http://aws.amazon.com/tools/\">AWS SDKs</a>. </p>"
        },
        "language": {
          "shape": "Language",
          "documentation": "<p>The language in which AWS Support handles the case. You must specify the ISO 639-1 code for the <code>language</code> parameter if you want support in that language. Currently, English (\"en\") and Japanese (\"ja\") are supported.</p>"
        },
        "issueType": {
          "shape": "IssueType",
          "documentation": "<p>The type of issue for the case. You can specify <code>customer-service</code> or <code>technical</code>. If you don't specify a value, the default is <code>technical</code>.</p>"
        },
        "attachmentSetId": {
          "shape": "AttachmentSetId",
          "documentation": "<p>The ID of a set of one or more attachments for the case. Create the set by using the <a>AddAttachmentsToSet</a> operation.</p>"
        }
      }
    },
    "CreateCaseResponse": {
      "type": "structure",
      "members": {
        "caseId": {
          "shape": "CaseId",
          "documentation": "<p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string in the following format: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>"
        }
      },
      "documentation": "<p>The AWS Support case ID returned by a successful completion of the <a>CreateCase</a> operation.</p>"
    },
    "Data": {
      "type": "blob"
    },
    "DescribeAttachmentRequest": {
      "type": "structure",
      "required": [
        "attachmentId"
      ],
      "members": {
        "attachmentId": {
          "shape": "AttachmentId",
          "documentation": "<p>The ID of the attachment to return. Attachment IDs are returned by the <a>DescribeCommunications</a> operation.</p>"
        }
      }
    },
    "DescribeAttachmentResponse": {
      "type": "structure",
      "members": {
        "attachment": {
          "shape": "Attachment",
          "documentation": "<p>This object includes the attachment content and file name.</p> <p>In the previous response syntax, the value for the <code>data</code> parameter appears as <code>blob</code>, which is represented as a base64-encoded string. The value for <code>fileName</code> is the name of the attachment, such as <code>troubleshoot-screenshot.png</code>.</p>"
        }
      },
      "documentation": "<p>The content and file name of the attachment returned by the <a>DescribeAttachment</a> operation.</p>"
    },
    "DescribeCasesRequest": {
      "type": "structure",
      "members": {
        "caseIdList": {
          "shape": "CaseIdList",
          "documentation": "<p>A list of ID numbers of the support cases you want returned. The maximum number of cases is 100.</p>"
        },
        "displayId": {
          "shape": "DisplayId",
          "documentation": "<p>The ID displayed for a case in the AWS Support Center user interface.</p>"
        },
        "afterTime": {
          "shape": "AfterTime",
          "documentation": "<p>The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>"
        },
        "beforeTime": {
          "shape": "BeforeTime",
          "documentation": "<p>The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>"
        },
        "includeResolvedCases": {
          "shape": "IncludeResolvedCases",
          "documentation": "<p>Specifies whether to include resolved support cases in the <code>DescribeCases</code> response. By default, resolved cases aren't included.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A resumption point for pagination.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return before paginating.</p>"
        },
        "language": {
          "shape": "Language",
          "documentation": "<p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them.</p>"
        },
        "includeCommunications": {
          "shape": "IncludeCommunications",
          "documentation": "<p>Specifies whether to include communications in the <code>DescribeCases</code> response. By default, communications are incuded.</p>"
        }
      }
    },
    "DescribeCasesResponse": {
      "type": "structure",
      "members": {
        "cases": {
          "shape": "CaseList",
          "documentation": "<p>The details for the cases that match the request.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A resumption point for pagination.</p>"
        }
      },
      "documentation": "<p>Returns an array of <a href=\"https://docs.aws.amazon.com/awssupport/latest/APIReference/API_CaseDetails.html\">CaseDetails</a> objects and a <code>nextToken</code> that defines a point for pagination in the result set.</p>"
    },
    "DescribeCommunicationsRequest": {
      "type": "structure",
      "required": [
        "caseId"
      ],
      "members": {
        "caseId": {
          "shape": "CaseId",
          "documentation": "<p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>"
        },
        "beforeTime": {
          "shape": "BeforeTime",
          "documentation": "<p>The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>"
        },
        "afterTime": {
          "shape": "AfterTime",
          "documentation": "<p>The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A resumption point for pagination.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return before paginating.</p>"
        }
      }
    },
    "DescribeCommunicationsResponse": {
      "type": "structure",
      "members": {
        "communications": {
          "shape": "CommunicationList",
          "documentation": "<p>The communications for the case.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A resumption point for pagination.</p>"
        }
      },
      "documentation": "<p>The communications returned by the <a>DescribeCommunications</a> operation.</p>"
    },
    "DescribeServicesRequest": {
      "type": "structure",
      "members": {
        "serviceCodeList": {
          "shape": "ServiceCodeList",
          "documentation": "<p>A JSON-formatted list of service codes available for AWS services.</p>"
        },
        "language": {
          "shape": "Language",
          "documentation": "<p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them.</p>"
        }
      }
    },
    "DescribeServicesResponse": {
      "type": "structure",
      "members": {
        "services": {
          "shape": "ServiceList",
          "documentation": "<p>A JSON-formatted list of AWS services.</p>"
        }
      },
      "documentation": "<p>The list of AWS services returned by the <a>DescribeServices</a> operation.</p>"
    },
    "DescribeSeverityLevelsRequest": {
      "type": "structure",
      "members": {
        "language": {
          "shape": "Language",
          "documentation": "<p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them.</p>"
        }
      }
    },
    "DescribeSeverityLevelsResponse": {
      "type": "structure",
      "members": {
        "severityLevels": {
          "shape": "SeverityLevelsList",
          "documentation": "<p>The available severity levels for the support case. Available severity levels are defined by your service level agreement with AWS.</p>"
        }
      },
      "documentation": "<p>The list of severity levels returned by the <a>DescribeSeverityLevels</a> operation.</p>"
    },
    "DescribeTrustedAdvisorCheckRefreshStatusesRequest": {
      "type": "structure",
      "required": [
        "checkIds"
      ],
      "members": {
        "checkIds": {
          "shape": "StringList",
          "documentation": "<p>The IDs of the Trusted Advisor checks to get the status of. </p> <note> <p>If you specify the check ID of a check that is automatically refreshed, you might see an <code>InvalidParameterValue</code> error.</p> </note>"
        }
      }
    },
    "DescribeTrustedAdvisorCheckRefreshStatusesResponse": {
      "type": "structure",
      "required": [
        "statuses"
      ],
      "members": {
        "statuses": {
          "shape": "TrustedAdvisorCheckRefreshStatusList",
          "documentation": "<p>The refresh status of the specified Trusted Advisor checks.</p>"
        }
      },
      "documentation": "<p>The statuses of the Trusted Advisor checks returned by the <a>DescribeTrustedAdvisorCheckRefreshStatuses</a> operation.</p>"
    },
    "DescribeTrustedAdvisorCheckResultRequest": {
      "type": "structure",
      "required": [
        "checkId"
      ],
      "members": {
        "checkId": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the Trusted Advisor check.</p>"
        },
        "language": {
          "shape": "String",
          "documentation": "<p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeTrustedAdvisorCheckResultResponse": {
      "type": "structure",
      "members": {
        "result": {
          "shape": "TrustedAdvisorCheckResult",
          "documentation": "<p>The detailed results of the Trusted Advisor check.</p>"
        }
      },
      "documentation": "<p>The result of the Trusted Advisor check returned by the <a>DescribeTrustedAdvisorCheckResult</a> operation.</p>"
    },
    "DescribeTrustedAdvisorCheckSummariesRequest": {
      "type": "structure",
      "required": [
        "checkIds"
      ],
      "members": {
        "checkIds": {
          "shape": "StringList",
          "documentation": "<p>The IDs of the Trusted Advisor checks.</p>"
        }
      }
    },
    "DescribeTrustedAdvisorCheckSummariesResponse": {
      "type": "structure",
      "required": [
        "summaries"
      ],
      "members": {
        "summaries": {
          "shape": "TrustedAdvisorCheckSummaryList",
          "documentation": "<p>The summary information for the requested Trusted Advisor checks.</p>"
        }
      },
      "documentation": "<p>The summaries of the Trusted Advisor checks returned by the <a>DescribeTrustedAdvisorCheckSummaries</a> operation.</p>"
    },
    "DescribeTrustedAdvisorChecksRequest": {
      "type": "structure",
      "required": [
        "language"
      ],
      "members": {
        "language": {
          "shape": "String",
          "documentation": "<p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them.</p>"
        }
      }
    },
    "DescribeTrustedAdvisorChecksResponse": {
      "type": "structure",
      "required": [
        "checks"
      ],
      "members": {
        "checks": {
          "shape": "TrustedAdvisorCheckList",
          "documentation": "<p>Information about all available Trusted Advisor checks.</p>"
        }
      },
      "documentation": "<p>Information about the Trusted Advisor checks returned by the <a>DescribeTrustedAdvisorChecks</a> operation.</p>"
    },
    "DisplayId": {
      "type": "string"
    },
    "Double": {
      "type": "double"
    },
    "ExpiryTime": {
      "type": "string"
    },
    "FileName": {
      "type": "string"
    },
    "IncludeCommunications": {
      "type": "boolean"
    },
    "IncludeResolvedCases": {
      "type": "boolean"
    },
    "IssueType": {
      "type": "string"
    },
    "Language": {
      "type": "string"
    },
    "Long": {
      "type": "long"
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 10
    },
    "NextToken": {
      "type": "string"
    },
    "RecentCaseCommunications": {
      "type": "structure",
      "members": {
        "communications": {
          "shape": "CommunicationList",
          "documentation": "<p>The five most recent communications associated with the case.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A resumption point for pagination.</p>"
        }
      },
      "documentation": "<p>The five most recent communications associated with the case.</p>"
    },
    "RefreshTrustedAdvisorCheckRequest": {
      "type": "structure",
      "required": [
        "checkId"
      ],
      "members": {
        "checkId": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the Trusted Advisor check to refresh. <b>Note:</b> Specifying the check ID of a check that is automatically refreshed causes an <code>InvalidParameterValue</code> error.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "RefreshTrustedAdvisorCheckResponse": {
      "type": "structure",
      "required": [
        "status"
      ],
      "members": {
        "status": {
          "shape": "TrustedAdvisorCheckRefreshStatus",
          "documentation": "<p>The current refresh status for a check, including the amount of time until the check is eligible for refresh.</p>"
        }
      },
      "documentation": "<p>The current refresh status of a Trusted Advisor check.</p>"
    },
    "ResolveCaseRequest": {
      "type": "structure",
      "members": {
        "caseId": {
          "shape": "CaseId",
          "documentation": "<p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>"
        }
      }
    },
    "ResolveCaseResponse": {
      "type": "structure",
      "members": {
        "initialCaseStatus": {
          "shape": "CaseStatus",
          "documentation": "<p>The status of the case when the <a>ResolveCase</a> request was sent.</p>"
        },
        "finalCaseStatus": {
          "shape": "CaseStatus",
          "documentation": "<p>The status of the case after the <a>ResolveCase</a> request was processed.</p>"
        }
      },
      "documentation": "<p>The status of the case returned by the <a>ResolveCase</a> operation.</p>"
    },
    "Result": {
      "type": "boolean"
    },
    "Service": {
      "type": "structure",
      "members": {
        "code": {
          "shape": "ServiceCode",
          "documentation": "<p>The code for an AWS service returned by the <a>DescribeServices</a> response. The <code>name</code> element contains the corresponding friendly name.</p>"
        },
        "name": {
          "shape": "ServiceName",
          "documentation": "<p>The friendly name for an AWS service. The <code>code</code> element contains the corresponding code.</p>"
        },
        "categories": {
          "shape": "CategoryList",
          "documentation": "<p>A list of categories that describe the type of support issue a case describes. Categories consist of a category name and a category code. Category names and codes are passed to AWS Support when you call <a>CreateCase</a>.</p>"
        }
      },
      "documentation": "<p>Information about an AWS service returned by the <a>DescribeServices</a> operation.</p>"
    },
    "ServiceCode": {
      "type": "string"
    },
    "ServiceCodeList": {
      "type": "list",
      "member": {
        "shape": "ServiceCode"
      },
      "max": 100,
      "min": 0
    },
    "ServiceList": {
      "type": "list",
      "member": {
        "shape": "Service"
      }
    },
    "ServiceName": {
      "type": "string"
    },
    "SeverityCode": {
      "type": "string"
    },
    "SeverityLevel": {
      "type": "structure",
      "members": {
        "code": {
          "shape": "SeverityLevelCode",
          "documentation": "<p>The code for case severity level.</p> <p>Valid values: <code>low</code> | <code>normal</code> | <code>high</code> | <code>urgent</code> | <code>critical</code> </p>"
        },
        "name": {
          "shape": "SeverityLevelName",
          "documentation": "<p>The name of the severity level that corresponds to the severity level code.</p> <note> <p>The values returned by the API differ from the values that are displayed in the AWS Support Center. For example, for the code \"low\", the API name is \"Low\", but the name in the Support Center is \"General guidance\". These are the Support Center code/name mappings:</p> <ul> <li> <p> <code>low</code>: General guidance</p> </li> <li> <p> <code>normal</code>: System impaired</p> </li> <li> <p> <code>high</code>: Production system impaired</p> </li> <li> <p> <code>urgent</code>: Production system down</p> </li> <li> <p> <code>critical</code>: Business-critical system down</p> </li> </ul> </note> <p>For more information, see <a href=\"https://docs.aws.amazon.com/awssupport/latest/user/case-management.html#choosing-severity\">Choosing a severity</a> in the <i>AWS Support User Guide</i>.</p>"
        }
      },
      "documentation": "<p>A code and name pair that represents the severity level of a support case. The available values depend on the support plan for the account. For more information, see <a href=\"https://docs.aws.amazon.com/awssupport/latest/user/case-management.html#choosing-severity\">Choosing a severity</a> in the <i>AWS Support User Guide</i>.</p>"
    },
    "SeverityLevelCode": {
      "type": "string"
    },
    "SeverityLevelName": {
      "type": "string"
    },
    "SeverityLevelsList": {
      "type": "list",
      "member": {
        "shape": "SeverityLevel"
      }
    },
    "Status": {
      "type": "string"
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
    "Subject": {
      "type": "string"
    },
    "SubmittedBy": {
      "type": "string"
    },
    "TimeCreated": {
      "type": "string"
    },
    "TrustedAdvisorCategorySpecificSummary": {
      "type": "structure",
      "members": {
        "costOptimizing": {
          "shape": "TrustedAdvisorCostOptimizingSummary",
          "documentation": "<p>The summary information about cost savings for a Trusted Advisor check that is in the Cost Optimizing category.</p>"
        }
      },
      "documentation": "<p>The container for summary information that relates to the category of the Trusted Advisor check.</p>"
    },
    "TrustedAdvisorCheckDescription": {
      "type": "structure",
      "required": [
        "id",
        "name",
        "description",
        "category",
        "metadata"
      ],
      "members": {
        "id": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the Trusted Advisor check.</p>"
        },
        "name": {
          "shape": "String",
          "documentation": "<p>The display name for the Trusted Advisor check.</p>"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>The description of the Trusted Advisor check, which includes the alert criteria and recommended operations (contains HTML markup).</p>"
        },
        "category": {
          "shape": "String",
          "documentation": "<p>The category of the Trusted Advisor check.</p>"
        },
        "metadata": {
          "shape": "StringList",
          "documentation": "<p>The column headings for the data returned by the Trusted Advisor check. The order of the headings corresponds to the order of the data in the <b>Metadata</b> element of the <a>TrustedAdvisorResourceDetail</a> for the check. <b>Metadata</b> contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data. </p>"
        }
      },
      "documentation": "<p>The description and metadata for a Trusted Advisor check.</p>"
    },
    "TrustedAdvisorCheckList": {
      "type": "list",
      "member": {
        "shape": "TrustedAdvisorCheckDescription"
      }
    },
    "TrustedAdvisorCheckRefreshStatus": {
      "type": "structure",
      "required": [
        "checkId",
        "status",
        "millisUntilNextRefreshable"
      ],
      "members": {
        "checkId": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the Trusted Advisor check.</p>"
        },
        "status": {
          "shape": "String",
          "documentation": "<p>The status of the Trusted Advisor check for which a refresh has been requested: </p> <ul> <li> <p> <code>none:</code> The check is not refreshed or the non-success status exceeds the timeout</p> </li> <li> <p> <code>enqueued:</code> The check refresh requests has entered the refresh queue</p> </li> <li> <p> <code>processing:</code> The check refresh request is picked up by the rule processing engine</p> </li> <li> <p> <code>success:</code> The check is successfully refreshed</p> </li> <li> <p> <code>abandoned:</code> The check refresh has failed</p> </li> </ul>"
        },
        "millisUntilNextRefreshable": {
          "shape": "Long",
          "documentation": "<p>The amount of time, in milliseconds, until the Trusted Advisor check is eligible for refresh.</p>"
        }
      },
      "documentation": "<p>The refresh status of a Trusted Advisor check.</p>"
    },
    "TrustedAdvisorCheckRefreshStatusList": {
      "type": "list",
      "member": {
        "shape": "TrustedAdvisorCheckRefreshStatus"
      }
    },
    "TrustedAdvisorCheckResult": {
      "type": "structure",
      "required": [
        "checkId",
        "timestamp",
        "status",
        "resourcesSummary",
        "categorySpecificSummary",
        "flaggedResources"
      ],
      "members": {
        "checkId": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the Trusted Advisor check.</p>"
        },
        "timestamp": {
          "shape": "String",
          "documentation": "<p>The time of the last refresh of the check.</p>"
        },
        "status": {
          "shape": "String",
          "documentation": "<p>The alert status of the check: \"ok\" (green), \"warning\" (yellow), \"error\" (red), or \"not_available\".</p>"
        },
        "resourcesSummary": {
          "shape": "TrustedAdvisorResourcesSummary"
        },
        "categorySpecificSummary": {
          "shape": "TrustedAdvisorCategorySpecificSummary",
          "documentation": "<p>Summary information that relates to the category of the check. Cost Optimizing is the only category that is currently supported.</p>"
        },
        "flaggedResources": {
          "shape": "TrustedAdvisorResourceDetailList",
          "documentation": "<p>The details about each resource listed in the check result.</p>"
        }
      },
      "documentation": "<p>The results of a Trusted Advisor check returned by <a>DescribeTrustedAdvisorCheckResult</a>.</p>"
    },
    "TrustedAdvisorCheckSummary": {
      "type": "structure",
      "required": [
        "checkId",
        "timestamp",
        "status",
        "resourcesSummary",
        "categorySpecificSummary"
      ],
      "members": {
        "checkId": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the Trusted Advisor check.</p>"
        },
        "timestamp": {
          "shape": "String",
          "documentation": "<p>The time of the last refresh of the check.</p>"
        },
        "status": {
          "shape": "String",
          "documentation": "<p>The alert status of the check: \"ok\" (green), \"warning\" (yellow), \"error\" (red), or \"not_available\".</p>"
        },
        "hasFlaggedResources": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the Trusted Advisor check has flagged resources.</p>"
        },
        "resourcesSummary": {
          "shape": "TrustedAdvisorResourcesSummary"
        },
        "categorySpecificSummary": {
          "shape": "TrustedAdvisorCategorySpecificSummary",
          "documentation": "<p>Summary information that relates to the category of the check. Cost Optimizing is the only category that is currently supported.</p>"
        }
      },
      "documentation": "<p>A summary of a Trusted Advisor check result, including the alert status, last refresh, and number of resources examined.</p>"
    },
    "TrustedAdvisorCheckSummaryList": {
      "type": "list",
      "member": {
        "shape": "TrustedAdvisorCheckSummary"
      }
    },
    "TrustedAdvisorCostOptimizingSummary": {
      "type": "structure",
      "required": [
        "estimatedMonthlySavings",
        "estimatedPercentMonthlySavings"
      ],
      "members": {
        "estimatedMonthlySavings": {
          "shape": "Double",
          "documentation": "<p>The estimated monthly savings that might be realized if the recommended operations are taken.</p>"
        },
        "estimatedPercentMonthlySavings": {
          "shape": "Double",
          "documentation": "<p>The estimated percentage of savings that might be realized if the recommended operations are taken.</p>"
        }
      },
      "documentation": "<p>The estimated cost savings that might be realized if the recommended operations are taken.</p>"
    },
    "TrustedAdvisorResourceDetail": {
      "type": "structure",
      "required": [
        "status",
        "resourceId",
        "metadata"
      ],
      "members": {
        "status": {
          "shape": "String",
          "documentation": "<p>The status code for the resource identified in the Trusted Advisor check.</p>"
        },
        "region": {
          "shape": "String",
          "documentation": "<p>The AWS region in which the identified resource is located.</p>"
        },
        "resourceId": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the identified resource.</p>"
        },
        "isSuppressed": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the AWS resource was ignored by Trusted Advisor because it was marked as suppressed by the user.</p>"
        },
        "metadata": {
          "shape": "StringList",
          "documentation": "<p>Additional information about the identified resource. The exact metadata and its order can be obtained by inspecting the <a>TrustedAdvisorCheckDescription</a> object returned by the call to <a>DescribeTrustedAdvisorChecks</a>. <b>Metadata</b> contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data.</p>"
        }
      },
      "documentation": "<p>Contains information about a resource identified by a Trusted Advisor check.</p>"
    },
    "TrustedAdvisorResourceDetailList": {
      "type": "list",
      "member": {
        "shape": "TrustedAdvisorResourceDetail"
      }
    },
    "TrustedAdvisorResourcesSummary": {
      "type": "structure",
      "required": [
        "resourcesProcessed",
        "resourcesFlagged",
        "resourcesIgnored",
        "resourcesSuppressed"
      ],
      "members": {
        "resourcesProcessed": {
          "shape": "Long",
          "documentation": "<p>The number of AWS resources that were analyzed by the Trusted Advisor check.</p>"
        },
        "resourcesFlagged": {
          "shape": "Long",
          "documentation": "<p>The number of AWS resources that were flagged (listed) by the Trusted Advisor check.</p>"
        },
        "resourcesIgnored": {
          "shape": "Long",
          "documentation": "<p>The number of AWS resources ignored by Trusted Advisor because information was unavailable.</p>"
        },
        "resourcesSuppressed": {
          "shape": "Long",
          "documentation": "<p>The number of AWS resources ignored by Trusted Advisor because they were marked as suppressed by the user.</p>"
        }
      },
      "documentation": "<p>Details about AWS resources that were analyzed in a call to Trusted Advisor <a>DescribeTrustedAdvisorCheckSummaries</a>.</p>"
    }
  },
  "documentation": "<fullname>AWS Support</fullname> <p>The AWS Support API reference is intended for programmers who need detailed information about the AWS Support operations and data types. This service enables you to manage your AWS Support cases programmatically. It uses HTTP methods that return results in JSON format.</p> <note> <ul> <li> <p>You must have a Business or Enterprise support plan to use the AWS Support API. </p> </li> <li> <p>If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p> </li> </ul> </note> <p>The AWS Support service also exposes a set of <a href=\"http://aws.amazon.com/premiumsupport/trustedadvisor/\">AWS Trusted Advisor</a> features. You can retrieve a list of checks and their descriptions, get check results, specify checks to refresh, and get the refresh status of checks.</p> <p>The following list describes the AWS Support case management operations:</p> <ul> <li> <p> <b>Service names, issue categories, and available severity levels. </b>The <a>DescribeServices</a> and <a>DescribeSeverityLevels</a> operations return AWS service names, service codes, service categories, and problem severity levels. You use these values when you call the <a>CreateCase</a> operation.</p> </li> <li> <p> <b>Case creation, case details, and case resolution.</b> The <a>CreateCase</a>, <a>DescribeCases</a>, <a>DescribeAttachment</a>, and <a>ResolveCase</a> operations create AWS Support cases, retrieve information about cases, and resolve cases.</p> </li> <li> <p> <b>Case communication.</b> The <a>DescribeCommunications</a>, <a>AddCommunicationToCase</a>, and <a>AddAttachmentsToSet</a> operations retrieve and add communications and attachments to AWS Support cases.</p> </li> </ul> <p>The following list describes the operations available from the AWS Support service for Trusted Advisor:</p> <ul> <li> <p> <a>DescribeTrustedAdvisorChecks</a> returns the list of checks that run against your AWS resources.</p> </li> <li> <p>Using the <code>checkId</code> for a specific check returned by <a>DescribeTrustedAdvisorChecks</a>, you can call <a>DescribeTrustedAdvisorCheckResult</a> to obtain the results for the check that you specified.</p> </li> <li> <p> <a>DescribeTrustedAdvisorCheckSummaries</a> returns summarized results for one or more Trusted Advisor checks.</p> </li> <li> <p> <a>RefreshTrustedAdvisorCheck</a> requests that Trusted Advisor rerun a specified check.</p> </li> <li> <p> <a>DescribeTrustedAdvisorCheckRefreshStatuses</a> reports the refresh status of one or more checks.</p> </li> </ul> <p>For authentication of requests, AWS Support uses <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4 Signing Process</a>.</p> <p>See <a href=\"https://docs.aws.amazon.com/awssupport/latest/user/Welcome.html\">About the AWS Support API</a> in the <i>AWS Support User Guide</i> for information about how to use this service to create and manage your support cases, and how to call Trusted Advisor for results of checks on your resources.</p>"
}
]===]))
