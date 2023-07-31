local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-02-03",
    "endpointPrefix": "kendra",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "kendra",
    "serviceFullName": "AWSKendraFrontendService",
    "serviceId": "kendra",
    "signatureVersion": "v4",
    "signingName": "kendra",
    "targetPrefix": "AWSKendraFrontendService",
    "uid": "kendra-2019-02-03"
  },
  "operations": {
    "BatchDeleteDocument": {
      "name": "BatchDeleteDocument",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchDeleteDocumentRequest"
      },
      "output": {
        "shape": "BatchDeleteDocumentResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Removes one or more documents from an index. The documents must have been added with the <a>BatchPutDocument</a> operation.</p> <p>The documents are deleted asynchronously. You can see the progress of the deletion by using AWS CloudWatch. Any error messages releated to the processing of the batch are sent to you CloudWatch log.</p>"
    },
    "BatchPutDocument": {
      "name": "BatchPutDocument",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchPutDocumentRequest"
      },
      "output": {
        "shape": "BatchPutDocumentResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Adds one or more documents to an index.</p> <p>The <code>BatchPutDocument</code> operation enables you to ingest inline documents or a set of documents stored in an Amazon S3 bucket. Use this operation to ingest your text and unstructured text into an index, add custom attributes to the documents, and to attach an access control list to the documents added to the index.</p> <p>The documents are indexed asynchronously. You can see the progress of the batch using AWS CloudWatch. Any error messages related to processing the batch are sent to your AWS CloudWatch log.</p>"
    },
    "CreateDataSource": {
      "name": "CreateDataSource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDataSourceRequest"
      },
      "output": {
        "shape": "CreateDataSourceResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceAlreadyExistException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Creates a data source that you use to with an Amazon Kendra index. </p> <p>You specify a name, connector type and description for your data source. You can choose between an S3 connector, a SharePoint Online connector, and a database connector.</p> <p>You also specify configuration information such as document metadata (author, source URI, and so on) and user context information.</p> <p> <code>CreateDataSource</code> is a synchronous operation. The operation returns 200 if the data source was successfully created. Otherwise, an exception is raised.</p>"
    },
    "CreateFaq": {
      "name": "CreateFaq",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateFaqRequest"
      },
      "output": {
        "shape": "CreateFaqResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Creates an new set of frequently asked question (FAQ) questions and answers.</p>"
    },
    "CreateIndex": {
      "name": "CreateIndex",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateIndexRequest"
      },
      "output": {
        "shape": "CreateIndexResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceAlreadyExistException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Creates a new Amazon Kendra index. Index creation is an asynchronous operation. To determine if index creation has completed, check the <code>Status</code> field returned from a call to . The <code>Status</code> field is set to <code>ACTIVE</code> when the index is ready to use.</p> <p>Once the index is active you can index your documents using the operation or using one of the supported data sources. </p>"
    },
    "DeleteDataSource": {
      "name": "DeleteDataSource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDataSourceRequest"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Deletes an Amazon Kendra data source. An exception is not thrown if the data source is already being deleted. While the data source is being deleted, the <code>Status</code> field returned by a call to the operation is set to <code>DELETING</code>. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/delete-data-source.html\">Deleting Data Sources</a>.</p>"
    },
    "DeleteFaq": {
      "name": "DeleteFaq",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteFaqRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Removes an FAQ from an index.</p>"
    },
    "DeleteIndex": {
      "name": "DeleteIndex",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteIndexRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Deletes an existing Amazon Kendra index. An exception is not thrown if the index is already being deleted. While the index is being deleted, the <code>Status</code> field returned by a call to the <a>DescribeIndex</a> operation is set to <code>DELETING</code>.</p>"
    },
    "DescribeDataSource": {
      "name": "DescribeDataSource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDataSourceRequest"
      },
      "output": {
        "shape": "DescribeDataSourceResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets information about a Amazon Kendra data source.</p>"
    },
    "DescribeFaq": {
      "name": "DescribeFaq",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeFaqRequest"
      },
      "output": {
        "shape": "DescribeFaqResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets information about an FAQ list.</p>"
    },
    "DescribeIndex": {
      "name": "DescribeIndex",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeIndexRequest"
      },
      "output": {
        "shape": "DescribeIndexResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Describes an existing Amazon Kendra index</p>"
    },
    "ListDataSourceSyncJobs": {
      "name": "ListDataSourceSyncJobs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDataSourceSyncJobsRequest"
      },
      "output": {
        "shape": "ListDataSourceSyncJobsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets statistics about synchronizing Amazon Kendra with a data source.</p>"
    },
    "ListDataSources": {
      "name": "ListDataSources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDataSourcesRequest"
      },
      "output": {
        "shape": "ListDataSourcesResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Lists the data sources that you have created.</p>"
    },
    "ListFaqs": {
      "name": "ListFaqs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListFaqsRequest"
      },
      "output": {
        "shape": "ListFaqsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets a list of FAQ lists associated with an index.</p>"
    },
    "ListIndices": {
      "name": "ListIndices",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListIndicesRequest"
      },
      "output": {
        "shape": "ListIndicesResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Lists the Amazon Kendra indexes that you have created.</p>"
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
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceUnavailableException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets a list of tags associated with a specified resource. Indexes, FAQs, and data sources can have tags associated with them.</p>"
    },
    "Query": {
      "name": "Query",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "QueryRequest"
      },
      "output": {
        "shape": "QueryResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Searches an active index. Use this API to search your documents using query. The <code>Query</code> operation enables to do faceted search and to filter results based on document attributes.</p> <p>It also enables you to provide user context that Amazon Kendra uses to enforce document access control in the search results. </p> <p>Amazon Kendra searches your index for text content and question and answer (FAQ) content. By default the response contains three types of results.</p> <ul> <li> <p>Relevant passages</p> </li> <li> <p>Matching FAQs</p> </li> <li> <p>Relevant documents</p> </li> </ul> <p>You can specify that the query return only one type of result using the <code>QueryResultTypeConfig</code> parameter.</p>"
    },
    "StartDataSourceSyncJob": {
      "name": "StartDataSourceSyncJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartDataSourceSyncJobRequest"
      },
      "output": {
        "shape": "StartDataSourceSyncJobResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Starts a synchronization job for a data source. If a synchronization job is already in progress, Amazon Kendra returns a <code>ResourceInUseException</code> exception.</p>"
    },
    "StopDataSourceSyncJob": {
      "name": "StopDataSourceSyncJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopDataSourceSyncJobRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Stops a running synchronization job. You can't stop a scheduled synchronization job.</p>"
    },
    "SubmitFeedback": {
      "name": "SubmitFeedback",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SubmitFeedbackRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceUnavailableException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Enables you to provide feedback to Amazon Kendra to improve the performance of the service. </p>"
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
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceUnavailableException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Adds the specified tag to the specified index, FAQ, or data source resource. If the tag already exists, the existing value is replaced with the new value.</p>"
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
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceUnavailableException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Removes a tag from an index, FAQ, or a data source.</p>"
    },
    "UpdateDataSource": {
      "name": "UpdateDataSource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateDataSourceRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Updates an existing Amazon Kendra data source.</p>"
    },
    "UpdateIndex": {
      "name": "UpdateIndex",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateIndexRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Updates an existing Amazon Kendra index.</p>"
    }
  },
  "shapes": {
    "AccessControlListConfiguration": {
      "type": "structure",
      "members": {
        "KeyPath": {
          "shape": "S3ObjectKey",
          "documentation": "<p>Path to the AWS S3 bucket that contains the ACL files.</p>"
        }
      },
      "documentation": "<p>Access Control List files for the documents in a data source.</p>"
    },
    "AclConfiguration": {
      "type": "structure",
      "required": [
        "AllowedGroupsColumnName"
      ],
      "members": {
        "AllowedGroupsColumnName": {
          "shape": "ColumnName",
          "documentation": "<p>A list of groups, separated by semi-colons, that filters a query response based on user context. The document is only returned to users that are in one of the groups specified in the <code>UserContext</code> field of the <a>Query</a> operation.</p>"
        }
      },
      "documentation": "<p>Provides information about the column that should be used for filtering the query response by groups.</p>"
    },
    "AdditionalResultAttribute": {
      "type": "structure",
      "required": [
        "Key",
        "ValueType",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "String",
          "documentation": "<p>The key that identifies the attribute.</p>"
        },
        "ValueType": {
          "shape": "AdditionalResultAttributeValueType",
          "documentation": "<p>The data type of the <code>Value</code> property.</p>"
        },
        "Value": {
          "shape": "AdditionalResultAttributeValue",
          "documentation": "<p>An object that contains the attribute value.</p>"
        }
      },
      "documentation": "<p>An attribute returned from an index query.</p>"
    },
    "AdditionalResultAttributeList": {
      "type": "list",
      "member": {
        "shape": "AdditionalResultAttribute"
      }
    },
    "AdditionalResultAttributeValue": {
      "type": "structure",
      "members": {
        "TextWithHighlightsValue": {
          "shape": "TextWithHighlights",
          "documentation": "<p>The text associated with the attribute and information about the highlight to apply to the text.</p>"
        }
      },
      "documentation": "<p>An attribute returned with a document from a search.</p>"
    },
    "AdditionalResultAttributeValueType": {
      "type": "string",
      "enum": [
        "TEXT_WITH_HIGHLIGHTS_VALUE"
      ]
    },
    "AmazonResourceName": {
      "type": "string",
      "max": 1011,
      "min": 1
    },
    "AttributeFilter": {
      "type": "structure",
      "members": {
        "AndAllFilters": {
          "shape": "AttributeFilterList",
          "documentation": "<p>Performs a logical <code>AND</code> operation on all supplied filters.</p>"
        },
        "OrAllFilters": {
          "shape": "AttributeFilterList",
          "documentation": "<p>Performs a logical <code>OR</code> operation on all supplied filters.</p>"
        },
        "NotFilter": {
          "shape": "AttributeFilter",
          "documentation": "<p>Performs a logical <code>NOT</code> operation on all supplied filters.</p>"
        },
        "EqualsTo": {
          "shape": "DocumentAttribute",
          "documentation": "<p>Performs an equals operation on two document attributes.</p>"
        },
        "ContainsAll": {
          "shape": "DocumentAttribute",
          "documentation": "<p>Returns true when a document contains all of the specified document attributes. This filter is only applicable to <code>StringListValue</code> metadata.</p>"
        },
        "ContainsAny": {
          "shape": "DocumentAttribute",
          "documentation": "<p>Returns true when a document contains any of the specified document attributes. This filter is only applicable to <code>StringListValue</code> metadata.</p>"
        },
        "GreaterThan": {
          "shape": "DocumentAttribute",
          "documentation": "<p>Performs a greater than operation on two document attributes. Use with a document attribute of type <code>Integer</code> or <code>Long</code>.</p>"
        },
        "GreaterThanOrEquals": {
          "shape": "DocumentAttribute",
          "documentation": "<p>Performs a greater or equals than operation on two document attributes. Use with a document attribute of type <code>Integer</code> or <code>Long</code>.</p>"
        },
        "LessThan": {
          "shape": "DocumentAttribute",
          "documentation": "<p>Performs a less than operation on two document attributes. Use with a document attribute of type <code>Integer</code> or <code>Long</code>.</p>"
        },
        "LessThanOrEquals": {
          "shape": "DocumentAttribute",
          "documentation": "<p>Performs a less than or equals operation on two document attributes. Use with a document attribute of type <code>Integer</code> or <code>Long</code>.</p>"
        }
      },
      "documentation": "<p>Provides filtering the query results based on document attributes.</p> <p>When you use the <code>AndAllFilters</code> or <code>OrAllFilters</code>, filters you can use 2 layers under the first attribute filter. For example, you can use:</p> <p> <code>&lt;AndAllFilters&gt;</code> </p> <ol> <li> <p> <code> &lt;OrAllFilters&gt;</code> </p> </li> <li> <p> <code> &lt;EqualTo&gt;</code> </p> </li> </ol> <p>If you use more than 2 layers, you receive a <code>ValidationException</code> exception with the message \"<code>AttributeFilter</code> cannot have a depth of more than 2.\"</p>"
    },
    "AttributeFilterList": {
      "type": "list",
      "member": {
        "shape": "AttributeFilter"
      }
    },
    "BatchDeleteDocumentRequest": {
      "type": "structure",
      "required": [
        "IndexId",
        "DocumentIdList"
      ],
      "members": {
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index that contains the documents to delete.</p>"
        },
        "DocumentIdList": {
          "shape": "DocumentIdList",
          "documentation": "<p>One or more identifiers for documents to delete from the index.</p>"
        },
        "DataSourceSyncJobMetricTarget": {
          "shape": "DataSourceSyncJobMetricTarget"
        }
      }
    },
    "BatchDeleteDocumentResponse": {
      "type": "structure",
      "members": {
        "FailedDocuments": {
          "shape": "BatchDeleteDocumentResponseFailedDocuments",
          "documentation": "<p>A list of documents that could not be removed from the index. Each entry contains an error message that indicates why the document couldn't be removed from the index.</p>"
        }
      }
    },
    "BatchDeleteDocumentResponseFailedDocument": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "DocumentId",
          "documentation": "<p>The identifier of the document that couldn't be removed from the index.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The error code for why the document couldn't be removed from the index.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>An explanation for why the document couldn't be removed from the index.</p>"
        }
      },
      "documentation": "<p>Provides information about documents that could not be removed from an index by the <a>BatchDeleteDocument</a> operation.</p>"
    },
    "BatchDeleteDocumentResponseFailedDocuments": {
      "type": "list",
      "member": {
        "shape": "BatchDeleteDocumentResponseFailedDocument"
      }
    },
    "BatchPutDocumentRequest": {
      "type": "structure",
      "required": [
        "IndexId",
        "Documents"
      ],
      "members": {
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index to add the documents to. You need to create the index first using the <a>CreateIndex</a> operation.</p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of a role that is allowed to run the <code>BatchPutDocument</code> operation. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html\">IAM Roles for Amazon Kendra</a>.</p>"
        },
        "Documents": {
          "shape": "DocumentList",
          "documentation": "<p>One or more documents to add to the index. </p> <p>Documents have the following file size limits.</p> <ul> <li> <p>5 MB total size for inline documents</p> </li> <li> <p>50 MB total size for files from an S3 bucket</p> </li> <li> <p>5 MB extracted text for any file</p> </li> </ul> <p>For more information about file size and transaction per second quotas, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/quotas.html\">Quotas</a>.</p>"
        }
      }
    },
    "BatchPutDocumentResponse": {
      "type": "structure",
      "members": {
        "FailedDocuments": {
          "shape": "BatchPutDocumentResponseFailedDocuments",
          "documentation": "<p>A list of documents that were not added to the index because the document failed a validation check. Each document contains an error message that indicates why the document couldn't be added to the index.</p> <p>If there was an error adding a document to an index the error is reported in your AWS CloudWatch log. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/cloudwatch-logs.html\">Monitoring Amazon Kendra with Amazon CloudWatch Logs</a> </p>"
        }
      }
    },
    "BatchPutDocumentResponseFailedDocument": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "DocumentId",
          "documentation": "<p>The unique identifier of the document.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The type of error that caused the document to fail to be indexed.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>A description of the reason why the document could not be indexed.</p>"
        }
      },
      "documentation": "<p>Provides information about a document that could not be indexed.</p>"
    },
    "BatchPutDocumentResponseFailedDocuments": {
      "type": "list",
      "member": {
        "shape": "BatchPutDocumentResponseFailedDocument"
      }
    },
    "Blob": {
      "type": "blob"
    },
    "Boolean": {
      "type": "boolean"
    },
    "CapacityUnitsConfiguration": {
      "type": "structure",
      "required": [
        "StorageCapacityUnits",
        "QueryCapacityUnits"
      ],
      "members": {
        "StorageCapacityUnits": {
          "shape": "StorageCapacityUnit",
          "documentation": "<p>The amount of extra storage capacity for an index. Each capacity unit provides 150 Gb of storage space or 500,000 documents, whichever is reached first.</p>"
        },
        "QueryCapacityUnits": {
          "shape": "QueryCapacityUnit",
          "documentation": "<p>The amount of extra query capacity for an index. Each capacity unit provides 0.5 queries per second and 40,000 queries per day.</p>"
        }
      },
      "documentation": "<p>Specifies capacity units configured for your index. You can add and remove capacity units to tune an index to your requirements.</p>"
    },
    "ChangeDetectingColumns": {
      "type": "list",
      "member": {
        "shape": "ColumnName"
      },
      "max": 5,
      "min": 1
    },
    "ClickFeedback": {
      "type": "structure",
      "required": [
        "ResultId",
        "ClickTime"
      ],
      "members": {
        "ResultId": {
          "shape": "ResultId",
          "documentation": "<p>The unique identifier of the search result that was clicked.</p>"
        },
        "ClickTime": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp of the date and time that the result was clicked.</p>"
        }
      },
      "documentation": "<p>Gathers information about when a particular result was clicked by a user. Your application uses the <a>SubmitFeedback</a> operation to provide click information.</p>"
    },
    "ClickFeedbackList": {
      "type": "list",
      "member": {
        "shape": "ClickFeedback"
      }
    },
    "ClientTokenName": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "ColumnConfiguration": {
      "type": "structure",
      "required": [
        "DocumentIdColumnName",
        "DocumentDataColumnName",
        "ChangeDetectingColumns"
      ],
      "members": {
        "DocumentIdColumnName": {
          "shape": "ColumnName",
          "documentation": "<p>The column that provides the document's unique identifier.</p>"
        },
        "DocumentDataColumnName": {
          "shape": "ColumnName",
          "documentation": "<p>The column that contains the contents of the document.</p>"
        },
        "DocumentTitleColumnName": {
          "shape": "ColumnName",
          "documentation": "<p>The column that contains the title of the document.</p>"
        },
        "FieldMappings": {
          "shape": "DataSourceToIndexFieldMappingList",
          "documentation": "<p>An array of objects that map database column names to the corresponding fields in an index. You must first create the fields in the index using the <a>UpdateIndex</a> operation.</p>"
        },
        "ChangeDetectingColumns": {
          "shape": "ChangeDetectingColumns",
          "documentation": "<p>One to five columns that indicate when a document in the database has changed.</p>"
        }
      },
      "documentation": "<p>Provides information about how Amazon Kendra should use the columns of a database in an index.</p>"
    },
    "ColumnName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^[a-zA-Z][a-zA-Z0-9_]*$"
    },
    "ConnectionConfiguration": {
      "type": "structure",
      "required": [
        "DatabaseHost",
        "DatabasePort",
        "DatabaseName",
        "TableName",
        "SecretArn"
      ],
      "members": {
        "DatabaseHost": {
          "shape": "DatabaseHost",
          "documentation": "<p>The name of the host for the database. Can be either a string (host.subdomain.domain.tld) or an IPv4 or IPv6 address.</p>"
        },
        "DatabasePort": {
          "shape": "DatabasePort",
          "documentation": "<p>The port that the database uses for connections.</p>"
        },
        "DatabaseName": {
          "shape": "DatabaseName",
          "documentation": "<p>The name of the database containing the document data.</p>"
        },
        "TableName": {
          "shape": "TableName",
          "documentation": "<p>The name of the table that contains the document data.</p>"
        },
        "SecretArn": {
          "shape": "SecretArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of credentials stored in AWS Secrets Manager. The credentials should be a user/password pair. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/data-source-database.html\">Using a Database Data Source</a>. For more information about AWS Secrets Manager, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html\"> What Is AWS Secrets Manager </a> in the <i>AWS Secrets Manager</i> user guide.</p>"
        }
      },
      "documentation": "<p>Provides the information necessary to connect to a database.</p>"
    },
    "ContentType": {
      "type": "string",
      "enum": [
        "PDF",
        "HTML",
        "MS_WORD",
        "PLAIN_TEXT",
        "PPT"
      ]
    },
    "CreateDataSourceRequest": {
      "type": "structure",
      "required": [
        "Name",
        "IndexId",
        "Type",
        "Configuration",
        "RoleArn"
      ],
      "members": {
        "Name": {
          "shape": "DataSourceName",
          "documentation": "<p>A unique name for the data source. A data source name can't be changed without deleting and recreating the data source.</p>"
        },
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index that should be associated with this data source.</p>"
        },
        "Type": {
          "shape": "DataSourceType",
          "documentation": "<p>The type of repository that contains the data source.</p>"
        },
        "Configuration": {
          "shape": "DataSourceConfiguration",
          "documentation": "<p>The connector configuration information that is required to access the repository.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A description for the data source.</p>"
        },
        "Schedule": {
          "shape": "ScanSchedule",
          "documentation": "<p>Sets the frequency that Amazon Kendra will check the documents in your repository and update the index. If you don't set a schedule Amazon Kendra will not periodically update the index. You can call the <code>StartDataSourceSyncJob</code> operation to update the index.</p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of a role with permission to access the data source. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html\">IAM Roles for Amazon Kendra</a>.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of key-value pairs that identify the data source. You can use the tags to identify and organize your resources and to control access to resources.</p>"
        }
      }
    },
    "CreateDataSourceResponse": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "DataSourceId",
          "documentation": "<p>A unique identifier for the data source.</p>"
        }
      }
    },
    "CreateFaqRequest": {
      "type": "structure",
      "required": [
        "IndexId",
        "Name",
        "S3Path",
        "RoleArn"
      ],
      "members": {
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index that contains the FAQ.</p>"
        },
        "Name": {
          "shape": "FaqName",
          "documentation": "<p>The name that should be associated with the FAQ.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A description of the FAQ.</p>"
        },
        "S3Path": {
          "shape": "S3Path",
          "documentation": "<p>The S3 location of the FAQ input data.</p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of a role with permission to access the S3 bucket that contains the FAQs. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html\">IAM Roles for Amazon Kendra</a>.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of key-value pairs that identify the FAQ. You can use the tags to identify and organize your resources and to control access to resources.</p>"
        }
      }
    },
    "CreateFaqResponse": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "FaqId",
          "documentation": "<p>The unique identifier of the FAQ.</p>"
        }
      }
    },
    "CreateIndexRequest": {
      "type": "structure",
      "required": [
        "Name",
        "RoleArn"
      ],
      "members": {
        "Name": {
          "shape": "IndexName",
          "documentation": "<p>The name for the new index.</p>"
        },
        "Edition": {
          "shape": "IndexEdition",
          "documentation": "<p>The Amazon Kendra edition to use for the index. Choose <code>DEVELOPER_EDITION</code> for indexes intended for development, testing, or proof of concept. Use <code>ENTERPRISE_EDITION</code> for your production databases. Once you set the edition for an index, it can't be changed. </p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>An IAM role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role used when you use the <code>BatchPutDocument</code> operation to index documents from an Amazon S3 bucket.</p>"
        },
        "ServerSideEncryptionConfiguration": {
          "shape": "ServerSideEncryptionConfiguration",
          "documentation": "<p>The identifier of the AWS KMS customer managed key (CMK) to use to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A description for the index.</p>"
        },
        "ClientToken": {
          "shape": "ClientTokenName",
          "documentation": "<p>A token that you provide to identify the request to create an index. Multiple calls to the <code>CreateIndex</code> operation with the same client token will create only one index.”</p>",
          "idempotencyToken": true
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of key-value pairs that identify the index. You can use the tags to identify and organize your resources and to control access to resources.</p>"
        }
      }
    },
    "CreateIndexResponse": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "IndexId",
          "documentation": "<p>The unique identifier of the index. Use this identifier when you query an index, set up a data source, or index a document.</p>"
        }
      }
    },
    "DataSourceConfiguration": {
      "type": "structure",
      "members": {
        "S3Configuration": {
          "shape": "S3DataSourceConfiguration",
          "documentation": "<p>Provides information to create a connector for a document repository in an Amazon S3 bucket.</p>"
        },
        "SharePointConfiguration": {
          "shape": "SharePointConfiguration",
          "documentation": "<p>Provides information necessary to create a connector for a Microsoft SharePoint site.</p>"
        },
        "DatabaseConfiguration": {
          "shape": "DatabaseConfiguration",
          "documentation": "<p>Provides information necessary to create a connector for a database.</p>"
        },
        "SalesforceConfiguration": {
          "shape": "SalesforceConfiguration",
          "documentation": "<p>Provides configuration information for data sources that connect to a Salesforce site.</p>"
        },
        "OneDriveConfiguration": {
          "shape": "OneDriveConfiguration",
          "documentation": "<p>Provided configuration for data sources that connect to Microsoft OneDrive.</p>"
        },
        "ServiceNowConfiguration": {
          "shape": "ServiceNowConfiguration",
          "documentation": "<p>Provides configuration for data sources that connect to ServiceNow instances.</p>"
        }
      },
      "documentation": "<p>Configuration information for a Amazon Kendra data source.</p>"
    },
    "DataSourceDateFieldFormat": {
      "type": "string",
      "max": 40,
      "min": 4,
      "pattern": "^(?!\\s).*(?<!\\s)$"
    },
    "DataSourceFieldName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^[a-zA-Z][a-zA-Z0-9_.]*$"
    },
    "DataSourceId": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[a-zA-Z0-9][a-zA-Z0-9_-]*"
    },
    "DataSourceInclusionsExclusionsStrings": {
      "type": "list",
      "member": {
        "shape": "DataSourceInclusionsExclusionsStringsMember"
      },
      "max": 100,
      "min": 0
    },
    "DataSourceInclusionsExclusionsStringsMember": {
      "type": "string",
      "max": 50,
      "min": 1
    },
    "DataSourceName": {
      "type": "string",
      "max": 1000,
      "min": 1,
      "pattern": "[a-zA-Z0-9][a-zA-Z0-9_-]*"
    },
    "DataSourceStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "DELETING",
        "FAILED",
        "UPDATING",
        "ACTIVE"
      ]
    },
    "DataSourceSummary": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "DataSourceName",
          "documentation": "<p>The name of the data source.</p>"
        },
        "Id": {
          "shape": "DataSourceId",
          "documentation": "<p>The unique identifier for the data source.</p>"
        },
        "Type": {
          "shape": "DataSourceType",
          "documentation": "<p>The type of the data source.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The UNIX datetime that the data source was created.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The UNIX datetime that the data source was lasted updated. </p>"
        },
        "Status": {
          "shape": "DataSourceStatus",
          "documentation": "<p>The status of the data source. When the status is <code>ATIVE</code> the data source is ready to use.</p>"
        }
      },
      "documentation": "<p>Summary information for a Amazon Kendra data source. Returned in a call to .</p>"
    },
    "DataSourceSummaryList": {
      "type": "list",
      "member": {
        "shape": "DataSourceSummary"
      }
    },
    "DataSourceSyncJob": {
      "type": "structure",
      "members": {
        "ExecutionId": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the synchronization job.</p>"
        },
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The UNIX datetime that the synchronization job was started.</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The UNIX datetime that the synchronization job was completed.</p>"
        },
        "Status": {
          "shape": "DataSourceSyncJobStatus",
          "documentation": "<p>The execution status of the synchronization job. When the <code>Status</code> field is set to <code>SUCCEEDED</code>, the synchronization job is done. If the status code is set to <code>FAILED</code>, the <code>ErrorCode</code> and <code>ErrorMessage</code> fields give you the reason for the failure.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>If the <code>Status</code> field is set to <code>ERROR</code>, the <code>ErrorMessage</code> field contains a description of the error that caused the synchronization to fail.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>If the <code>Status</code> field is set to <code>FAILED</code>, the <code>ErrorCode</code> field contains a the reason that the synchronization failed.</p>"
        },
        "DataSourceErrorCode": {
          "shape": "String",
          "documentation": "<p>If the reason that the synchronization failed is due to an error with the underlying data source, this field contains a code that identifies the error.</p>"
        },
        "Metrics": {
          "shape": "DataSourceSyncJobMetrics",
          "documentation": "<p>Maps a batch delete document request to a specific data source sync job. This is optional and should only be supplied when documents are deleted by a connector.</p>"
        }
      },
      "documentation": "<p>Provides information about a synchronization job.</p>"
    },
    "DataSourceSyncJobHistoryList": {
      "type": "list",
      "member": {
        "shape": "DataSourceSyncJob"
      }
    },
    "DataSourceSyncJobId": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[a-zA-Z0-9][a-zA-Z0-9_-]*"
    },
    "DataSourceSyncJobMetricTarget": {
      "type": "structure",
      "required": [
        "DataSourceId",
        "DataSourceSyncJobId"
      ],
      "members": {
        "DataSourceId": {
          "shape": "DataSourceId",
          "documentation": "<p>The ID of the data source that is running the sync job.</p>"
        },
        "DataSourceSyncJobId": {
          "shape": "DataSourceSyncJobId",
          "documentation": "<p>The ID of the sync job that is running on the data source.</p>"
        }
      },
      "documentation": "<p>Maps a particular data source sync job to a particular data source.</p>"
    },
    "DataSourceSyncJobMetrics": {
      "type": "structure",
      "members": {
        "DocumentsAdded": {
          "shape": "MetricValue",
          "documentation": "<p>The number of documents added from the data source up to now in the data source sync.</p>"
        },
        "DocumentsModified": {
          "shape": "MetricValue",
          "documentation": "<p>The number of documents modified in the data source up to now in the data source sync run.</p>"
        },
        "DocumentsDeleted": {
          "shape": "MetricValue",
          "documentation": "<p>The number of documents deleted from the data source up to now in the data source sync run.</p>"
        },
        "DocumentsFailed": {
          "shape": "MetricValue",
          "documentation": "<p>The number of documents that failed to sync from the data source up to now in the data source sync run.</p>"
        },
        "DocumentsScanned": {
          "shape": "MetricValue",
          "documentation": "<p>The current number of documents crawled by the current sync job in the data source.</p>"
        }
      },
      "documentation": "<p>Maps a batch delete document request to a specific data source sync job. This is optional and should only be supplied when documents are deleted by a connector.</p>"
    },
    "DataSourceSyncJobStatus": {
      "type": "string",
      "enum": [
        "FAILED",
        "SUCCEEDED",
        "SYNCING",
        "INCOMPLETE",
        "STOPPING",
        "ABORTED",
        "SYNCING_INDEXING"
      ]
    },
    "DataSourceToIndexFieldMapping": {
      "type": "structure",
      "required": [
        "DataSourceFieldName",
        "IndexFieldName"
      ],
      "members": {
        "DataSourceFieldName": {
          "shape": "DataSourceFieldName",
          "documentation": "<p>The name of the column or attribute in the data source.</p>"
        },
        "DateFieldFormat": {
          "shape": "DataSourceDateFieldFormat",
          "documentation": "<p>The type of data stored in the column or attribute.</p>"
        },
        "IndexFieldName": {
          "shape": "IndexFieldName",
          "documentation": "<p>The name of the field in the index.</p>"
        }
      },
      "documentation": "<p>Maps a column or attribute in the data source to an index field. You must first create the fields in the index using the <a>UpdateIndex</a> operation.</p>"
    },
    "DataSourceToIndexFieldMappingList": {
      "type": "list",
      "member": {
        "shape": "DataSourceToIndexFieldMapping"
      },
      "max": 100,
      "min": 1
    },
    "DataSourceType": {
      "type": "string",
      "enum": [
        "S3",
        "SHAREPOINT",
        "DATABASE",
        "SALESFORCE",
        "ONEDRIVE",
        "SERVICENOW"
      ]
    },
    "DataSourceVpcConfiguration": {
      "type": "structure",
      "required": [
        "SubnetIds",
        "SecurityGroupIds"
      ],
      "members": {
        "SubnetIds": {
          "shape": "SubnetIdList",
          "documentation": "<p>A list of identifiers for subnets within your Amazon VPC. The subnets should be able to connect to each other in the VPC, and they should have outgoing access to the Internet through a NAT device.</p>"
        },
        "SecurityGroupIds": {
          "shape": "SecurityGroupIdList",
          "documentation": "<p>A list of identifiers of security groups within your Amazon VPC. The security groups should enable Amazon Kendra to connect to the data source.</p>"
        }
      },
      "documentation": "<p>Provides information for connecting to an Amazon VPC.</p>"
    },
    "DatabaseConfiguration": {
      "type": "structure",
      "required": [
        "DatabaseEngineType",
        "ConnectionConfiguration",
        "ColumnConfiguration"
      ],
      "members": {
        "DatabaseEngineType": {
          "shape": "DatabaseEngineType",
          "documentation": "<p>The type of database engine that runs the database.</p>"
        },
        "ConnectionConfiguration": {
          "shape": "ConnectionConfiguration",
          "documentation": "<p>The information necessary to connect to a database.</p>"
        },
        "VpcConfiguration": {
          "shape": "DataSourceVpcConfiguration"
        },
        "ColumnConfiguration": {
          "shape": "ColumnConfiguration",
          "documentation": "<p>Information about where the index should get the document information from the database.</p>"
        },
        "AclConfiguration": {
          "shape": "AclConfiguration",
          "documentation": "<p>Information about the database column that provides information for user context filtering.</p>"
        },
        "SqlConfiguration": {
          "shape": "SqlConfiguration",
          "documentation": "<p>Provides information about how Amazon Kendra uses quote marks around SQL identifiers when querying a database data source.</p>"
        }
      },
      "documentation": "<p>Provides the information necessary to connect a database to an index. </p>"
    },
    "DatabaseEngineType": {
      "type": "string",
      "enum": [
        "RDS_AURORA_MYSQL",
        "RDS_AURORA_POSTGRESQL",
        "RDS_MYSQL",
        "RDS_POSTGRESQL"
      ]
    },
    "DatabaseHost": {
      "type": "string",
      "max": 253,
      "min": 1
    },
    "DatabaseName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^[a-zA-Z][a-zA-Z0-9_]*$"
    },
    "DatabasePort": {
      "type": "integer",
      "max": 65535,
      "min": 1
    },
    "DeleteDataSourceRequest": {
      "type": "structure",
      "required": [
        "Id",
        "IndexId"
      ],
      "members": {
        "Id": {
          "shape": "DataSourceId",
          "documentation": "<p>The unique identifier of the data source to delete.</p>"
        },
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The unique identifier of the index associated with the data source.</p>"
        }
      }
    },
    "DeleteFaqRequest": {
      "type": "structure",
      "required": [
        "Id",
        "IndexId"
      ],
      "members": {
        "Id": {
          "shape": "FaqId",
          "documentation": "<p>The identifier of the FAQ to remove.</p>"
        },
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The index to remove the FAQ from.</p>"
        }
      }
    },
    "DeleteIndexRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index to delete.</p>"
        }
      }
    },
    "DescribeDataSourceRequest": {
      "type": "structure",
      "required": [
        "Id",
        "IndexId"
      ],
      "members": {
        "Id": {
          "shape": "DataSourceId",
          "documentation": "<p>The unique identifier of the data source to describe.</p>"
        },
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index that contains the data source.</p>"
        }
      }
    },
    "DescribeDataSourceResponse": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "DataSourceId",
          "documentation": "<p>The identifier of the data source.</p>"
        },
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index that contains the data source.</p>"
        },
        "Name": {
          "shape": "DataSourceName",
          "documentation": "<p>The name that you gave the data source when it was created.</p>"
        },
        "Type": {
          "shape": "DataSourceType",
          "documentation": "<p>The type of the data source.</p>"
        },
        "Configuration": {
          "shape": "DataSourceConfiguration",
          "documentation": "<p>Information that describes where the data source is located and how the data source is configured. The specific information in the description depends on the data source provider.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp of when the data source was created.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp of when the data source was last updated.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description of the data source.</p>"
        },
        "Status": {
          "shape": "DataSourceStatus",
          "documentation": "<p>The current status of the data source. When the status is <code>ACTIVE</code> the data source is ready to use. When the status is <code>FAILED</code>, the <code>ErrorMessage</code> field contains the reason that the data source failed.</p>"
        },
        "Schedule": {
          "shape": "ScanSchedule",
          "documentation": "<p>The schedule that Amazon Kendra will update the data source.</p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the role that enables the data source to access its resources.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>When the <code>Status</code> field value is <code>FAILED</code>, the <code>ErrorMessage</code> field contains a description of the error that caused the data source to fail.</p>"
        }
      }
    },
    "DescribeFaqRequest": {
      "type": "structure",
      "required": [
        "Id",
        "IndexId"
      ],
      "members": {
        "Id": {
          "shape": "FaqId",
          "documentation": "<p>The unique identifier of the FAQ.</p>"
        },
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index that contains the FAQ.</p>"
        }
      }
    },
    "DescribeFaqResponse": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "FaqId",
          "documentation": "<p>The identifier of the FAQ.</p>"
        },
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index that contains the FAQ.</p>"
        },
        "Name": {
          "shape": "FaqName",
          "documentation": "<p>The name that you gave the FAQ when it was created.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description of the FAQ that you provided when it was created.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the FAQ was created.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the FAQ was last updated.</p>"
        },
        "S3Path": {
          "shape": "S3Path"
        },
        "Status": {
          "shape": "FaqStatus",
          "documentation": "<p>The status of the FAQ. It is ready to use when the status is <code>ACTIVE</code>.</p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the role that provides access to the S3 bucket containing the input files for the FAQ.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>If the <code>Status</code> field is <code>FAILED</code>, the <code>ErrorMessage</code> field contains the reason why the FAQ failed.</p>"
        }
      }
    },
    "DescribeIndexRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "IndexId",
          "documentation": "<p>The name of the index to describe.</p>"
        }
      }
    },
    "DescribeIndexResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "IndexName",
          "documentation": "<p>The name of the index.</p>"
        },
        "Id": {
          "shape": "IndexId",
          "documentation": "<p>the name of the index.</p>"
        },
        "Edition": {
          "shape": "IndexEdition",
          "documentation": "<p>The Amazon Kendra edition used for the index. You decide the edition when you create the index.</p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that gives Amazon Kendra permission to write to your Amazon Cloudwatch logs.</p>"
        },
        "ServerSideEncryptionConfiguration": {
          "shape": "ServerSideEncryptionConfiguration",
          "documentation": "<p>The identifier of the AWS KMS customer master key (CMK) used to encrypt your data. Amazon Kendra doesn't support asymmetric CMKs.</p>"
        },
        "Status": {
          "shape": "IndexStatus",
          "documentation": "<p>The current status of the index. When the value is <code>ACTIVE</code>, the index is ready for use. If the <code>Status</code> field value is <code>FAILED</code>, the <code>ErrorMessage</code> field contains a message that explains why.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description of the index.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix datetime that the index was created.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix datetime that the index was last updated.</p>"
        },
        "DocumentMetadataConfigurations": {
          "shape": "DocumentMetadataConfigurationList",
          "documentation": "<p>Configuration settings for any metadata applied to the documents in the index.</p>"
        },
        "IndexStatistics": {
          "shape": "IndexStatistics",
          "documentation": "<p>Provides information about the number of FAQ questions and answers and the number of text documents indexed.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>When th e<code>Status</code> field value is <code>FAILED</code>, the <code>ErrorMessage</code> field contains a message that explains why.</p>"
        },
        "CapacityUnits": {
          "shape": "CapacityUnitsConfiguration",
          "documentation": "<p>For enterprise edtion indexes, you can choose to use additional capacity to meet the needs of your application. This contains the capacity units used for the index. A 0 for the query capacity or the storage capacity indicates that the index is using the default capacity for the index.</p>"
        }
      }
    },
    "Description": {
      "type": "string",
      "max": 1000,
      "min": 1,
      "pattern": "^\\P{C}*$"
    },
    "Document": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "DocumentId",
          "documentation": "<p>A unique identifier of the document in the index.</p>"
        },
        "Title": {
          "shape": "Title",
          "documentation": "<p>The title of the document.</p>"
        },
        "Blob": {
          "shape": "Blob",
          "documentation": "<p>The contents of the document. </p> <p>Documents passed to the <code>Blob</code> parameter must be base64 encoded. Your code might not need to encode the document file bytes if you're using an AWS SDK to call Amazon Kendra operations. If you are calling the Amazon Kendra endpoint directly using REST, you must base64 encode the contents before sending.</p>"
        },
        "S3Path": {
          "shape": "S3Path"
        },
        "Attributes": {
          "shape": "DocumentAttributeList",
          "documentation": "<p>Custom attributes to apply to the document. Use the custom attributes to provide additional information for searching, to provide facets for refining searches, and to provide additional information in the query response.</p>"
        },
        "AccessControlList": {
          "shape": "PrincipalList",
          "documentation": "<p>Information to use for user context filtering.</p>"
        },
        "ContentType": {
          "shape": "ContentType",
          "documentation": "<p>The file type of the document in the <code>Blob</code> field.</p>"
        }
      },
      "documentation": "<p>A document in an index.</p>"
    },
    "DocumentAttribute": {
      "type": "structure",
      "required": [
        "Key",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "DocumentAttributeKey",
          "documentation": "<p>The identifier for the attribute.</p>"
        },
        "Value": {
          "shape": "DocumentAttributeValue",
          "documentation": "<p>The value of the attribute.</p>"
        }
      },
      "documentation": "<p>A custom attribute value assigned to a document. </p>"
    },
    "DocumentAttributeKey": {
      "type": "string",
      "max": 200,
      "min": 1,
      "pattern": "[a-zA-Z0-9_][a-zA-Z0-9_-]*"
    },
    "DocumentAttributeKeyList": {
      "type": "list",
      "member": {
        "shape": "DocumentAttributeKey"
      },
      "max": 100,
      "min": 1
    },
    "DocumentAttributeList": {
      "type": "list",
      "member": {
        "shape": "DocumentAttribute"
      }
    },
    "DocumentAttributeStringListValue": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "DocumentAttributeStringValue": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "DocumentAttributeValue": {
      "type": "structure",
      "members": {
        "StringValue": {
          "shape": "DocumentAttributeStringValue",
          "documentation": "<p>A string, such as \"department\".</p>"
        },
        "StringListValue": {
          "shape": "DocumentAttributeStringListValue",
          "documentation": "<p>A list of strings. </p>"
        },
        "LongValue": {
          "shape": "Long",
          "documentation": "<p>A long integer value.</p>"
        },
        "DateValue": {
          "shape": "Timestamp",
          "documentation": "<p>A date expressed as an ISO 8601 string.</p>"
        }
      },
      "documentation": "<p>The value of a custom document attribute. You can only provide one value for a custom attribute.</p>"
    },
    "DocumentAttributeValueCountPair": {
      "type": "structure",
      "members": {
        "DocumentAttributeValue": {
          "shape": "DocumentAttributeValue",
          "documentation": "<p>The value of the attribute. For example, \"HR.\"</p>"
        },
        "Count": {
          "shape": "Integer",
          "documentation": "<p>The number of documents in the response that have the attribute value for the key.</p>"
        }
      },
      "documentation": "<p>Provides the count of documents that match a particular attribute when doing a faceted search.</p>"
    },
    "DocumentAttributeValueCountPairList": {
      "type": "list",
      "member": {
        "shape": "DocumentAttributeValueCountPair"
      }
    },
    "DocumentAttributeValueType": {
      "type": "string",
      "enum": [
        "STRING_VALUE",
        "STRING_LIST_VALUE",
        "LONG_VALUE",
        "DATE_VALUE"
      ]
    },
    "DocumentId": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "DocumentIdList": {
      "type": "list",
      "member": {
        "shape": "DocumentId"
      },
      "max": 10,
      "min": 1
    },
    "DocumentList": {
      "type": "list",
      "member": {
        "shape": "Document"
      },
      "max": 10,
      "min": 1
    },
    "DocumentMetadataBoolean": {
      "type": "boolean"
    },
    "DocumentMetadataConfiguration": {
      "type": "structure",
      "required": [
        "Name",
        "Type"
      ],
      "members": {
        "Name": {
          "shape": "DocumentMetadataConfigurationName",
          "documentation": "<p>The name of the index field.</p>"
        },
        "Type": {
          "shape": "DocumentAttributeValueType",
          "documentation": "<p>The data type of the index field. </p>"
        },
        "Relevance": {
          "shape": "Relevance",
          "documentation": "<p>Provides manual tuning parameters to determine how the field affects the search results.</p>"
        },
        "Search": {
          "shape": "Search",
          "documentation": "<p>Provides information about how the field is used during a search.</p>"
        }
      },
      "documentation": "<p>Specifies the properties of a custom index field.</p>"
    },
    "DocumentMetadataConfigurationList": {
      "type": "list",
      "member": {
        "shape": "DocumentMetadataConfiguration"
      },
      "max": 500,
      "min": 0
    },
    "DocumentMetadataConfigurationName": {
      "type": "string",
      "max": 30,
      "min": 1
    },
    "DocumentsMetadataConfiguration": {
      "type": "structure",
      "members": {
        "S3Prefix": {
          "shape": "S3ObjectKey",
          "documentation": "<p>A prefix used to filter metadata configuration files in the AWS S3 bucket. The S3 bucket might contain multiple metadata files. Use <code>S3Prefix</code> to include only the desired metadata files.</p>"
        }
      },
      "documentation": "<p>Document metadata files that contain information such as the document access control information, source URI, document author, and custom attributes. Each metadata file contains metadata about a single document.</p>"
    },
    "Duration": {
      "type": "string",
      "max": 10,
      "min": 1,
      "pattern": "[0-9]+[s]"
    },
    "ErrorCode": {
      "type": "string",
      "enum": [
        "InternalError",
        "InvalidRequest"
      ]
    },
    "ErrorMessage": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "^\\P{C}*$"
    },
    "Facet": {
      "type": "structure",
      "members": {
        "DocumentAttributeKey": {
          "shape": "DocumentAttributeKey",
          "documentation": "<p>The unique key for the document attribute.</p>"
        }
      },
      "documentation": "<p>Information about a document attribute</p>"
    },
    "FacetList": {
      "type": "list",
      "member": {
        "shape": "Facet"
      }
    },
    "FacetResult": {
      "type": "structure",
      "members": {
        "DocumentAttributeKey": {
          "shape": "DocumentAttributeKey",
          "documentation": "<p>The key for the facet values. This is the same as the <code>DocumentAttributeKey</code> provided in the query.</p>"
        },
        "DocumentAttributeValueCountPairs": {
          "shape": "DocumentAttributeValueCountPairList",
          "documentation": "<p>An array of key/value pairs, where the key is the value of the attribute and the count is the number of documents that share the key value.</p>"
        }
      },
      "documentation": "<p>The facet values for the documents in the response.</p>"
    },
    "FacetResultList": {
      "type": "list",
      "member": {
        "shape": "FacetResult"
      }
    },
    "FaqId": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[a-zA-Z0-9][a-zA-Z0-9_-]*"
    },
    "FaqName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[a-zA-Z0-9][a-zA-Z0-9_-]*"
    },
    "FaqStatistics": {
      "type": "structure",
      "required": [
        "IndexedQuestionAnswersCount"
      ],
      "members": {
        "IndexedQuestionAnswersCount": {
          "shape": "IndexedQuestionAnswersCount",
          "documentation": "<p>The total number of FAQ questions and answers contained in the index.</p>"
        }
      },
      "documentation": "<p>Provides statistical information about the FAQ questions and answers contained in an index.</p>"
    },
    "FaqStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "UPDATING",
        "ACTIVE",
        "DELETING",
        "FAILED"
      ]
    },
    "FaqSummary": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "FaqId",
          "documentation": "<p>The unique identifier of the FAQ.</p>"
        },
        "Name": {
          "shape": "FaqName",
          "documentation": "<p>The name that you assigned the FAQ when you created or updated the FAQ.</p>"
        },
        "Status": {
          "shape": "FaqStatus",
          "documentation": "<p>The current status of the FAQ. When the status is <code>ACTIVE</code> the FAQ is ready for use.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The UNIX datetime that the FAQ was added to the index.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The UNIX datetime that the FAQ was last updated.</p>"
        }
      },
      "documentation": "<p>Provides information about a frequently asked questions and answer contained in an index.</p>"
    },
    "FaqSummaryItems": {
      "type": "list",
      "member": {
        "shape": "FaqSummary"
      }
    },
    "Highlight": {
      "type": "structure",
      "required": [
        "BeginOffset",
        "EndOffset"
      ],
      "members": {
        "BeginOffset": {
          "shape": "Integer",
          "documentation": "<p>The zero-based location in the response string where the highlight starts.</p>"
        },
        "EndOffset": {
          "shape": "Integer",
          "documentation": "<p>The zero-based location in the response string where the highlight ends.</p>"
        },
        "TopAnswer": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the response is the best response. True if this is the best response; otherwise, false.</p>"
        }
      },
      "documentation": "<p>Provides information that you can use to highlight a search result so that your users can quickly identify terms in the response.</p>"
    },
    "HighlightList": {
      "type": "list",
      "member": {
        "shape": "Highlight"
      }
    },
    "Importance": {
      "type": "integer",
      "max": 10,
      "min": 1
    },
    "IndexConfigurationSummary": {
      "type": "structure",
      "required": [
        "CreatedAt",
        "UpdatedAt",
        "Status"
      ],
      "members": {
        "Name": {
          "shape": "IndexName",
          "documentation": "<p>The name of the index.</p>"
        },
        "Id": {
          "shape": "IndexId",
          "documentation": "<p>A unique identifier for the index. Use this to identify the index when you are using operations such as <code>Query</code>, <code>DescribeIndex</code>, <code>UpdateIndex</code>, and <code>DeleteIndex</code>.</p>"
        },
        "Edition": {
          "shape": "IndexEdition",
          "documentation": "<p>Indicates whether the index is a enterprise edition index or a developer edition index. </p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp when the index was created.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp when the index was last updated by the <code>UpdateIndex</code> operation.</p>"
        },
        "Status": {
          "shape": "IndexStatus",
          "documentation": "<p>The current status of the index. When the status is <code>ACTIVE</code>, the index is ready to search.</p>"
        }
      },
      "documentation": "<p>A summary of information about an index.</p>"
    },
    "IndexConfigurationSummaryList": {
      "type": "list",
      "member": {
        "shape": "IndexConfigurationSummary"
      }
    },
    "IndexEdition": {
      "type": "string",
      "enum": [
        "DEVELOPER_EDITION",
        "ENTERPRISE_EDITION"
      ]
    },
    "IndexFieldName": {
      "type": "string",
      "max": 30,
      "min": 1,
      "pattern": "^\\P{C}*$"
    },
    "IndexId": {
      "type": "string",
      "max": 36,
      "min": 36,
      "pattern": "[a-zA-Z0-9][a-zA-Z0-9-]*"
    },
    "IndexName": {
      "type": "string",
      "max": 1000,
      "min": 1,
      "pattern": "[a-zA-Z0-9][a-zA-Z0-9_-]*"
    },
    "IndexStatistics": {
      "type": "structure",
      "required": [
        "FaqStatistics",
        "TextDocumentStatistics"
      ],
      "members": {
        "FaqStatistics": {
          "shape": "FaqStatistics",
          "documentation": "<p>The number of question and answer topics in the index.</p>"
        },
        "TextDocumentStatistics": {
          "shape": "TextDocumentStatistics",
          "documentation": "<p>The number of text documents indexed.</p>"
        }
      },
      "documentation": "<p>Provides information about the number of documents and the number of questions and answers in an index.</p>"
    },
    "IndexStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "ACTIVE",
        "DELETING",
        "FAILED",
        "UPDATING",
        "SYSTEM_UPDATING"
      ]
    },
    "IndexedQuestionAnswersCount": {
      "type": "integer",
      "min": 0
    },
    "IndexedTextBytes": {
      "type": "long",
      "min": 0
    },
    "IndexedTextDocumentsCount": {
      "type": "integer",
      "min": 0
    },
    "Integer": {
      "type": "integer"
    },
    "KmsKeyId": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "sensitive": true
    },
    "ListDataSourceSyncJobsRequest": {
      "type": "structure",
      "required": [
        "Id",
        "IndexId"
      ],
      "members": {
        "Id": {
          "shape": "DataSourceId",
          "documentation": "<p>The identifier of the data source.</p>"
        },
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index that contains the data source.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the result of the previous request to <code>GetDataSourceSyncJobHistory</code> was truncated, include the <code>NextToken</code> to fetch the next set of jobs.</p>"
        },
        "MaxResults": {
          "shape": "MaxResultsIntegerForListDataSourceSyncJobsRequest",
          "documentation": "<p>The maximum number of synchronization jobs to return in the response. If there are fewer results in the list, this response contains only the actual results.</p>"
        },
        "StartTimeFilter": {
          "shape": "TimeRange",
          "documentation": "<p>When specified, the synchronization jobs returned in the list are limited to jobs between the specified dates. </p>"
        },
        "StatusFilter": {
          "shape": "DataSourceSyncJobStatus",
          "documentation": "<p>When specified, only returns synchronization jobs with the <code>Status</code> field equal to the specified status.</p>"
        }
      }
    },
    "ListDataSourceSyncJobsResponse": {
      "type": "structure",
      "members": {
        "History": {
          "shape": "DataSourceSyncJobHistoryList",
          "documentation": "<p>A history of synchronization jobs for the data source.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>GetDataSourceSyncJobHistory</code> operation returns a page of vocabularies at a time. The maximum size of the page is set by the <code>MaxResults</code> parameter. If there are more jobs in the list than the page size, Amazon Kendra returns the NextPage token. Include the token in the next request to the <code>GetDataSourceSyncJobHistory</code> operation to return in the next page of jobs.</p>"
        }
      }
    },
    "ListDataSourcesRequest": {
      "type": "structure",
      "required": [
        "IndexId"
      ],
      "members": {
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index that contains the data source.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the previous response was incomplete (because there is more data to retrieve), Amazon Kendra returns a pagination token in the response. You can use this pagination token to retrieve the next set of data sources (<code>DataSourceSummaryItems</code>). </p>"
        },
        "MaxResults": {
          "shape": "MaxResultsIntegerForListDataSourcesRequest",
          "documentation": "<p>The maximum number of data sources to return.</p>"
        }
      }
    },
    "ListDataSourcesResponse": {
      "type": "structure",
      "members": {
        "SummaryItems": {
          "shape": "DataSourceSummaryList",
          "documentation": "<p>An array of summary information for one or more data sources.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the response is truncated, Amazon Kendra returns this token that you can use in the subsequent request to retrieve the next set of data sources. </p>"
        }
      }
    },
    "ListFaqsRequest": {
      "type": "structure",
      "required": [
        "IndexId"
      ],
      "members": {
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The index that contains the FAQ lists.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the result of the previous request to <code>ListFaqs</code> was truncated, include the <code>NextToken</code> to fetch the next set of FAQs.</p>"
        },
        "MaxResults": {
          "shape": "MaxResultsIntegerForListFaqsRequest",
          "documentation": "<p>The maximum number of FAQs to return in the response. If there are fewer results in the list, this response contains only the actual results.</p>"
        }
      }
    },
    "ListFaqsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>ListFaqs</code> operation returns a page of FAQs at a time. The maximum size of the page is set by the <code>MaxResults</code> parameter. If there are more jobs in the list than the page size, Amazon Kendra returns the <code>NextPage</code> token. Include the token in the next request to the <code>ListFaqs</code> operation to return the next page of FAQs.</p>"
        },
        "FaqSummaryItems": {
          "shape": "FaqSummaryItems",
          "documentation": "<p>information about the FAQs associated with the specified index.</p>"
        }
      }
    },
    "ListIndicesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the previous response was incomplete (because there is more data to retrieve), Amazon Kendra returns a pagination token in the response. You can use this pagination token to retrieve the next set of indexes (<code>DataSourceSummaryItems</code>). </p>"
        },
        "MaxResults": {
          "shape": "MaxResultsIntegerForListIndicesRequest",
          "documentation": "<p>The maximum number of data sources to return.</p>"
        }
      }
    },
    "ListIndicesResponse": {
      "type": "structure",
      "members": {
        "IndexConfigurationSummaryItems": {
          "shape": "IndexConfigurationSummaryList",
          "documentation": "<p>An array of summary information for one or more indexes.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the response is truncated, Amazon Kendra returns this token that you can use in the subsequent request to retrieve the next set of indexes.</p>"
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
          "documentation": "<p>The Amazon Resource Name (ARN) of the index, FAQ, or data source to get a list of tags for.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tags associated with the index, FAQ, or data source.</p>"
        }
      }
    },
    "Long": {
      "type": "long"
    },
    "MaxResultsIntegerForListDataSourceSyncJobsRequest": {
      "type": "integer",
      "max": 10,
      "min": 1
    },
    "MaxResultsIntegerForListDataSourcesRequest": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "MaxResultsIntegerForListFaqsRequest": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "MaxResultsIntegerForListIndicesRequest": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "MetricValue": {
      "type": "string",
      "pattern": "(([1-9][0-9]*)|0)"
    },
    "NextToken": {
      "type": "string",
      "max": 800,
      "min": 1
    },
    "OneDriveConfiguration": {
      "type": "structure",
      "required": [
        "TenantDomain",
        "SecretArn",
        "OneDriveUsers"
      ],
      "members": {
        "TenantDomain": {
          "shape": "TenantDomain",
          "documentation": "<p>Tha Azure Active Directory domain of the organization. </p>"
        },
        "SecretArn": {
          "shape": "SecretArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of an AWS Secrets Manager secret that contains the user name and password to connect to OneDrive. The user namd should be the application ID for the OneDrive application, and the password is the application key for the OneDrive application.</p>"
        },
        "OneDriveUsers": {
          "shape": "OneDriveUsers",
          "documentation": "<p>A list of user accounts whose documents should be indexed.</p>"
        },
        "InclusionPatterns": {
          "shape": "DataSourceInclusionsExclusionsStrings",
          "documentation": "<p>A list of regular expression patterns. Documents that match the pattern are included in the index. Documents that don't match the pattern are excluded from the index. If a document matches both an inclusion pattern and an exclusion pattern, the document is not included in the index. </p> <p>The exclusion pattern is applied to the file name.</p>"
        },
        "ExclusionPatterns": {
          "shape": "DataSourceInclusionsExclusionsStrings",
          "documentation": "<p>List of regular expressions applied to documents. Items that match the exclusion pattern are not indexed. If you provide both an inclusion pattern and an exclusion pattern, any item that matches the exclusion pattern isn't indexed. </p> <p>The exclusion pattern is applied to the file name.</p>"
        },
        "FieldMappings": {
          "shape": "DataSourceToIndexFieldMappingList",
          "documentation": "<p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map Microsoft OneDrive fields to custom fields in the Amazon Kendra index. You must first create the index fields before you map OneDrive fields.</p>"
        }
      },
      "documentation": "<p>Provides configuration information for data sources that connect to OneDrive.</p>"
    },
    "OneDriveUser": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^(?!\\s).+@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$"
    },
    "OneDriveUserList": {
      "type": "list",
      "member": {
        "shape": "OneDriveUser"
      },
      "max": 100,
      "min": 1
    },
    "OneDriveUsers": {
      "type": "structure",
      "members": {
        "OneDriveUserList": {
          "shape": "OneDriveUserList",
          "documentation": "<p>A list of users whose documents should be indexed. Specify the user names in email format, for example, <code>username@tenantdomain</code>. If you need to index the documents of more than 100 users, use the <code>OneDriveUserS3Path</code> field to specify the location of a file containing a list of users.</p>"
        },
        "OneDriveUserS3Path": {
          "shape": "S3Path",
          "documentation": "<p>The S3 bucket location of a file containing a list of users whose documents should be indexed.</p>"
        }
      },
      "documentation": "<p>User accounts whose documents should be indexed.</p>"
    },
    "Order": {
      "type": "string",
      "enum": [
        "ASCENDING",
        "DESCENDING"
      ]
    },
    "Principal": {
      "type": "structure",
      "required": [
        "Name",
        "Type",
        "Access"
      ],
      "members": {
        "Name": {
          "shape": "PrincipalName",
          "documentation": "<p>The name of the user or group.</p>"
        },
        "Type": {
          "shape": "PrincipalType",
          "documentation": "<p>The type of principal.</p>"
        },
        "Access": {
          "shape": "ReadAccessType",
          "documentation": "<p>Whether to allow or deny access to the principal.</p>"
        }
      },
      "documentation": "<p>Provides user and group information for document access filtering.</p>"
    },
    "PrincipalList": {
      "type": "list",
      "member": {
        "shape": "Principal"
      }
    },
    "PrincipalName": {
      "type": "string",
      "max": 200,
      "min": 1,
      "pattern": "^\\P{C}*$"
    },
    "PrincipalType": {
      "type": "string",
      "enum": [
        "USER",
        "GROUP"
      ]
    },
    "QueryCapacityUnit": {
      "type": "integer",
      "min": 0
    },
    "QueryId": {
      "type": "string",
      "max": 36,
      "min": 1
    },
    "QueryIdentifiersEnclosingOption": {
      "type": "string",
      "enum": [
        "DOUBLE_QUOTES",
        "NONE"
      ]
    },
    "QueryRequest": {
      "type": "structure",
      "required": [
        "IndexId",
        "QueryText"
      ],
      "members": {
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The unique identifier of the index to search. The identifier is returned in the response from the operation.</p>"
        },
        "QueryText": {
          "shape": "QueryText",
          "documentation": "<p>The text to search for.</p>"
        },
        "AttributeFilter": {
          "shape": "AttributeFilter",
          "documentation": "<p>Enables filtered searches based on document attributes. You can only provide one attribute filter; however, the <code>AndAllFilters</code>, <code>NotFilter</code>, and <code>OrAllFilters</code> parameters contain a list of other filters.</p> <p>The <code>AttributeFilter</code> parameter enables you to create a set of filtering rules that a document must satisfy to be included in the query results.</p>"
        },
        "Facets": {
          "shape": "FacetList",
          "documentation": "<p>An array of documents attributes. Amazon Kendra returns a count for each attribute key specified. You can use this information to help narrow the search for your user.</p>"
        },
        "RequestedDocumentAttributes": {
          "shape": "DocumentAttributeKeyList",
          "documentation": "<p>An array of document attributes to include in the response. No other document attributes are included in the response. By default all document attributes are included in the response. </p>"
        },
        "QueryResultTypeFilter": {
          "shape": "QueryResultType",
          "documentation": "<p>Sets the type of query. Only results for the specified query type are returned.</p>"
        },
        "PageNumber": {
          "shape": "Integer",
          "documentation": "<p>Query results are returned in pages the size of the <code>PageSize</code> parameter. By default, Amazon Kendra returns the first page of results. Use this parameter to get result pages after the first one.</p>"
        },
        "PageSize": {
          "shape": "Integer",
          "documentation": "<p>Sets the number of results that are returned in each page of results. The default page size is 10. The maximum number of results returned is 100. If you ask for more than 100 results, only 100 are returned.</p>"
        },
        "SortingConfiguration": {
          "shape": "SortingConfiguration",
          "documentation": "<p>Provides information that determines how the results of the query are sorted. You can set the field that Amazon Kendra should sort the results on, and specify whether the results should be sorted in ascending or descending order. In the case of ties in sorting the results, the results are sorted by relevance.</p> <p>If you don't provide sorting configuration, the results are sorted by the relevance that Amazon Kendra determines for the result.</p>"
        }
      }
    },
    "QueryResult": {
      "type": "structure",
      "members": {
        "QueryId": {
          "shape": "QueryId",
          "documentation": "<p>The unique identifier for the search. You use <code>QueryId</code> to identify the search when using the feedback API.</p>"
        },
        "ResultItems": {
          "shape": "QueryResultItemList",
          "documentation": "<p>The results of the search.</p>"
        },
        "FacetResults": {
          "shape": "FacetResultList",
          "documentation": "<p>Contains the facet results. A <code>FacetResult</code> contains the counts for each attribute key that was specified in the <code>Facets</code> input parameter.</p>"
        },
        "TotalNumberOfResults": {
          "shape": "Integer",
          "documentation": "<p>The number of items returned by the search. Use this to determine when you have requested the last set of results.</p>"
        }
      }
    },
    "QueryResultItem": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResultId",
          "documentation": "<p>The unique identifier for the query result.</p>"
        },
        "Type": {
          "shape": "QueryResultType",
          "documentation": "<p>The type of document. </p>"
        },
        "AdditionalAttributes": {
          "shape": "AdditionalResultAttributeList",
          "documentation": "<p>One or more additional attributes associated with the query result.</p>"
        },
        "DocumentId": {
          "shape": "DocumentId",
          "documentation": "<p>The unique identifier for the document.</p>"
        },
        "DocumentTitle": {
          "shape": "TextWithHighlights",
          "documentation": "<p>The title of the document. Contains the text of the title and information for highlighting the relevant terms in the title.</p>"
        },
        "DocumentExcerpt": {
          "shape": "TextWithHighlights",
          "documentation": "<p>An extract of the text in the document. Contains information about highlighting the relevant terms in the excerpt.</p>"
        },
        "DocumentURI": {
          "shape": "Url",
          "documentation": "<p>The URI of the original location of the document.</p>"
        },
        "DocumentAttributes": {
          "shape": "DocumentAttributeList",
          "documentation": "<p>An array of document attributes for the document that the query result maps to. For example, the document author (Author) or the source URI (SourceUri) of the document.</p>"
        },
        "ScoreAttributes": {
          "shape": "ScoreAttributes",
          "documentation": "<p>Indicates the confidence that Amazon Kendra has that a result matches the query that you provided. Each result is placed into a bin that indicates the confidence, <code>VERY_HIGH</code>, <code>HIGH</code>, and <code>MEDIUM</code>. You can use the score to determine if a response meets the confidence needed for your application.</p> <p>Confidence scores are only returned for results with the <code>Type</code> field set to <code>QUESTION_ANSWER</code> or <code>ANSWER</code>. This field is not returned if the <code>Type</code> field is set to <code>DOCUMENT</code>.</p>"
        }
      },
      "documentation": "<p>A single query result.</p> <p>A query result contains information about a document returned by the query. This includes the original location of the document, a list of attributes assigned to the document, and relevant text from the document that satisfies the query.</p>"
    },
    "QueryResultItemList": {
      "type": "list",
      "member": {
        "shape": "QueryResultItem"
      }
    },
    "QueryResultType": {
      "type": "string",
      "enum": [
        "DOCUMENT",
        "QUESTION_ANSWER",
        "ANSWER"
      ]
    },
    "QueryText": {
      "type": "string",
      "max": 1000,
      "min": 1,
      "pattern": "^\\P{C}*$"
    },
    "ReadAccessType": {
      "type": "string",
      "enum": [
        "ALLOW",
        "DENY"
      ]
    },
    "Relevance": {
      "type": "structure",
      "members": {
        "Freshness": {
          "shape": "DocumentMetadataBoolean",
          "documentation": "<p>Indicates that this field determines how \"fresh\" a document is. For example, if document 1 was created on November 5, and document 2 was created on October 31, document 1 is \"fresher\" than document 2. You can only set the <code>Freshness</code> field on one <code>DATE</code> type field. Only applies to <code>DATE</code> fields.</p>"
        },
        "Importance": {
          "shape": "Importance",
          "documentation": "<p>The relative importance of the field in the search. Larger numbers provide more of a boost than smaller numbers.</p>"
        },
        "Duration": {
          "shape": "Duration",
          "documentation": "<p>Specifies the time period that the boost applies to. For example, to make the boost apply to documents with the field value within the last month, you would use \"2628000s\". Once the field value is beyond the specified range, the effect of the boost drops off. The higher the importance, the faster the effect drops off. If you don't specify a value, the default is 3 months. The value of the field is a numeric string followed by the character \"s\", for example \"86400s\" for one day, or \"604800s\" for one week. </p> <p>Only applies to <code>DATE</code> fields.</p>"
        },
        "RankOrder": {
          "shape": "Order",
          "documentation": "<p>Determines how values should be interpreted.</p> <p>When the <code>RankOrder</code> field is <code>ASCENDING</code>, higher numbers are better. For example, a document with a rating score of 10 is higher ranking than a document with a rating score of 1.</p> <p>When the <code>RankOrder</code> field is <code>DESCENDING</code>, lower numbers are better. For example, in a task tracking application, a priority 1 task is more important than a priority 5 task.</p> <p>Only applies to <code>LONG</code> and <code>DOUBLE</code> fields.</p>"
        },
        "ValueImportanceMap": {
          "shape": "ValueImportanceMap",
          "documentation": "<p>A list of values that should be given a different boost when they appear in the result list. For example, if you are boosting a field called \"department,\" query terms that match the department field are boosted in the result. However, you can add entries from the department field to boost documents with those values higher. </p> <p>For example, you can add entries to the map with names of departments. If you add \"HR\",5 and \"Legal\",3 those departments are given special attention when they appear in the metadata of a document. When those terms appear they are given the specified importance instead of the regular importance for the boost.</p>"
        }
      },
      "documentation": "<p>Provides information for manually tuning the relevance of a field in a search. When a query includes terms that match the field, the results are given a boost in the response based on these tuning parameters.</p>"
    },
    "RelevanceFeedback": {
      "type": "structure",
      "required": [
        "ResultId",
        "RelevanceValue"
      ],
      "members": {
        "ResultId": {
          "shape": "ResultId",
          "documentation": "<p>The unique identifier of the search result that the user provided relevance feedback for.</p>"
        },
        "RelevanceValue": {
          "shape": "RelevanceType",
          "documentation": "<p>Whether to document was relevant or not relevant to the search.</p>"
        }
      },
      "documentation": "<p>Provides feedback on how relevant a document is to a search. Your application uses the <a>SubmitFeedback</a> operation to provide relevance information.</p>"
    },
    "RelevanceFeedbackList": {
      "type": "list",
      "member": {
        "shape": "RelevanceFeedback"
      }
    },
    "RelevanceType": {
      "type": "string",
      "enum": [
        "RELEVANT",
        "NOT_RELEVANT"
      ]
    },
    "ResultId": {
      "type": "string",
      "max": 73,
      "min": 1
    },
    "RoleArn": {
      "type": "string",
      "max": 1284,
      "min": 1,
      "pattern": "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"
    },
    "S3BucketName": {
      "type": "string",
      "max": 63,
      "min": 3,
      "pattern": "[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]"
    },
    "S3DataSourceConfiguration": {
      "type": "structure",
      "required": [
        "BucketName"
      ],
      "members": {
        "BucketName": {
          "shape": "S3BucketName",
          "documentation": "<p>The name of the bucket that contains the documents.</p>"
        },
        "InclusionPrefixes": {
          "shape": "DataSourceInclusionsExclusionsStrings",
          "documentation": "<p>A list of S3 prefixes for the documents that should be included in the index.</p>"
        },
        "ExclusionPatterns": {
          "shape": "DataSourceInclusionsExclusionsStrings",
          "documentation": "<p>A list of glob patterns for documents that should not be indexed. If a document that matches an inclusion prefix also matches an exclusion pattern, the document is not indexed.</p> <p>For more information about glob patterns, see <a href=\"https://en.wikipedia.org/wiki/Glob_(programming)\">glob (programming)</a> in <i>Wikipedia</i>.</p>"
        },
        "DocumentsMetadataConfiguration": {
          "shape": "DocumentsMetadataConfiguration"
        },
        "AccessControlListConfiguration": {
          "shape": "AccessControlListConfiguration",
          "documentation": "<p>Provides the path to the S3 bucket that contains the user context filtering files for the data source.</p>"
        }
      },
      "documentation": "<p>Provides configuration information for a data source to index documents in an Amazon S3 bucket.</p>"
    },
    "S3ObjectKey": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "S3Path": {
      "type": "structure",
      "required": [
        "Bucket",
        "Key"
      ],
      "members": {
        "Bucket": {
          "shape": "S3BucketName",
          "documentation": "<p>The name of the S3 bucket that contains the file.</p>"
        },
        "Key": {
          "shape": "S3ObjectKey",
          "documentation": "<p>The name of the file.</p>"
        }
      },
      "documentation": "<p>Information required to find a specific file in an Amazon S3 bucket.</p>"
    },
    "SalesforceChatterFeedConfiguration": {
      "type": "structure",
      "required": [
        "DocumentDataFieldName"
      ],
      "members": {
        "DocumentDataFieldName": {
          "shape": "DataSourceFieldName",
          "documentation": "<p>The name of the column in the Salesforce FeedItem table that contains the content to index. Typically this is the <code>Body</code> column.</p>"
        },
        "DocumentTitleFieldName": {
          "shape": "DataSourceFieldName",
          "documentation": "<p>The name of the column in the Salesforce FeedItem table that contains the title of the document. This is typically the <code>Title</code> collumn.</p>"
        },
        "FieldMappings": {
          "shape": "DataSourceToIndexFieldMappingList",
          "documentation": "<p>Maps fields from a Salesforce chatter feed into Amazon Kendra index fields.</p>"
        },
        "IncludeFilterTypes": {
          "shape": "SalesforceChatterFeedIncludeFilterTypes",
          "documentation": "<p>Filters the documents in the feed based on status of the user. When you specify <code>ACTIVE_USERS</code> only documents from users who have an active account are indexed. When you specify <code>STANDARD_USER</code> only documents for Salesforce standard users are documented. You can specify both.</p>"
        }
      },
      "documentation": "<p>Defines configuration for syncing a Salesforce chatter feed. The contents of the object comes from the Salesforce FeedItem table.</p>"
    },
    "SalesforceChatterFeedIncludeFilterType": {
      "type": "string",
      "enum": [
        "ACTIVE_USER",
        "STANDARD_USER"
      ]
    },
    "SalesforceChatterFeedIncludeFilterTypes": {
      "type": "list",
      "member": {
        "shape": "SalesforceChatterFeedIncludeFilterType"
      },
      "max": 2,
      "min": 1
    },
    "SalesforceConfiguration": {
      "type": "structure",
      "required": [
        "ServerUrl",
        "SecretArn"
      ],
      "members": {
        "ServerUrl": {
          "shape": "Url",
          "documentation": "<p>The instance URL for the Salesforce site that you want to index.</p>"
        },
        "SecretArn": {
          "shape": "SecretArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of an AWS Secrets Manager secret that contains the key/value pairs required to connect to your Salesforce instance. The secret must contain a JSON structure with the following keys:</p> <ul> <li> <p>authenticationUrl - The OAUTH endpoint that Amazon Kendra connects to get an OAUTH token. </p> </li> <li> <p>consumerKey - The application public key generated when you created your Salesforce application.</p> </li> <li> <p>consumerSecret - The application private key generated when you created your Salesforce application.</p> </li> <li> <p>password - The password associated with the user logging in to the Salesforce instance.</p> </li> <li> <p>securityToken - The token associated with the user account logging in to the Salesforce instance.</p> </li> <li> <p>username - The user name of the user logging in to the Salesforce instance.</p> </li> </ul>"
        },
        "StandardObjectConfigurations": {
          "shape": "SalesforceStandardObjectConfigurationList",
          "documentation": "<p>Specifies the Salesforce standard objects that Amazon Kendra indexes.</p>"
        },
        "KnowledgeArticleConfiguration": {
          "shape": "SalesforceKnowledgeArticleConfiguration",
          "documentation": "<p>Specifies configuration information for the knowlege article types that Amazon Kendra indexes. Amazon Kendra indexes standard knowledge articles and the standard fields of knowledge articles, or the custom fields of custom knowledge articles, but not both.</p>"
        },
        "ChatterFeedConfiguration": {
          "shape": "SalesforceChatterFeedConfiguration",
          "documentation": "<p>Specifies configuration information for Salesforce chatter feeds.</p>"
        },
        "CrawlAttachments": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether Amazon Kendra should index attachments to Salesforce objects.</p>"
        },
        "StandardObjectAttachmentConfiguration": {
          "shape": "SalesforceStandardObjectAttachmentConfiguration",
          "documentation": "<p>Provides configuration information for processing attachments to Salesforce standard objects. </p>"
        },
        "IncludeAttachmentFilePatterns": {
          "shape": "DataSourceInclusionsExclusionsStrings",
          "documentation": "<p>A list of regular expression patterns. Documents that match the patterns are included in the index. Documents that don't match the patterns are excluded from the index. If a document matches both an inclusion pattern and an exclusion pattern, the document is not included in the index.</p> <p>The regex is applied to the name of the attached file.</p>"
        },
        "ExcludeAttachmentFilePatterns": {
          "shape": "DataSourceInclusionsExclusionsStrings",
          "documentation": "<p>A list of regular expression patterns. Documents that match the patterns are excluded from the index. Documents that don't match the patterns are included in the index. If a document matches both an exclusion pattern and an inclusion pattern, the document is not included in the index.</p> <p>The regex is applied to the name of the attached file.</p>"
        }
      },
      "documentation": "<p>Provides configuration information for connecting to a Salesforce data source.</p>"
    },
    "SalesforceCustomKnowledgeArticleTypeConfiguration": {
      "type": "structure",
      "required": [
        "Name",
        "DocumentDataFieldName"
      ],
      "members": {
        "Name": {
          "shape": "SalesforceCustomKnowledgeArticleTypeName",
          "documentation": "<p>The name of the configuration.</p>"
        },
        "DocumentDataFieldName": {
          "shape": "DataSourceFieldName",
          "documentation": "<p>The name of the field in the custom knowledge article that contains the document data to index.</p>"
        },
        "DocumentTitleFieldName": {
          "shape": "DataSourceFieldName",
          "documentation": "<p>The name of the field in the custom knowledge article that contains the document title.</p>"
        },
        "FieldMappings": {
          "shape": "DataSourceToIndexFieldMappingList",
          "documentation": "<p>One or more objects that map fields in the custom knowledge article to fields in the Amazon Kendra index.</p>"
        }
      },
      "documentation": "<p>Provides configuration information for indexing Salesforce custom articles.</p>"
    },
    "SalesforceCustomKnowledgeArticleTypeConfigurationList": {
      "type": "list",
      "member": {
        "shape": "SalesforceCustomKnowledgeArticleTypeConfiguration"
      },
      "max": 10,
      "min": 1
    },
    "SalesforceCustomKnowledgeArticleTypeName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^[a-zA-Z][a-zA-Z0-9_]*$"
    },
    "SalesforceKnowledgeArticleConfiguration": {
      "type": "structure",
      "required": [
        "IncludedStates"
      ],
      "members": {
        "IncludedStates": {
          "shape": "SalesforceKnowledgeArticleStateList",
          "documentation": "<p>Specifies the document states that should be included when Amazon Kendra indexes knowledge articles. You must specify at least one state.</p>"
        },
        "StandardKnowledgeArticleTypeConfiguration": {
          "shape": "SalesforceStandardKnowledgeArticleTypeConfiguration",
          "documentation": "<p>Provides configuration information for standard Salesforce knowledge articles.</p>"
        },
        "CustomKnowledgeArticleTypeConfigurations": {
          "shape": "SalesforceCustomKnowledgeArticleTypeConfigurationList",
          "documentation": "<p>Provides configuration information for custom Salesforce knowledge articles.</p>"
        }
      },
      "documentation": "<p>Specifies configuration information for the knowlege article types that Amazon Kendra indexes. Amazon Kendra indexes standard knowledge articles and the standard fields of knowledge articles, or the custom fields of custom knowledge articles, but not both </p>"
    },
    "SalesforceKnowledgeArticleState": {
      "type": "string",
      "enum": [
        "DRAFT",
        "PUBLISHED",
        "ARCHIVED"
      ]
    },
    "SalesforceKnowledgeArticleStateList": {
      "type": "list",
      "member": {
        "shape": "SalesforceKnowledgeArticleState"
      },
      "max": 3,
      "min": 1
    },
    "SalesforceStandardKnowledgeArticleTypeConfiguration": {
      "type": "structure",
      "required": [
        "DocumentDataFieldName"
      ],
      "members": {
        "DocumentDataFieldName": {
          "shape": "DataSourceFieldName",
          "documentation": "<p>The name of the field that contains the document data to index.</p>"
        },
        "DocumentTitleFieldName": {
          "shape": "DataSourceFieldName",
          "documentation": "<p>The name of the field that contains the document title.</p>"
        },
        "FieldMappings": {
          "shape": "DataSourceToIndexFieldMappingList",
          "documentation": "<p>One or more objects that map fields in the knowledge article to Amazon Kendra index fields. The index field must exist before you can map a Salesforce field to it.</p>"
        }
      },
      "documentation": "<p>Provides configuration information for standard Salesforce knowledge articles.</p>"
    },
    "SalesforceStandardObjectAttachmentConfiguration": {
      "type": "structure",
      "members": {
        "DocumentTitleFieldName": {
          "shape": "DataSourceFieldName",
          "documentation": "<p>The name of the field used for the document title.</p>"
        },
        "FieldMappings": {
          "shape": "DataSourceToIndexFieldMappingList",
          "documentation": "<p>One or more objects that map fields in attachments to Amazon Kendra index fields.</p>"
        }
      },
      "documentation": "<p>Provides configuration information for processing attachments to Salesforce standard objects. </p>"
    },
    "SalesforceStandardObjectConfiguration": {
      "type": "structure",
      "required": [
        "Name",
        "DocumentDataFieldName"
      ],
      "members": {
        "Name": {
          "shape": "SalesforceStandardObjectName",
          "documentation": "<p>The name of the standard object.</p>"
        },
        "DocumentDataFieldName": {
          "shape": "DataSourceFieldName",
          "documentation": "<p>The name of the field in the standard object table that contains the document contents.</p>"
        },
        "DocumentTitleFieldName": {
          "shape": "DataSourceFieldName",
          "documentation": "<p>The name of the field in the standard object table that contains the document titleB.</p>"
        },
        "FieldMappings": {
          "shape": "DataSourceToIndexFieldMappingList",
          "documentation": "<p>One or more objects that map fields in the standard object to Amazon Kendra index fields. The index field must exist before you can map a Salesforce field to it.</p>"
        }
      },
      "documentation": "<p>Specifies confguration information for indexing a single standard object.</p>"
    },
    "SalesforceStandardObjectConfigurationList": {
      "type": "list",
      "member": {
        "shape": "SalesforceStandardObjectConfiguration"
      },
      "max": 17,
      "min": 1
    },
    "SalesforceStandardObjectName": {
      "type": "string",
      "enum": [
        "ACCOUNT",
        "CAMPAIGN",
        "CASE",
        "CONTACT",
        "CONTRACT",
        "DOCUMENT",
        "GROUP",
        "IDEA",
        "LEAD",
        "OPPORTUNITY",
        "PARTNER",
        "PRICEBOOK",
        "PRODUCT",
        "PROFILE",
        "SOLUTION",
        "TASK",
        "USER"
      ]
    },
    "ScanSchedule": {
      "type": "string"
    },
    "ScoreAttributes": {
      "type": "structure",
      "members": {
        "ScoreConfidence": {
          "shape": "ScoreConfidence",
          "documentation": "<p>A relative ranking for how well the response matches the query.</p>"
        }
      },
      "documentation": "<p>Provides a relative ranking that indicates how confident Amazon Kendra is that the response matches the query.</p>"
    },
    "ScoreConfidence": {
      "type": "string",
      "documentation": "Enumeration for query score confidence.",
      "enum": [
        "VERY_HIGH",
        "HIGH",
        "MEDIUM"
      ]
    },
    "Search": {
      "type": "structure",
      "members": {
        "Facetable": {
          "shape": "Boolean",
          "documentation": "<p>Indicates that the field can be used to create search facets, a count of results for each value in the field. The default is <code>false</code> .</p>"
        },
        "Searchable": {
          "shape": "Boolean",
          "documentation": "<p>Determines whether the field is used in the search. If the <code>Searchable</code> field is <code>true</code>, you can use relevance tuning to manually tune how Amazon Kendra weights the field in the search. The default is <code>true</code> for string fields and <code>false</code> for number and date fields.</p>"
        },
        "Displayable": {
          "shape": "Boolean",
          "documentation": "<p>Determines whether the field is returned in the query response. The default is <code>true</code>.</p>"
        },
        "Sortable": {
          "shape": "Boolean",
          "documentation": "<p>Determines whether the field can be used to sort the results of a query. If you specify sorting on a field that does not have <code>Sortable</code> set to <code>true</code>, Amazon Kendra returns an exception. The default is <code>false</code>.</p>"
        }
      },
      "documentation": "<p>Provides information about how a custom index field is used during a search.</p>"
    },
    "SecretArn": {
      "type": "string",
      "max": 1284,
      "min": 1,
      "pattern": "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"
    },
    "SecurityGroupIdList": {
      "type": "list",
      "member": {
        "shape": "VpcSecurityGroupId"
      },
      "max": 10,
      "min": 1
    },
    "ServerSideEncryptionConfiguration": {
      "type": "structure",
      "members": {
        "KmsKeyId": {
          "shape": "KmsKeyId",
          "documentation": "<p>The identifier of the AWS KMS customer master key (CMK). Amazon Kendra doesn't support asymmetric CMKs.</p>"
        }
      },
      "documentation": "<p>Provides the identifier of the AWS KMS customer master key (CMK) used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs.</p>"
    },
    "ServiceNowBuildVersionType": {
      "type": "string",
      "enum": [
        "LONDON",
        "OTHERS"
      ]
    },
    "ServiceNowConfiguration": {
      "type": "structure",
      "required": [
        "HostUrl",
        "SecretArn",
        "ServiceNowBuildVersion"
      ],
      "members": {
        "HostUrl": {
          "shape": "ServiceNowHostUrl",
          "documentation": "<p>The ServiceNow instance that the data source connects to. The host endpoint should look like the following: <code>{instance}.service-now.com.</code> </p>"
        },
        "SecretArn": {
          "shape": "SecretArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Secret Manager secret that contains the user name and password required to connect to the ServiceNow instance.</p>"
        },
        "ServiceNowBuildVersion": {
          "shape": "ServiceNowBuildVersionType",
          "documentation": "<p>The identifier of the release that the ServiceNow host is running. If the host is not running the <code>LONDON</code> release, use <code>OTHERS</code>.</p>"
        },
        "KnowledgeArticleConfiguration": {
          "shape": "ServiceNowKnowledgeArticleConfiguration",
          "documentation": "<p>Provides configuration information for crawling knowledge articles in the ServiceNow site.</p>"
        },
        "ServiceCatalogConfiguration": {
          "shape": "ServiceNowServiceCatalogConfiguration",
          "documentation": "<p>Provides configuration information for crawling service catalogs in the ServiceNow site.</p>"
        }
      },
      "documentation": "<p>Provides configuration information required to connect to a ServiceNow data source.</p>"
    },
    "ServiceNowHostUrl": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "^(?!(^(https?|ftp|file):\\/\\/))[a-z0-9-]+(\\.service-now\\.com)$"
    },
    "ServiceNowKnowledgeArticleConfiguration": {
      "type": "structure",
      "required": [
        "DocumentDataFieldName"
      ],
      "members": {
        "CrawlAttachments": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether Amazon Kendra should index attachments to knowledge articles.</p>"
        },
        "IncludeAttachmentFilePatterns": {
          "shape": "DataSourceInclusionsExclusionsStrings",
          "documentation": "<p>List of regular expressions applied to knowledge articles. Items that don't match the inclusion pattern are not indexed. The regex is applied to the field specified in the <code>PatternTargetField</code>.</p>"
        },
        "ExcludeAttachmentFilePatterns": {
          "shape": "DataSourceInclusionsExclusionsStrings",
          "documentation": "<p>List of regular expressions applied to knowledge articles. Items that don't match the inclusion pattern are not indexed. The regex is applied to the field specified in the <code>PatternTargetField</code> </p>"
        },
        "DocumentDataFieldName": {
          "shape": "DataSourceFieldName",
          "documentation": "<p>The name of the ServiceNow field that is mapped to the index document contents field in the Amazon Kendra index.</p>"
        },
        "DocumentTitleFieldName": {
          "shape": "DataSourceFieldName",
          "documentation": "<p>The name of the ServiceNow field that is mapped to the index document title field.</p>"
        },
        "FieldMappings": {
          "shape": "DataSourceToIndexFieldMappingList",
          "documentation": "<p>Mapping between ServiceNow fields and Amazon Kendra index fields. You must create the index field before you map the field.</p>"
        }
      },
      "documentation": "<p>Provides configuration information for crawling knowledge articles in the ServiceNow site.</p>"
    },
    "ServiceNowServiceCatalogConfiguration": {
      "type": "structure",
      "required": [
        "DocumentDataFieldName"
      ],
      "members": {
        "CrawlAttachments": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether Amazon Kendra should crawl attachments to the service catalog items. </p>"
        },
        "IncludeAttachmentFilePatterns": {
          "shape": "DataSourceInclusionsExclusionsStrings",
          "documentation": "<p>Determines the types of file attachments that are included in the index. </p>"
        },
        "ExcludeAttachmentFilePatterns": {
          "shape": "DataSourceInclusionsExclusionsStrings",
          "documentation": "<p>Determines the types of file attachments that are excluded from the index.</p>"
        },
        "DocumentDataFieldName": {
          "shape": "DataSourceFieldName",
          "documentation": "<p>The name of the ServiceNow field that is mapped to the index document contents field in the Amazon Kendra index.</p>"
        },
        "DocumentTitleFieldName": {
          "shape": "DataSourceFieldName",
          "documentation": "<p>The name of the ServiceNow field that is mapped to the index document title field.</p>"
        },
        "FieldMappings": {
          "shape": "DataSourceToIndexFieldMappingList",
          "documentation": "<p>Mapping between ServiceNow fields and Amazon Kendra index fields. You must create the index field before you map the field.</p>"
        }
      },
      "documentation": "<p>Provides configuration information for crawling service catalog items in the ServiceNow site</p>"
    },
    "SharePointConfiguration": {
      "type": "structure",
      "required": [
        "SharePointVersion",
        "Urls",
        "SecretArn"
      ],
      "members": {
        "SharePointVersion": {
          "shape": "SharePointVersion",
          "documentation": "<p>The version of Microsoft SharePoint that you are using as a data source.</p>"
        },
        "Urls": {
          "shape": "SharePointUrlList",
          "documentation": "<p>The URLs of the Microsoft SharePoint site that contains the documents that should be indexed.</p>"
        },
        "SecretArn": {
          "shape": "SecretArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of credentials stored in AWS Secrets Manager. The credentials should be a user/password pair. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/data-source-sharepoint.html\">Using a Microsoft SharePoint Data Source</a>. For more information about AWS Secrets Manager, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html\"> What Is AWS Secrets Manager </a> in the <i>AWS Secrets Manager</i> user guide.</p>"
        },
        "CrawlAttachments": {
          "shape": "Boolean",
          "documentation": "<p> <code>TRUE</code> to include attachments to documents stored in your Microsoft SharePoint site in the index; otherwise, <code>FALSE</code>.</p>"
        },
        "UseChangeLog": {
          "shape": "Boolean",
          "documentation": "<p>Set to <code>TRUE</code> to use the Microsoft SharePoint change log to determine the documents that need to be updated in the index. Depending on the size of the SharePoint change log, it may take longer for Amazon Kendra to use the change log than it takes it to determine the changed documents using the Amazon Kendra document crawler.</p>"
        },
        "InclusionPatterns": {
          "shape": "DataSourceInclusionsExclusionsStrings",
          "documentation": "<p>A list of regular expression patterns. Documents that match the patterns are included in the index. Documents that don't match the patterns are excluded from the index. If a document matches both an inclusion pattern and an exclusion pattern, the document is not included in the index.</p> <p>The regex is applied to the display URL of the SharePoint document.</p>"
        },
        "ExclusionPatterns": {
          "shape": "DataSourceInclusionsExclusionsStrings",
          "documentation": "<p>A list of regular expression patterns. Documents that match the patterns are excluded from the index. Documents that don't match the patterns are included in the index. If a document matches both an exclusion pattern and an inclusion pattern, the document is not included in the index.</p> <p>The regex is applied to the display URL of the SharePoint document.</p>"
        },
        "VpcConfiguration": {
          "shape": "DataSourceVpcConfiguration"
        },
        "FieldMappings": {
          "shape": "DataSourceToIndexFieldMappingList",
          "documentation": "<p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map Microsoft SharePoint attributes to custom fields in the Amazon Kendra index. You must first create the index fields using the operation before you map SharePoint attributes. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping Data Source Fields</a>.</p>"
        },
        "DocumentTitleFieldName": {
          "shape": "DataSourceFieldName",
          "documentation": "<p>The Microsoft SharePoint attribute field that contains the title of the document.</p>"
        }
      },
      "documentation": "<p>Provides configuration information for connecting to a Microsoft SharePoint data source.</p>"
    },
    "SharePointUrlList": {
      "type": "list",
      "member": {
        "shape": "Url"
      },
      "max": 100,
      "min": 1
    },
    "SharePointVersion": {
      "type": "string",
      "enum": [
        "SHAREPOINT_ONLINE"
      ]
    },
    "SortOrder": {
      "type": "string",
      "enum": [
        "DESC",
        "ASC"
      ]
    },
    "SortingConfiguration": {
      "type": "structure",
      "required": [
        "DocumentAttributeKey",
        "SortOrder"
      ],
      "members": {
        "DocumentAttributeKey": {
          "shape": "DocumentAttributeKey",
          "documentation": "<p>The name of the document attribute used to sort the response. You can use any field that has the <code>Sortable</code> flag set to true.</p> <p>You can also sort by any of the following built-in attributes:</p> <ul> <li> <p>_category</p> </li> <li> <p>_created_at</p> </li> <li> <p>_last_updated_at</p> </li> <li> <p>_version</p> </li> <li> <p>_view_count</p> </li> </ul>"
        },
        "SortOrder": {
          "shape": "SortOrder",
          "documentation": "<p>The order that the results should be returned in. In case of ties, the relevance assigned to the result by Amazon Kendra is used as the tie-breaker.</p>"
        }
      },
      "documentation": "<p>Specifies the document attribute to use to sort the response to a Amazon Kendra query. You can specify a single attribute for sorting. The attribute must have the <code>Sortable</code> flag set to <code>true</code>, otherwise Amazon Kendra returns an exception.</p> <p>You can sort attributes of the following types.</p> <ul> <li> <p>Date value</p> </li> <li> <p>Long value</p> </li> <li> <p>String value</p> </li> </ul> <p>You can't sort attributes of the following type.</p> <ul> <li> <p>String list value</p> </li> </ul>"
    },
    "SqlConfiguration": {
      "type": "structure",
      "members": {
        "QueryIdentifiersEnclosingOption": {
          "shape": "QueryIdentifiersEnclosingOption",
          "documentation": "<p>Determines whether Amazon Kendra encloses SQL identifiers for tables and column names in double quotes (\") when making a database query.</p> <p>By default, Amazon Kendra passes SQL identifiers the way that they are entered into the data source configuration. It does not change the case of identifiers or enclose them in quotes.</p> <p>PostgreSQL internally converts uppercase characters to lower case characters in identifiers unless they are quoted. Choosing this option encloses identifiers in quotes so that PostgreSQL does not convert the character's case.</p> <p>For MySQL databases, you must enable the <code>ansi_quotes</code> option when you set this field to <code>DOUBLE_QUOTES</code>.</p>"
        }
      },
      "documentation": "<p>Provides information that configures Amazon Kendra to use a SQL database.</p>"
    },
    "StartDataSourceSyncJobRequest": {
      "type": "structure",
      "required": [
        "Id",
        "IndexId"
      ],
      "members": {
        "Id": {
          "shape": "DataSourceId",
          "documentation": "<p>The identifier of the data source to synchronize.</p>"
        },
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index that contains the data source.</p>"
        }
      }
    },
    "StartDataSourceSyncJobResponse": {
      "type": "structure",
      "members": {
        "ExecutionId": {
          "shape": "String",
          "documentation": "<p>Identifies a particular synchronization job.</p>"
        }
      }
    },
    "StopDataSourceSyncJobRequest": {
      "type": "structure",
      "required": [
        "Id",
        "IndexId"
      ],
      "members": {
        "Id": {
          "shape": "DataSourceId",
          "documentation": "<p>The identifier of the data source for which to stop the synchronization jobs.</p>"
        },
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index that contains the data source.</p>"
        }
      }
    },
    "StorageCapacityUnit": {
      "type": "integer",
      "min": 0
    },
    "String": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "SubmitFeedbackRequest": {
      "type": "structure",
      "required": [
        "IndexId",
        "QueryId"
      ],
      "members": {
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index that was queried.</p>"
        },
        "QueryId": {
          "shape": "QueryId",
          "documentation": "<p>The identifier of the specific query for which you are submitting feedback. The query ID is returned in the response to the operation.</p>"
        },
        "ClickFeedbackItems": {
          "shape": "ClickFeedbackList",
          "documentation": "<p>Tells Amazon Kendra that a particular search result link was chosen by the user. </p>"
        },
        "RelevanceFeedbackItems": {
          "shape": "RelevanceFeedbackList",
          "documentation": "<p>Provides Amazon Kendra with relevant or not relevant feedback for whether a particular item was relevant to the search.</p>"
        }
      }
    },
    "SubnetId": {
      "type": "string",
      "max": 200,
      "min": 1,
      "pattern": "[\\-0-9a-zA-Z]+"
    },
    "SubnetIdList": {
      "type": "list",
      "member": {
        "shape": "SubnetId"
      },
      "max": 6,
      "min": 1
    },
    "TableName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^[a-zA-Z][a-zA-Z0-9_]*$"
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
          "documentation": "<p>The key for the tag. Keys are not case sensitive and must be unique for the index, FAQ, or data source.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value associated with the tag. The value may be an empty string but it can't be null.</p>"
        }
      },
      "documentation": "<p>A list of key/value pairs that identify an index, FAQ, or data source. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>"
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
          "documentation": "<p>The Amazon Resource Name (ARN) of the index, FAQ, or data source to tag.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag keys to add to the index, FAQ, or data source. If a tag already exists, the existing value is replaced with the new value.</p>"
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
    "TenantDomain": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^([a-zA-Z0-9]+(-[a-zA-Z0-9]+)*\\.)+[a-z]{2,}$"
    },
    "TextDocumentStatistics": {
      "type": "structure",
      "required": [
        "IndexedTextDocumentsCount",
        "IndexedTextBytes"
      ],
      "members": {
        "IndexedTextDocumentsCount": {
          "shape": "IndexedTextDocumentsCount",
          "documentation": "<p>The number of text documents indexed.</p>"
        },
        "IndexedTextBytes": {
          "shape": "IndexedTextBytes",
          "documentation": "<p>The total size, in bytes, of the indexed documents.</p>"
        }
      },
      "documentation": "<p>Provides information about text documents indexed in an index.</p>"
    },
    "TextWithHighlights": {
      "type": "structure",
      "members": {
        "Text": {
          "shape": "String",
          "documentation": "<p>The text to display to the user.</p>"
        },
        "Highlights": {
          "shape": "HighlightList",
          "documentation": "<p>The beginning and end of the text that should be highlighted.</p>"
        }
      },
      "documentation": "<p>Provides text and information about where to highlight the text.</p>"
    },
    "TimeRange": {
      "type": "structure",
      "members": {
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The UNIX datetime of the beginning of the time range.</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The UNIX datetime of the end of the time range.</p>"
        }
      },
      "documentation": "<p>Provides a range of time.</p>"
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "Title": {
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
          "documentation": "<p>The Amazon Resource Name (ARN) of the index, FAQ, or data source to remove the tag from.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A list of tag keys to remove from the index, FAQ, or data source. If a tag key does not exist on the resource, it is ignored.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateDataSourceRequest": {
      "type": "structure",
      "required": [
        "Id",
        "IndexId"
      ],
      "members": {
        "Id": {
          "shape": "DataSourceId",
          "documentation": "<p>The unique identifier of the data source to update.</p>"
        },
        "Name": {
          "shape": "DataSourceName",
          "documentation": "<p>The name of the data source to update. The name of the data source can't be updated. To rename a data source you must delete the data source and re-create it.</p>"
        },
        "IndexId": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index that contains the data source to update.</p>"
        },
        "Configuration": {
          "shape": "DataSourceConfiguration"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The new description for the data source.</p>"
        },
        "Schedule": {
          "shape": "ScanSchedule",
          "documentation": "<p>The new update schedule for the data source.</p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the new role to use when the data source is accessing resources on your behalf.</p>"
        }
      }
    },
    "UpdateIndexRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "IndexId",
          "documentation": "<p>The identifier of the index to update.</p>"
        },
        "Name": {
          "shape": "IndexName",
          "documentation": "<p>The name of the index to update.</p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>A new IAM role that gives Amazon Kendra permission to access your Amazon CloudWatch logs.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A new description for the index.</p>"
        },
        "DocumentMetadataConfigurationUpdates": {
          "shape": "DocumentMetadataConfigurationList",
          "documentation": "<p>The document metadata to update. </p>"
        },
        "CapacityUnits": {
          "shape": "CapacityUnitsConfiguration",
          "documentation": "<p>Sets the number of addtional storage and query capacity units that should be used by the index. You can change the capacity of the index up to 5 times per day.</p> <p>If you are using extra storage units, you can't reduce the storage capacity below that required to meet the storage needs for your index.</p>"
        }
      }
    },
    "Url": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "^(https?|ftp|file):\\/\\/([^\\s]*)"
    },
    "ValueImportanceMap": {
      "type": "map",
      "key": {
        "shape": "ValueImportanceMapKey"
      },
      "value": {
        "shape": "Importance"
      }
    },
    "ValueImportanceMapKey": {
      "type": "string",
      "max": 50,
      "min": 1
    },
    "VpcSecurityGroupId": {
      "type": "string",
      "max": 200,
      "min": 1,
      "pattern": "[-0-9a-zA-Z]+"
    }
  },
  "documentation": "<p>Amazon Kendra is a service for indexing large document sets.</p>"
}
]===]))
