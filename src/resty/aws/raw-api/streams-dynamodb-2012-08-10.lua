local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version":"2.0",
  "metadata":{
    "apiVersion":"2012-08-10",
    "endpointPrefix":"streams.dynamodb",
    "jsonVersion":"1.0",
    "protocol":"json",
    "serviceFullName":"Amazon DynamoDB Streams",
    "serviceId":"DynamoDB Streams",
    "signatureVersion":"v4",
    "signingName":"dynamodb",
    "targetPrefix":"DynamoDBStreams_20120810",
    "uid":"streams-dynamodb-2012-08-10"
  },
  "operations":{
    "DescribeStream":{
      "name":"DescribeStream",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DescribeStreamInput"},
      "output":{"shape":"DescribeStreamOutput"},
      "errors":[
        {"shape":"ResourceNotFoundException"},
        {"shape":"InternalServerError"}
      ],
      "documentation":"<p>Returns information about a stream, including the current status of the stream, its Amazon Resource Name (ARN), the composition of its shards, and its corresponding DynamoDB table.</p> <note> <p>You can call <code>DescribeStream</code> at a maximum rate of 10 times per second.</p> </note> <p>Each shard in the stream has a <code>SequenceNumberRange</code> associated with it. If the <code>SequenceNumberRange</code> has a <code>StartingSequenceNumber</code> but no <code>EndingSequenceNumber</code>, then the shard is still open (able to receive more stream records). If both <code>StartingSequenceNumber</code> and <code>EndingSequenceNumber</code> are present, then that shard is closed and can no longer receive more data.</p>"
    },
    "GetRecords":{
      "name":"GetRecords",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"GetRecordsInput"},
      "output":{"shape":"GetRecordsOutput"},
      "errors":[
        {"shape":"ResourceNotFoundException"},
        {"shape":"LimitExceededException"},
        {"shape":"InternalServerError"},
        {"shape":"ExpiredIteratorException"},
        {"shape":"TrimmedDataAccessException"}
      ],
      "documentation":"<p>Retrieves the stream records from a given shard.</p> <p>Specify a shard iterator using the <code>ShardIterator</code> parameter. The shard iterator specifies the position in the shard from which you want to start reading stream records sequentially. If there are no stream records available in the portion of the shard that the iterator points to, <code>GetRecords</code> returns an empty list. Note that it might take multiple calls to get to a portion of the shard that contains stream records.</p> <note> <p> <code>GetRecords</code> can retrieve a maximum of 1 MB of data or 1000 stream records, whichever comes first.</p> </note>"
    },
    "GetShardIterator":{
      "name":"GetShardIterator",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"GetShardIteratorInput"},
      "output":{"shape":"GetShardIteratorOutput"},
      "errors":[
        {"shape":"ResourceNotFoundException"},
        {"shape":"InternalServerError"},
        {"shape":"TrimmedDataAccessException"}
      ],
      "documentation":"<p>Returns a shard iterator. A shard iterator provides information about how to retrieve the stream records from within a shard. Use the shard iterator in a subsequent <code>GetRecords</code> request to read the stream records from the shard.</p> <note> <p>A shard iterator expires 15 minutes after it is returned to the requester.</p> </note>"
    },
    "ListStreams":{
      "name":"ListStreams",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"ListStreamsInput"},
      "output":{"shape":"ListStreamsOutput"},
      "errors":[
        {"shape":"ResourceNotFoundException"},
        {"shape":"InternalServerError"}
      ],
      "documentation":"<p>Returns an array of stream ARNs associated with the current account and endpoint. If the <code>TableName</code> parameter is present, then <code>ListStreams</code> will return only the streams ARNs for that table.</p> <note> <p>You can call <code>ListStreams</code> at a maximum rate of 5 times per second.</p> </note>"
    }
  },
  "shapes":{
    "AttributeMap":{
      "type":"map",
      "key":{"shape":"AttributeName"},
      "value":{"shape":"AttributeValue"}
    },
    "AttributeName":{
      "type":"string",
      "max":65535
    },
    "AttributeValue":{
      "type":"structure",
      "members":{
        "S":{
          "shape":"StringAttributeValue",
          "documentation":"<p>A String data type.</p>"
        },
        "N":{
          "shape":"NumberAttributeValue",
          "documentation":"<p>A Number data type.</p>"
        },
        "B":{
          "shape":"BinaryAttributeValue",
          "documentation":"<p>A Binary data type.</p>"
        },
        "SS":{
          "shape":"StringSetAttributeValue",
          "documentation":"<p>A String Set data type.</p>"
        },
        "NS":{
          "shape":"NumberSetAttributeValue",
          "documentation":"<p>A Number Set data type.</p>"
        },
        "BS":{
          "shape":"BinarySetAttributeValue",
          "documentation":"<p>A Binary Set data type.</p>"
        },
        "M":{
          "shape":"MapAttributeValue",
          "documentation":"<p>A Map data type.</p>"
        },
        "L":{
          "shape":"ListAttributeValue",
          "documentation":"<p>A List data type.</p>"
        },
        "NULL":{
          "shape":"NullAttributeValue",
          "documentation":"<p>A Null data type.</p>"
        },
        "BOOL":{
          "shape":"BooleanAttributeValue",
          "documentation":"<p>A Boolean data type.</p>"
        }
      },
      "documentation":"<p>Represents the data for an attribute. You can set one, and only one, of the elements.</p> <p>Each attribute in an item is a name-value pair. An attribute can be single-valued or multi-valued set. For example, a book item can have title and authors attributes. Each book has one title but can have many authors. The multi-valued attribute is a set; duplicate values are not allowed.</p>"
    },
    "BinaryAttributeValue":{"type":"blob"},
    "BinarySetAttributeValue":{
      "type":"list",
      "member":{"shape":"BinaryAttributeValue"}
    },
    "BooleanAttributeValue":{"type":"boolean"},
    "Date":{"type":"timestamp"},
    "DescribeStreamInput":{
      "type":"structure",
      "required":["StreamArn"],
      "members":{
        "StreamArn":{
          "shape":"StreamArn",
          "documentation":"<p>The Amazon Resource Name (ARN) for the stream.</p>"
        },
        "Limit":{
          "shape":"PositiveIntegerObject",
          "documentation":"<p>The maximum number of shard objects to return. The upper limit is 100.</p>"
        },
        "ExclusiveStartShardId":{
          "shape":"ShardId",
          "documentation":"<p>The shard ID of the first item that this operation will evaluate. Use the value that was returned for <code>LastEvaluatedShardId</code> in the previous operation. </p>"
        }
      },
      "documentation":"<p>Represents the input of a <code>DescribeStream</code> operation.</p>"
    },
    "DescribeStreamOutput":{
      "type":"structure",
      "members":{
        "StreamDescription":{
          "shape":"StreamDescription",
          "documentation":"<p>A complete description of the stream, including its creation date and time, the DynamoDB table associated with the stream, the shard IDs within the stream, and the beginning and ending sequence numbers of stream records within the shards.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <code>DescribeStream</code> operation.</p>"
    },
    "ErrorMessage":{"type":"string"},
    "ExpiredIteratorException":{
      "type":"structure",
      "members":{
        "message":{
          "shape":"ErrorMessage",
          "documentation":"<p>The provided iterator exceeds the maximum age allowed.</p>"
        }
      },
      "documentation":"<p>The shard iterator has expired and can no longer be used to retrieve stream records. A shard iterator expires 15 minutes after it is retrieved using the <code>GetShardIterator</code> action.</p>",
      "exception":true
    },
    "GetRecordsInput":{
      "type":"structure",
      "required":["ShardIterator"],
      "members":{
        "ShardIterator":{
          "shape":"ShardIterator",
          "documentation":"<p>A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.</p>"
        },
        "Limit":{
          "shape":"PositiveIntegerObject",
          "documentation":"<p>The maximum number of records to return from the shard. The upper limit is 1000.</p>"
        }
      },
      "documentation":"<p>Represents the input of a <code>GetRecords</code> operation.</p>"
    },
    "GetRecordsOutput":{
      "type":"structure",
      "members":{
        "Records":{
          "shape":"RecordList",
          "documentation":"<p>The stream records from the shard, which were retrieved using the shard iterator.</p>"
        },
        "NextShardIterator":{
          "shape":"ShardIterator",
          "documentation":"<p>The next position in the shard from which to start sequentially reading stream records. If set to <code>null</code>, the shard has been closed and the requested iterator will not return any more data.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <code>GetRecords</code> operation.</p>"
    },
    "GetShardIteratorInput":{
      "type":"structure",
      "required":[
        "StreamArn",
        "ShardId",
        "ShardIteratorType"
      ],
      "members":{
        "StreamArn":{
          "shape":"StreamArn",
          "documentation":"<p>The Amazon Resource Name (ARN) for the stream.</p>"
        },
        "ShardId":{
          "shape":"ShardId",
          "documentation":"<p>The identifier of the shard. The iterator will be returned for this shard ID.</p>"
        },
        "ShardIteratorType":{
          "shape":"ShardIteratorType",
          "documentation":"<p>Determines how the shard iterator is used to start reading stream records from the shard:</p> <ul> <li> <p> <code>AT_SEQUENCE_NUMBER</code> - Start reading exactly from the position denoted by a specific sequence number.</p> </li> <li> <p> <code>AFTER_SEQUENCE_NUMBER</code> - Start reading right after the position denoted by a specific sequence number.</p> </li> <li> <p> <code>TRIM_HORIZON</code> - Start reading at the last (untrimmed) stream record, which is the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream.</p> </li> <li> <p> <code>LATEST</code> - Start reading just after the most recent stream record in the shard, so that you always read the most recent data in the shard.</p> </li> </ul>"
        },
        "SequenceNumber":{
          "shape":"SequenceNumber",
          "documentation":"<p>The sequence number of a stream record in the shard from which to start reading.</p>"
        }
      },
      "documentation":"<p>Represents the input of a <code>GetShardIterator</code> operation.</p>"
    },
    "GetShardIteratorOutput":{
      "type":"structure",
      "members":{
        "ShardIterator":{
          "shape":"ShardIterator",
          "documentation":"<p>The position in the shard from which to start reading stream records sequentially. A shard iterator specifies this position using the sequence number of a stream record in a shard.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <code>GetShardIterator</code> operation.</p>"
    },
    "Identity":{
      "type":"structure",
      "members":{
        "PrincipalId":{
          "shape":"String",
          "documentation":"<p>A unique identifier for the entity that made the call. For Time To Live, the principalId is \"dynamodb.amazonaws.com\".</p>"
        },
        "Type":{
          "shape":"String",
          "documentation":"<p>The type of the identity. For Time To Live, the type is \"Service\".</p>"
        }
      },
      "documentation":"<p>Contains details about the type of identity that made the request.</p>"
    },
    "InternalServerError":{
      "type":"structure",
      "members":{
        "message":{
          "shape":"ErrorMessage",
          "documentation":"<p>The server encountered an internal error trying to fulfill the request.</p>"
        }
      },
      "documentation":"<p>An error occurred on the server side.</p>",
      "exception":true,
      "fault":true
    },
    "KeySchema":{
      "type":"list",
      "member":{"shape":"KeySchemaElement"},
      "max":2,
      "min":1
    },
    "KeySchemaAttributeName":{
      "type":"string",
      "max":255,
      "min":1
    },
    "KeySchemaElement":{
      "type":"structure",
      "required":[
        "AttributeName",
        "KeyType"
      ],
      "members":{
        "AttributeName":{
          "shape":"KeySchemaAttributeName",
          "documentation":"<p>The name of a key attribute.</p>"
        },
        "KeyType":{
          "shape":"KeyType",
          "documentation":"<p>The attribute data, consisting of the data type and the attribute value itself.</p>"
        }
      },
      "documentation":"<p>Represents <i>a single element</i> of a key schema. A key schema specifies the attributes that make up the primary key of a table, or the key attributes of an index.</p> <p>A <code>KeySchemaElement</code> represents exactly one attribute of the primary key. For example, a simple primary key (partition key) would be represented by one <code>KeySchemaElement</code>. A composite primary key (partition key and sort key) would require one <code>KeySchemaElement</code> for the partition key, and another <code>KeySchemaElement</code> for the sort key.</p> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term \"hash attribute\" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term \"range attribute\" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>"
    },
    "KeyType":{
      "type":"string",
      "enum":[
        "HASH",
        "RANGE"
      ]
    },
    "LimitExceededException":{
      "type":"structure",
      "members":{
        "message":{
          "shape":"ErrorMessage",
          "documentation":"<p>Too many operations for a given subscriber.</p>"
        }
      },
      "documentation":"<p>Your request rate is too high. The AWS SDKs for DynamoDB automatically retry requests that receive this exception. Your request is eventually successful, unless your retry queue is too large to finish. Reduce the frequency of requests and use exponential backoff. For more information, go to <a href=\"http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#APIRetries\">Error Retries and Exponential Backoff</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>",
      "exception":true
    },
    "ListAttributeValue":{
      "type":"list",
      "member":{"shape":"AttributeValue"}
    },
    "ListStreamsInput":{
      "type":"structure",
      "members":{
        "TableName":{
          "shape":"TableName",
          "documentation":"<p>If this parameter is provided, then only the streams associated with this table name are returned.</p>"
        },
        "Limit":{
          "shape":"PositiveIntegerObject",
          "documentation":"<p>The maximum number of streams to return. The upper limit is 100.</p>"
        },
        "ExclusiveStartStreamArn":{
          "shape":"StreamArn",
          "documentation":"<p>The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the value that was returned for <code>LastEvaluatedStreamArn</code> in the previous operation. </p>"
        }
      },
      "documentation":"<p>Represents the input of a <code>ListStreams</code> operation.</p>"
    },
    "ListStreamsOutput":{
      "type":"structure",
      "members":{
        "Streams":{
          "shape":"StreamList",
          "documentation":"<p>A list of stream descriptors associated with the current account and endpoint.</p>"
        },
        "LastEvaluatedStreamArn":{
          "shape":"StreamArn",
          "documentation":"<p>The stream ARN of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p> <p>If <code>LastEvaluatedStreamArn</code> is empty, then the \"last page\" of results has been processed and there is no more data to be retrieved.</p> <p>If <code>LastEvaluatedStreamArn</code> is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when <code>LastEvaluatedStreamArn</code> is empty.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <code>ListStreams</code> operation.</p>"
    },
    "MapAttributeValue":{
      "type":"map",
      "key":{"shape":"AttributeName"},
      "value":{"shape":"AttributeValue"}
    },
    "NullAttributeValue":{"type":"boolean"},
    "NumberAttributeValue":{"type":"string"},
    "NumberSetAttributeValue":{
      "type":"list",
      "member":{"shape":"NumberAttributeValue"}
    },
    "OperationType":{
      "type":"string",
      "enum":[
        "INSERT",
        "MODIFY",
        "REMOVE"
      ]
    },
    "PositiveIntegerObject":{
      "type":"integer",
      "min":1
    },
    "PositiveLongObject":{
      "type":"long",
      "min":1
    },
    "Record":{
      "type":"structure",
      "members":{
        "eventID":{
          "shape":"String",
          "documentation":"<p>A globally unique identifier for the event that was recorded in this stream record.</p>"
        },
        "eventName":{
          "shape":"OperationType",
          "documentation":"<p>The type of data modification that was performed on the DynamoDB table:</p> <ul> <li> <p> <code>INSERT</code> - a new item was added to the table.</p> </li> <li> <p> <code>MODIFY</code> - one or more of an existing item's attributes were modified.</p> </li> <li> <p> <code>REMOVE</code> - the item was deleted from the table</p> </li> </ul>"
        },
        "eventVersion":{
          "shape":"String",
          "documentation":"<p>The version number of the stream record format. This number is updated whenever the structure of <code>Record</code> is modified.</p> <p>Client applications must not assume that <code>eventVersion</code> will remain at a particular value, as this number is subject to change at any time. In general, <code>eventVersion</code> will only increase as the low-level DynamoDB Streams API evolves.</p>"
        },
        "eventSource":{
          "shape":"String",
          "documentation":"<p>The AWS service from which the stream record originated. For DynamoDB Streams, this is <code>aws:dynamodb</code>.</p>"
        },
        "awsRegion":{
          "shape":"String",
          "documentation":"<p>The region in which the <code>GetRecords</code> request was received.</p>"
        },
        "dynamodb":{
          "shape":"StreamRecord",
          "documentation":"<p>The main body of the stream record, containing all of the DynamoDB-specific fields.</p>"
        },
        "userIdentity":{
          "shape":"Identity",
          "documentation":"<p>Items that are deleted by the Time to Live process after expiration have the following fields: </p> <ul> <li> <p>Records[].userIdentity.type</p> <p>\"Service\"</p> </li> <li> <p>Records[].userIdentity.principalId</p> <p>\"dynamodb.amazonaws.com\"</p> </li> </ul>"
        }
      },
      "documentation":"<p>A description of a unique event within a stream.</p>"
    },
    "RecordList":{
      "type":"list",
      "member":{"shape":"Record"}
    },
    "ResourceNotFoundException":{
      "type":"structure",
      "members":{
        "message":{
          "shape":"ErrorMessage",
          "documentation":"<p>The resource which is being requested does not exist.</p>"
        }
      },
      "documentation":"<p>The operation tried to access a nonexistent stream.</p>",
      "exception":true
    },
    "SequenceNumber":{
      "type":"string",
      "max":40,
      "min":21
    },
    "SequenceNumberRange":{
      "type":"structure",
      "members":{
        "StartingSequenceNumber":{
          "shape":"SequenceNumber",
          "documentation":"<p>The first sequence number.</p>"
        },
        "EndingSequenceNumber":{
          "shape":"SequenceNumber",
          "documentation":"<p>The last sequence number.</p>"
        }
      },
      "documentation":"<p>The beginning and ending sequence numbers for the stream records contained within a shard.</p>"
    },
    "Shard":{
      "type":"structure",
      "members":{
        "ShardId":{
          "shape":"ShardId",
          "documentation":"<p>The system-generated identifier for this shard.</p>"
        },
        "SequenceNumberRange":{
          "shape":"SequenceNumberRange",
          "documentation":"<p>The range of possible sequence numbers for the shard.</p>"
        },
        "ParentShardId":{
          "shape":"ShardId",
          "documentation":"<p>The shard ID of the current shard's parent.</p>"
        }
      },
      "documentation":"<p>A uniquely identified group of stream records within a stream.</p>"
    },
    "ShardDescriptionList":{
      "type":"list",
      "member":{"shape":"Shard"}
    },
    "ShardId":{
      "type":"string",
      "max":65,
      "min":28
    },
    "ShardIterator":{
      "type":"string",
      "max":2048,
      "min":1
    },
    "ShardIteratorType":{
      "type":"string",
      "enum":[
        "TRIM_HORIZON",
        "LATEST",
        "AT_SEQUENCE_NUMBER",
        "AFTER_SEQUENCE_NUMBER"
      ]
    },
    "Stream":{
      "type":"structure",
      "members":{
        "StreamArn":{
          "shape":"StreamArn",
          "documentation":"<p>The Amazon Resource Name (ARN) for the stream.</p>"
        },
        "TableName":{
          "shape":"TableName",
          "documentation":"<p>The DynamoDB table with which the stream is associated.</p>"
        },
        "StreamLabel":{
          "shape":"String",
          "documentation":"<p>A timestamp, in ISO 8601 format, for this stream.</p> <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:</p> <ul> <li> <p>the AWS customer ID.</p> </li> <li> <p>the table name</p> </li> <li> <p>the <code>StreamLabel</code> </p> </li> </ul>"
        }
      },
      "documentation":"<p>Represents all of the data describing a particular stream.</p>"
    },
    "StreamArn":{
      "type":"string",
      "max":1024,
      "min":37
    },
    "StreamDescription":{
      "type":"structure",
      "members":{
        "StreamArn":{
          "shape":"StreamArn",
          "documentation":"<p>The Amazon Resource Name (ARN) for the stream.</p>"
        },
        "StreamLabel":{
          "shape":"String",
          "documentation":"<p>A timestamp, in ISO 8601 format, for this stream.</p> <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:</p> <ul> <li> <p>the AWS customer ID.</p> </li> <li> <p>the table name</p> </li> <li> <p>the <code>StreamLabel</code> </p> </li> </ul>"
        },
        "StreamStatus":{
          "shape":"StreamStatus",
          "documentation":"<p>Indicates the current status of the stream:</p> <ul> <li> <p> <code>ENABLING</code> - Streams is currently being enabled on the DynamoDB table.</p> </li> <li> <p> <code>ENABLED</code> - the stream is enabled.</p> </li> <li> <p> <code>DISABLING</code> - Streams is currently being disabled on the DynamoDB table.</p> </li> <li> <p> <code>DISABLED</code> - the stream is disabled.</p> </li> </ul>"
        },
        "StreamViewType":{
          "shape":"StreamViewType",
          "documentation":"<p>Indicates the format of the records within this stream:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - only the key attributes of items that were modified in the DynamoDB table.</p> </li> <li> <p> <code>NEW_IMAGE</code> - entire items from the table, as they appeared after they were modified.</p> </li> <li> <p> <code>OLD_IMAGE</code> - entire items from the table, as they appeared before they were modified.</p> </li> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - both the new and the old images of the items from the table.</p> </li> </ul>"
        },
        "CreationRequestDateTime":{
          "shape":"Date",
          "documentation":"<p>The date and time when the request to create this stream was issued.</p>"
        },
        "TableName":{
          "shape":"TableName",
          "documentation":"<p>The DynamoDB table with which the stream is associated.</p>"
        },
        "KeySchema":{
          "shape":"KeySchema",
          "documentation":"<p>The key attribute(s) of the stream's DynamoDB table.</p>"
        },
        "Shards":{
          "shape":"ShardDescriptionList",
          "documentation":"<p>The shards that comprise the stream.</p>"
        },
        "LastEvaluatedShardId":{
          "shape":"ShardId",
          "documentation":"<p>The shard ID of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p> <p>If <code>LastEvaluatedShardId</code> is empty, then the \"last page\" of results has been processed and there is currently no more data to be retrieved.</p> <p>If <code>LastEvaluatedShardId</code> is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when <code>LastEvaluatedShardId</code> is empty.</p>"
        }
      },
      "documentation":"<p>Represents all of the data describing a particular stream.</p>"
    },
    "StreamList":{
      "type":"list",
      "member":{"shape":"Stream"}
    },
    "StreamRecord":{
      "type":"structure",
      "members":{
        "ApproximateCreationDateTime":{
          "shape":"Date",
          "documentation":"<p>The approximate date and time when the stream record was created, in <a href=\"http://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"
        },
        "Keys":{
          "shape":"AttributeMap",
          "documentation":"<p>The primary key attribute(s) for the DynamoDB item that was modified.</p>"
        },
        "NewImage":{
          "shape":"AttributeMap",
          "documentation":"<p>The item in the DynamoDB table as it appeared after it was modified.</p>"
        },
        "OldImage":{
          "shape":"AttributeMap",
          "documentation":"<p>The item in the DynamoDB table as it appeared before it was modified.</p>"
        },
        "SequenceNumber":{
          "shape":"SequenceNumber",
          "documentation":"<p>The sequence number of the stream record.</p>"
        },
        "SizeBytes":{
          "shape":"PositiveLongObject",
          "documentation":"<p>The size of the stream record, in bytes.</p>"
        },
        "StreamViewType":{
          "shape":"StreamViewType",
          "documentation":"<p>The type of data from the modified DynamoDB item that was captured in this stream record:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - only the key attributes of the modified item.</p> </li> <li> <p> <code>NEW_IMAGE</code> - the entire item, as it appeared after it was modified.</p> </li> <li> <p> <code>OLD_IMAGE</code> - the entire item, as it appeared before it was modified.</p> </li> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - both the new and the old item images of the item.</p> </li> </ul>"
        }
      },
      "documentation":"<p>A description of a single data modification that was performed on an item in a DynamoDB table.</p>"
    },
    "StreamStatus":{
      "type":"string",
      "enum":[
        "ENABLING",
        "ENABLED",
        "DISABLING",
        "DISABLED"
      ]
    },
    "StreamViewType":{
      "type":"string",
      "enum":[
        "NEW_IMAGE",
        "OLD_IMAGE",
        "NEW_AND_OLD_IMAGES",
        "KEYS_ONLY"
      ]
    },
    "String":{"type":"string"},
    "StringAttributeValue":{"type":"string"},
    "StringSetAttributeValue":{
      "type":"list",
      "member":{"shape":"StringAttributeValue"}
    },
    "TableName":{
      "type":"string",
      "max":255,
      "min":3,
      "pattern":"[a-zA-Z0-9_.-]+"
    },
    "TrimmedDataAccessException":{
      "type":"structure",
      "members":{
        "message":{
          "shape":"ErrorMessage",
          "documentation":"<p>\"The data you are trying to access has been trimmed.</p>"
        }
      },
      "documentation":"<p>The operation attempted to read past the oldest stream record in a shard.</p> <p>In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream. You might receive a TrimmedDataAccessException if:</p> <ul> <li><p>You request a shard iterator with a sequence number older than the trim point (24 hours).</p> </li> <li><p>You obtain a shard iterator, but before you use the iterator in a <code>GetRecords</code> request, a stream record in the shard exceeds the 24 hour period and is trimmed. This causes the iterator to access a record that no longer exists.</p> </li> </ul>",
      "exception":true
    }
  },
  "documentation":"<fullname>Amazon DynamoDB</fullname> <p>Amazon DynamoDB Streams provides API actions for accessing streams and processing stream records. To learn more about application development with Streams, see <a href=\"http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html\">Capturing Table Activity with DynamoDB Streams</a> in the Amazon DynamoDB Developer Guide.</p>"
}

]===]))
