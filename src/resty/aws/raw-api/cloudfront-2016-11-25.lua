local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version":"2.0",
  "metadata":{
    "apiVersion":"2016-11-25",
    "endpointPrefix":"cloudfront",
    "globalEndpoint":"cloudfront.amazonaws.com",
    "protocol":"rest-xml",
    "serviceAbbreviation":"CloudFront",
    "serviceFullName":"Amazon CloudFront",
    "serviceId":"CloudFront",
    "signatureVersion":"v4",
    "uid":"cloudfront-2016-11-25"
  },
  "operations":{
    "CreateCloudFrontOriginAccessIdentity":{
      "name":"CreateCloudFrontOriginAccessIdentity2016_11_25",
      "http":{
        "method":"POST",
        "requestUri":"/2016-11-25/origin-access-identity/cloudfront",
        "responseCode":201
      },
      "input":{"shape":"CreateCloudFrontOriginAccessIdentityRequest"},
      "output":{"shape":"CreateCloudFrontOriginAccessIdentityResult"},
      "errors":[
        {"shape":"CloudFrontOriginAccessIdentityAlreadyExists"},
        {"shape":"MissingBody"},
        {"shape":"TooManyCloudFrontOriginAccessIdentities"},
        {"shape":"InvalidArgument"},
        {"shape":"InconsistentQuantities"}
      ],
      "documentation":"<p>Creates a new origin access identity. If you're using Amazon S3 for your origin, you can use an origin access identity to require users to access your content using a CloudFront URL instead of the Amazon S3 URL. For more information about how to use origin access identities, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CreateDistribution":{
      "name":"CreateDistribution2016_11_25",
      "http":{
        "method":"POST",
        "requestUri":"/2016-11-25/distribution",
        "responseCode":201
      },
      "input":{"shape":"CreateDistributionRequest"},
      "output":{"shape":"CreateDistributionResult"},
      "errors":[
        {"shape":"CNAMEAlreadyExists"},
        {"shape":"DistributionAlreadyExists"},
        {"shape":"InvalidOrigin"},
        {"shape":"InvalidOriginAccessIdentity"},
        {"shape":"AccessDenied"},
        {"shape":"TooManyTrustedSigners"},
        {"shape":"TrustedSignerDoesNotExist"},
        {"shape":"InvalidViewerCertificate"},
        {"shape":"InvalidMinimumProtocolVersion"},
        {"shape":"MissingBody"},
        {"shape":"TooManyDistributionCNAMEs"},
        {"shape":"TooManyDistributions"},
        {"shape":"InvalidDefaultRootObject"},
        {"shape":"InvalidRelativePath"},
        {"shape":"InvalidErrorCode"},
        {"shape":"InvalidResponseCode"},
        {"shape":"InvalidArgument"},
        {"shape":"InvalidRequiredProtocol"},
        {"shape":"NoSuchOrigin"},
        {"shape":"TooManyOrigins"},
        {"shape":"TooManyCacheBehaviors"},
        {"shape":"TooManyCookieNamesInWhiteList"},
        {"shape":"InvalidForwardCookies"},
        {"shape":"TooManyHeadersInForwardedValues"},
        {"shape":"InvalidHeadersForS3Origin"},
        {"shape":"InconsistentQuantities"},
        {"shape":"TooManyCertificates"},
        {"shape":"InvalidLocationCode"},
        {"shape":"InvalidGeoRestrictionParameter"},
        {"shape":"InvalidProtocolSettings"},
        {"shape":"InvalidTTLOrder"},
        {"shape":"InvalidWebACLId"},
        {"shape":"TooManyOriginCustomHeaders"},
        {"shape":"TooManyQueryStringParameters"},
        {"shape":"InvalidQueryStringParameters"},
        {"shape":"TooManyDistributionsWithLambdaAssociations"},
        {"shape":"TooManyLambdaFunctionAssociations"},
        {"shape":"InvalidLambdaFunctionAssociation"}
      ],
      "documentation":"<p>Creates a new web distribution. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/distribution</code>/<code>distribution ID</code> resource.</p>"
    },
    "CreateDistributionWithTags":{
      "name":"CreateDistributionWithTags2016_11_25",
      "http":{
        "method":"POST",
        "requestUri":"/2016-11-25/distribution?WithTags",
        "responseCode":201
      },
      "input":{"shape":"CreateDistributionWithTagsRequest"},
      "output":{"shape":"CreateDistributionWithTagsResult"},
      "errors":[
        {"shape":"CNAMEAlreadyExists"},
        {"shape":"DistributionAlreadyExists"},
        {"shape":"InvalidOrigin"},
        {"shape":"InvalidOriginAccessIdentity"},
        {"shape":"AccessDenied"},
        {"shape":"TooManyTrustedSigners"},
        {"shape":"TrustedSignerDoesNotExist"},
        {"shape":"InvalidViewerCertificate"},
        {"shape":"InvalidMinimumProtocolVersion"},
        {"shape":"MissingBody"},
        {"shape":"TooManyDistributionCNAMEs"},
        {"shape":"TooManyDistributions"},
        {"shape":"InvalidDefaultRootObject"},
        {"shape":"InvalidRelativePath"},
        {"shape":"InvalidErrorCode"},
        {"shape":"InvalidResponseCode"},
        {"shape":"InvalidArgument"},
        {"shape":"InvalidRequiredProtocol"},
        {"shape":"NoSuchOrigin"},
        {"shape":"TooManyOrigins"},
        {"shape":"TooManyCacheBehaviors"},
        {"shape":"TooManyCookieNamesInWhiteList"},
        {"shape":"InvalidForwardCookies"},
        {"shape":"TooManyHeadersInForwardedValues"},
        {"shape":"InvalidHeadersForS3Origin"},
        {"shape":"InconsistentQuantities"},
        {"shape":"TooManyCertificates"},
        {"shape":"InvalidLocationCode"},
        {"shape":"InvalidGeoRestrictionParameter"},
        {"shape":"InvalidProtocolSettings"},
        {"shape":"InvalidTTLOrder"},
        {"shape":"InvalidWebACLId"},
        {"shape":"TooManyOriginCustomHeaders"},
        {"shape":"InvalidTagging"},
        {"shape":"TooManyQueryStringParameters"},
        {"shape":"InvalidQueryStringParameters"},
        {"shape":"TooManyDistributionsWithLambdaAssociations"},
        {"shape":"TooManyLambdaFunctionAssociations"},
        {"shape":"InvalidLambdaFunctionAssociation"}
      ],
      "documentation":"<p>Create a new distribution with tags.</p>"
    },
    "CreateInvalidation":{
      "name":"CreateInvalidation2016_11_25",
      "http":{
        "method":"POST",
        "requestUri":"/2016-11-25/distribution/{DistributionId}/invalidation",
        "responseCode":201
      },
      "input":{"shape":"CreateInvalidationRequest"},
      "output":{"shape":"CreateInvalidationResult"},
      "errors":[
        {"shape":"AccessDenied"},
        {"shape":"MissingBody"},
        {"shape":"InvalidArgument"},
        {"shape":"NoSuchDistribution"},
        {"shape":"BatchTooLarge"},
        {"shape":"TooManyInvalidationsInProgress"},
        {"shape":"InconsistentQuantities"}
      ],
      "documentation":"<p>Create a new invalidation. </p>"
    },
    "CreateStreamingDistribution":{
      "name":"CreateStreamingDistribution2016_11_25",
      "http":{
        "method":"POST",
        "requestUri":"/2016-11-25/streaming-distribution",
        "responseCode":201
      },
      "input":{"shape":"CreateStreamingDistributionRequest"},
      "output":{"shape":"CreateStreamingDistributionResult"},
      "errors":[
        {"shape":"CNAMEAlreadyExists"},
        {"shape":"StreamingDistributionAlreadyExists"},
        {"shape":"InvalidOrigin"},
        {"shape":"InvalidOriginAccessIdentity"},
        {"shape":"AccessDenied"},
        {"shape":"TooManyTrustedSigners"},
        {"shape":"TrustedSignerDoesNotExist"},
        {"shape":"MissingBody"},
        {"shape":"TooManyStreamingDistributionCNAMEs"},
        {"shape":"TooManyStreamingDistributions"},
        {"shape":"InvalidArgument"},
        {"shape":"InconsistentQuantities"}
      ],
      "documentation":"<p>Creates a new RMTP distribution. An RTMP distribution is similar to a web distribution, but an RTMP distribution streams media files using the Adobe Real-Time Messaging Protocol (RTMP) instead of serving files using HTTP. </p> <p>To create a new web distribution, submit a <code>POST</code> request to the <i>CloudFront API version</i>/distribution resource. The request body must include a document with a <i>StreamingDistributionConfig</i> element. The response echoes the <code>StreamingDistributionConfig</code> element and returns other information about the RTMP distribution.</p> <p>To get the status of your request, use the <i>GET StreamingDistribution</i> API action. When the value of <code>Enabled</code> is <code>true</code> and the value of <code>Status</code> is <code>Deployed</code>, your distribution is ready. A distribution usually deploys in less than 15 minutes.</p> <p>For more information about web distributions, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-rtmp.html\">Working with RTMP Distributions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <important> <p>Beginning with the 2012-05-05 version of the CloudFront API, we made substantial changes to the format of the XML document that you include in the request body when you create or update a web distribution or an RTMP distribution, and when you invalidate objects. With previous versions of the API, we discovered that it was too easy to accidentally delete one or more values for an element that accepts multiple values, for example, CNAMEs and trusted signers. Our changes for the 2012-05-05 release are intended to prevent these accidental deletions and to notify you when there's a mismatch between the number of values you say you're specifying in the <code>Quantity</code> element and the number of values specified.</p> </important>"
    },
    "CreateStreamingDistributionWithTags":{
      "name":"CreateStreamingDistributionWithTags2016_11_25",
      "http":{
        "method":"POST",
        "requestUri":"/2016-11-25/streaming-distribution?WithTags",
        "responseCode":201
      },
      "input":{"shape":"CreateStreamingDistributionWithTagsRequest"},
      "output":{"shape":"CreateStreamingDistributionWithTagsResult"},
      "errors":[
        {"shape":"CNAMEAlreadyExists"},
        {"shape":"StreamingDistributionAlreadyExists"},
        {"shape":"InvalidOrigin"},
        {"shape":"InvalidOriginAccessIdentity"},
        {"shape":"AccessDenied"},
        {"shape":"TooManyTrustedSigners"},
        {"shape":"TrustedSignerDoesNotExist"},
        {"shape":"MissingBody"},
        {"shape":"TooManyStreamingDistributionCNAMEs"},
        {"shape":"TooManyStreamingDistributions"},
        {"shape":"InvalidArgument"},
        {"shape":"InconsistentQuantities"},
        {"shape":"InvalidTagging"}
      ],
      "documentation":"<p>Create a new streaming distribution with tags.</p>"
    },
    "DeleteCloudFrontOriginAccessIdentity":{
      "name":"DeleteCloudFrontOriginAccessIdentity2016_11_25",
      "http":{
        "method":"DELETE",
        "requestUri":"/2016-11-25/origin-access-identity/cloudfront/{Id}",
        "responseCode":204
      },
      "input":{"shape":"DeleteCloudFrontOriginAccessIdentityRequest"},
      "errors":[
        {"shape":"AccessDenied"},
        {"shape":"InvalidIfMatchVersion"},
        {"shape":"NoSuchCloudFrontOriginAccessIdentity"},
        {"shape":"PreconditionFailed"},
        {"shape":"CloudFrontOriginAccessIdentityInUse"}
      ],
      "documentation":"<p>Delete an origin access identity. </p>"
    },
    "DeleteDistribution":{
      "name":"DeleteDistribution2016_11_25",
      "http":{
        "method":"DELETE",
        "requestUri":"/2016-11-25/distribution/{Id}",
        "responseCode":204
      },
      "input":{"shape":"DeleteDistributionRequest"},
      "errors":[
        {"shape":"AccessDenied"},
        {"shape":"DistributionNotDisabled"},
        {"shape":"InvalidIfMatchVersion"},
        {"shape":"NoSuchDistribution"},
        {"shape":"PreconditionFailed"}
      ],
      "documentation":"<p>Delete a distribution. </p>"
    },
    "DeleteStreamingDistribution":{
      "name":"DeleteStreamingDistribution2016_11_25",
      "http":{
        "method":"DELETE",
        "requestUri":"/2016-11-25/streaming-distribution/{Id}",
        "responseCode":204
      },
      "input":{"shape":"DeleteStreamingDistributionRequest"},
      "errors":[
        {"shape":"AccessDenied"},
        {"shape":"StreamingDistributionNotDisabled"},
        {"shape":"InvalidIfMatchVersion"},
        {"shape":"NoSuchStreamingDistribution"},
        {"shape":"PreconditionFailed"}
      ],
      "documentation":"<p>Delete a streaming distribution. To delete an RTMP distribution using the CloudFront API, perform the following steps.</p> <p> <b>To delete an RTMP distribution using the CloudFront API</b>:</p> <ol> <li> <p>Disable the RTMP distribution.</p> </li> <li> <p>Submit a <code>GET Streaming Distribution Config</code> request to get the current configuration and the <code>Etag</code> header for the distribution. </p> </li> <li> <p>Update the XML document that was returned in the response to your <code>GET Streaming Distribution Config</code> request to change the value of <code>Enabled</code> to <code>false</code>.</p> </li> <li> <p>Submit a <code>PUT Streaming Distribution Config</code> request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Then set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Streaming Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to the <code>PUT Streaming Distribution Config</code> request to confirm that the distribution was successfully disabled.</p> </li> <li> <p>Submit a <code>GET Streaming Distribution Config</code> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> <li> <p>Submit a <code>DELETE Streaming Distribution</code> request. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Streaming Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to your <code>DELETE Streaming Distribution</code> request to confirm that the distribution was successfully deleted.</p> </li> </ol> <p>For information about deleting a distribution using the CloudFront console, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html\">Deleting a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "GetCloudFrontOriginAccessIdentity":{
      "name":"GetCloudFrontOriginAccessIdentity2016_11_25",
      "http":{
        "method":"GET",
        "requestUri":"/2016-11-25/origin-access-identity/cloudfront/{Id}"
      },
      "input":{"shape":"GetCloudFrontOriginAccessIdentityRequest"},
      "output":{"shape":"GetCloudFrontOriginAccessIdentityResult"},
      "errors":[
        {"shape":"NoSuchCloudFrontOriginAccessIdentity"},
        {"shape":"AccessDenied"}
      ],
      "documentation":"<p>Get the information about an origin access identity. </p>"
    },
    "GetCloudFrontOriginAccessIdentityConfig":{
      "name":"GetCloudFrontOriginAccessIdentityConfig2016_11_25",
      "http":{
        "method":"GET",
        "requestUri":"/2016-11-25/origin-access-identity/cloudfront/{Id}/config"
      },
      "input":{"shape":"GetCloudFrontOriginAccessIdentityConfigRequest"},
      "output":{"shape":"GetCloudFrontOriginAccessIdentityConfigResult"},
      "errors":[
        {"shape":"NoSuchCloudFrontOriginAccessIdentity"},
        {"shape":"AccessDenied"}
      ],
      "documentation":"<p>Get the configuration information about an origin access identity. </p>"
    },
    "GetDistribution":{
      "name":"GetDistribution2016_11_25",
      "http":{
        "method":"GET",
        "requestUri":"/2016-11-25/distribution/{Id}"
      },
      "input":{"shape":"GetDistributionRequest"},
      "output":{"shape":"GetDistributionResult"},
      "errors":[
        {"shape":"NoSuchDistribution"},
        {"shape":"AccessDenied"}
      ],
      "documentation":"<p>Get the information about a distribution. </p>"
    },
    "GetDistributionConfig":{
      "name":"GetDistributionConfig2016_11_25",
      "http":{
        "method":"GET",
        "requestUri":"/2016-11-25/distribution/{Id}/config"
      },
      "input":{"shape":"GetDistributionConfigRequest"},
      "output":{"shape":"GetDistributionConfigResult"},
      "errors":[
        {"shape":"NoSuchDistribution"},
        {"shape":"AccessDenied"}
      ],
      "documentation":"<p>Get the configuration information about a distribution. </p>"
    },
    "GetInvalidation":{
      "name":"GetInvalidation2016_11_25",
      "http":{
        "method":"GET",
        "requestUri":"/2016-11-25/distribution/{DistributionId}/invalidation/{Id}"
      },
      "input":{"shape":"GetInvalidationRequest"},
      "output":{"shape":"GetInvalidationResult"},
      "errors":[
        {"shape":"NoSuchInvalidation"},
        {"shape":"NoSuchDistribution"},
        {"shape":"AccessDenied"}
      ],
      "documentation":"<p>Get the information about an invalidation. </p>"
    },
    "GetStreamingDistribution":{
      "name":"GetStreamingDistribution2016_11_25",
      "http":{
        "method":"GET",
        "requestUri":"/2016-11-25/streaming-distribution/{Id}"
      },
      "input":{"shape":"GetStreamingDistributionRequest"},
      "output":{"shape":"GetStreamingDistributionResult"},
      "errors":[
        {"shape":"NoSuchStreamingDistribution"},
        {"shape":"AccessDenied"}
      ],
      "documentation":"<p>Gets information about a specified RTMP distribution, including the distribution configuration.</p>"
    },
    "GetStreamingDistributionConfig":{
      "name":"GetStreamingDistributionConfig2016_11_25",
      "http":{
        "method":"GET",
        "requestUri":"/2016-11-25/streaming-distribution/{Id}/config"
      },
      "input":{"shape":"GetStreamingDistributionConfigRequest"},
      "output":{"shape":"GetStreamingDistributionConfigResult"},
      "errors":[
        {"shape":"NoSuchStreamingDistribution"},
        {"shape":"AccessDenied"}
      ],
      "documentation":"<p>Get the configuration information about a streaming distribution. </p>"
    },
    "ListCloudFrontOriginAccessIdentities":{
      "name":"ListCloudFrontOriginAccessIdentities2016_11_25",
      "http":{
        "method":"GET",
        "requestUri":"/2016-11-25/origin-access-identity/cloudfront"
      },
      "input":{"shape":"ListCloudFrontOriginAccessIdentitiesRequest"},
      "output":{"shape":"ListCloudFrontOriginAccessIdentitiesResult"},
      "errors":[
        {"shape":"InvalidArgument"}
      ],
      "documentation":"<p>Lists origin access identities.</p>"
    },
    "ListDistributions":{
      "name":"ListDistributions2016_11_25",
      "http":{
        "method":"GET",
        "requestUri":"/2016-11-25/distribution"
      },
      "input":{"shape":"ListDistributionsRequest"},
      "output":{"shape":"ListDistributionsResult"},
      "errors":[
        {"shape":"InvalidArgument"}
      ],
      "documentation":"<p>List distributions. </p>"
    },
    "ListDistributionsByWebACLId":{
      "name":"ListDistributionsByWebACLId2016_11_25",
      "http":{
        "method":"GET",
        "requestUri":"/2016-11-25/distributionsByWebACLId/{WebACLId}"
      },
      "input":{"shape":"ListDistributionsByWebACLIdRequest"},
      "output":{"shape":"ListDistributionsByWebACLIdResult"},
      "errors":[
        {"shape":"InvalidArgument"},
        {"shape":"InvalidWebACLId"}
      ],
      "documentation":"<p>List the distributions that are associated with a specified AWS WAF web ACL. </p>"
    },
    "ListInvalidations":{
      "name":"ListInvalidations2016_11_25",
      "http":{
        "method":"GET",
        "requestUri":"/2016-11-25/distribution/{DistributionId}/invalidation"
      },
      "input":{"shape":"ListInvalidationsRequest"},
      "output":{"shape":"ListInvalidationsResult"},
      "errors":[
        {"shape":"InvalidArgument"},
        {"shape":"NoSuchDistribution"},
        {"shape":"AccessDenied"}
      ],
      "documentation":"<p>Lists invalidation batches. </p>"
    },
    "ListStreamingDistributions":{
      "name":"ListStreamingDistributions2016_11_25",
      "http":{
        "method":"GET",
        "requestUri":"/2016-11-25/streaming-distribution"
      },
      "input":{"shape":"ListStreamingDistributionsRequest"},
      "output":{"shape":"ListStreamingDistributionsResult"},
      "errors":[
        {"shape":"InvalidArgument"}
      ],
      "documentation":"<p>List streaming distributions. </p>"
    },
    "ListTagsForResource":{
      "name":"ListTagsForResource2016_11_25",
      "http":{
        "method":"GET",
        "requestUri":"/2016-11-25/tagging"
      },
      "input":{"shape":"ListTagsForResourceRequest"},
      "output":{"shape":"ListTagsForResourceResult"},
      "errors":[
        {"shape":"AccessDenied"},
        {"shape":"InvalidArgument"},
        {"shape":"InvalidTagging"},
        {"shape":"NoSuchResource"}
      ],
      "documentation":"<p>List tags for a CloudFront resource.</p>"
    },
    "TagResource":{
      "name":"TagResource2016_11_25",
      "http":{
        "method":"POST",
        "requestUri":"/2016-11-25/tagging?Operation=Tag",
        "responseCode":204
      },
      "input":{"shape":"TagResourceRequest"},
      "errors":[
        {"shape":"AccessDenied"},
        {"shape":"InvalidArgument"},
        {"shape":"InvalidTagging"},
        {"shape":"NoSuchResource"}
      ],
      "documentation":"<p>Add tags to a CloudFront resource.</p>"
    },
    "UntagResource":{
      "name":"UntagResource2016_11_25",
      "http":{
        "method":"POST",
        "requestUri":"/2016-11-25/tagging?Operation=Untag",
        "responseCode":204
      },
      "input":{"shape":"UntagResourceRequest"},
      "errors":[
        {"shape":"AccessDenied"},
        {"shape":"InvalidArgument"},
        {"shape":"InvalidTagging"},
        {"shape":"NoSuchResource"}
      ],
      "documentation":"<p>Remove tags from a CloudFront resource.</p>"
    },
    "UpdateCloudFrontOriginAccessIdentity":{
      "name":"UpdateCloudFrontOriginAccessIdentity2016_11_25",
      "http":{
        "method":"PUT",
        "requestUri":"/2016-11-25/origin-access-identity/cloudfront/{Id}/config"
      },
      "input":{"shape":"UpdateCloudFrontOriginAccessIdentityRequest"},
      "output":{"shape":"UpdateCloudFrontOriginAccessIdentityResult"},
      "errors":[
        {"shape":"AccessDenied"},
        {"shape":"IllegalUpdate"},
        {"shape":"InvalidIfMatchVersion"},
        {"shape":"MissingBody"},
        {"shape":"NoSuchCloudFrontOriginAccessIdentity"},
        {"shape":"PreconditionFailed"},
        {"shape":"InvalidArgument"},
        {"shape":"InconsistentQuantities"}
      ],
      "documentation":"<p>Update an origin access identity. </p>"
    },
    "UpdateDistribution":{
      "name":"UpdateDistribution2016_11_25",
      "http":{
        "method":"PUT",
        "requestUri":"/2016-11-25/distribution/{Id}/config"
      },
      "input":{"shape":"UpdateDistributionRequest"},
      "output":{"shape":"UpdateDistributionResult"},
      "errors":[
        {"shape":"AccessDenied"},
        {"shape":"CNAMEAlreadyExists"},
        {"shape":"IllegalUpdate"},
        {"shape":"InvalidIfMatchVersion"},
        {"shape":"MissingBody"},
        {"shape":"NoSuchDistribution"},
        {"shape":"PreconditionFailed"},
        {"shape":"TooManyDistributionCNAMEs"},
        {"shape":"InvalidDefaultRootObject"},
        {"shape":"InvalidRelativePath"},
        {"shape":"InvalidErrorCode"},
        {"shape":"InvalidResponseCode"},
        {"shape":"InvalidArgument"},
        {"shape":"InvalidOriginAccessIdentity"},
        {"shape":"TooManyTrustedSigners"},
        {"shape":"TrustedSignerDoesNotExist"},
        {"shape":"InvalidViewerCertificate"},
        {"shape":"InvalidMinimumProtocolVersion"},
        {"shape":"InvalidRequiredProtocol"},
        {"shape":"NoSuchOrigin"},
        {"shape":"TooManyOrigins"},
        {"shape":"TooManyCacheBehaviors"},
        {"shape":"TooManyCookieNamesInWhiteList"},
        {"shape":"InvalidForwardCookies"},
        {"shape":"TooManyHeadersInForwardedValues"},
        {"shape":"InvalidHeadersForS3Origin"},
        {"shape":"InconsistentQuantities"},
        {"shape":"TooManyCertificates"},
        {"shape":"InvalidLocationCode"},
        {"shape":"InvalidGeoRestrictionParameter"},
        {"shape":"InvalidTTLOrder"},
        {"shape":"InvalidWebACLId"},
        {"shape":"TooManyOriginCustomHeaders"},
        {"shape":"TooManyQueryStringParameters"},
        {"shape":"InvalidQueryStringParameters"},
        {"shape":"TooManyDistributionsWithLambdaAssociations"},
        {"shape":"TooManyLambdaFunctionAssociations"},
        {"shape":"InvalidLambdaFunctionAssociation"}
      ],
      "documentation":"<p>Update a distribution. </p>"
    },
    "UpdateStreamingDistribution":{
      "name":"UpdateStreamingDistribution2016_11_25",
      "http":{
        "method":"PUT",
        "requestUri":"/2016-11-25/streaming-distribution/{Id}/config"
      },
      "input":{"shape":"UpdateStreamingDistributionRequest"},
      "output":{"shape":"UpdateStreamingDistributionResult"},
      "errors":[
        {"shape":"AccessDenied"},
        {"shape":"CNAMEAlreadyExists"},
        {"shape":"IllegalUpdate"},
        {"shape":"InvalidIfMatchVersion"},
        {"shape":"MissingBody"},
        {"shape":"NoSuchStreamingDistribution"},
        {"shape":"PreconditionFailed"},
        {"shape":"TooManyStreamingDistributionCNAMEs"},
        {"shape":"InvalidArgument"},
        {"shape":"InvalidOriginAccessIdentity"},
        {"shape":"TooManyTrustedSigners"},
        {"shape":"TrustedSignerDoesNotExist"},
        {"shape":"InconsistentQuantities"}
      ],
      "documentation":"<p>Update a streaming distribution. </p>"
    }
  },
  "shapes":{
    "AccessDenied":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>Access denied.</p>",
      "error":{"httpStatusCode":403},
      "exception":true
    },
    "ActiveTrustedSigners":{
      "type":"structure",
      "required":[
        "Enabled",
        "Quantity"
      ],
      "members":{
        "Enabled":{
          "shape":"boolean",
          "documentation":"<p>Enabled is <code>true</code> if any of the AWS accounts listed in the <code>TrustedSigners</code> complex type for this RTMP distribution have active CloudFront key pairs. If not, <code>Enabled</code> is <code>false</code>.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>"
        },
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>A complex type that contains one <code>Signer</code> complex type for each trusted signer specified in the <code>TrustedSigners</code> complex type.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>"
        },
        "Items":{
          "shape":"SignerList",
          "documentation":"<p>A complex type that contains one <code>Signer</code> complex type for each trusted signer that is specified in the <code>TrustedSigners</code> complex type.</p> <p>For more information, see <a>ActiveTrustedSigners</a>. </p>"
        }
      },
      "documentation":"<p>A complex type that lists the AWS accounts, if any, that you included in the <code>TrustedSigners</code> complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.</p> <p>The <code>Signer</code> complex type lists the AWS account number of the trusted signer or <code>self</code> if the signer is the AWS account that created the distribution. The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create signed URLs. </p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "AliasList":{
      "type":"list",
      "member":{
        "shape":"string",
        "locationName":"CNAME"
      }
    },
    "Aliases":{
      "type":"structure",
      "required":["Quantity"],
      "members":{
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of CNAME aliases, if any, that you want to associate with this distribution.</p>"
        },
        "Items":{
          "shape":"AliasList",
          "documentation":"<p>A complex type that contains the CNAME aliases, if any, that you want to associate with this distribution.</p>"
        }
      },
      "documentation":"<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution. </p>"
    },
    "AllowedMethods":{
      "type":"structure",
      "required":[
        "Quantity",
        "Items"
      ],
      "members":{
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of HTTP methods that you want CloudFront to forward to your origin. Valid values are 2 (for <code>GET</code> and <code>HEAD</code> requests), 3 (for <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests) and 7 (for <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests).</p>"
        },
        "Items":{
          "shape":"MethodsList",
          "documentation":"<p>A complex type that contains the HTTP methods that you want CloudFront to process and forward to your origin.</p>"
        },
        "CachedMethods":{"shape":"CachedMethods"}
      },
      "documentation":"<p>A complex type that controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin. There are three choices:</p> <ul> <li> <p>CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> <li> <p>CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests.</p> </li> </ul> <p>If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or to your custom origin so users can't perform operations that you don't want them to. For example, you might not want users to have permissions to delete objects from your origin.</p>"
    },
    "AwsAccountNumberList":{
      "type":"list",
      "member":{
        "shape":"string",
        "locationName":"AwsAccountNumber"
      }
    },
    "BatchTooLarge":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":413},
      "exception":true
    },
    "CNAMEAlreadyExists":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":409},
      "exception":true
    },
    "CacheBehavior":{
      "type":"structure",
      "required":[
        "PathPattern",
        "TargetOriginId",
        "ForwardedValues",
        "TrustedSigners",
        "ViewerProtocolPolicy",
        "MinTTL"
      ],
      "members":{
        "PathPattern":{
          "shape":"string",
          "documentation":"<p>The pattern (for example, <code>images/*.jpg</code>) that specifies which requests to apply the behavior to. When CloudFront receives a viewer request, the requested path is compared with path patterns in the order in which cache behaviors are listed in the distribution.</p> <note> <p>You can optionally include a slash (<code>/</code>) at the beginning of the path pattern. For example, <code>/images/*.jpg</code>. CloudFront behavior is the same with or without the leading <code>/</code>.</p> </note> <p>The path pattern for the default cache behavior is <code>*</code> and cannot be changed. If the request for an object does not match the path pattern for any cache behaviors, CloudFront applies the behavior in the default cache behavior.</p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesPathPattern\">Path Pattern</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>"
        },
        "TargetOriginId":{
          "shape":"string",
          "documentation":"<p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior.</p>"
        },
        "ForwardedValues":{
          "shape":"ForwardedValues",
          "documentation":"<p>A complex type that specifies how CloudFront handles query strings and cookies.</p>"
        },
        "TrustedSigners":{
          "shape":"TrustedSigners",
          "documentation":"<p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p>"
        },
        "ViewerProtocolPolicy":{
          "shape":"ViewerProtocolPolicy",
          "documentation":"<p>The protocol that viewers can use to access the files in the origin specified by <code>TargetOriginId</code> when a request matches the path pattern in <code>PathPattern</code>. You can specify the following options:</p> <ul> <li> <p> <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> </li> <li> <p> <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL. </p> </li> <li> <p> <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden). </p> </li> </ul> <p>For more information about requiring the HTTPS protocol, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html\">Using an HTTPS Connection to Access Your Objects</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects' cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note>"
        },
        "MinTTL":{
          "shape":"long",
          "documentation":"<p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>"
        },
        "AllowedMethods":{"shape":"AllowedMethods"},
        "SmoothStreaming":{
          "shape":"boolean",
          "documentation":"<p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for <code>SmoothStreaming</code>, you can still distribute other content using this cache behavior if the content matches the value of <code>PathPattern</code>. </p>"
        },
        "DefaultTTL":{
          "shape":"long",
          "documentation":"<p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "MaxTTL":{
          "shape":"long",
          "documentation":"<p>The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin adds HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Compress":{
          "shape":"boolean",
          "documentation":"<p>Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify true; if not, specify false. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html\">Serving Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "LambdaFunctionAssociations":{
          "shape":"LambdaFunctionAssociations",
          "documentation":"<p>A complex type that contains zero or more Lambda function associations for a cache behavior.</p>"
        }
      },
      "documentation":"<p>A complex type that describes how CloudFront processes requests.</p> <p>You must create at least as many cache behaviors (including the default cache behavior) as you have origins if you want CloudFront to distribute objects from all of the origins. Each cache behavior specifies the one origin from which you want CloudFront to get objects. If you have two origins and only the default cache behavior, the default cache behavior will cause CloudFront to get objects from one of the origins, but the other origin is never used.</p> <p>For the current limit on the number of cache behaviors that you can add to a distribution, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront\">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p> <p>If you don't want to specify any cache behaviors, include only an empty <code>CacheBehaviors</code> element. Don't include an empty <code>CacheBehavior</code> element, or CloudFront returns a <code>MalformedXML</code> error.</p> <p>To delete all cache behaviors in an existing distribution, update the distribution configuration and include only an empty <code>CacheBehaviors</code> element.</p> <p>To add, change, or remove one or more cache behaviors, update the distribution configuration and specify all of the cache behaviors that you want to include in the updated distribution.</p> <p>For more information about cache behaviors, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior\">Cache Behaviors</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CacheBehaviorList":{
      "type":"list",
      "member":{
        "shape":"CacheBehavior",
        "locationName":"CacheBehavior"
      }
    },
    "CacheBehaviors":{
      "type":"structure",
      "required":["Quantity"],
      "members":{
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of cache behaviors for this distribution. </p>"
        },
        "Items":{
          "shape":"CacheBehaviorList",
          "documentation":"<p>Optional: A complex type that contains cache behaviors for this distribution. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>"
        }
      },
      "documentation":"<p>A complex type that contains zero or more <code>CacheBehavior</code> elements. </p>"
    },
    "CachedMethods":{
      "type":"structure",
      "required":[
        "Quantity",
        "Items"
      ],
      "members":{
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of HTTP methods for which you want CloudFront to cache responses. Valid values are <code>2</code> (for caching responses to <code>GET</code> and <code>HEAD</code> requests) and <code>3</code> (for caching responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests).</p>"
        },
        "Items":{
          "shape":"MethodsList",
          "documentation":"<p>A complex type that contains the HTTP methods that you want CloudFront to cache responses to.</p>"
        }
      },
      "documentation":"<p>A complex type that controls whether CloudFront caches the response to requests using the specified HTTP methods. There are two choices:</p> <ul> <li> <p>CloudFront caches responses to <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront caches responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> </ul> <p>If you pick the second choice for your Amazon S3 Origin, you may need to forward Access-Control-Request-Method, Access-Control-Request-Headers, and Origin headers for the responses to be cached correctly. </p>"
    },
    "CertificateSource":{
      "type":"string",
      "enum":[
        "cloudfront",
        "iam",
        "acm"
      ]
    },
    "CloudFrontOriginAccessIdentity":{
      "type":"structure",
      "required":[
        "Id",
        "S3CanonicalUserId"
      ],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The ID for the origin access identity. For example: <code>E74FTE3AJFJ256A</code>. </p>"
        },
        "S3CanonicalUserId":{
          "shape":"string",
          "documentation":"<p>The Amazon S3 canonical user ID for the origin access identity, used when giving the origin access identity read permission to an object in Amazon S3. </p>"
        },
        "CloudFrontOriginAccessIdentityConfig":{
          "shape":"CloudFrontOriginAccessIdentityConfig",
          "documentation":"<p>The current configuration information for the identity. </p>"
        }
      },
      "documentation":"<p>CloudFront origin access identity.</p>"
    },
    "CloudFrontOriginAccessIdentityAlreadyExists":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>If the <code>CallerReference</code> is a value you already sent in a previous request to create an identity but the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>",
      "error":{"httpStatusCode":409},
      "exception":true
    },
    "CloudFrontOriginAccessIdentityConfig":{
      "type":"structure",
      "required":[
        "CallerReference",
        "Comment"
      ],
      "members":{
        "CallerReference":{
          "shape":"string",
          "documentation":"<p>A unique number that ensures the request can't be replayed.</p> <p>If the <code>CallerReference</code> is new (no matter the content of the <code>CloudFrontOriginAccessIdentityConfig</code> object), a new origin access identity is created.</p> <p>If the <code>CallerReference</code> is a value already sent in a previous identity request, and the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is identical to the original request (ignoring white space), the response includes the same information returned to the original request. </p> <p>If the <code>CallerReference</code> is a value you already sent in a previous request to create an identity, but the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>"
        },
        "Comment":{
          "shape":"string",
          "documentation":"<p>Any comments you want to include about the origin access identity. </p>"
        }
      },
      "documentation":"<p>Origin access identity configuration. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/CloudFront/identity ID/config</code> resource. </p>"
    },
    "CloudFrontOriginAccessIdentityInUse":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":409},
      "exception":true
    },
    "CloudFrontOriginAccessIdentityList":{
      "type":"structure",
      "required":[
        "Marker",
        "MaxItems",
        "IsTruncated",
        "Quantity"
      ],
      "members":{
        "Marker":{
          "shape":"string",
          "documentation":"<p>Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last identity on that page). </p>"
        },
        "NextMarker":{
          "shape":"string",
          "documentation":"<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your origin access identities where they left off. </p>"
        },
        "MaxItems":{
          "shape":"integer",
          "documentation":"<p>The maximum number of origin access identities you want in the response body. </p>"
        },
        "IsTruncated":{
          "shape":"boolean",
          "documentation":"<p>A flag that indicates whether more origin access identities remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more items in the list.</p>"
        },
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of CloudFront origin access identities that were created by the current AWS account. </p>"
        },
        "Items":{
          "shape":"CloudFrontOriginAccessIdentitySummaryList",
          "documentation":"<p>A complex type that contains one <code>CloudFrontOriginAccessIdentitySummary</code> element for each origin access identity that was created by the current AWS account.</p>"
        }
      },
      "documentation":"<p>Lists the origin access identities for CloudFront.Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/origin-access-identity/cloudfront</code> resource. The response includes a <code>CloudFrontOriginAccessIdentityList</code> element with zero or more <code>CloudFrontOriginAccessIdentitySummary</code> child elements. By default, your entire list of origin access identities is returned in one single page. If the list is long, you can paginate it using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
    },
    "CloudFrontOriginAccessIdentitySummary":{
      "type":"structure",
      "required":[
        "Id",
        "S3CanonicalUserId",
        "Comment"
      ],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The ID for the origin access identity. For example: <code>E74FTE3AJFJ256A</code>.</p>"
        },
        "S3CanonicalUserId":{
          "shape":"string",
          "documentation":"<p>The Amazon S3 canonical user ID for the origin access identity, which you use when giving the origin access identity read permission to an object in Amazon S3.</p>"
        },
        "Comment":{
          "shape":"string",
          "documentation":"<p>The comment for this origin access identity, as originally specified when created.</p>"
        }
      },
      "documentation":"<p>Summary of the information about a CloudFront origin access identity.</p>"
    },
    "CloudFrontOriginAccessIdentitySummaryList":{
      "type":"list",
      "member":{
        "shape":"CloudFrontOriginAccessIdentitySummary",
        "locationName":"CloudFrontOriginAccessIdentitySummary"
      }
    },
    "CookieNameList":{
      "type":"list",
      "member":{
        "shape":"string",
        "locationName":"Name"
      }
    },
    "CookieNames":{
      "type":"structure",
      "required":["Quantity"],
      "members":{
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of different cookies that you want CloudFront to forward to the origin for this cache behavior.</p>"
        },
        "Items":{
          "shape":"CookieNameList",
          "documentation":"<p>A complex type that contains one <code>Name</code> element for each cookie that you want CloudFront to forward to the origin for this cache behavior.</p>"
        }
      },
      "documentation":"<p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html\">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CookiePreference":{
      "type":"structure",
      "required":["Forward"],
      "members":{
        "Forward":{
          "shape":"ItemSelection",
          "documentation":"<p>Specifies which cookies to forward to the origin for this cache behavior: all, none, or the list of cookies specified in the <code>WhitelistedNames</code> complex type.</p> <p>Amazon S3 doesn't process cookies. When the cache behavior is forwarding requests to an Amazon S3 origin, specify none for the <code>Forward</code> element. </p>"
        },
        "WhitelistedNames":{
          "shape":"CookieNames",
          "documentation":"<p>Required if you specify <code>whitelist</code> for the value of <code>Forward:</code>. A complex type that specifies how many different cookies you want CloudFront to forward to the origin for this cache behavior and, if you want to forward selected cookies, the names of those cookies.</p> <p>If you specify <code>all</code> or none for the value of <code>Forward</code>, omit <code>WhitelistedNames</code>. If you change the value of <code>Forward</code> from <code>whitelist</code> to all or none and you don't delete the <code>WhitelistedNames</code> element and its child elements, CloudFront deletes them automatically.</p> <p>For the current limit on the number of cookie names that you can whitelist for each cache behavior, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront\">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p>"
        }
      },
      "documentation":"<p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html\">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CreateCloudFrontOriginAccessIdentityRequest":{
      "type":"structure",
      "required":["CloudFrontOriginAccessIdentityConfig"],
      "members":{
        "CloudFrontOriginAccessIdentityConfig":{
          "shape":"CloudFrontOriginAccessIdentityConfig",
          "documentation":"<p>The current configuration information for the identity.</p>",
          "locationName":"CloudFrontOriginAccessIdentityConfig",
          "xmlNamespace":{"uri":"http://cloudfront.amazonaws.com/doc/2016-11-25/"}
        }
      },
      "documentation":"<p>The request to create a new origin access identity.</p>",
      "payload":"CloudFrontOriginAccessIdentityConfig"
    },
    "CreateCloudFrontOriginAccessIdentityResult":{
      "type":"structure",
      "members":{
        "CloudFrontOriginAccessIdentity":{
          "shape":"CloudFrontOriginAccessIdentity",
          "documentation":"<p>The origin access identity's information.</p>"
        },
        "Location":{
          "shape":"string",
          "documentation":"<p>The fully qualified URI of the new origin access identity just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/origin-access-identity/cloudfront/E74FTE3AJFJ256A</code>.</p>",
          "location":"header",
          "locationName":"Location"
        },
        "ETag":{
          "shape":"string",
          "documentation":"<p>The current version of the origin access identity created.</p>",
          "location":"header",
          "locationName":"ETag"
        }
      },
      "documentation":"<p>The returned result of the corresponding request.</p>",
      "payload":"CloudFrontOriginAccessIdentity"
    },
    "CreateDistributionRequest":{
      "type":"structure",
      "required":["DistributionConfig"],
      "members":{
        "DistributionConfig":{
          "shape":"DistributionConfig",
          "documentation":"<p>The distribution's configuration information.</p>",
          "locationName":"DistributionConfig",
          "xmlNamespace":{"uri":"http://cloudfront.amazonaws.com/doc/2016-11-25/"}
        }
      },
      "documentation":"<p>The request to create a new distribution.</p>",
      "payload":"DistributionConfig"
    },
    "CreateDistributionResult":{
      "type":"structure",
      "members":{
        "Distribution":{
          "shape":"Distribution",
          "documentation":"<p>The distribution's information.</p>"
        },
        "Location":{
          "shape":"string",
          "documentation":"<p>The fully qualified URI of the new distribution resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5</code>.</p>",
          "location":"header",
          "locationName":"Location"
        },
        "ETag":{
          "shape":"string",
          "documentation":"<p>The current version of the distribution created.</p>",
          "location":"header",
          "locationName":"ETag"
        }
      },
      "documentation":"<p>The returned result of the corresponding request.</p>",
      "payload":"Distribution"
    },
    "CreateDistributionWithTagsRequest":{
      "type":"structure",
      "required":["DistributionConfigWithTags"],
      "members":{
        "DistributionConfigWithTags":{
          "shape":"DistributionConfigWithTags",
          "documentation":"<p>The distribution's configuration information. </p>",
          "locationName":"DistributionConfigWithTags",
          "xmlNamespace":{"uri":"http://cloudfront.amazonaws.com/doc/2016-11-25/"}
        }
      },
      "documentation":"<p>The request to create a new distribution with tags. </p>",
      "payload":"DistributionConfigWithTags"
    },
    "CreateDistributionWithTagsResult":{
      "type":"structure",
      "members":{
        "Distribution":{
          "shape":"Distribution",
          "documentation":"<p>The distribution's information. </p>"
        },
        "Location":{
          "shape":"string",
          "documentation":"<p>The fully qualified URI of the new distribution resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5</code>. </p>",
          "location":"header",
          "locationName":"Location"
        },
        "ETag":{
          "shape":"string",
          "documentation":"<p>The current version of the distribution created.</p>",
          "location":"header",
          "locationName":"ETag"
        }
      },
      "documentation":"<p>The returned result of the corresponding request. </p>",
      "payload":"Distribution"
    },
    "CreateInvalidationRequest":{
      "type":"structure",
      "required":[
        "DistributionId",
        "InvalidationBatch"
      ],
      "members":{
        "DistributionId":{
          "shape":"string",
          "documentation":"<p>The distribution's id.</p>",
          "location":"uri",
          "locationName":"DistributionId"
        },
        "InvalidationBatch":{
          "shape":"InvalidationBatch",
          "documentation":"<p>The batch information for the invalidation.</p>",
          "locationName":"InvalidationBatch",
          "xmlNamespace":{"uri":"http://cloudfront.amazonaws.com/doc/2016-11-25/"}
        }
      },
      "documentation":"<p>The request to create an invalidation.</p>",
      "payload":"InvalidationBatch"
    },
    "CreateInvalidationResult":{
      "type":"structure",
      "members":{
        "Location":{
          "shape":"string",
          "documentation":"<p>The fully qualified URI of the distribution and invalidation batch request, including the <code>Invalidation ID</code>.</p>",
          "location":"header",
          "locationName":"Location"
        },
        "Invalidation":{
          "shape":"Invalidation",
          "documentation":"<p>The invalidation's information.</p>"
        }
      },
      "documentation":"<p>The returned result of the corresponding request.</p>",
      "payload":"Invalidation"
    },
    "CreateStreamingDistributionRequest":{
      "type":"structure",
      "required":["StreamingDistributionConfig"],
      "members":{
        "StreamingDistributionConfig":{
          "shape":"StreamingDistributionConfig",
          "documentation":"<p>The streaming distribution's configuration information.</p>",
          "locationName":"StreamingDistributionConfig",
          "xmlNamespace":{"uri":"http://cloudfront.amazonaws.com/doc/2016-11-25/"}
        }
      },
      "documentation":"<p>The request to create a new streaming distribution.</p>",
      "payload":"StreamingDistributionConfig"
    },
    "CreateStreamingDistributionResult":{
      "type":"structure",
      "members":{
        "StreamingDistribution":{
          "shape":"StreamingDistribution",
          "documentation":"<p>The streaming distribution's information.</p>"
        },
        "Location":{
          "shape":"string",
          "documentation":"<p>The fully qualified URI of the new streaming distribution resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8</code>.</p>",
          "location":"header",
          "locationName":"Location"
        },
        "ETag":{
          "shape":"string",
          "documentation":"<p>The current version of the streaming distribution created.</p>",
          "location":"header",
          "locationName":"ETag"
        }
      },
      "documentation":"<p>The returned result of the corresponding request.</p>",
      "payload":"StreamingDistribution"
    },
    "CreateStreamingDistributionWithTagsRequest":{
      "type":"structure",
      "required":["StreamingDistributionConfigWithTags"],
      "members":{
        "StreamingDistributionConfigWithTags":{
          "shape":"StreamingDistributionConfigWithTags",
          "documentation":"<p> The streaming distribution's configuration information. </p>",
          "locationName":"StreamingDistributionConfigWithTags",
          "xmlNamespace":{"uri":"http://cloudfront.amazonaws.com/doc/2016-11-25/"}
        }
      },
      "documentation":"<p>The request to create a new streaming distribution with tags.</p>",
      "payload":"StreamingDistributionConfigWithTags"
    },
    "CreateStreamingDistributionWithTagsResult":{
      "type":"structure",
      "members":{
        "StreamingDistribution":{
          "shape":"StreamingDistribution",
          "documentation":"<p>The streaming distribution's information. </p>"
        },
        "Location":{
          "shape":"string",
          "documentation":"<p>The fully qualified URI of the new streaming distribution resource just created. For example:<code> https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8</code>.</p>",
          "location":"header",
          "locationName":"Location"
        },
        "ETag":{
          "shape":"string",
          "location":"header",
          "locationName":"ETag"
        }
      },
      "documentation":"<p>The returned result of the corresponding request. </p>",
      "payload":"StreamingDistribution"
    },
    "CustomErrorResponse":{
      "type":"structure",
      "required":["ErrorCode"],
      "members":{
        "ErrorCode":{
          "shape":"integer",
          "documentation":"<p>The HTTP status code for which you want to specify a custom error page and/or a caching duration.</p>"
        },
        "ResponsePagePath":{
          "shape":"string",
          "documentation":"<p>The path to the custom error page that you want CloudFront to return to a viewer when your origin returns the HTTP status code specified by <code>ErrorCode</code>, for example, <code>/4xx-errors/403-forbidden.html</code>. If you want to store your objects and your custom error pages in different locations, your distribution must include a cache behavior for which the following is true:</p> <ul> <li> <p>The value of <code>PathPattern</code> matches the path to your custom error messages. For example, suppose you saved custom error pages for 4xx errors in an Amazon S3 bucket in a directory named <code>/4xx-errors</code>. Your distribution must include a cache behavior for which the path pattern routes requests for your custom error pages to that location, for example, <code>/4xx-errors/*</code>. </p> </li> <li> <p>The value of <code>TargetOriginId</code> specifies the value of the <code>ID</code> element for the origin that contains your custom error pages.</p> </li> </ul> <p>If you specify a value for <code>ResponsePagePath</code>, you must also specify a value for <code>ResponseCode</code>. If you don't want to specify a value, include an empty element, <code>&lt;ResponsePagePath&gt;</code>, in the XML document.</p> <p>We recommend that you store custom error pages in an Amazon S3 bucket. If you store custom error pages on an HTTP server and the server starts to return 5xx errors, CloudFront can't get the files that you want to return to viewers because the origin server is unavailable.</p>"
        },
        "ResponseCode":{
          "shape":"string",
          "documentation":"<p>The HTTP status code that you want CloudFront to return to the viewer along with the custom error page. There are a variety of reasons that you might want CloudFront to return a status code different from the status code that your origin returned to CloudFront, for example:</p> <ul> <li> <p>Some Internet devices (some firewalls and corporate proxies, for example) intercept HTTP 4xx and 5xx and prevent the response from being returned to the viewer. If you substitute <code>200</code>, the response typically won't be intercepted.</p> </li> <li> <p>If you don't care about distinguishing among different client errors or server errors, you can specify <code>400</code> or <code>500</code> as the <code>ResponseCode</code> for all 4xx or 5xx errors.</p> </li> <li> <p>You might want to return a <code>200</code> status code (OK) and static website so your customers don't know that your website is down.</p> </li> </ul> <p>If you specify a value for <code>ResponseCode</code>, you must also specify a value for <code>ResponsePagePath</code>. If you don't want to specify a value, include an empty element, <code>&lt;ResponseCode&gt;</code>, in the XML document.</p>"
        },
        "ErrorCachingMinTTL":{
          "shape":"long",
          "documentation":"<p>The minimum amount of time, in seconds, that you want CloudFront to cache the HTTP status code specified in <code>ErrorCode</code>. When this time period has elapsed, CloudFront queries your origin to see whether the problem that caused the error has been resolved and the requested object is now available.</p> <p>If you don't want to specify a value, include an empty element, <code>&lt;ErrorCachingMinTTL&gt;</code>, in the XML document.</p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        }
      },
      "documentation":"<p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer. </p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CustomErrorResponseList":{
      "type":"list",
      "member":{
        "shape":"CustomErrorResponse",
        "locationName":"CustomErrorResponse"
      }
    },
    "CustomErrorResponses":{
      "type":"structure",
      "required":["Quantity"],
      "members":{
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of HTTP status codes for which you want to specify a custom error page and/or a caching duration. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>"
        },
        "Items":{
          "shape":"CustomErrorResponseList",
          "documentation":"<p>A complex type that contains a <code>CustomErrorResponse</code> element for each HTTP status code for which you want to specify a custom error page and/or a caching duration. </p>"
        }
      },
      "documentation":"<p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CustomHeaders":{
      "type":"structure",
      "required":["Quantity"],
      "members":{
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of custom headers, if any, for this distribution.</p>"
        },
        "Items":{
          "shape":"OriginCustomHeadersList",
          "documentation":"<p> <b>Optional</b>: A list that contains one <code>OriginCustomHeader</code> element for each custom header that you want CloudFront to forward to the origin. If Quantity is <code>0</code>, omit <code>Items</code>.</p>"
        }
      },
      "documentation":"<p>A complex type that contains the list of Custom Headers for each origin. </p>"
    },
    "CustomOriginConfig":{
      "type":"structure",
      "required":[
        "HTTPPort",
        "HTTPSPort",
        "OriginProtocolPolicy"
      ],
      "members":{
        "HTTPPort":{
          "shape":"integer",
          "documentation":"<p>The HTTP port the custom origin listens on.</p>"
        },
        "HTTPSPort":{
          "shape":"integer",
          "documentation":"<p>The HTTPS port the custom origin listens on.</p>"
        },
        "OriginProtocolPolicy":{
          "shape":"OriginProtocolPolicy",
          "documentation":"<p>The origin protocol policy to apply to your origin.</p>"
        },
        "OriginSslProtocols":{
          "shape":"OriginSslProtocols",
          "documentation":"<p>The SSL/TLS protocols that you want CloudFront to use when communicating with your origin over HTTPS.</p>"
        }
      },
      "documentation":"<p>A customer origin.</p>"
    },
    "DefaultCacheBehavior":{
      "type":"structure",
      "required":[
        "TargetOriginId",
        "ForwardedValues",
        "TrustedSigners",
        "ViewerProtocolPolicy",
        "MinTTL"
      ],
      "members":{
        "TargetOriginId":{
          "shape":"string",
          "documentation":"<p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior.</p>"
        },
        "ForwardedValues":{
          "shape":"ForwardedValues",
          "documentation":"<p>A complex type that specifies how CloudFront handles query strings and cookies.</p>"
        },
        "TrustedSigners":{
          "shape":"TrustedSigners",
          "documentation":"<p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p>"
        },
        "ViewerProtocolPolicy":{
          "shape":"ViewerProtocolPolicy",
          "documentation":"<p>The protocol that viewers can use to access the files in the origin specified by <code>TargetOriginId</code> when a request matches the path pattern in <code>PathPattern</code>. You can specify the following options:</p> <ul> <li> <p> <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> </li> <li> <p> <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL.</p> </li> <li> <p> <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden).</p> </li> </ul> <p>For more information about requiring the HTTPS protocol, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html\">Using an HTTPS Connection to Access Your Objects</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects' cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note>"
        },
        "MinTTL":{
          "shape":"long",
          "documentation":"<p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>"
        },
        "AllowedMethods":{"shape":"AllowedMethods"},
        "SmoothStreaming":{
          "shape":"boolean",
          "documentation":"<p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for <code>SmoothStreaming</code>, you can still distribute other content using this cache behavior if the content matches the value of <code>PathPattern</code>. </p>"
        },
        "DefaultTTL":{
          "shape":"long",
          "documentation":"<p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "MaxTTL":{"shape":"long"},
        "Compress":{
          "shape":"boolean",
          "documentation":"<p>Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html\">Serving Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "LambdaFunctionAssociations":{
          "shape":"LambdaFunctionAssociations",
          "documentation":"<p>A complex type that contains zero or more Lambda function associations for a cache behavior.</p>"
        }
      },
      "documentation":"<p>A complex type that describes the default cache behavior if you do not specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>"
    },
    "DeleteCloudFrontOriginAccessIdentityRequest":{
      "type":"structure",
      "required":["Id"],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The origin access identity's ID.</p>",
          "location":"uri",
          "locationName":"Id"
        },
        "IfMatch":{
          "shape":"string",
          "documentation":"<p>The value of the <code>ETag</code> header you received from a previous <code>GET</code> or <code>PUT</code> request. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location":"header",
          "locationName":"If-Match"
        }
      },
      "documentation":"<p>Deletes a origin access identity.</p>"
    },
    "DeleteDistributionRequest":{
      "type":"structure",
      "required":["Id"],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The distribution ID. </p>",
          "location":"uri",
          "locationName":"Id"
        },
        "IfMatch":{
          "shape":"string",
          "documentation":"<p>The value of the <code>ETag</code> header that you received when you disabled the distribution. For example: <code>E2QWRUHAPOMQZL</code>. </p>",
          "location":"header",
          "locationName":"If-Match"
        }
      },
      "documentation":"<p>This action deletes a web distribution. To delete a web distribution using the CloudFront API, perform the following steps.</p> <p> <b>To delete a web distribution using the CloudFront API:</b> </p> <ol> <li> <p>Disable the web distribution </p> </li> <li> <p>Submit a <code>GET Distribution Config</code> request to get the current configuration and the <code>Etag</code> header for the distribution.</p> </li> <li> <p>Update the XML document that was returned in the response to your <code>GET Distribution Config</code> request to change the value of <code>Enabled</code> to <code>false</code>.</p> </li> <li> <p>Submit a <code>PUT Distribution Config</code> request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to the <code>PUT Distribution Config</code> request to confirm that the distribution was successfully disabled.</p> </li> <li> <p>Submit a <code>GET Distribution</code> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> <li> <p>Submit a <code>DELETE Distribution</code> request. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 6.</p> </li> <li> <p>Review the response to your <code>DELETE Distribution</code> request to confirm that the distribution was successfully deleted.</p> </li> </ol> <p>For information about deleting a distribution using the CloudFront console, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html\">Deleting a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "DeleteStreamingDistributionRequest":{
      "type":"structure",
      "required":["Id"],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The distribution ID. </p>",
          "location":"uri",
          "locationName":"Id"
        },
        "IfMatch":{
          "shape":"string",
          "documentation":"<p>The value of the <code>ETag</code> header that you received when you disabled the streaming distribution. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location":"header",
          "locationName":"If-Match"
        }
      },
      "documentation":"<p>The request to delete a streaming distribution.</p>"
    },
    "Distribution":{
      "type":"structure",
      "required":[
        "Id",
        "ARN",
        "Status",
        "LastModifiedTime",
        "InProgressInvalidationBatches",
        "DomainName",
        "ActiveTrustedSigners",
        "DistributionConfig"
      ],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>. </p>"
        },
        "ARN":{
          "shape":"string",
          "documentation":"<p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>"
        },
        "Status":{
          "shape":"string",
          "documentation":"<p>This response element indicates the current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is fully propagated to all CloudFront edge locations. </p>"
        },
        "LastModifiedTime":{
          "shape":"timestamp",
          "documentation":"<p>The date and time the distribution was last modified. </p>"
        },
        "InProgressInvalidationBatches":{
          "shape":"integer",
          "documentation":"<p>The number of invalidation batches currently in progress. </p>"
        },
        "DomainName":{
          "shape":"string",
          "documentation":"<p>The domain name corresponding to the distribution. For example: <code>d604721fxaaqy9.cloudfront.net</code>. </p>"
        },
        "ActiveTrustedSigners":{
          "shape":"ActiveTrustedSigners",
          "documentation":"<p>CloudFront automatically adds this element to the response only if you've set up the distribution to serve private content with signed URLs. The element lists the key pair IDs that CloudFront is aware of for each trusted signer. The <code>Signer</code> child element lists the AWS account number of the trusted signer (or an empty <code>Self</code> element if the signer is you). The <code>Signer</code> element also includes the IDs of any active key pairs associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create working signed URLs.</p>"
        },
        "DistributionConfig":{
          "shape":"DistributionConfig",
          "documentation":"<p>The current configuration information for the distribution. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/distribution ID/config</code> resource.</p>"
        }
      },
      "documentation":"<p>The distribution's information.</p>"
    },
    "DistributionAlreadyExists":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>The caller reference you attempted to create the distribution with is associated with another distribution.</p>",
      "error":{"httpStatusCode":409},
      "exception":true
    },
    "DistributionConfig":{
      "type":"structure",
      "required":[
        "CallerReference",
        "Origins",
        "DefaultCacheBehavior",
        "Comment",
        "Enabled"
      ],
      "members":{
        "CallerReference":{
          "shape":"string",
          "documentation":"<p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> <p>If the value of <code>CallerReference</code> is new (regardless of the content of the <code>DistributionConfig</code> object), CloudFront creates a new distribution.</p> <p>If <code>CallerReference</code> is a value you already sent in a previous request to create a distribution, and if the content of the <code>DistributionConfig</code> is identical to the original request (ignoring white space), CloudFront returns the same the response that it returned to the original request.</p> <p>If <code>CallerReference</code> is a value you already sent in a previous request to create a distribution but the content of the <code>DistributionConfig</code> is different from the original request, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>"
        },
        "Aliases":{
          "shape":"Aliases",
          "documentation":"<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.</p>"
        },
        "DefaultRootObject":{
          "shape":"string",
          "documentation":"<p>The object that you want CloudFront to request from your origin (for example, <code>index.html</code>) when a viewer requests the root URL for your distribution (<code>http://www.example.com</code>) instead of an object in your distribution (<code>http://www.example.com/product-description.html</code>). Specifying a default root object avoids exposing the contents of your distribution.</p> <p>Specify only the object name, for example, <code>index.html</code>. Do not add a <code>/</code> before the object name.</p> <p>If you don't want to specify a default root object when you create a distribution, include an empty <code>DefaultRootObject</code> element.</p> <p>To delete the default root object from an existing distribution, update the distribution configuration and include an empty <code>DefaultRootObject</code> element.</p> <p>To replace the default root object, update the distribution configuration and specify the new object.</p> <p>For more information about the default root object, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html\">Creating a Default Root Object</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Origins":{
          "shape":"Origins",
          "documentation":"<p>A complex type that contains information about origins for this distribution. </p>"
        },
        "DefaultCacheBehavior":{
          "shape":"DefaultCacheBehavior",
          "documentation":"<p>A complex type that describes the default cache behavior if you do not specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>"
        },
        "CacheBehaviors":{
          "shape":"CacheBehaviors",
          "documentation":"<p>A complex type that contains zero or more <code>CacheBehavior</code> elements. </p>"
        },
        "CustomErrorResponses":{
          "shape":"CustomErrorResponses",
          "documentation":"<p>A complex type that controls the following:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Comment":{
          "shape":"string",
          "documentation":"<p>Any comments you want to include about the distribution.</p> <p>If you don't want to specify a comment, include an empty <code>Comment</code> element.</p> <p>To delete an existing comment, update the distribution configuration and include an empty <code>Comment</code> element.</p> <p>To add or change a comment, update the distribution configuration and specify the new comment.</p>"
        },
        "Logging":{
          "shape":"LoggingConfig",
          "documentation":"<p>A complex type that controls whether access logs are written for the distribution.</p> <p>For more information about logging, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html\">Access Logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "PriceClass":{
          "shape":"PriceClass",
          "documentation":"<p>The price class that corresponds with the maximum price that you want to pay for CloudFront service. If you specify <code>PriceClass_All</code>, CloudFront responds to requests for your objects from all CloudFront edge locations.</p> <p>If you specify a price class other than <code>PriceClass_All</code>, CloudFront serves your objects from the CloudFront edge location that has the lowest latency among the edge locations in your price class. Viewers who are in or near regions that are excluded from your specified price class may encounter slower performance.</p> <p>For more information about price classes, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html\">Choosing the Price Class for a CloudFront Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>. For information about CloudFront pricing, including how price classes map to CloudFront regions, see <a href=\"https://aws.amazon.com/cloudfront/pricing/\">Amazon CloudFront Pricing</a>.</p>"
        },
        "Enabled":{
          "shape":"boolean",
          "documentation":"<p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket.</p> <p>If you do not want to enable logging when you create a distribution, or if you want to disable logging for an existing distribution, specify <code>false</code> for <code>Enabled</code>, and specify empty <code>Bucket</code> and <code>Prefix</code> elements.</p> <p>If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code> and <code>Prefix</code>, the values are automatically deleted.</p>"
        },
        "ViewerCertificate":{"shape":"ViewerCertificate"},
        "Restrictions":{"shape":"Restrictions"},
        "WebACLId":{
          "shape":"string",
          "documentation":"<p>A unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution.</p> <p>AWS WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests that are forwarded to CloudFront, and lets you control access to your content. Based on conditions that you specify, such as the IP addresses that requests originate from or the values of query strings, CloudFront responds to requests either with the requested content or with an HTTP 403 status code (Forbidden). You can also configure CloudFront to return a custom error page when a request is blocked. For more information about AWS WAF, see the <a href=\"http://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html\">AWS WAF Developer Guide</a>. </p>"
        },
        "HttpVersion":{
          "shape":"HttpVersion",
          "documentation":"<p>(Optional) Specify the maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is http2. Viewers that don't support HTTP/2 automatically use an earlier HTTP version.</p> <p>For viewers and CloudFront to use HTTP/2, viewers must support TLS 1.2 or later, and must support Server Name Identification (SNI).</p> <p>In general, configuring CloudFront to communicate with viewers using HTTP/2 reduces latency. You can improve performance by optimizing for HTTP/2. For more information, do an Internet search for \"http/2 optimization.\" </p>"
        },
        "IsIPV6Enabled":{
          "shape":"boolean",
          "documentation":"<p>If you want CloudFront to respond to IPv6 DNS requests with an IPv6 address for your distribution, specify <code>true</code>. If you specify <code>false</code>, CloudFront responds to IPv6 DNS requests with the DNS response code <code>NOERROR</code> and with no IP addresses. This allows viewers to submit a second request, for an IPv4 address for your distribution. </p> <p>In general, you should enable IPv6 if you have users on IPv6 networks who want to access your content. However, if you're using signed URLs or signed cookies to restrict access to your content, and if you're using a custom policy that includes the <code>IpAddress</code> parameter to restrict the IP addresses that can access your content, do not enable IPv6. If you want to restrict access to some content by IP address and not restrict access to other content (or restrict access but not by IP address), you can create two distributions. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html\">Creating a Signed URL Using a Custom Policy</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you're using an Amazon Route 53 alias resource record set to route traffic to your CloudFront distribution, you need to create a second alias resource record set when both of the following are true:</p> <ul> <li> <p>You enable IPv6 for the distribution</p> </li> <li> <p>You're using alternate domain names in the URLs for your objects</p> </li> </ul> <p>For more information, see <a href=\"http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html\">Routing Traffic to an Amazon CloudFront Web Distribution by Using Your Domain Name</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>If you created a CNAME resource record set, either with Amazon Route 53 or with another DNS service, you don't need to make any changes. A CNAME record will route traffic to your distribution regardless of the IP address format of the viewer request.</p>"
        }
      },
      "documentation":"<p>A distribution configuration.</p>"
    },
    "DistributionConfigWithTags":{
      "type":"structure",
      "required":[
        "DistributionConfig",
        "Tags"
      ],
      "members":{
        "DistributionConfig":{
          "shape":"DistributionConfig",
          "documentation":"<p>A distribution configuration.</p>"
        },
        "Tags":{
          "shape":"Tags",
          "documentation":"<p>A complex type that contains zero or more <code>Tag</code> elements.</p>"
        }
      },
      "documentation":"<p>A distribution Configuration and a list of tags to be associated with the distribution.</p>"
    },
    "DistributionList":{
      "type":"structure",
      "required":[
        "Marker",
        "MaxItems",
        "IsTruncated",
        "Quantity"
      ],
      "members":{
        "Marker":{
          "shape":"string",
          "documentation":"<p>The value you provided for the <code>Marker</code> request parameter.</p>"
        },
        "NextMarker":{
          "shape":"string",
          "documentation":"<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your distributions where they left off. </p>"
        },
        "MaxItems":{
          "shape":"integer",
          "documentation":"<p>The value you provided for the <code>MaxItems</code> request parameter.</p>"
        },
        "IsTruncated":{
          "shape":"boolean",
          "documentation":"<p>A flag that indicates whether more distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more distributions in the list.</p>"
        },
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of distributions that were created by the current AWS account. </p>"
        },
        "Items":{
          "shape":"DistributionSummaryList",
          "documentation":"<p>A complex type that contains one <code>DistributionSummary</code> element for each distribution that was created by the current AWS account.</p>"
        }
      },
      "documentation":"<p>A distribution list.</p>"
    },
    "DistributionNotDisabled":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":409},
      "exception":true
    },
    "DistributionSummary":{
      "type":"structure",
      "required":[
        "Id",
        "ARN",
        "Status",
        "LastModifiedTime",
        "DomainName",
        "Aliases",
        "Origins",
        "DefaultCacheBehavior",
        "CacheBehaviors",
        "CustomErrorResponses",
        "Comment",
        "PriceClass",
        "Enabled",
        "ViewerCertificate",
        "Restrictions",
        "WebACLId",
        "HttpVersion",
        "IsIPV6Enabled"
      ],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>.</p>"
        },
        "ARN":{
          "shape":"string",
          "documentation":"<p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>"
        },
        "Status":{
          "shape":"string",
          "documentation":"<p>The current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is propagated to all CloudFront edge locations.</p>"
        },
        "LastModifiedTime":{
          "shape":"timestamp",
          "documentation":"<p>The date and time the distribution was last modified.</p>"
        },
        "DomainName":{
          "shape":"string",
          "documentation":"<p>The domain name that corresponds to the distribution. For example: <code>d604721fxaaqy9.cloudfront.net</code>.</p>"
        },
        "Aliases":{
          "shape":"Aliases",
          "documentation":"<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.</p>"
        },
        "Origins":{
          "shape":"Origins",
          "documentation":"<p>A complex type that contains information about origins for this distribution.</p>"
        },
        "DefaultCacheBehavior":{
          "shape":"DefaultCacheBehavior",
          "documentation":"<p>A complex type that describes the default cache behavior if you do not specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>"
        },
        "CacheBehaviors":{
          "shape":"CacheBehaviors",
          "documentation":"<p>A complex type that contains zero or more <code>CacheBehavior</code> elements.</p>"
        },
        "CustomErrorResponses":{
          "shape":"CustomErrorResponses",
          "documentation":"<p>A complex type that contains zero or more <code>CustomErrorResponses</code> elements.</p>"
        },
        "Comment":{
          "shape":"string",
          "documentation":"<p>The comment originally specified when this distribution was created.</p>"
        },
        "PriceClass":{"shape":"PriceClass"},
        "Enabled":{
          "shape":"boolean",
          "documentation":"<p>Whether the distribution is enabled to accept user requests for content.</p>"
        },
        "ViewerCertificate":{"shape":"ViewerCertificate"},
        "Restrictions":{"shape":"Restrictions"},
        "WebACLId":{
          "shape":"string",
          "documentation":"<p>The Web ACL Id (if any) associated with the distribution.</p>"
        },
        "HttpVersion":{
          "shape":"HttpVersion",
          "documentation":"<p> Specify the maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is <code>http2</code>. Viewers that don't support <code>HTTP/2</code> will automatically use an earlier version.</p>"
        },
        "IsIPV6Enabled":{
          "shape":"boolean",
          "documentation":"<p>Whether CloudFront responds to IPv6 DNS requests with an IPv6 address for your distribution.</p>"
        }
      },
      "documentation":"<p>A summary of the information about a CloudFront distribution.</p>"
    },
    "DistributionSummaryList":{
      "type":"list",
      "member":{
        "shape":"DistributionSummary",
        "locationName":"DistributionSummary"
      }
    },
    "EventType":{
      "type":"string",
      "enum":[
        "viewer-request",
        "viewer-response",
        "origin-request",
        "origin-response"
      ]
    },
    "ForwardedValues":{
      "type":"structure",
      "required":[
        "QueryString",
        "Cookies"
      ],
      "members":{
        "QueryString":{
          "shape":"boolean",
          "documentation":"<p>Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior and cache based on the query string parameters. CloudFront behavior depends on the value of <code>QueryString</code> and on the values that you specify for <code>QueryStringCacheKeys</code>, if any:</p> <p>If you specify true for <code>QueryString</code> and you don't specify any values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin and caches based on all query string parameters. Depending on how many query string parameters and values you have, this can adversely affect performance because CloudFront must forward more requests to the origin.</p> <p>If you specify true for <code>QueryString</code> and you specify one or more values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin, but it only caches based on the query string parameters that you specify.</p> <p>If you specify false for <code>QueryString</code>, CloudFront doesn't forward any query string parameters to the origin, and doesn't cache based on query string parameters.</p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html\">Configuring CloudFront to Cache Based on Query String Parameters</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Cookies":{
          "shape":"CookiePreference",
          "documentation":"<p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html\">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Headers":{
          "shape":"Headers",
          "documentation":"<p>A complex type that specifies the <code>Headers</code>, if any, that you want CloudFront to vary upon for this cache behavior. </p>"
        },
        "QueryStringCacheKeys":{
          "shape":"QueryStringCacheKeys",
          "documentation":"<p>A complex type that contains information about the query string parameters that you want CloudFront to use for caching for this cache behavior.</p>"
        }
      },
      "documentation":"<p>A complex type that specifies how CloudFront handles query strings and cookies.</p>"
    },
    "GeoRestriction":{
      "type":"structure",
      "required":[
        "RestrictionType",
        "Quantity"
      ],
      "members":{
        "RestrictionType":{
          "shape":"GeoRestrictionType",
          "documentation":"<p>The method that you want to use to restrict distribution of your content by country:</p> <ul> <li> <p> <code>none</code>: No geo restriction is enabled, meaning access to content is not restricted by client geo location.</p> </li> <li> <p> <code>blacklist</code>: The <code>Location</code> elements specify the countries in which you do not want CloudFront to distribute your content.</p> </li> <li> <p> <code>whitelist</code>: The <code>Location</code> elements specify the countries in which you want CloudFront to distribute your content.</p> </li> </ul>"
        },
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>When geo restriction is <code>enabled</code>, this is the number of countries in your <code>whitelist</code> or <code>blacklist</code>. Otherwise, when it is not enabled, <code>Quantity</code> is <code>0</code>, and you can omit <code>Items</code>.</p>"
        },
        "Items":{
          "shape":"LocationList",
          "documentation":"<p> A complex type that contains a <code>Location</code> element for each country in which you want CloudFront either to distribute your content (<code>whitelist</code>) or not distribute your content (<code>blacklist</code>).</p> <p>The <code>Location</code> element is a two-letter, uppercase country code for a country that you want to include in your <code>blacklist</code> or <code>whitelist</code>. Include one <code>Location</code> element for each country.</p> <p>CloudFront and <code>MaxMind</code> both use <code>ISO 3166</code> country codes. For the current list of countries and the corresponding codes, see <code>ISO 3166-1-alpha-2</code> code on the <i>International Organization for Standardization</i> website. You can also refer to the country list in the CloudFront console, which includes both country names and codes.</p>"
        }
      },
      "documentation":"<p>A complex type that controls the countries in which your content is distributed. CloudFront determines the location of your users using <code>MaxMind</code> GeoIP databases. </p>"
    },
    "GeoRestrictionType":{
      "type":"string",
      "enum":[
        "blacklist",
        "whitelist",
        "none"
      ]
    },
    "GetCloudFrontOriginAccessIdentityConfigRequest":{
      "type":"structure",
      "required":["Id"],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The identity's ID. </p>",
          "location":"uri",
          "locationName":"Id"
        }
      },
      "documentation":"<p>The origin access identity's configuration information. For more information, see <a>CloudFrontOriginAccessIdentityConfigComplexType</a>.</p>"
    },
    "GetCloudFrontOriginAccessIdentityConfigResult":{
      "type":"structure",
      "members":{
        "CloudFrontOriginAccessIdentityConfig":{
          "shape":"CloudFrontOriginAccessIdentityConfig",
          "documentation":"<p>The origin access identity's configuration information. </p>"
        },
        "ETag":{
          "shape":"string",
          "documentation":"<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location":"header",
          "locationName":"ETag"
        }
      },
      "documentation":"<p>The returned result of the corresponding request.</p>",
      "payload":"CloudFrontOriginAccessIdentityConfig"
    },
    "GetCloudFrontOriginAccessIdentityRequest":{
      "type":"structure",
      "required":["Id"],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The identity's ID.</p>",
          "location":"uri",
          "locationName":"Id"
        }
      },
      "documentation":"<p>The request to get an origin access identity's information.</p>"
    },
    "GetCloudFrontOriginAccessIdentityResult":{
      "type":"structure",
      "members":{
        "CloudFrontOriginAccessIdentity":{
          "shape":"CloudFrontOriginAccessIdentity",
          "documentation":"<p>The origin access identity's information.</p>"
        },
        "ETag":{
          "shape":"string",
          "documentation":"<p>The current version of the origin access identity's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location":"header",
          "locationName":"ETag"
        }
      },
      "documentation":"<p>The returned result of the corresponding request.</p>",
      "payload":"CloudFrontOriginAccessIdentity"
    },
    "GetDistributionConfigRequest":{
      "type":"structure",
      "required":["Id"],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The distribution's ID.</p>",
          "location":"uri",
          "locationName":"Id"
        }
      },
      "documentation":"<p>The request to get a distribution configuration.</p>"
    },
    "GetDistributionConfigResult":{
      "type":"structure",
      "members":{
        "DistributionConfig":{
          "shape":"DistributionConfig",
          "documentation":"<p>The distribution's configuration information.</p>"
        },
        "ETag":{
          "shape":"string",
          "documentation":"<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location":"header",
          "locationName":"ETag"
        }
      },
      "documentation":"<p>The returned result of the corresponding request.</p>",
      "payload":"DistributionConfig"
    },
    "GetDistributionRequest":{
      "type":"structure",
      "required":["Id"],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The distribution's ID.</p>",
          "location":"uri",
          "locationName":"Id"
        }
      },
      "documentation":"<p>The request to get a distribution's information.</p>"
    },
    "GetDistributionResult":{
      "type":"structure",
      "members":{
        "Distribution":{
          "shape":"Distribution",
          "documentation":"<p>The distribution's information.</p>"
        },
        "ETag":{
          "shape":"string",
          "documentation":"<p>The current version of the distribution's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location":"header",
          "locationName":"ETag"
        }
      },
      "documentation":"<p>The returned result of the corresponding request.</p>",
      "payload":"Distribution"
    },
    "GetInvalidationRequest":{
      "type":"structure",
      "required":[
        "DistributionId",
        "Id"
      ],
      "members":{
        "DistributionId":{
          "shape":"string",
          "documentation":"<p>The distribution's ID.</p>",
          "location":"uri",
          "locationName":"DistributionId"
        },
        "Id":{
          "shape":"string",
          "documentation":"<p>The identifier for the invalidation request, for example, <code>IDFDVBD632BHDS5</code>.</p>",
          "location":"uri",
          "locationName":"Id"
        }
      },
      "documentation":"<p>The request to get an invalidation's information. </p>"
    },
    "GetInvalidationResult":{
      "type":"structure",
      "members":{
        "Invalidation":{
          "shape":"Invalidation",
          "documentation":"<p>The invalidation's information. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/InvalidationDatatype.html\">Invalidation Complex Type</a>. </p>"
        }
      },
      "documentation":"<p>The returned result of the corresponding request.</p>",
      "payload":"Invalidation"
    },
    "GetStreamingDistributionConfigRequest":{
      "type":"structure",
      "required":["Id"],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The streaming distribution's ID.</p>",
          "location":"uri",
          "locationName":"Id"
        }
      },
      "documentation":"<p>To request to get a streaming distribution configuration.</p>"
    },
    "GetStreamingDistributionConfigResult":{
      "type":"structure",
      "members":{
        "StreamingDistributionConfig":{
          "shape":"StreamingDistributionConfig",
          "documentation":"<p>The streaming distribution's configuration information.</p>"
        },
        "ETag":{
          "shape":"string",
          "documentation":"<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>. </p>",
          "location":"header",
          "locationName":"ETag"
        }
      },
      "documentation":"<p>The returned result of the corresponding request.</p>",
      "payload":"StreamingDistributionConfig"
    },
    "GetStreamingDistributionRequest":{
      "type":"structure",
      "required":["Id"],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The streaming distribution's ID.</p>",
          "location":"uri",
          "locationName":"Id"
        }
      },
      "documentation":"<p>The request to get a streaming distribution's information.</p>"
    },
    "GetStreamingDistributionResult":{
      "type":"structure",
      "members":{
        "StreamingDistribution":{
          "shape":"StreamingDistribution",
          "documentation":"<p>The streaming distribution's information.</p>"
        },
        "ETag":{
          "shape":"string",
          "documentation":"<p>The current version of the streaming distribution's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location":"header",
          "locationName":"ETag"
        }
      },
      "documentation":"<p>The returned result of the corresponding request.</p>",
      "payload":"StreamingDistribution"
    },
    "HeaderList":{
      "type":"list",
      "member":{
        "shape":"string",
        "locationName":"Name"
      }
    },
    "Headers":{
      "type":"structure",
      "required":["Quantity"],
      "members":{
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of different headers that you want CloudFront to forward to the origin for this cache behavior. You can configure each cache behavior in a web distribution to do one of the following:</p> <ul> <li> <p> <b>Forward all headers to your origin</b>: Specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>.</p> <important> <p>If you configure CloudFront to forward all headers to your origin, CloudFront doesn't cache the objects associated with this cache behavior. Instead, it sends every request to the origin.</p> </important> </li> <li> <p> <i>Forward a whitelist of headers you specify</i>: Specify the number of headers that you want to forward, and specify the header names in <code>Name</code> elements. CloudFront caches your objects based on the values in all of the specified headers. CloudFront also forwards the headers that it forwards by default, but it caches your objects based only on the headers that you specify. </p> </li> <li> <p> <b>Forward only the default headers</b>: Specify <code>0</code> for <code>Quantity</code> and omit <code>Items</code>. In this configuration, CloudFront doesn't cache based on the values in the request headers.</p> </li> </ul>"
        },
        "Items":{
          "shape":"HeaderList",
          "documentation":"<p>A complex type that contains one <code>Name</code> element for each header that you want CloudFront to forward to the origin and to vary on for this cache behavior. If <code>Quantity</code> is <code>0</code>, omit <code>Items</code>.</p>"
        }
      },
      "documentation":"<p>A complex type that specifies the headers that you want CloudFront to forward to the origin for this cache behavior.</p> <p>For the headers that you specify, CloudFront also caches separate versions of a specified object based on the header values in viewer requests. For example, suppose viewer requests for <code>logo.jpg</code> contain a custom <code>Product</code> header that has a value of either <code>Acme</code> or <code>Apex</code>, and you configure CloudFront to cache your content based on values in the <code>Product</code> header. CloudFront forwards the <code>Product</code> header to the origin and caches the response from the origin once for each header value. For more information about caching based on header values, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html\">How CloudFront Forwards and Caches Headers</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "HttpVersion":{
      "type":"string",
      "enum":[
        "http1.1",
        "http2"
      ]
    },
    "IllegalUpdate":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>Origin and <code>CallerReference</code> cannot be updated. </p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InconsistentQuantities":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>The value of <code>Quantity</code> and the size of <code>Items</code> do not match.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidArgument":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>The argument is invalid.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidDefaultRootObject":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>The default root object file name is too big or contains an invalid character.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidErrorCode":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidForwardCookies":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>Your request contains forward cookies option which doesn't match with the expectation for the <code>whitelisted</code> list of cookie names. Either list of cookie names has been specified when not allowed or list of cookie names is missing when expected.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidGeoRestrictionParameter":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidHeadersForS3Origin":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidIfMatchVersion":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>The <code>If-Match</code> version is missing or not valid for the distribution.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidLambdaFunctionAssociation":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>The specified Lambda function association is invalid.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidLocationCode":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidMinimumProtocolVersion":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidOrigin":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>The Amazon S3 origin server specified does not refer to a valid Amazon S3 bucket.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidOriginAccessIdentity":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>The origin access identity is not valid or doesn't exist.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidProtocolSettings":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>You cannot specify SSLv3 as the minimum protocol version if you only want to support only clients that support Server Name Indication (SNI).</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidQueryStringParameters":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidRelativePath":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>The relative path is too big, is not URL-encoded, or does not begin with a slash (/).</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidRequiredProtocol":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>This operation requires the HTTPS protocol. Ensure that you specify the HTTPS protocol in your request, or omit the <code>RequiredProtocols</code> element from your distribution configuration.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidResponseCode":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidTTLOrder":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidTagging":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidViewerCertificate":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidWebACLId":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "Invalidation":{
      "type":"structure",
      "required":[
        "Id",
        "Status",
        "CreateTime",
        "InvalidationBatch"
      ],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The identifier for the invalidation request. For example: <code>IDFDVBD632BHDS5</code>.</p>"
        },
        "Status":{
          "shape":"string",
          "documentation":"<p>The status of the invalidation request. When the invalidation batch is finished, the status is <code>Completed</code>.</p>"
        },
        "CreateTime":{
          "shape":"timestamp",
          "documentation":"<p>The date and time the invalidation request was first made. </p>"
        },
        "InvalidationBatch":{
          "shape":"InvalidationBatch",
          "documentation":"<p>The current invalidation information for the batch request. </p>"
        }
      },
      "documentation":"<p>An invalidation. </p>"
    },
    "InvalidationBatch":{
      "type":"structure",
      "required":[
        "Paths",
        "CallerReference"
      ],
      "members":{
        "Paths":{
          "shape":"Paths",
          "documentation":"<p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects\">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>"
        },
        "CallerReference":{
          "shape":"string",
          "documentation":"<p>A value that you specify to uniquely identify an invalidation request. CloudFront uses the value to prevent you from accidentally resubmitting an identical request. Whenever you create a new invalidation request, you must specify a new value for <code>CallerReference</code> and change other values in the request as applicable. One way to ensure that the value of <code>CallerReference</code> is unique is to use a <code>timestamp</code>, for example, <code>20120301090000</code>.</p> <p>If you make a second invalidation request with the same value for <code>CallerReference</code>, and if the rest of the request is the same, CloudFront doesn't create a new invalidation request. Instead, CloudFront returns information about the invalidation request that you previously created with the same <code>CallerReference</code>.</p> <p>If <code>CallerReference</code> is a value you already sent in a previous invalidation batch request but the content of any <code>Path</code> is different from the original request, CloudFront returns an <code>InvalidationBatchAlreadyExists</code> error.</p>"
        }
      },
      "documentation":"<p>An invalidation batch.</p>"
    },
    "InvalidationList":{
      "type":"structure",
      "required":[
        "Marker",
        "MaxItems",
        "IsTruncated",
        "Quantity"
      ],
      "members":{
        "Marker":{
          "shape":"string",
          "documentation":"<p>The value that you provided for the <code>Marker</code> request parameter.</p>"
        },
        "NextMarker":{
          "shape":"string",
          "documentation":"<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your invalidation batches where they left off.</p>"
        },
        "MaxItems":{
          "shape":"integer",
          "documentation":"<p>The value that you provided for the <code>MaxItems</code> request parameter.</p>"
        },
        "IsTruncated":{
          "shape":"boolean",
          "documentation":"<p>A flag that indicates whether more invalidation batch requests remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more invalidation batches in the list.</p>"
        },
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of invalidation batches that were created by the current AWS account. </p>"
        },
        "Items":{
          "shape":"InvalidationSummaryList",
          "documentation":"<p>A complex type that contains one <code>InvalidationSummary</code> element for each invalidation batch created by the current AWS account.</p>"
        }
      },
      "documentation":"<p>The <code>InvalidationList</code> complex type describes the list of invalidation objects. For more information about invalidation, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html\">Invalidating Objects (Web Distributions Only)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "InvalidationSummary":{
      "type":"structure",
      "required":[
        "Id",
        "CreateTime",
        "Status"
      ],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The unique ID for an invalidation request.</p>"
        },
        "CreateTime":{"shape":"timestamp"},
        "Status":{
          "shape":"string",
          "documentation":"<p>The status of an invalidation request.</p>"
        }
      },
      "documentation":"<p>A summary of an invalidation request.</p>"
    },
    "InvalidationSummaryList":{
      "type":"list",
      "member":{
        "shape":"InvalidationSummary",
        "locationName":"InvalidationSummary"
      }
    },
    "ItemSelection":{
      "type":"string",
      "enum":[
        "none",
        "whitelist",
        "all"
      ]
    },
    "KeyPairIdList":{
      "type":"list",
      "member":{
        "shape":"string",
        "locationName":"KeyPairId"
      }
    },
    "KeyPairIds":{
      "type":"structure",
      "required":["Quantity"],
      "members":{
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of active CloudFront key pairs for <code>AwsAccountNumber</code>.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>"
        },
        "Items":{
          "shape":"KeyPairIdList",
          "documentation":"<p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>"
        }
      },
      "documentation":"<p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>. </p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>"
    },
    "LambdaFunctionAssociation":{
      "type":"structure",
      "members":{
        "LambdaFunctionARN":{
          "shape":"string",
          "documentation":"<p>The ARN of the Lambda function.</p>"
        },
        "EventType":{
          "shape":"EventType",
          "documentation":"<p>Specifies the event type that triggers a Lambda function invocation. Valid values are:</p> <ul> <li> <p> <code>viewer-request</code> </p> </li> <li> <p> <code>origin-request</code> </p> </li> <li> <p> <code>viewer-response</code> </p> </li> <li> <p> <code>origin-response</code> </p> </li> </ul>"
        }
      },
      "documentation":"<p>A complex type that contains a Lambda function association.</p>"
    },
    "LambdaFunctionAssociationList":{
      "type":"list",
      "member":{
        "shape":"LambdaFunctionAssociation",
        "locationName":"LambdaFunctionAssociation"
      }
    },
    "LambdaFunctionAssociations":{
      "type":"structure",
      "required":["Quantity"],
      "members":{
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of Lambda function associations for this cache behavior.</p>"
        },
        "Items":{
          "shape":"LambdaFunctionAssociationList",
          "documentation":"<p> <b>Optional</b>: A complex type that contains <code>LambdaFunctionAssociation</code> items for this cache behavior. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>"
        }
      },
      "documentation":"<p>A complex type that specifies a list of Lambda functions associations for a cache behavior.</p> <p>If you want to invoke one or more Lambda functions triggered by requests that match the <code>PathPattern</code> of the cache behavior, specify the applicable values for <code>Quantity</code> and <code>Items</code>. Note that there can be up to 4 <code>LambdaFunctionAssociation</code> items in this list (one for each possible value of <code>EventType</code>) and each <code>EventType</code> can be associated with the Lambda function only once.</p> <p>If you don't want to invoke any Lambda functions for the requests that match <code>PathPattern</code>, specify <code>0</code> for <code>Quantity</code> and omit <code>Items</code>. </p>"
    },
    "ListCloudFrontOriginAccessIdentitiesRequest":{
      "type":"structure",
      "members":{
        "Marker":{
          "shape":"string",
          "documentation":"<p>Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last identity on that page).</p>",
          "location":"querystring",
          "locationName":"Marker"
        },
        "MaxItems":{
          "shape":"string",
          "documentation":"<p>The maximum number of origin access identities you want in the response body. </p>",
          "location":"querystring",
          "locationName":"MaxItems"
        }
      },
      "documentation":"<p>The request to list origin access identities. </p>"
    },
    "ListCloudFrontOriginAccessIdentitiesResult":{
      "type":"structure",
      "members":{
        "CloudFrontOriginAccessIdentityList":{
          "shape":"CloudFrontOriginAccessIdentityList",
          "documentation":"<p>The <code>CloudFrontOriginAccessIdentityList</code> type. </p>"
        }
      },
      "documentation":"<p>The returned result of the corresponding request. </p>",
      "payload":"CloudFrontOriginAccessIdentityList"
    },
    "ListDistributionsByWebACLIdRequest":{
      "type":"structure",
      "required":["WebACLId"],
      "members":{
        "Marker":{
          "shape":"string",
          "documentation":"<p>Use <code>Marker</code> and <code>MaxItems</code> to control pagination of results. If you have more than <code>MaxItems</code> distributions that satisfy the request, the response includes a <code>NextMarker</code> element. To get the next page of results, submit another request. For the value of <code>Marker</code>, specify the value of <code>NextMarker</code> from the last response. (For the first request, omit <code>Marker</code>.) </p>",
          "location":"querystring",
          "locationName":"Marker"
        },
        "MaxItems":{
          "shape":"string",
          "documentation":"<p>The maximum number of distributions that you want CloudFront to return in the response body. The maximum and default values are both 100.</p>",
          "location":"querystring",
          "locationName":"MaxItems"
        },
        "WebACLId":{
          "shape":"string",
          "documentation":"<p>The ID of the AWS WAF web ACL that you want to list the associated distributions. If you specify \"null\" for the ID, the request returns a list of the distributions that aren't associated with a web ACL. </p>",
          "location":"uri",
          "locationName":"WebACLId"
        }
      },
      "documentation":"<p>The request to list distributions that are associated with a specified AWS WAF web ACL. </p>"
    },
    "ListDistributionsByWebACLIdResult":{
      "type":"structure",
      "members":{
        "DistributionList":{
          "shape":"DistributionList",
          "documentation":"<p>The <code>DistributionList</code> type. </p>"
        }
      },
      "documentation":"<p>The response to a request to list the distributions that are associated with a specified AWS WAF web ACL. </p>",
      "payload":"DistributionList"
    },
    "ListDistributionsRequest":{
      "type":"structure",
      "members":{
        "Marker":{
          "shape":"string",
          "documentation":"<p>Use this when paginating results to indicate where to begin in your list of distributions. The results include distributions in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last distribution on that page).</p>",
          "location":"querystring",
          "locationName":"Marker"
        },
        "MaxItems":{
          "shape":"string",
          "documentation":"<p>The maximum number of distributions you want in the response body.</p>",
          "location":"querystring",
          "locationName":"MaxItems"
        }
      },
      "documentation":"<p>The request to list your distributions. </p>"
    },
    "ListDistributionsResult":{
      "type":"structure",
      "members":{
        "DistributionList":{
          "shape":"DistributionList",
          "documentation":"<p>The <code>DistributionList</code> type. </p>"
        }
      },
      "documentation":"<p>The returned result of the corresponding request. </p>",
      "payload":"DistributionList"
    },
    "ListInvalidationsRequest":{
      "type":"structure",
      "required":["DistributionId"],
      "members":{
        "DistributionId":{
          "shape":"string",
          "documentation":"<p>The distribution's ID.</p>",
          "location":"uri",
          "locationName":"DistributionId"
        },
        "Marker":{
          "shape":"string",
          "documentation":"<p>Use this parameter when paginating results to indicate where to begin in your list of invalidation batches. Because the results are returned in decreasing order from most recent to oldest, the most recent results are on the first page, the second page will contain earlier results, and so on. To get the next page of results, set <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response. This value is the same as the ID of the last invalidation batch on that page. </p>",
          "location":"querystring",
          "locationName":"Marker"
        },
        "MaxItems":{
          "shape":"string",
          "documentation":"<p>The maximum number of invalidation batches that you want in the response body.</p>",
          "location":"querystring",
          "locationName":"MaxItems"
        }
      },
      "documentation":"<p>The request to list invalidations. </p>"
    },
    "ListInvalidationsResult":{
      "type":"structure",
      "members":{
        "InvalidationList":{
          "shape":"InvalidationList",
          "documentation":"<p>Information about invalidation batches. </p>"
        }
      },
      "documentation":"<p>The returned result of the corresponding request. </p>",
      "payload":"InvalidationList"
    },
    "ListStreamingDistributionsRequest":{
      "type":"structure",
      "members":{
        "Marker":{
          "shape":"string",
          "documentation":"<p>The value that you provided for the <code>Marker</code> request parameter.</p>",
          "location":"querystring",
          "locationName":"Marker"
        },
        "MaxItems":{
          "shape":"string",
          "documentation":"<p>The value that you provided for the <code>MaxItems</code> request parameter.</p>",
          "location":"querystring",
          "locationName":"MaxItems"
        }
      },
      "documentation":"<p>The request to list your streaming distributions. </p>"
    },
    "ListStreamingDistributionsResult":{
      "type":"structure",
      "members":{
        "StreamingDistributionList":{
          "shape":"StreamingDistributionList",
          "documentation":"<p>The <code>StreamingDistributionList</code> type. </p>"
        }
      },
      "documentation":"<p>The returned result of the corresponding request. </p>",
      "payload":"StreamingDistributionList"
    },
    "ListTagsForResourceRequest":{
      "type":"structure",
      "required":["Resource"],
      "members":{
        "Resource":{
          "shape":"ResourceARN",
          "documentation":"<p> An ARN of a CloudFront resource.</p>",
          "location":"querystring",
          "locationName":"Resource"
        }
      },
      "documentation":"<p> The request to list tags for a CloudFront resource.</p>"
    },
    "ListTagsForResourceResult":{
      "type":"structure",
      "required":["Tags"],
      "members":{
        "Tags":{
          "shape":"Tags",
          "documentation":"<p> A complex type that contains zero or more <code>Tag</code> elements.</p>"
        }
      },
      "documentation":"<p> The returned result of the corresponding request.</p>",
      "payload":"Tags"
    },
    "LocationList":{
      "type":"list",
      "member":{
        "shape":"string",
        "locationName":"Location"
      }
    },
    "LoggingConfig":{
      "type":"structure",
      "required":[
        "Enabled",
        "IncludeCookies",
        "Bucket",
        "Prefix"
      ],
      "members":{
        "Enabled":{
          "shape":"boolean",
          "documentation":"<p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you do not want to enable logging when you create a distribution or if you want to disable logging for an existing distribution, specify <code>false</code> for <code>Enabled</code>, and specify empty <code>Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code>, <code>prefix</code>, and <code>IncludeCookies</code>, the values are automatically deleted.</p>"
        },
        "IncludeCookies":{
          "shape":"boolean",
          "documentation":"<p>Specifies whether you want CloudFront to include cookies in access logs, specify <code>true</code> for <code>IncludeCookies</code>. If you choose to include cookies in logs, CloudFront logs all cookies regardless of how you configure the cache behaviors for this distribution. If you do not want to include cookies when you create a distribution or if you want to disable include cookies for an existing distribution, specify <code>false</code> for <code>IncludeCookies</code>.</p>"
        },
        "Bucket":{
          "shape":"string",
          "documentation":"<p>The Amazon S3 bucket to store the access logs in, for example, <code>myawslogbucket.s3.amazonaws.com</code>.</p>"
        },
        "Prefix":{
          "shape":"string",
          "documentation":"<p>An optional string that you want CloudFront to prefix to the access log <code>filenames</code> for this distribution, for example, <code>myprefix/</code>. If you want to enable logging, but you do not want to specify a prefix, you still must include an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>"
        }
      },
      "documentation":"<p>A complex type that controls whether access logs are written for the distribution.</p>"
    },
    "Method":{
      "type":"string",
      "enum":[
        "GET",
        "HEAD",
        "POST",
        "PUT",
        "PATCH",
        "OPTIONS",
        "DELETE"
      ]
    },
    "MethodsList":{
      "type":"list",
      "member":{
        "shape":"Method",
        "locationName":"Method"
      }
    },
    "MinimumProtocolVersion":{
      "type":"string",
      "enum":[
        "SSLv3",
        "TLSv1"
      ]
    },
    "MissingBody":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>This operation requires a body. Ensure that the body is present and the Content-Type header is set.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "NoSuchCloudFrontOriginAccessIdentity":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>The specified origin access identity does not exist.</p>",
      "error":{"httpStatusCode":404},
      "exception":true
    },
    "NoSuchDistribution":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>The specified distribution does not exist.</p>",
      "error":{"httpStatusCode":404},
      "exception":true
    },
    "NoSuchInvalidation":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>The specified invalidation does not exist.</p>",
      "error":{"httpStatusCode":404},
      "exception":true
    },
    "NoSuchOrigin":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>No origin exists with the specified <code>Origin Id</code>. </p>",
      "error":{"httpStatusCode":404},
      "exception":true
    },
    "NoSuchResource":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":404},
      "exception":true
    },
    "NoSuchStreamingDistribution":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>The specified streaming distribution does not exist.</p>",
      "error":{"httpStatusCode":404},
      "exception":true
    },
    "Origin":{
      "type":"structure",
      "required":[
        "Id",
        "DomainName"
      ],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>A unique identifier for the origin. The value of <code>Id</code> must be unique within the distribution.</p> <p>When you specify the value of <code>TargetOriginId</code> for the default cache behavior or for another cache behavior, you indicate the origin to which you want the cache behavior to route requests by specifying the value of the <code>Id</code> element for that origin. When a request matches the path pattern for that cache behavior, CloudFront routes the request to the specified origin. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior\">Cache Behavior Settings</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "DomainName":{
          "shape":"string",
          "documentation":"<p> <b>Amazon S3 origins</b>: The DNS name of the Amazon S3 bucket from which you want CloudFront to get objects for this origin, for example, <code>myawsbucket.s3.amazonaws.com</code>.</p> <p>Constraints for Amazon S3 origins: </p> <ul> <li> <p>If you configured Amazon S3 Transfer Acceleration for your bucket, do not specify the <code>s3-accelerate</code> endpoint for <code>DomainName</code>.</p> </li> <li> <p>The bucket name must be between 3 and 63 characters long (inclusive).</p> </li> <li> <p>The bucket name must contain only lowercase characters, numbers, periods, underscores, and dashes.</p> </li> <li> <p>The bucket name must not contain adjacent periods.</p> </li> </ul> <p> <b>Custom Origins</b>: The DNS domain name for the HTTP server from which you want CloudFront to get objects for this origin, for example, <code>www.example.com</code>. </p> <p>Constraints for custom origins:</p> <ul> <li> <p> <code>DomainName</code> must be a valid DNS name that contains only a-z, A-Z, 0-9, dot (.), hyphen (-), or underscore (_) characters.</p> </li> <li> <p>The name cannot exceed 128 characters.</p> </li> </ul>"
        },
        "OriginPath":{
          "shape":"string",
          "documentation":"<p>An optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin. When you include the <code>OriginPath</code> element, specify the directory name, beginning with a <code>/</code>. CloudFront appends the directory name to the value of <code>DomainName</code>, for example, <code>example.com/production</code>. Do not include a <code>/</code> at the end of the directory name.</p> <p>For example, suppose you've specified the following values for your distribution:</p> <ul> <li> <p> <code>DomainName</code>: An Amazon S3 bucket named <code>myawsbucket</code>.</p> </li> <li> <p> <code>OriginPath</code>: <code>/production</code> </p> </li> <li> <p> <code>CNAME</code>: <code>example.com</code> </p> </li> </ul> <p>When a user enters <code>example.com/index.html</code> in a browser, CloudFront sends a request to Amazon S3 for <code>myawsbucket/production/index.html</code>.</p> <p>When a user enters <code>example.com/acme/index.html</code> in a browser, CloudFront sends a request to Amazon S3 for <code>myawsbucket/production/acme/index.html</code>.</p>"
        },
        "CustomHeaders":{
          "shape":"CustomHeaders",
          "documentation":"<p>A complex type that contains names and values for the custom headers that you want.</p>"
        },
        "S3OriginConfig":{
          "shape":"S3OriginConfig",
          "documentation":"<p>A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin, use the <code>CustomOriginConfig</code> element instead.</p>"
        },
        "CustomOriginConfig":{
          "shape":"CustomOriginConfig",
          "documentation":"<p>A complex type that contains information about a custom origin. If the origin is an Amazon S3 bucket, use the <code>S3OriginConfig</code> element instead.</p>"
        }
      },
      "documentation":"<p>A complex type that describes the Amazon S3 bucket or the HTTP server (for example, a web server) from which CloudFront gets your files. You must create at least one origin.</p> <p>For the current limit on the number of origins that you can create for a distribution, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront\">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p>"
    },
    "OriginCustomHeader":{
      "type":"structure",
      "required":[
        "HeaderName",
        "HeaderValue"
      ],
      "members":{
        "HeaderName":{
          "shape":"string",
          "documentation":"<p>The name of a header that you want CloudFront to forward to your origin. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html\">Forwarding Custom Headers to Your Origin (Web Distributions Only)</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p>"
        },
        "HeaderValue":{
          "shape":"string",
          "documentation":"<p>The value for the header that you specified in the <code>HeaderName</code> field.</p>"
        }
      },
      "documentation":"<p>A complex type that contains <code>HeaderName</code> and <code>HeaderValue</code> elements, if any, for this distribution. </p>"
    },
    "OriginCustomHeadersList":{
      "type":"list",
      "member":{
        "shape":"OriginCustomHeader",
        "locationName":"OriginCustomHeader"
      }
    },
    "OriginList":{
      "type":"list",
      "member":{
        "shape":"Origin",
        "locationName":"Origin"
      },
      "min":1
    },
    "OriginProtocolPolicy":{
      "type":"string",
      "enum":[
        "http-only",
        "match-viewer",
        "https-only"
      ]
    },
    "OriginSslProtocols":{
      "type":"structure",
      "required":[
        "Quantity",
        "Items"
      ],
      "members":{
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of SSL/TLS protocols that you want to allow CloudFront to use when establishing an HTTPS connection with this origin. </p>"
        },
        "Items":{
          "shape":"SslProtocolsList",
          "documentation":"<p>A list that contains allowed SSL/TLS protocols for this distribution.</p>"
        }
      },
      "documentation":"<p>A complex type that contains information about the SSL/TLS protocols that CloudFront can use when establishing an HTTPS connection with your origin. </p>"
    },
    "Origins":{
      "type":"structure",
      "required":["Quantity"],
      "members":{
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of origins for this distribution.</p>"
        },
        "Items":{
          "shape":"OriginList",
          "documentation":"<p>A complex type that contains origins for this distribution.</p>"
        }
      },
      "documentation":"<p>A complex type that contains information about origins for this distribution. </p>"
    },
    "PathList":{
      "type":"list",
      "member":{
        "shape":"string",
        "locationName":"Path"
      }
    },
    "Paths":{
      "type":"structure",
      "required":["Quantity"],
      "members":{
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of objects that you want to invalidate.</p>"
        },
        "Items":{
          "shape":"PathList",
          "documentation":"<p>A complex type that contains a list of the paths that you want to invalidate.</p>"
        }
      },
      "documentation":"<p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects\">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>"
    },
    "PreconditionFailed":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>The precondition given in one or more of the request-header fields evaluated to <code>false</code>. </p>",
      "error":{"httpStatusCode":412},
      "exception":true
    },
    "PriceClass":{
      "type":"string",
      "enum":[
        "PriceClass_100",
        "PriceClass_200",
        "PriceClass_All"
      ]
    },
    "QueryStringCacheKeys":{
      "type":"structure",
      "required":["Quantity"],
      "members":{
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of <code>whitelisted</code> query string parameters for this cache behavior.</p>"
        },
        "Items":{
          "shape":"QueryStringCacheKeysList",
          "documentation":"<p>(Optional) A list that contains the query string parameters that you want CloudFront to use as a basis for caching for this cache behavior. If <code>Quantity</code> is 0, you can omit <code>Items</code>. </p>"
        }
      }
    },
    "QueryStringCacheKeysList":{
      "type":"list",
      "member":{
        "shape":"string",
        "locationName":"Name"
      }
    },
    "ResourceARN":{
      "type":"string",
      "pattern":"arn:aws:cloudfront::[0-9]+:.*"
    },
    "Restrictions":{
      "type":"structure",
      "required":["GeoRestriction"],
      "members":{
        "GeoRestriction":{"shape":"GeoRestriction"}
      },
      "documentation":"<p>A complex type that identifies ways in which you want to restrict distribution of your content.</p>"
    },
    "S3Origin":{
      "type":"structure",
      "required":[
        "DomainName",
        "OriginAccessIdentity"
      ],
      "members":{
        "DomainName":{
          "shape":"string",
          "documentation":"<p>The DNS name of the Amazon S3 origin. </p>"
        },
        "OriginAccessIdentity":{
          "shape":"string",
          "documentation":"<p>The CloudFront origin access identity to associate with the RTMP distribution. Use an origin access identity to configure the distribution so that end users can only access objects in an Amazon S3 bucket through CloudFront.</p> <p>If you want end users to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p> <p>To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty <code>OriginAccessIdentity</code> element.</p> <p>To replace the origin access identity, update the distribution configuration and specify the new origin access identity.</p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html\">Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p>"
        }
      },
      "documentation":"<p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>"
    },
    "S3OriginConfig":{
      "type":"structure",
      "required":["OriginAccessIdentity"],
      "members":{
        "OriginAccessIdentity":{
          "shape":"string",
          "documentation":"<p>The CloudFront origin access identity to associate with the origin. Use an origin access identity to configure the origin so that viewers can <i>only</i> access objects in an Amazon S3 bucket through CloudFront. The format of the value is:</p> <p>origin-access-identity/CloudFront/<i>ID-of-origin-access-identity</i> </p> <p>where <code> <i>ID-of-origin-access-identity</i> </code> is the value that CloudFront returned in the <code>ID</code> element when you created the origin access identity.</p> <p>If you want viewers to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p> <p>To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty <code>OriginAccessIdentity</code> element.</p> <p>To replace the origin access identity, update the distribution configuration and specify the new origin access identity.</p> <p>For more information about the origin access identity, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        }
      },
      "documentation":"<p>A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin, use the <code>CustomOriginConfig</code> element instead.</p>"
    },
    "SSLSupportMethod":{
      "type":"string",
      "enum":[
        "sni-only",
        "vip"
      ]
    },
    "Signer":{
      "type":"structure",
      "members":{
        "AwsAccountNumber":{
          "shape":"string",
          "documentation":"<p>An AWS account that is included in the <code>TrustedSigners</code> complex type for this RTMP distribution. Valid values include:</p> <ul> <li> <p> <code>self</code>, which is the AWS account used to create the distribution.</p> </li> <li> <p>An AWS account number.</p> </li> </ul>"
        },
        "KeyPairIds":{
          "shape":"KeyPairIds",
          "documentation":"<p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>.</p>"
        }
      },
      "documentation":"<p>A complex type that lists the AWS accounts that were included in the <code>TrustedSigners</code> complex type, as well as their active CloudFront key pair IDs, if any. </p>"
    },
    "SignerList":{
      "type":"list",
      "member":{
        "shape":"Signer",
        "locationName":"Signer"
      }
    },
    "SslProtocol":{
      "type":"string",
      "enum":[
        "SSLv3",
        "TLSv1",
        "TLSv1.1",
        "TLSv1.2"
      ]
    },
    "SslProtocolsList":{
      "type":"list",
      "member":{
        "shape":"SslProtocol",
        "locationName":"SslProtocol"
      }
    },
    "StreamingDistribution":{
      "type":"structure",
      "required":[
        "Id",
        "ARN",
        "Status",
        "DomainName",
        "ActiveTrustedSigners",
        "StreamingDistributionConfig"
      ],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The identifier for the RTMP distribution. For example: <code>EGTXBD79EXAMPLE</code>.</p>"
        },
        "ARN":{"shape":"string"},
        "Status":{
          "shape":"string",
          "documentation":"<p>The current status of the RTMP distribution. When the status is <code>Deployed</code>, the distribution's information is propagated to all CloudFront edge locations.</p>"
        },
        "LastModifiedTime":{
          "shape":"timestamp",
          "documentation":"<p>The date and time that the distribution was last modified. </p>"
        },
        "DomainName":{
          "shape":"string",
          "documentation":"<p>The domain name that corresponds to the streaming distribution. For example: <code>s5c39gqb8ow64r.cloudfront.net</code>. </p>"
        },
        "ActiveTrustedSigners":{
          "shape":"ActiveTrustedSigners",
          "documentation":"<p>A complex type that lists the AWS accounts, if any, that you included in the <code>TrustedSigners</code> complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.</p> <p>The <code>Signer</code> complex type lists the AWS account number of the trusted signer or <code>self</code> if the signer is the AWS account that created the distribution. The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create signed URLs.</p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>"
        },
        "StreamingDistributionConfig":{
          "shape":"StreamingDistributionConfig",
          "documentation":"<p>The current configuration information for the RTMP distribution.</p>"
        }
      },
      "documentation":"<p>A streaming distribution. </p>"
    },
    "StreamingDistributionAlreadyExists":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":409},
      "exception":true
    },
    "StreamingDistributionConfig":{
      "type":"structure",
      "required":[
        "CallerReference",
        "S3Origin",
        "Comment",
        "TrustedSigners",
        "Enabled"
      ],
      "members":{
        "CallerReference":{
          "shape":"string",
          "documentation":"<p>A unique number that ensures that the request can't be replayed. If the <code>CallerReference</code> is new (no matter the content of the <code>StreamingDistributionConfig</code> object), a new streaming distribution is created. If the <code>CallerReference</code> is a value that you already sent in a previous request to create a streaming distribution, and the content of the <code>StreamingDistributionConfig</code> is identical to the original request (ignoring white space), the response includes the same information returned to the original request. If the <code>CallerReference</code> is a value that you already sent in a previous request to create a streaming distribution but the content of the <code>StreamingDistributionConfig</code> is different from the original request, CloudFront returns a <code>DistributionAlreadyExists</code> error. </p>"
        },
        "S3Origin":{
          "shape":"S3Origin",
          "documentation":"<p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution. </p>"
        },
        "Aliases":{
          "shape":"Aliases",
          "documentation":"<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution. </p>"
        },
        "Comment":{
          "shape":"string",
          "documentation":"<p>Any comments you want to include about the streaming distribution. </p>"
        },
        "Logging":{
          "shape":"StreamingLoggingConfig",
          "documentation":"<p>A complex type that controls whether access logs are written for the streaming distribution. </p>"
        },
        "TrustedSigners":{
          "shape":"TrustedSigners",
          "documentation":"<p>A complex type that specifies any AWS accounts that you want to permit to create signed URLs for private content. If you want the distribution to use signed URLs, include this element; if you want the distribution to use public URLs, remove this element. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>"
        },
        "PriceClass":{
          "shape":"PriceClass",
          "documentation":"<p>A complex type that contains information about price class for this streaming distribution. </p>"
        },
        "Enabled":{
          "shape":"boolean",
          "documentation":"<p>Whether the streaming distribution is enabled to accept user requests for content.</p>"
        }
      },
      "documentation":"<p>The RTMP distribution's configuration information.</p>"
    },
    "StreamingDistributionConfigWithTags":{
      "type":"structure",
      "required":[
        "StreamingDistributionConfig",
        "Tags"
      ],
      "members":{
        "StreamingDistributionConfig":{
          "shape":"StreamingDistributionConfig",
          "documentation":"<p>A streaming distribution Configuration.</p>"
        },
        "Tags":{
          "shape":"Tags",
          "documentation":"<p>A complex type that contains zero or more <code>Tag</code> elements.</p>"
        }
      },
      "documentation":"<p>A streaming distribution Configuration and a list of tags to be associated with the streaming distribution.</p>"
    },
    "StreamingDistributionList":{
      "type":"structure",
      "required":[
        "Marker",
        "MaxItems",
        "IsTruncated",
        "Quantity"
      ],
      "members":{
        "Marker":{
          "shape":"string",
          "documentation":"<p>The value you provided for the <code>Marker</code> request parameter. </p>"
        },
        "NextMarker":{
          "shape":"string",
          "documentation":"<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your RTMP distributions where they left off. </p>"
        },
        "MaxItems":{
          "shape":"integer",
          "documentation":"<p>The value you provided for the <code>MaxItems</code> request parameter. </p>"
        },
        "IsTruncated":{
          "shape":"boolean",
          "documentation":"<p>A flag that indicates whether more streaming distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more distributions in the list. </p>"
        },
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of streaming distributions that were created by the current AWS account. </p>"
        },
        "Items":{
          "shape":"StreamingDistributionSummaryList",
          "documentation":"<p>A complex type that contains one <code>StreamingDistributionSummary</code> element for each distribution that was created by the current AWS account.</p>"
        }
      },
      "documentation":"<p>A streaming distribution list. </p>"
    },
    "StreamingDistributionNotDisabled":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":409},
      "exception":true
    },
    "StreamingDistributionSummary":{
      "type":"structure",
      "required":[
        "Id",
        "ARN",
        "Status",
        "LastModifiedTime",
        "DomainName",
        "S3Origin",
        "Aliases",
        "TrustedSigners",
        "Comment",
        "PriceClass",
        "Enabled"
      ],
      "members":{
        "Id":{
          "shape":"string",
          "documentation":"<p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>.</p>"
        },
        "ARN":{
          "shape":"string",
          "documentation":"<p> The ARN (Amazon Resource Name) for the streaming distribution. For example: <code>arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>"
        },
        "Status":{
          "shape":"string",
          "documentation":"<p> Indicates the current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is fully propagated throughout the Amazon CloudFront system.</p>"
        },
        "LastModifiedTime":{
          "shape":"timestamp",
          "documentation":"<p>The date and time the distribution was last modified.</p>"
        },
        "DomainName":{
          "shape":"string",
          "documentation":"<p>The domain name corresponding to the distribution. For example: <code>d604721fxaaqy9.cloudfront.net</code>.</p>"
        },
        "S3Origin":{
          "shape":"S3Origin",
          "documentation":"<p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>"
        },
        "Aliases":{
          "shape":"Aliases",
          "documentation":"<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution.</p>"
        },
        "TrustedSigners":{
          "shape":"TrustedSigners",
          "documentation":"<p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content. If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>.If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>. To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p>"
        },
        "Comment":{
          "shape":"string",
          "documentation":"<p>The comment originally specified when this distribution was created.</p>"
        },
        "PriceClass":{"shape":"PriceClass"},
        "Enabled":{
          "shape":"boolean",
          "documentation":"<p>Whether the distribution is enabled to accept end user requests for content.</p>"
        }
      },
      "documentation":"<p> A summary of the information for an Amazon CloudFront streaming distribution.</p>"
    },
    "StreamingDistributionSummaryList":{
      "type":"list",
      "member":{
        "shape":"StreamingDistributionSummary",
        "locationName":"StreamingDistributionSummary"
      }
    },
    "StreamingLoggingConfig":{
      "type":"structure",
      "required":[
        "Enabled",
        "Bucket",
        "Prefix"
      ],
      "members":{
        "Enabled":{
          "shape":"boolean",
          "documentation":"<p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you do not want to enable logging when you create a streaming distribution or if you want to disable logging for an existing streaming distribution, specify <code>false</code> for <code>Enabled</code>, and specify <code>empty Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code> and <code>Prefix</code>, the values are automatically deleted. </p>"
        },
        "Bucket":{
          "shape":"string",
          "documentation":"<p>The Amazon S3 bucket to store the access logs in, for example, <code>myawslogbucket.s3.amazonaws.com</code>.</p>"
        },
        "Prefix":{
          "shape":"string",
          "documentation":"<p>An optional string that you want CloudFront to prefix to the access log <code>filenames</code> for this streaming distribution, for example, <code>myprefix/</code>. If you want to enable logging, but you do not want to specify a prefix, you still must include an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>"
        }
      },
      "documentation":"<p>A complex type that controls whether access logs are written for this streaming distribution.</p>"
    },
    "Tag":{
      "type":"structure",
      "required":["Key"],
      "members":{
        "Key":{
          "shape":"TagKey",
          "documentation":"<p> A string that contains <code>Tag</code> key.</p> <p>The string length should be between 1 and 128 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>"
        },
        "Value":{
          "shape":"TagValue",
          "documentation":"<p> A string that contains an optional <code>Tag</code> value.</p> <p>The string length should be between 0 and 256 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>"
        }
      },
      "documentation":"<p> A complex type that contains <code>Tag</code> key and <code>Tag</code> value.</p>"
    },
    "TagKey":{
      "type":"string",
      "documentation":"<p> A string that contains <code>Tag</code> key.</p> <p>The string length should be between 1 and 128 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>",
      "max":128,
      "min":1,
      "pattern":"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagKeyList":{
      "type":"list",
      "member":{
        "shape":"TagKey",
        "locationName":"Key"
      }
    },
    "TagKeys":{
      "type":"structure",
      "members":{
        "Items":{
          "shape":"TagKeyList",
          "documentation":"<p> A complex type that contains <code>Tag</code> key elements.</p>"
        }
      },
      "documentation":"<p> A complex type that contains zero or more <code>Tag</code> elements.</p>"
    },
    "TagList":{
      "type":"list",
      "member":{
        "shape":"Tag",
        "locationName":"Tag"
      }
    },
    "TagResourceRequest":{
      "type":"structure",
      "required":[
        "Resource",
        "Tags"
      ],
      "members":{
        "Resource":{
          "shape":"ResourceARN",
          "documentation":"<p> An ARN of a CloudFront resource.</p>",
          "location":"querystring",
          "locationName":"Resource"
        },
        "Tags":{
          "shape":"Tags",
          "documentation":"<p> A complex type that contains zero or more <code>Tag</code> elements.</p>",
          "locationName":"Tags",
          "xmlNamespace":{"uri":"http://cloudfront.amazonaws.com/doc/2016-11-25/"}
        }
      },
      "documentation":"<p> The request to add tags to a CloudFront resource.</p>",
      "payload":"Tags"
    },
    "TagValue":{
      "type":"string",
      "max":256,
      "min":0,
      "pattern":"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "Tags":{
      "type":"structure",
      "members":{
        "Items":{
          "shape":"TagList",
          "documentation":"<p> A complex type that contains <code>Tag</code> elements.</p>"
        }
      },
      "documentation":"<p> A complex type that contains zero or more <code>Tag</code> elements.</p>"
    },
    "TooManyCacheBehaviors":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>You cannot create more cache behaviors for the distribution.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TooManyCertificates":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>You cannot create anymore custom SSL/TLS certificates.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TooManyCloudFrontOriginAccessIdentities":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>Processing your request would cause you to exceed the maximum number of origin access identities allowed.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TooManyCookieNamesInWhiteList":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>Your request contains more cookie names in the whitelist than are allowed per cache behavior.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TooManyDistributionCNAMEs":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>Your request contains more CNAMEs than are allowed per distribution.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TooManyDistributions":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>Processing your request would cause you to exceed the maximum number of distributions allowed.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TooManyDistributionsWithLambdaAssociations":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>Processing your request would cause the maximum number of distributions with Lambda function associations per owner to be exceeded.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TooManyHeadersInForwardedValues":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TooManyInvalidationsInProgress":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>You have exceeded the maximum number of allowable InProgress invalidation batch requests, or invalidation objects.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TooManyLambdaFunctionAssociations":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>Your request contains more Lambda function associations than are allowed per distribution.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TooManyOriginCustomHeaders":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TooManyOrigins":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>You cannot create more origins for the distribution.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TooManyQueryStringParameters":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TooManyStreamingDistributionCNAMEs":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TooManyStreamingDistributions":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>Processing your request would cause you to exceed the maximum number of streaming distributions allowed.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TooManyTrustedSigners":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>Your request contains more trusted signers than are allowed per distribution.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TrustedSignerDoesNotExist":{
      "type":"structure",
      "members":{
        "Message":{"shape":"string"}
      },
      "documentation":"<p>One or more of your trusted signers do not exist.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "TrustedSigners":{
      "type":"structure",
      "required":[
        "Enabled",
        "Quantity"
      ],
      "members":{
        "Enabled":{
          "shape":"boolean",
          "documentation":"<p>Specifies whether you want to require viewers to use signed URLs to access the files specified by <code>PathPattern</code> and <code>TargetOriginId</code>.</p>"
        },
        "Quantity":{
          "shape":"integer",
          "documentation":"<p>The number of trusted signers for this cache behavior.</p>"
        },
        "Items":{
          "shape":"AwsAccountNumberList",
          "documentation":"<p> <b>Optional</b>: A complex type that contains trusted signers for this cache behavior. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>"
        }
      },
      "documentation":"<p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p> <p>For more information about updating the distribution configuration, see <a>DistributionConfig</a> .</p>"
    },
    "UntagResourceRequest":{
      "type":"structure",
      "required":[
        "Resource",
        "TagKeys"
      ],
      "members":{
        "Resource":{
          "shape":"ResourceARN",
          "documentation":"<p> An ARN of a CloudFront resource.</p>",
          "location":"querystring",
          "locationName":"Resource"
        },
        "TagKeys":{
          "shape":"TagKeys",
          "documentation":"<p> A complex type that contains zero or more <code>Tag</code> key elements.</p>",
          "locationName":"TagKeys",
          "xmlNamespace":{"uri":"http://cloudfront.amazonaws.com/doc/2016-11-25/"}
        }
      },
      "documentation":"<p> The request to remove tags from a CloudFront resource.</p>",
      "payload":"TagKeys"
    },
    "UpdateCloudFrontOriginAccessIdentityRequest":{
      "type":"structure",
      "required":[
        "CloudFrontOriginAccessIdentityConfig",
        "Id"
      ],
      "members":{
        "CloudFrontOriginAccessIdentityConfig":{
          "shape":"CloudFrontOriginAccessIdentityConfig",
          "documentation":"<p>The identity's configuration information.</p>",
          "locationName":"CloudFrontOriginAccessIdentityConfig",
          "xmlNamespace":{"uri":"http://cloudfront.amazonaws.com/doc/2016-11-25/"}
        },
        "Id":{
          "shape":"string",
          "documentation":"<p>The identity's id.</p>",
          "location":"uri",
          "locationName":"Id"
        },
        "IfMatch":{
          "shape":"string",
          "documentation":"<p>The value of the <code>ETag</code> header that you received when retrieving the identity's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location":"header",
          "locationName":"If-Match"
        }
      },
      "documentation":"<p>The request to update an origin access identity.</p>",
      "payload":"CloudFrontOriginAccessIdentityConfig"
    },
    "UpdateCloudFrontOriginAccessIdentityResult":{
      "type":"structure",
      "members":{
        "CloudFrontOriginAccessIdentity":{
          "shape":"CloudFrontOriginAccessIdentity",
          "documentation":"<p>The origin access identity's information.</p>"
        },
        "ETag":{
          "shape":"string",
          "documentation":"<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location":"header",
          "locationName":"ETag"
        }
      },
      "documentation":"<p>The returned result of the corresponding request.</p>",
      "payload":"CloudFrontOriginAccessIdentity"
    },
    "UpdateDistributionRequest":{
      "type":"structure",
      "required":[
        "DistributionConfig",
        "Id"
      ],
      "members":{
        "DistributionConfig":{
          "shape":"DistributionConfig",
          "documentation":"<p>The distribution's configuration information.</p>",
          "locationName":"DistributionConfig",
          "xmlNamespace":{"uri":"http://cloudfront.amazonaws.com/doc/2016-11-25/"}
        },
        "Id":{
          "shape":"string",
          "documentation":"<p>The distribution's id.</p>",
          "location":"uri",
          "locationName":"Id"
        },
        "IfMatch":{
          "shape":"string",
          "documentation":"<p>The value of the <code>ETag</code> header that you received when retrieving the distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location":"header",
          "locationName":"If-Match"
        }
      },
      "documentation":"<p>The request to update a distribution.</p>",
      "payload":"DistributionConfig"
    },
    "UpdateDistributionResult":{
      "type":"structure",
      "members":{
        "Distribution":{
          "shape":"Distribution",
          "documentation":"<p>The distribution's information.</p>"
        },
        "ETag":{
          "shape":"string",
          "documentation":"<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location":"header",
          "locationName":"ETag"
        }
      },
      "documentation":"<p>The returned result of the corresponding request.</p>",
      "payload":"Distribution"
    },
    "UpdateStreamingDistributionRequest":{
      "type":"structure",
      "required":[
        "StreamingDistributionConfig",
        "Id"
      ],
      "members":{
        "StreamingDistributionConfig":{
          "shape":"StreamingDistributionConfig",
          "documentation":"<p>The streaming distribution's configuration information.</p>",
          "locationName":"StreamingDistributionConfig",
          "xmlNamespace":{"uri":"http://cloudfront.amazonaws.com/doc/2016-11-25/"}
        },
        "Id":{
          "shape":"string",
          "documentation":"<p>The streaming distribution's id.</p>",
          "location":"uri",
          "locationName":"Id"
        },
        "IfMatch":{
          "shape":"string",
          "documentation":"<p>The value of the <code>ETag</code> header that you received when retrieving the streaming distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location":"header",
          "locationName":"If-Match"
        }
      },
      "documentation":"<p>The request to update a streaming distribution.</p>",
      "payload":"StreamingDistributionConfig"
    },
    "UpdateStreamingDistributionResult":{
      "type":"structure",
      "members":{
        "StreamingDistribution":{
          "shape":"StreamingDistribution",
          "documentation":"<p>The streaming distribution's information.</p>"
        },
        "ETag":{
          "shape":"string",
          "documentation":"<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location":"header",
          "locationName":"ETag"
        }
      },
      "documentation":"<p>The returned result of the corresponding request.</p>",
      "payload":"StreamingDistribution"
    },
    "ViewerCertificate":{
      "type":"structure",
      "members":{
        "CloudFrontDefaultCertificate":{"shape":"boolean"},
        "IAMCertificateId":{"shape":"string"},
        "ACMCertificateArn":{"shape":"string"},
        "SSLSupportMethod":{
          "shape":"SSLSupportMethod",
          "documentation":"<p>If you specify a value for <code>ACMCertificateArn</code> or for <code>IAMCertificateId</code>, you must also specify how you want CloudFront to serve HTTPS requests: using a method that works for all clients or one that works for most clients:</p> <ul> <li> <p> <code>vip</code>: CloudFront uses dedicated IP addresses for your content and can respond to HTTPS requests from any viewer. However, you must request permission to use this feature, and you incur additional monthly charges.</p> </li> <li> <p> <code>sni-only</code>: CloudFront can respond to HTTPS requests from viewers that support Server Name Indication (SNI). All modern browsers support SNI, but some browsers still in use don't support SNI. If some of your users' browsers don't support SNI, we recommend that you do one of the following:</p> <ul> <li> <p>Use the <code>vip</code> option (dedicated IP addresses) instead of <code>sni-only</code>.</p> </li> <li> <p>Use the CloudFront SSL/TLS certificate instead of a custom certificate. This requires that you use the CloudFront domain name of your distribution in the URLs for your objects, for example, <code>https://d111111abcdef8.cloudfront.net/logo.png</code>.</p> </li> <li> <p>If you can control which browser your users use, upgrade the browser to one that supports SNI.</p> </li> <li> <p>Use HTTP instead of HTTPS.</p> </li> </ul> </li> </ul> <p>Do not specify a value for <code>SSLSupportMethod</code> if you specified <code>&lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt;</code>.</p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS.html\">Using Alternate Domain Names and HTTPS</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "MinimumProtocolVersion":{
          "shape":"MinimumProtocolVersion",
          "documentation":"<p>Specify the minimum version of the SSL/TLS protocol that you want CloudFront to use for HTTPS connections between viewers and CloudFront: <code>SSLv3</code> or <code>TLSv1</code>. CloudFront serves your objects only to viewers that support SSL/TLS version that you specify and later versions. The <code>TLSv1</code> protocol is more secure, so we recommend that you specify <code>SSLv3</code> only if your users are using browsers or devices that don't support <code>TLSv1</code>. Note the following:</p> <ul> <li> <p>If you specify &lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt;, the minimum SSL protocol version is <code>TLSv1</code> and can't be changed.</p> </li> <li> <p>If you're using a custom certificate (if you specify a value for <code>ACMCertificateArn</code> or for <code>IAMCertificateId</code>) and if you're using SNI (if you specify <code>sni-only</code> for <code>SSLSupportMethod</code>), you must specify <code>TLSv1</code> for <code>MinimumProtocolVersion</code>.</p> </li> </ul>"
        },
        "Certificate":{
          "shape":"string",
          "documentation":"<p>Include one of these values to specify the following:</p> <ul> <li> <p>Whether you want viewers to use HTTP or HTTPS to request your objects.</p> </li> <li> <p>If you want viewers to use HTTPS, whether you're using an alternate domain name such as example.com or the CloudFront domain name for your distribution, such as <code>d111111abcdef8.cloudfront.net</code>.</p> </li> <li> <p>If you're using an alternate domain name, whether AWS Certificate Manager (ACM) provided the certificate, or you purchased a certificate from a third-party certificate authority and imported it into ACM or uploaded it to the IAM certificate store.</p> </li> </ul> <p>You must specify one (and only one) of the three values. Do not specify <code>false</code> for <code>CloudFrontDefaultCertificate</code>.</p> <p> <b>If you want viewers to use HTTP to request your objects</b>: Specify the following value:</p> <p> <code>&lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt;</code> </p> <p>In addition, specify <code>allow-all</code> for <code>ViewerProtocolPolicy</code> for all of your cache behaviors.</p> <p> <b>If you want viewers to use HTTPS to request your objects</b>: Choose the type of certificate that you want to use based on whether you're using an alternate domain name for your objects or the CloudFront domain name:</p> <ul> <li> <p> <b>If you're using an alternate domain name, such as example.com</b>: Specify one of the following values, depending on whether ACM provided your certificate or you purchased your certificate from third-party certificate authority:</p> <ul> <li> <p> <code>&lt;ACMCertificateArn&gt;ARN for ACM SSL/TLS certificate&lt;ACMCertificateArn&gt;</code> where ARN for ACM SSL/TLS certificate is the ARN for the ACM SSL/TLS certificate that you want to use for this distribution.</p> </li> <li> <p> <code>&lt;IAMCertificateId&gt;IAM certificate ID&lt;IAMCertificateId&gt;</code> where IAM certificate ID is the ID that IAM returned when you added the certificate to the IAM certificate store.</p> </li> </ul> <p>If you specify <code>ACMCertificateArn</code> or <code>IAMCertificateId</code>, you must also specify a value for <code>SSLSupportMethod</code>.</p> <p>If you choose to use an ACM certificate or a certificate in the IAM certificate store, we recommend that you use only an alternate domain name in your object URLs (<code>https://example.com/logo.jpg</code>). If you use the domain name that is associated with your CloudFront distribution (<code>https://d111111abcdef8.cloudfront.net/logo.jpg</code>) and the viewer supports <code>SNI</code>, then CloudFront behaves normally. However, if the browser does not support SNI, the user's experience depends on the value that you choose for <code>SSLSupportMethod</code>:</p> <ul> <li> <p> <code>vip</code>: The viewer displays a warning because there is a mismatch between the CloudFront domain name and the domain name in your SSL/TLS certificate.</p> </li> <li> <p> <code>sni-only</code>: CloudFront drops the connection with the browser without returning the object.</p> </li> </ul> </li> <li> <p> <b>If you're using the CloudFront domain name for your distribution, such as <code>d111111abcdef8.cloudfront.net</code> </b>: Specify the following value:</p> <p> <code> &lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt; </code> </p> <p>If you want viewers to use HTTPS, you must also specify one of the following values in your cache behaviors:</p> <ul> <li> <p> <code> &lt;ViewerProtocolPolicy&gt;https-only&lt;ViewerProtocolPolicy&gt; </code> </p> </li> <li> <p> <code> &lt;ViewerProtocolPolicy&gt;redirect-to-https&lt;ViewerProtocolPolicy&gt; </code> </p> </li> </ul> <p>You can also optionally require that CloudFront use HTTPS to communicate with your origin by specifying one of the following values for the applicable origins:</p> <ul> <li> <p> <code> &lt;OriginProtocolPolicy&gt;https-only&lt;OriginProtocolPolicy&gt; </code> </p> </li> <li> <p> <code> &lt;OriginProtocolPolicy&gt;match-viewer&lt;OriginProtocolPolicy&gt; </code> </p> </li> </ul> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS\">Using Alternate Domain Names and HTTPS</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </li> </ul>",
          "deprecated":true
        },
        "CertificateSource":{
          "shape":"CertificateSource",
          "documentation":"<note> <p>This field is deprecated. You can use one of the following: <code>[ACMCertificateArn</code>, <code>IAMCertificateId</code>, or <code>CloudFrontDefaultCertificate]</code>.</p> </note>",
          "deprecated":true
        }
      },
      "documentation":"<p>A complex type that specifies the following:</p> <ul> <li> <p>Which SSL/TLS certificate to use when viewers request objects using HTTPS</p> </li> <li> <p>Whether you want CloudFront to use dedicated IP addresses or SNI when you're using alternate domain names in your object names</p> </li> <li> <p>The minimum protocol version that you want CloudFront to use when communicating with viewers</p> </li> </ul> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html\">Using an HTTPS Connection to Access Your Objects</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p>"
    },
    "ViewerProtocolPolicy":{
      "type":"string",
      "enum":[
        "allow-all",
        "https-only",
        "redirect-to-https"
      ]
    },
    "boolean":{"type":"boolean"},
    "integer":{"type":"integer"},
    "long":{"type":"long"},
    "string":{"type":"string"},
    "timestamp":{"type":"timestamp"}
  },
  "documentation":"<fullname>Amazon CloudFront</fullname> <p>This is the <i>Amazon CloudFront API Reference</i>. This guide is for developers who need detailed information about the CloudFront API actions, data types, and errors. For detailed information about CloudFront features and their associated API calls, see the <i>Amazon CloudFront Developer Guide</i>.</p>"
}

]===]))
