local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2012-06-01",
    "checksumFormat": "sha256",
    "endpointPrefix": "glacier",
    "protocol": "rest-json",
    "serviceFullName": "Amazon Glacier",
    "serviceId": "Glacier",
    "signatureVersion": "v4",
    "uid": "glacier-2012-06-01"
  },
  "operations": {
    "AbortMultipartUpload": {
      "name": "AbortMultipartUpload",
      "http": {
        "method": "DELETE",
        "requestUri": "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}",
        "responseCode": 204
      },
      "input": {
        "shape": "AbortMultipartUploadInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation aborts a multipart upload identified by the upload ID.</p> <p>After the Abort Multipart Upload request succeeds, you cannot upload any more parts to the multipart upload or complete the multipart upload. Aborting a completed upload fails. However, aborting an already-aborted upload will succeed, for a short time. For more information about uploading a part and completing a multipart upload, see <a>UploadMultipartPart</a> and <a>CompleteMultipartUpload</a>.</p> <p>This operation is idempotent.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html\">Working with Archives in Amazon S3 Glacier</a> and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html\">Abort Multipart Upload</a> in the <i>Amazon Glacier Developer Guide</i>. </p>"
    },
    "AbortVaultLock": {
      "name": "AbortVaultLock",
      "http": {
        "method": "DELETE",
        "requestUri": "/{accountId}/vaults/{vaultName}/lock-policy",
        "responseCode": 204
      },
      "input": {
        "shape": "AbortVaultLockInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation aborts the vault locking process if the vault lock is not in the <code>Locked</code> state. If the vault lock is in the <code>Locked</code> state when this operation is requested, the operation returns an <code>AccessDeniedException</code> error. Aborting the vault locking process removes the vault lock policy from the specified vault. </p> <p>A vault lock is put into the <code>InProgress</code> state by calling <a>InitiateVaultLock</a>. A vault lock is put into the <code>Locked</code> state by calling <a>CompleteVaultLock</a>. You can get the state of a vault lock by calling <a>GetVaultLock</a>. For more information about the vault locking process, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html\">Amazon Glacier Vault Lock</a>. For more information about vault lock policies, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html\">Amazon Glacier Access Control with Vault Lock Policies</a>. </p> <p>This operation is idempotent. You can successfully invoke this operation multiple times, if the vault lock is in the <code>InProgress</code> state or if there is no policy associated with the vault.</p>"
    },
    "AddTagsToVault": {
      "name": "AddTagsToVault",
      "http": {
        "method": "POST",
        "requestUri": "/{accountId}/vaults/{vaultName}/tags?operation=add",
        "responseCode": 204
      },
      "input": {
        "shape": "AddTagsToVaultInput"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation adds the specified tags to a vault. Each tag is composed of a key and a value. Each vault can have up to 10 tags. If your request would cause the tag limit for the vault to be exceeded, the operation throws the <code>LimitExceededException</code> error. If a tag already exists on the vault under a specified key, the existing key value will be overwritten. For more information about tags, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html\">Tagging Amazon S3 Glacier Resources</a>. </p>"
    },
    "CompleteMultipartUpload": {
      "name": "CompleteMultipartUpload",
      "http": {
        "method": "POST",
        "requestUri": "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}",
        "responseCode": 201
      },
      "input": {
        "shape": "CompleteMultipartUploadInput"
      },
      "output": {
        "shape": "ArchiveCreationOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>You call this operation to inform Amazon S3 Glacier (Glacier) that all the archive parts have been uploaded and that Glacier can now assemble the archive from the uploaded parts. After assembling and saving the archive to the vault, Glacier returns the URI path of the newly created archive resource. Using the URI path, you can then access the archive. After you upload an archive, you should save the archive ID returned to retrieve the archive at a later point. You can also get the vault inventory to obtain a list of archive IDs in a vault. For more information, see <a>InitiateJob</a>.</p> <p>In the request, you must include the computed SHA256 tree hash of the entire archive you have uploaded. For information about computing a SHA256 tree hash, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html\">Computing Checksums</a>. On the server side, Glacier also constructs the SHA256 tree hash of the assembled archive. If the values match, Glacier saves the archive to the vault; otherwise, it returns an error, and the operation fails. The <a>ListParts</a> operation returns a list of parts uploaded for a specific multipart upload. It includes checksum information for each uploaded part that can be used to debug a bad checksum issue.</p> <p>Additionally, Glacier also checks for any missing content ranges when assembling the archive, if missing content ranges are found, Glacier returns an error and the operation fails.</p> <p>Complete Multipart Upload is an idempotent operation. After your first successful complete multipart upload, if you call the operation again within a short period, the operation will succeed and return the same archive ID. This is useful in the event you experience a network issue that causes an aborted connection or receive a 500 server error, in which case you can repeat your Complete Multipart Upload request and get the same archive ID without creating duplicate archives. Note, however, that after the multipart upload completes, you cannot call the List Parts operation and the multipart upload will not appear in List Multipart Uploads response, even if idempotent complete is possible.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html\">Uploading Large Archives in Parts (Multipart Upload)</a> and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-complete-upload.html\">Complete Multipart Upload</a> in the <i>Amazon Glacier Developer Guide</i>. </p>"
    },
    "CompleteVaultLock": {
      "name": "CompleteVaultLock",
      "http": {
        "method": "POST",
        "requestUri": "/{accountId}/vaults/{vaultName}/lock-policy/{lockId}",
        "responseCode": 204
      },
      "input": {
        "shape": "CompleteVaultLockInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation completes the vault locking process by transitioning the vault lock from the <code>InProgress</code> state to the <code>Locked</code> state, which causes the vault lock policy to become unchangeable. A vault lock is put into the <code>InProgress</code> state by calling <a>InitiateVaultLock</a>. You can obtain the state of the vault lock by calling <a>GetVaultLock</a>. For more information about the vault locking process, <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html\">Amazon Glacier Vault Lock</a>. </p> <p>This operation is idempotent. This request is always successful if the vault lock is in the <code>Locked</code> state and the provided lock ID matches the lock ID originally used to lock the vault.</p> <p>If an invalid lock ID is passed in the request when the vault lock is in the <code>Locked</code> state, the operation returns an <code>AccessDeniedException</code> error. If an invalid lock ID is passed in the request when the vault lock is in the <code>InProgress</code> state, the operation throws an <code>InvalidParameter</code> error.</p>"
    },
    "CreateVault": {
      "name": "CreateVault",
      "http": {
        "method": "PUT",
        "requestUri": "/{accountId}/vaults/{vaultName}",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateVaultInput"
      },
      "output": {
        "shape": "CreateVaultOutput"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>This operation creates a new vault with the specified name. The name of the vault must be unique within a region for an AWS account. You can create up to 1,000 vaults per account. If you need to create more vaults, contact Amazon S3 Glacier.</p> <p>You must use the following guidelines when naming a vault.</p> <ul> <li> <p>Names can be between 1 and 255 characters long.</p> </li> <li> <p>Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), and '.' (period).</p> </li> </ul> <p>This operation is idempotent.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/creating-vaults.html\">Creating a Vault in Amazon Glacier</a> and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-put.html\">Create Vault </a> in the <i>Amazon Glacier Developer Guide</i>. </p>"
    },
    "DeleteArchive": {
      "name": "DeleteArchive",
      "http": {
        "method": "DELETE",
        "requestUri": "/{accountId}/vaults/{vaultName}/archives/{archiveId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteArchiveInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation deletes an archive from a vault. Subsequent requests to initiate a retrieval of this archive will fail. Archive retrievals that are in progress for this archive ID may or may not succeed according to the following scenarios:</p> <ul> <li> <p>If the archive retrieval job is actively preparing the data for download when Amazon S3 Glacier receives the delete archive request, the archival retrieval operation might fail.</p> </li> <li> <p>If the archive retrieval job has successfully prepared the archive for download when Amazon S3 Glacier receives the delete archive request, you will be able to download the output.</p> </li> </ul> <p>This operation is idempotent. Attempting to delete an already-deleted archive does not result in an error.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-an-archive.html\">Deleting an Archive in Amazon Glacier</a> and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html\">Delete Archive</a> in the <i>Amazon Glacier Developer Guide</i>. </p>"
    },
    "DeleteVault": {
      "name": "DeleteVault",
      "http": {
        "method": "DELETE",
        "requestUri": "/{accountId}/vaults/{vaultName}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteVaultInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation deletes a vault. Amazon S3 Glacier will delete a vault only if there are no archives in the vault as of the last inventory and there have been no writes to the vault since the last inventory. If either of these conditions is not satisfied, the vault deletion fails (that is, the vault is not removed) and Amazon S3 Glacier returns an error. You can use <a>DescribeVault</a> to return the number of archives in a vault, and you can use <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html\">Initiate a Job (POST jobs)</a> to initiate a new inventory retrieval for a vault. The inventory contains the archive IDs you use to delete archives using <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html\">Delete Archive (DELETE archive)</a>.</p> <p>This operation is idempotent.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-vaults.html\">Deleting a Vault in Amazon Glacier</a> and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-delete.html\">Delete Vault </a> in the <i>Amazon S3 Glacier Developer Guide</i>. </p>"
    },
    "DeleteVaultAccessPolicy": {
      "name": "DeleteVaultAccessPolicy",
      "http": {
        "method": "DELETE",
        "requestUri": "/{accountId}/vaults/{vaultName}/access-policy",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteVaultAccessPolicyInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation deletes the access policy associated with the specified vault. The operation is eventually consistent; that is, it might take some time for Amazon S3 Glacier to completely remove the access policy, and you might still see the effect of the policy for a short time after you send the delete request.</p> <p>This operation is idempotent. You can invoke delete multiple times, even if there is no policy associated with the vault. For more information about vault access policies, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html\">Amazon Glacier Access Control with Vault Access Policies</a>. </p>"
    },
    "DeleteVaultNotifications": {
      "name": "DeleteVaultNotifications",
      "http": {
        "method": "DELETE",
        "requestUri": "/{accountId}/vaults/{vaultName}/notification-configuration",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteVaultNotificationsInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation deletes the notification configuration set for a vault. The operation is eventually consistent; that is, it might take some time for Amazon S3 Glacier to completely disable the notifications and you might still receive some notifications for a short time after you send the delete request.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html\">Configuring Vault Notifications in Amazon S3 Glacier</a> and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-delete.html\">Delete Vault Notification Configuration </a> in the Amazon S3 Glacier Developer Guide. </p>"
    },
    "DescribeJob": {
      "name": "DescribeJob",
      "http": {
        "method": "GET",
        "requestUri": "/{accountId}/vaults/{vaultName}/jobs/{jobId}"
      },
      "input": {
        "shape": "DescribeJobInput"
      },
      "output": {
        "shape": "GlacierJobDescription"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation returns information about a job you previously initiated, including the job initiation date, the user who initiated the job, the job status code/message and the Amazon SNS topic to notify after Amazon S3 Glacier (Glacier) completes the job. For more information about initiating a job, see <a>InitiateJob</a>. </p> <note> <p>This operation enables you to check the status of your job. However, it is strongly recommended that you set up an Amazon SNS topic and specify it in your initiate job request so that Glacier can notify the topic after it completes the job.</p> </note> <p>A job ID will not expire for at least 24 hours after Glacier completes the job.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For more information about using this operation, see the documentation for the underlying REST API <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-describe-job-get.html\">Describe Job</a> in the <i>Amazon Glacier Developer Guide</i>. </p>"
    },
    "DescribeVault": {
      "name": "DescribeVault",
      "http": {
        "method": "GET",
        "requestUri": "/{accountId}/vaults/{vaultName}"
      },
      "input": {
        "shape": "DescribeVaultInput"
      },
      "output": {
        "shape": "DescribeVaultOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation returns information about a vault, including the vault's Amazon Resource Name (ARN), the date the vault was created, the number of archives it contains, and the total size of all the archives in the vault. The number of archives and their total size are as of the last inventory generation. This means that if you add or remove an archive from a vault, and then immediately use Describe Vault, the change in contents will not be immediately reflected. If you want to retrieve the latest inventory of the vault, use <a>InitiateJob</a>. Amazon S3 Glacier generates vault inventories approximately daily. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html\">Downloading a Vault Inventory in Amazon S3 Glacier</a>. </p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html\">Retrieving Vault Metadata in Amazon S3 Glacier</a> and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-get.html\">Describe Vault </a> in the <i>Amazon Glacier Developer Guide</i>. </p>"
    },
    "GetDataRetrievalPolicy": {
      "name": "GetDataRetrievalPolicy",
      "http": {
        "method": "GET",
        "requestUri": "/{accountId}/policies/data-retrieval"
      },
      "input": {
        "shape": "GetDataRetrievalPolicyInput"
      },
      "output": {
        "shape": "GetDataRetrievalPolicyOutput"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation returns the current data retrieval policy for the account and region specified in the GET request. For more information about data retrieval policies, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html\">Amazon Glacier Data Retrieval Policies</a>.</p>"
    },
    "GetJobOutput": {
      "name": "GetJobOutput",
      "http": {
        "method": "GET",
        "requestUri": "/{accountId}/vaults/{vaultName}/jobs/{jobId}/output"
      },
      "input": {
        "shape": "GetJobOutputInput"
      },
      "output": {
        "shape": "GetJobOutputOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation downloads the output of the job you initiated using <a>InitiateJob</a>. Depending on the job type you specified when you initiated the job, the output will be either the content of an archive or a vault inventory.</p> <p>You can download all the job output or download a portion of the output by specifying a byte range. In the case of an archive retrieval job, depending on the byte range you specify, Amazon S3 Glacier (Glacier) returns the checksum for the portion of the data. You can compute the checksum on the client and verify that the values match to ensure the portion you downloaded is the correct data.</p> <p>A job ID will not expire for at least 24 hours after Glacier completes the job. That a byte range. For both archive and inventory retrieval jobs, you should verify the downloaded size against the size returned in the headers from the <b>Get Job Output</b> response.</p> <p>For archive retrieval jobs, you should also verify that the size is what you expected. If you download a portion of the output, the expected size is based on the range of bytes you specified. For example, if you specify a range of <code>bytes=0-1048575</code>, you should verify your download size is 1,048,576 bytes. If you download an entire archive, the expected size is the size of the archive when you uploaded it to Amazon S3 Glacier The expected size is also returned in the headers from the <b>Get Job Output</b> response.</p> <p>In the case of an archive retrieval job, depending on the byte range you specify, Glacier returns the checksum for the portion of the data. To ensure the portion you downloaded is the correct data, compute the checksum on the client, verify that the values match, and verify that the size is what you expected.</p> <p>A job ID does not expire for at least 24 hours after Glacier completes the job. That is, you can download the job output within the 24 hours period after Amazon Glacier completes the job.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and the underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html\">Downloading a Vault Inventory</a>, <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/downloading-an-archive.html\">Downloading an Archive</a>, and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-job-output-get.html\">Get Job Output </a> </p>"
    },
    "GetVaultAccessPolicy": {
      "name": "GetVaultAccessPolicy",
      "http": {
        "method": "GET",
        "requestUri": "/{accountId}/vaults/{vaultName}/access-policy"
      },
      "input": {
        "shape": "GetVaultAccessPolicyInput"
      },
      "output": {
        "shape": "GetVaultAccessPolicyOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation retrieves the <code>access-policy</code> subresource set on the vault; for more information on setting this subresource, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-SetVaultAccessPolicy.html\">Set Vault Access Policy (PUT access-policy)</a>. If there is no access policy set on the vault, the operation returns a <code>404 Not found</code> error. For more information about vault access policies, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html\">Amazon Glacier Access Control with Vault Access Policies</a>.</p>"
    },
    "GetVaultLock": {
      "name": "GetVaultLock",
      "http": {
        "method": "GET",
        "requestUri": "/{accountId}/vaults/{vaultName}/lock-policy"
      },
      "input": {
        "shape": "GetVaultLockInput"
      },
      "output": {
        "shape": "GetVaultLockOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation retrieves the following attributes from the <code>lock-policy</code> subresource set on the specified vault: </p> <ul> <li> <p>The vault lock policy set on the vault.</p> </li> <li> <p>The state of the vault lock, which is either <code>InProgess</code> or <code>Locked</code>.</p> </li> <li> <p>When the lock ID expires. The lock ID is used to complete the vault locking process.</p> </li> <li> <p>When the vault lock was initiated and put into the <code>InProgress</code> state.</p> </li> </ul> <p>A vault lock is put into the <code>InProgress</code> state by calling <a>InitiateVaultLock</a>. A vault lock is put into the <code>Locked</code> state by calling <a>CompleteVaultLock</a>. You can abort the vault locking process by calling <a>AbortVaultLock</a>. For more information about the vault locking process, <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html\">Amazon Glacier Vault Lock</a>. </p> <p>If there is no vault lock policy set on the vault, the operation returns a <code>404 Not found</code> error. For more information about vault lock policies, <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html\">Amazon Glacier Access Control with Vault Lock Policies</a>. </p>"
    },
    "GetVaultNotifications": {
      "name": "GetVaultNotifications",
      "http": {
        "method": "GET",
        "requestUri": "/{accountId}/vaults/{vaultName}/notification-configuration"
      },
      "input": {
        "shape": "GetVaultNotificationsInput"
      },
      "output": {
        "shape": "GetVaultNotificationsOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation retrieves the <code>notification-configuration</code> subresource of the specified vault.</p> <p>For information about setting a notification configuration on a vault, see <a>SetVaultNotifications</a>. If a notification configuration for a vault is not set, the operation returns a <code>404 Not Found</code> error. For more information about vault notifications, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html\">Configuring Vault Notifications in Amazon S3 Glacier</a>. </p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html\">Configuring Vault Notifications in Amazon S3 Glacier</a> and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-get.html\">Get Vault Notification Configuration </a> in the <i>Amazon Glacier Developer Guide</i>. </p>"
    },
    "InitiateJob": {
      "name": "InitiateJob",
      "http": {
        "method": "POST",
        "requestUri": "/{accountId}/vaults/{vaultName}/jobs",
        "responseCode": 202
      },
      "input": {
        "shape": "InitiateJobInput"
      },
      "output": {
        "shape": "InitiateJobOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "PolicyEnforcedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "InsufficientCapacityException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation initiates a job of the specified type, which can be a select, an archival retrieval, or a vault retrieval. For more information about using this operation, see the documentation for the underlying REST API <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html\">Initiate a Job</a>. </p>"
    },
    "InitiateMultipartUpload": {
      "name": "InitiateMultipartUpload",
      "http": {
        "method": "POST",
        "requestUri": "/{accountId}/vaults/{vaultName}/multipart-uploads",
        "responseCode": 201
      },
      "input": {
        "shape": "InitiateMultipartUploadInput"
      },
      "output": {
        "shape": "InitiateMultipartUploadOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation initiates a multipart upload. Amazon S3 Glacier creates a multipart upload resource and returns its ID in the response. The multipart upload ID is used in subsequent requests to upload parts of an archive (see <a>UploadMultipartPart</a>).</p> <p>When you initiate a multipart upload, you specify the part size in number of bytes. The part size must be a megabyte (1024 KB) multiplied by a power of 2-for example, 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum allowable part size is 1 MB, and the maximum is 4 GB.</p> <p>Every part you upload to this resource (see <a>UploadMultipartPart</a>), except the last one, must have the same size. The last one can be the same size or smaller. For example, suppose you want to upload a 16.2 MB file. If you initiate the multipart upload with a part size of 4 MB, you will upload four parts of 4 MB each and one part of 0.2 MB. </p> <note> <p>You don't need to know the size of the archive when you start a multipart upload because Amazon S3 Glacier does not require you to specify the overall archive size.</p> </note> <p>After you complete the multipart upload, Amazon S3 Glacier (Glacier) removes the multipart upload resource referenced by the ID. Glacier also removes the multipart upload resource if you cancel the multipart upload or it may be removed if there is no activity for a period of 24 hours.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html\">Uploading Large Archives in Parts (Multipart Upload)</a> and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-initiate-upload.html\">Initiate Multipart Upload</a> in the <i>Amazon Glacier Developer Guide</i>.</p>"
    },
    "InitiateVaultLock": {
      "name": "InitiateVaultLock",
      "http": {
        "method": "POST",
        "requestUri": "/{accountId}/vaults/{vaultName}/lock-policy",
        "responseCode": 201
      },
      "input": {
        "shape": "InitiateVaultLockInput"
      },
      "output": {
        "shape": "InitiateVaultLockOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation initiates the vault locking process by doing the following:</p> <ul> <li> <p>Installing a vault lock policy on the specified vault.</p> </li> <li> <p>Setting the lock state of vault lock to <code>InProgress</code>.</p> </li> <li> <p>Returning a lock ID, which is used to complete the vault locking process.</p> </li> </ul> <p>You can set one vault lock policy for each vault and this policy can be up to 20 KB in size. For more information about vault lock policies, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html\">Amazon Glacier Access Control with Vault Lock Policies</a>. </p> <p>You must complete the vault locking process within 24 hours after the vault lock enters the <code>InProgress</code> state. After the 24 hour window ends, the lock ID expires, the vault automatically exits the <code>InProgress</code> state, and the vault lock policy is removed from the vault. You call <a>CompleteVaultLock</a> to complete the vault locking process by setting the state of the vault lock to <code>Locked</code>. </p> <p>After a vault lock is in the <code>Locked</code> state, you cannot initiate a new vault lock for the vault.</p> <p>You can abort the vault locking process by calling <a>AbortVaultLock</a>. You can get the state of the vault lock by calling <a>GetVaultLock</a>. For more information about the vault locking process, <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html\">Amazon Glacier Vault Lock</a>.</p> <p>If this operation is called when the vault lock is in the <code>InProgress</code> state, the operation returns an <code>AccessDeniedException</code> error. When the vault lock is in the <code>InProgress</code> state you must call <a>AbortVaultLock</a> before you can initiate a new vault lock policy. </p>"
    },
    "ListJobs": {
      "name": "ListJobs",
      "http": {
        "method": "GET",
        "requestUri": "/{accountId}/vaults/{vaultName}/jobs"
      },
      "input": {
        "shape": "ListJobsInput"
      },
      "output": {
        "shape": "ListJobsOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation lists jobs for a vault, including jobs that are in-progress and jobs that have recently finished. The List Job operation returns a list of these jobs sorted by job initiation time.</p> <note> <p>Amazon Glacier retains recently completed jobs for a period before deleting them; however, it eventually removes completed jobs. The output of completed jobs can be retrieved. Retaining completed jobs for a period of time after they have completed enables you to get a job output in the event you miss the job completion notification or your first attempt to download it fails. For example, suppose you start an archive retrieval job to download an archive. After the job completes, you start to download the archive but encounter a network error. In this scenario, you can retry and download the archive while the job exists.</p> </note> <p>The List Jobs operation supports pagination. You should always check the response <code>Marker</code> field. If there are no more jobs to list, the <code>Marker</code> field is set to <code>null</code>. If there are more jobs to list, the <code>Marker</code> field is set to a non-null value, which you can use to continue the pagination of the list. To return a list of jobs that begins at a specific job, set the marker request parameter to the <code>Marker</code> value for that job that you obtained from a previous List Jobs request.</p> <p>You can set a maximum limit for the number of jobs returned in the response by specifying the <code>limit</code> parameter in the request. The default limit is 50. The number of jobs returned might be fewer than the limit, but the number of returned jobs never exceeds the limit.</p> <p>Additionally, you can filter the jobs list returned by specifying the optional <code>statuscode</code> parameter or <code>completed</code> parameter, or both. Using the <code>statuscode</code> parameter, you can specify to return only jobs that match either the <code>InProgress</code>, <code>Succeeded</code>, or <code>Failed</code> status. Using the <code>completed</code> parameter, you can specify to return only jobs that were completed (<code>true</code>) or jobs that were not completed (<code>false</code>).</p> <p>For more information about using this operation, see the documentation for the underlying REST API <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-jobs-get.html\">List Jobs</a>. </p>"
    },
    "ListMultipartUploads": {
      "name": "ListMultipartUploads",
      "http": {
        "method": "GET",
        "requestUri": "/{accountId}/vaults/{vaultName}/multipart-uploads"
      },
      "input": {
        "shape": "ListMultipartUploadsInput"
      },
      "output": {
        "shape": "ListMultipartUploadsOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation lists in-progress multipart uploads for the specified vault. An in-progress multipart upload is a multipart upload that has been initiated by an <a>InitiateMultipartUpload</a> request, but has not yet been completed or aborted. The list returned in the List Multipart Upload response has no guaranteed order. </p> <p>The List Multipart Uploads operation supports pagination. By default, this operation returns up to 50 multipart uploads in the response. You should always check the response for a <code>marker</code> at which to continue the list; if there are no more items the <code>marker</code> is <code>null</code>. To return a list of multipart uploads that begins at a specific upload, set the <code>marker</code> request parameter to the value you obtained from a previous List Multipart Upload request. You can also limit the number of uploads returned in the response by specifying the <code>limit</code> parameter in the request.</p> <p>Note the difference between this operation and listing parts (<a>ListParts</a>). The List Multipart Uploads operation lists all multipart uploads for a vault and does not require a multipart upload ID. The List Parts operation requires a multipart upload ID since parts are associated with a single upload.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and the underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html\">Working with Archives in Amazon S3 Glacier</a> and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-uploads.html\">List Multipart Uploads </a> in the <i>Amazon Glacier Developer Guide</i>.</p>"
    },
    "ListParts": {
      "name": "ListParts",
      "http": {
        "method": "GET",
        "requestUri": "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}"
      },
      "input": {
        "shape": "ListPartsInput"
      },
      "output": {
        "shape": "ListPartsOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation lists the parts of an archive that have been uploaded in a specific multipart upload. You can make this request at any time during an in-progress multipart upload before you complete the upload (see <a>CompleteMultipartUpload</a>. List Parts returns an error for completed uploads. The list returned in the List Parts response is sorted by part range. </p> <p>The List Parts operation supports pagination. By default, this operation returns up to 50 uploaded parts in the response. You should always check the response for a <code>marker</code> at which to continue the list; if there are no more items the <code>marker</code> is <code>null</code>. To return a list of parts that begins at a specific part, set the <code>marker</code> request parameter to the value you obtained from a previous List Parts request. You can also limit the number of parts returned in the response by specifying the <code>limit</code> parameter in the request. </p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and the underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html\">Working with Archives in Amazon S3 Glacier</a> and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-parts.html\">List Parts</a> in the <i>Amazon Glacier Developer Guide</i>.</p>"
    },
    "ListProvisionedCapacity": {
      "name": "ListProvisionedCapacity",
      "http": {
        "method": "GET",
        "requestUri": "/{accountId}/provisioned-capacity"
      },
      "input": {
        "shape": "ListProvisionedCapacityInput"
      },
      "output": {
        "shape": "ListProvisionedCapacityOutput"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation lists the provisioned capacity units for the specified AWS account.</p>"
    },
    "ListTagsForVault": {
      "name": "ListTagsForVault",
      "http": {
        "method": "GET",
        "requestUri": "/{accountId}/vaults/{vaultName}/tags"
      },
      "input": {
        "shape": "ListTagsForVaultInput"
      },
      "output": {
        "shape": "ListTagsForVaultOutput"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation lists all the tags attached to a vault. The operation returns an empty map if there are no tags. For more information about tags, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html\">Tagging Amazon S3 Glacier Resources</a>.</p>"
    },
    "ListVaults": {
      "name": "ListVaults",
      "http": {
        "method": "GET",
        "requestUri": "/{accountId}/vaults"
      },
      "input": {
        "shape": "ListVaultsInput"
      },
      "output": {
        "shape": "ListVaultsOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation lists all vaults owned by the calling user's account. The list returned in the response is ASCII-sorted by vault name.</p> <p>By default, this operation returns up to 10 items. If there are more vaults to list, the response <code>marker</code> field contains the vault Amazon Resource Name (ARN) at which to continue the list with a new List Vaults request; otherwise, the <code>marker</code> field is <code>null</code>. To return a list of vaults that begins at a specific vault, set the <code>marker</code> request parameter to the vault ARN you obtained from a previous List Vaults request. You can also limit the number of vaults returned in the response by specifying the <code>limit</code> parameter in the request. </p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html\">Retrieving Vault Metadata in Amazon S3 Glacier</a> and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vaults-get.html\">List Vaults </a> in the <i>Amazon Glacier Developer Guide</i>. </p>"
    },
    "PurchaseProvisionedCapacity": {
      "name": "PurchaseProvisionedCapacity",
      "http": {
        "method": "POST",
        "requestUri": "/{accountId}/provisioned-capacity",
        "responseCode": 201
      },
      "input": {
        "shape": "PurchaseProvisionedCapacityInput"
      },
      "output": {
        "shape": "PurchaseProvisionedCapacityOutput"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation purchases a provisioned capacity unit for an AWS account. </p>"
    },
    "RemoveTagsFromVault": {
      "name": "RemoveTagsFromVault",
      "http": {
        "method": "POST",
        "requestUri": "/{accountId}/vaults/{vaultName}/tags?operation=remove",
        "responseCode": 204
      },
      "input": {
        "shape": "RemoveTagsFromVaultInput"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation removes one or more tags from the set of tags attached to a vault. For more information about tags, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html\">Tagging Amazon S3 Glacier Resources</a>. This operation is idempotent. The operation will be successful, even if there are no tags attached to the vault. </p>"
    },
    "SetDataRetrievalPolicy": {
      "name": "SetDataRetrievalPolicy",
      "http": {
        "method": "PUT",
        "requestUri": "/{accountId}/policies/data-retrieval",
        "responseCode": 204
      },
      "input": {
        "shape": "SetDataRetrievalPolicyInput"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation sets and then enacts a data retrieval policy in the region specified in the PUT request. You can set one policy per region for an AWS account. The policy is enacted within a few minutes of a successful PUT operation.</p> <p>The set policy operation does not affect retrieval jobs that were in progress before the policy was enacted. For more information about data retrieval policies, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html\">Amazon Glacier Data Retrieval Policies</a>. </p>"
    },
    "SetVaultAccessPolicy": {
      "name": "SetVaultAccessPolicy",
      "http": {
        "method": "PUT",
        "requestUri": "/{accountId}/vaults/{vaultName}/access-policy",
        "responseCode": 204
      },
      "input": {
        "shape": "SetVaultAccessPolicyInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation configures an access policy for a vault and will overwrite an existing policy. To configure a vault access policy, send a PUT request to the <code>access-policy</code> subresource of the vault. An access policy is specific to a vault and is also called a vault subresource. You can set one access policy per vault and the policy can be up to 20 KB in size. For more information about vault access policies, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html\">Amazon Glacier Access Control with Vault Access Policies</a>. </p>"
    },
    "SetVaultNotifications": {
      "name": "SetVaultNotifications",
      "http": {
        "method": "PUT",
        "requestUri": "/{accountId}/vaults/{vaultName}/notification-configuration",
        "responseCode": 204
      },
      "input": {
        "shape": "SetVaultNotificationsInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation configures notifications that will be sent when specific events happen to a vault. By default, you don't get any notifications.</p> <p>To configure vault notifications, send a PUT request to the <code>notification-configuration</code> subresource of the vault. The request should include a JSON document that provides an Amazon SNS topic and specific events for which you want Amazon S3 Glacier to send notifications to the topic.</p> <p>Amazon SNS topics must grant permission to the vault to be allowed to publish notifications to the topic. You can configure a vault to publish a notification for the following vault events:</p> <ul> <li> <p> <b>ArchiveRetrievalCompleted</b> This event occurs when a job that was initiated for an archive retrieval is completed (<a>InitiateJob</a>). The status of the completed job can be \"Succeeded\" or \"Failed\". The notification sent to the SNS topic is the same output as returned from <a>DescribeJob</a>. </p> </li> <li> <p> <b>InventoryRetrievalCompleted</b> This event occurs when a job that was initiated for an inventory retrieval is completed (<a>InitiateJob</a>). The status of the completed job can be \"Succeeded\" or \"Failed\". The notification sent to the SNS topic is the same output as returned from <a>DescribeJob</a>. </p> </li> </ul> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html\">Configuring Vault Notifications in Amazon S3 Glacier</a> and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-put.html\">Set Vault Notification Configuration </a> in the <i>Amazon Glacier Developer Guide</i>. </p>"
    },
    "UploadArchive": {
      "name": "UploadArchive",
      "http": {
        "method": "POST",
        "requestUri": "/{accountId}/vaults/{vaultName}/archives",
        "responseCode": 201
      },
      "input": {
        "shape": "UploadArchiveInput"
      },
      "output": {
        "shape": "ArchiveCreationOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "RequestTimeoutException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation adds an archive to a vault. This is a synchronous operation, and for a successful upload, your data is durably persisted. Amazon S3 Glacier returns the archive ID in the <code>x-amz-archive-id</code> header of the response. </p> <p>You must use the archive ID to access your data in Amazon S3 Glacier. After you upload an archive, you should save the archive ID returned so that you can retrieve or delete the archive later. Besides saving the archive ID, you can also index it and give it a friendly name to allow for better searching. You can also use the optional archive description field to specify how the archive is referred to in an external index of archives, such as you might create in Amazon DynamoDB. You can also get the vault inventory to obtain a list of archive IDs in a vault. For more information, see <a>InitiateJob</a>. </p> <p>You must provide a SHA256 tree hash of the data you are uploading. For information about computing a SHA256 tree hash, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html\">Computing Checksums</a>. </p> <p>You can optionally specify an archive description of up to 1,024 printable ASCII characters. You can get the archive description when you either retrieve the archive or get the vault inventory. For more information, see <a>InitiateJob</a>. Amazon Glacier does not interpret the description in any way. An archive description does not need to be unique. You cannot use the description to retrieve or sort the archive list. </p> <p>Archives are immutable. After you upload an archive, you cannot edit the archive or its description.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-an-archive.html\">Uploading an Archive in Amazon Glacier</a> and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html\">Upload Archive</a> in the <i>Amazon Glacier Developer Guide</i>. </p>"
    },
    "UploadMultipartPart": {
      "name": "UploadMultipartPart",
      "http": {
        "method": "PUT",
        "requestUri": "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}",
        "responseCode": 204
      },
      "input": {
        "shape": "UploadMultipartPartInput"
      },
      "output": {
        "shape": "UploadMultipartPartOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingParameterValueException"
        },
        {
          "shape": "RequestTimeoutException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>This operation uploads a part of an archive. You can upload archive parts in any order. You can also upload them in parallel. You can upload up to 10,000 parts for a multipart upload.</p> <p>Amazon Glacier rejects your upload part request if any of the following conditions is true:</p> <ul> <li> <p> <b>SHA256 tree hash does not match</b>To ensure that part data is not corrupted in transmission, you compute a SHA256 tree hash of the part and include it in your request. Upon receiving the part data, Amazon S3 Glacier also computes a SHA256 tree hash. If these hash values don't match, the operation fails. For information about computing a SHA256 tree hash, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html\">Computing Checksums</a>.</p> </li> <li> <p> <b>Part size does not match</b>The size of each part except the last must match the size specified in the corresponding <a>InitiateMultipartUpload</a> request. The size of the last part must be the same size as, or smaller than, the specified size.</p> <note> <p>If you upload a part whose size is smaller than the part size you specified in your initiate multipart upload request and that part is not the last part, then the upload part request will succeed. However, the subsequent Complete Multipart Upload request will fail.</p> </note> </li> <li> <p> <b>Range does not align</b>The byte range value in the request does not align with the part size specified in the corresponding initiate request. For example, if you specify a part size of 4194304 bytes (4 MB), then 0 to 4194303 bytes (4 MB - 1) and 4194304 (4 MB) to 8388607 (8 MB - 1) are valid part ranges. However, if you set a range value of 2 MB to 6 MB, the range does not align with the part size and the upload will fail. </p> </li> </ul> <p>This operation is idempotent. If you upload the same part multiple times, the data included in the most recent request overwrites the previously uploaded data.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html\">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html\">Uploading Large Archives in Parts (Multipart Upload)</a> and <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-upload-part.html\">Upload Part </a> in the <i>Amazon Glacier Developer Guide</i>.</p>"
    }
  },
  "shapes": {
    "AbortMultipartUploadInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName",
        "uploadId"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "uploadId": {
          "shape": "string",
          "documentation": "<p>The upload ID of the multipart upload to delete.</p>",
          "location": "uri",
          "locationName": "uploadId"
        }
      },
      "documentation": "<p>Provides options to abort a multipart upload identified by the upload ID.</p> <p>For information about the underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html\">Abort Multipart Upload</a>. For conceptual information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html\">Working with Archives in Amazon S3 Glacier</a>.</p>"
    },
    "AbortVaultLockInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        }
      },
      "documentation": "<p>The input values for <code>AbortVaultLock</code>.</p>"
    },
    "AccessControlPolicyList": {
      "type": "list",
      "member": {
        "shape": "Grant"
      }
    },
    "ActionCode": {
      "type": "string",
      "enum": [
        "ArchiveRetrieval",
        "InventoryRetrieval",
        "Select"
      ]
    },
    "AddTagsToVaultInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags to add to the vault. Each tag is composed of a key and a value. The value can be an empty string.</p>"
        }
      },
      "documentation": "<p>The input values for <code>AddTagsToVault</code>.</p>"
    },
    "ArchiveCreationOutput": {
      "type": "structure",
      "members": {
        "location": {
          "shape": "string",
          "documentation": "<p>The relative URI path of the newly added archive resource.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "checksum": {
          "shape": "string",
          "documentation": "<p>The checksum of the archive computed by Amazon S3 Glacier.</p>",
          "location": "header",
          "locationName": "x-amz-sha256-tree-hash"
        },
        "archiveId": {
          "shape": "string",
          "documentation": "<p>The ID of the archive. This value is also included as part of the location.</p>",
          "location": "header",
          "locationName": "x-amz-archive-id"
        }
      },
      "documentation": "<p>Contains the Amazon S3 Glacier response to your request.</p> <p>For information about the underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html\">Upload Archive</a>. For conceptual information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html\">Working with Archives in Amazon S3 Glacier</a>.</p>"
    },
    "CSVInput": {
      "type": "structure",
      "members": {
        "FileHeaderInfo": {
          "shape": "FileHeaderInfo",
          "documentation": "<p>Describes the first line of input. Valid values are <code>None</code>, <code>Ignore</code>, and <code>Use</code>.</p>"
        },
        "Comments": {
          "shape": "string",
          "documentation": "<p>A single character used to indicate that a row should be ignored when the character is present at the start of that row.</p>"
        },
        "QuoteEscapeCharacter": {
          "shape": "string",
          "documentation": "<p>A single character used for escaping the quotation-mark character inside an already escaped value.</p>"
        },
        "RecordDelimiter": {
          "shape": "string",
          "documentation": "<p>A value used to separate individual records from each other.</p>"
        },
        "FieldDelimiter": {
          "shape": "string",
          "documentation": "<p>A value used to separate individual fields from each other within a record.</p>"
        },
        "QuoteCharacter": {
          "shape": "string",
          "documentation": "<p>A value used as an escape character where the field delimiter is part of the value.</p>"
        }
      },
      "documentation": "<p>Contains information about the comma-separated value (CSV) file to select from.</p>"
    },
    "CSVOutput": {
      "type": "structure",
      "members": {
        "QuoteFields": {
          "shape": "QuoteFields",
          "documentation": "<p>A value that indicates whether all output fields should be contained within quotation marks.</p>"
        },
        "QuoteEscapeCharacter": {
          "shape": "string",
          "documentation": "<p>A single character used for escaping the quotation-mark character inside an already escaped value.</p>"
        },
        "RecordDelimiter": {
          "shape": "string",
          "documentation": "<p>A value used to separate individual records from each other.</p>"
        },
        "FieldDelimiter": {
          "shape": "string",
          "documentation": "<p>A value used to separate individual fields from each other within a record.</p>"
        },
        "QuoteCharacter": {
          "shape": "string",
          "documentation": "<p>A value used as an escape character where the field delimiter is part of the value.</p>"
        }
      },
      "documentation": "<p>Contains information about the comma-separated value (CSV) file that the job results are stored in.</p>"
    },
    "CannedACL": {
      "type": "string",
      "enum": [
        "private",
        "public-read",
        "public-read-write",
        "aws-exec-read",
        "authenticated-read",
        "bucket-owner-read",
        "bucket-owner-full-control"
      ]
    },
    "CompleteMultipartUploadInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName",
        "uploadId"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "uploadId": {
          "shape": "string",
          "documentation": "<p>The upload ID of the multipart upload.</p>",
          "location": "uri",
          "locationName": "uploadId"
        },
        "archiveSize": {
          "shape": "string",
          "documentation": "<p>The total size, in bytes, of the entire archive. This value should be the sum of all the sizes of the individual parts that you uploaded.</p>",
          "location": "header",
          "locationName": "x-amz-archive-size"
        },
        "checksum": {
          "shape": "string",
          "documentation": "<p>The SHA256 tree hash of the entire archive. It is the tree hash of SHA256 tree hash of the individual parts. If the value you specify in the request does not match the SHA256 tree hash of the final assembled archive as computed by Amazon S3 Glacier (Glacier), Glacier returns an error and the request fails.</p>",
          "location": "header",
          "locationName": "x-amz-sha256-tree-hash"
        }
      },
      "documentation": "<p>Provides options to complete a multipart upload operation. This informs Amazon Glacier that all the archive parts have been uploaded and Amazon S3 Glacier (Glacier) can now assemble the archive from the uploaded parts. After assembling and saving the archive to the vault, Glacier returns the URI path of the newly created archive resource.</p>"
    },
    "CompleteVaultLockInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName",
        "lockId"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "lockId": {
          "shape": "string",
          "documentation": "<p>The <code>lockId</code> value is the lock ID obtained from a <a>InitiateVaultLock</a> request.</p>",
          "location": "uri",
          "locationName": "lockId"
        }
      },
      "documentation": "<p>The input values for <code>CompleteVaultLock</code>.</p>"
    },
    "CreateVaultInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        }
      },
      "documentation": "<p>Provides options to create a vault.</p>"
    },
    "CreateVaultOutput": {
      "type": "structure",
      "members": {
        "location": {
          "shape": "string",
          "documentation": "<p>The URI of the vault that was created.</p>",
          "location": "header",
          "locationName": "Location"
        }
      },
      "documentation": "<p>Contains the Amazon S3 Glacier response to your request.</p>"
    },
    "DataRetrievalPolicy": {
      "type": "structure",
      "members": {
        "Rules": {
          "shape": "DataRetrievalRulesList",
          "documentation": "<p>The policy rule. Although this is a list type, currently there must be only one rule, which contains a Strategy field and optionally a BytesPerHour field.</p>"
        }
      },
      "documentation": "<p>Data retrieval policy.</p>"
    },
    "DataRetrievalRule": {
      "type": "structure",
      "members": {
        "Strategy": {
          "shape": "string",
          "documentation": "<p>The type of data retrieval policy to set.</p> <p>Valid values: BytesPerHour|FreeTier|None</p>"
        },
        "BytesPerHour": {
          "shape": "NullableLong",
          "documentation": "<p>The maximum number of bytes that can be retrieved in an hour.</p> <p>This field is required only if the value of the Strategy field is <code>BytesPerHour</code>. Your PUT operation will be rejected if the Strategy field is not set to <code>BytesPerHour</code> and you set this field.</p>"
        }
      },
      "documentation": "<p>Data retrieval policy rule.</p>"
    },
    "DataRetrievalRulesList": {
      "type": "list",
      "member": {
        "shape": "DataRetrievalRule"
      }
    },
    "DateTime": {
      "type": "string"
    },
    "DeleteArchiveInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName",
        "archiveId"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "archiveId": {
          "shape": "string",
          "documentation": "<p>The ID of the archive to delete.</p>",
          "location": "uri",
          "locationName": "archiveId"
        }
      },
      "documentation": "<p>Provides options for deleting an archive from an Amazon S3 Glacier vault.</p>"
    },
    "DeleteVaultAccessPolicyInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        }
      },
      "documentation": "<p>DeleteVaultAccessPolicy input.</p>"
    },
    "DeleteVaultInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        }
      },
      "documentation": "<p>Provides options for deleting a vault from Amazon S3 Glacier.</p>"
    },
    "DeleteVaultNotificationsInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        }
      },
      "documentation": "<p>Provides options for deleting a vault notification configuration from an Amazon Glacier vault.</p>"
    },
    "DescribeJobInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName",
        "jobId"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "jobId": {
          "shape": "string",
          "documentation": "<p>The ID of the job to describe.</p>",
          "location": "uri",
          "locationName": "jobId"
        }
      },
      "documentation": "<p>Provides options for retrieving a job description.</p>"
    },
    "DescribeVaultInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        }
      },
      "documentation": "<p>Provides options for retrieving metadata for a specific vault in Amazon Glacier.</p>"
    },
    "DescribeVaultOutput": {
      "type": "structure",
      "members": {
        "VaultARN": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) of the vault.</p>"
        },
        "VaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>"
        },
        "CreationDate": {
          "shape": "string",
          "documentation": "<p>The Universal Coordinated Time (UTC) date when the vault was created. This value should be a string in the ISO 8601 date format, for example <code>2012-03-20T17:03:43.221Z</code>.</p>"
        },
        "LastInventoryDate": {
          "shape": "string",
          "documentation": "<p>The Universal Coordinated Time (UTC) date when Amazon S3 Glacier completed the last vault inventory. This value should be a string in the ISO 8601 date format, for example <code>2012-03-20T17:03:43.221Z</code>.</p>"
        },
        "NumberOfArchives": {
          "shape": "long",
          "documentation": "<p>The number of archives in the vault as of the last inventory date. This field will return <code>null</code> if an inventory has not yet run on the vault, for example if you just created the vault.</p>"
        },
        "SizeInBytes": {
          "shape": "long",
          "documentation": "<p>Total size, in bytes, of the archives in the vault as of the last inventory date. This field will return null if an inventory has not yet run on the vault, for example if you just created the vault.</p>"
        }
      },
      "documentation": "<p>Contains the Amazon S3 Glacier response to your request.</p>"
    },
    "Encryption": {
      "type": "structure",
      "members": {
        "EncryptionType": {
          "shape": "EncryptionType",
          "documentation": "<p>The server-side encryption algorithm used when storing job results in Amazon S3, for example <code>AES256</code> or <code>aws:kms</code>.</p>"
        },
        "KMSKeyId": {
          "shape": "string",
          "documentation": "<p>The AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS fail if not made by using Secure Sockets Layer (SSL) or Signature Version 4. </p>"
        },
        "KMSContext": {
          "shape": "string",
          "documentation": "<p>Optional. If the encryption type is <code>aws:kms</code>, you can use this value to specify the encryption context for the job results.</p>"
        }
      },
      "documentation": "<p>Contains information about the encryption used to store the job results in Amazon S3. </p>"
    },
    "EncryptionType": {
      "type": "string",
      "enum": [
        "aws:kms",
        "AES256"
      ]
    },
    "ExpressionType": {
      "type": "string",
      "enum": [
        "SQL"
      ]
    },
    "FileHeaderInfo": {
      "type": "string",
      "enum": [
        "USE",
        "IGNORE",
        "NONE"
      ]
    },
    "GetDataRetrievalPolicyInput": {
      "type": "structure",
      "required": [
        "accountId"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID. </p>",
          "location": "uri",
          "locationName": "accountId"
        }
      },
      "documentation": "<p>Input for GetDataRetrievalPolicy.</p>"
    },
    "GetDataRetrievalPolicyOutput": {
      "type": "structure",
      "members": {
        "Policy": {
          "shape": "DataRetrievalPolicy",
          "documentation": "<p>Contains the returned data retrieval policy in JSON format.</p>"
        }
      },
      "documentation": "<p>Contains the Amazon S3 Glacier response to the <code>GetDataRetrievalPolicy</code> request.</p>"
    },
    "GetJobOutputInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName",
        "jobId"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "jobId": {
          "shape": "string",
          "documentation": "<p>The job ID whose data is downloaded.</p>",
          "location": "uri",
          "locationName": "jobId"
        },
        "range": {
          "shape": "string",
          "documentation": "<p>The range of bytes to retrieve from the output. For example, if you want to download the first 1,048,576 bytes, specify the range as <code>bytes=0-1048575</code>. By default, this operation downloads the entire output.</p> <p>If the job output is large, then you can use a range to retrieve a portion of the output. This allows you to download the entire output in smaller chunks of bytes. For example, suppose you have 1 GB of job output you want to download and you decide to download 128 MB chunks of data at a time, which is a total of eight Get Job Output requests. You use the following process to download the job output:</p> <ol> <li> <p>Download a 128 MB chunk of output by specifying the appropriate byte range. Verify that all 128 MB of data was received.</p> </li> <li> <p>Along with the data, the response includes a SHA256 tree hash of the payload. You compute the checksum of the payload on the client and compare it with the checksum you received in the response to ensure you received all the expected data.</p> </li> <li> <p>Repeat steps 1 and 2 for all the eight 128 MB chunks of output data, each time specifying the appropriate byte range.</p> </li> <li> <p>After downloading all the parts of the job output, you have a list of eight checksum values. Compute the tree hash of these values to find the checksum of the entire output. Using the <a>DescribeJob</a> API, obtain job information of the job that provided you the output. The response includes the checksum of the entire archive stored in Amazon S3 Glacier. You compare this value with the checksum you computed to ensure you have downloaded the entire archive content with no errors.</p> <p/> </li> </ol>",
          "location": "header",
          "locationName": "Range"
        }
      },
      "documentation": "<p>Provides options for downloading output of an Amazon S3 Glacier job.</p>"
    },
    "GetJobOutputOutput": {
      "type": "structure",
      "members": {
        "body": {
          "shape": "Stream",
          "documentation": "<p>The job data, either archive data or inventory data.</p>"
        },
        "checksum": {
          "shape": "string",
          "documentation": "<p>The checksum of the data in the response. This header is returned only when retrieving the output for an archive retrieval job. Furthermore, this header appears only under the following conditions:</p> <ul> <li> <p>You get the entire range of the archive.</p> </li> <li> <p>You request a range to return of the archive that starts and ends on a multiple of 1 MB. For example, if you have an 3.1 MB archive and you specify a range to return that starts at 1 MB and ends at 2 MB, then the x-amz-sha256-tree-hash is returned as a response header.</p> </li> <li> <p>You request a range of the archive to return that starts on a multiple of 1 MB and goes to the end of the archive. For example, if you have a 3.1 MB archive and you specify a range that starts at 2 MB and ends at 3.1 MB (the end of the archive), then the x-amz-sha256-tree-hash is returned as a response header.</p> </li> </ul>",
          "location": "header",
          "locationName": "x-amz-sha256-tree-hash"
        },
        "status": {
          "shape": "httpstatus",
          "documentation": "<p>The HTTP response code for a job output request. The value depends on whether a range was specified in the request.</p>",
          "location": "statusCode"
        },
        "contentRange": {
          "shape": "string",
          "documentation": "<p>The range of bytes returned by Amazon S3 Glacier. If only partial output is downloaded, the response provides the range of bytes Amazon S3 Glacier returned. For example, bytes 0-1048575/8388608 returns the first 1 MB from 8 MB.</p>",
          "location": "header",
          "locationName": "Content-Range"
        },
        "acceptRanges": {
          "shape": "string",
          "documentation": "<p>Indicates the range units accepted. For more information, see <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html\">RFC2616</a>. </p>",
          "location": "header",
          "locationName": "Accept-Ranges"
        },
        "contentType": {
          "shape": "string",
          "documentation": "<p>The Content-Type depends on whether the job output is an archive or a vault inventory. For archive data, the Content-Type is application/octet-stream. For vault inventory, if you requested CSV format when you initiated the job, the Content-Type is text/csv. Otherwise, by default, vault inventory is returned as JSON, and the Content-Type is application/json.</p>",
          "location": "header",
          "locationName": "Content-Type"
        },
        "archiveDescription": {
          "shape": "string",
          "documentation": "<p>The description of an archive.</p>",
          "location": "header",
          "locationName": "x-amz-archive-description"
        }
      },
      "documentation": "<p>Contains the Amazon S3 Glacier response to your request.</p>",
      "payload": "body"
    },
    "GetVaultAccessPolicyInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        }
      },
      "documentation": "<p>Input for GetVaultAccessPolicy.</p>"
    },
    "GetVaultAccessPolicyOutput": {
      "type": "structure",
      "members": {
        "policy": {
          "shape": "VaultAccessPolicy",
          "documentation": "<p>Contains the returned vault access policy as a JSON string.</p>"
        }
      },
      "documentation": "<p>Output for GetVaultAccessPolicy.</p>",
      "payload": "policy"
    },
    "GetVaultLockInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        }
      },
      "documentation": "<p>The input values for <code>GetVaultLock</code>.</p>"
    },
    "GetVaultLockOutput": {
      "type": "structure",
      "members": {
        "Policy": {
          "shape": "string",
          "documentation": "<p>The vault lock policy as a JSON string, which uses \"\\\" as an escape character.</p>"
        },
        "State": {
          "shape": "string",
          "documentation": "<p>The state of the vault lock. <code>InProgress</code> or <code>Locked</code>.</p>"
        },
        "ExpirationDate": {
          "shape": "string",
          "documentation": "<p>The UTC date and time at which the lock ID expires. This value can be <code>null</code> if the vault lock is in a <code>Locked</code> state.</p>"
        },
        "CreationDate": {
          "shape": "string",
          "documentation": "<p>The UTC date and time at which the vault lock was put into the <code>InProgress</code> state.</p>"
        }
      },
      "documentation": "<p>Contains the Amazon S3 Glacier response to your request.</p>"
    },
    "GetVaultNotificationsInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        }
      },
      "documentation": "<p>Provides options for retrieving the notification configuration set on an Amazon Glacier vault.</p>"
    },
    "GetVaultNotificationsOutput": {
      "type": "structure",
      "members": {
        "vaultNotificationConfig": {
          "shape": "VaultNotificationConfig",
          "documentation": "<p>Returns the notification configuration set on the vault.</p>"
        }
      },
      "documentation": "<p>Contains the Amazon S3 Glacier response to your request.</p>",
      "payload": "vaultNotificationConfig"
    },
    "GlacierJobDescription": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "string",
          "documentation": "<p>An opaque string that identifies an Amazon S3 Glacier job.</p>"
        },
        "JobDescription": {
          "shape": "string",
          "documentation": "<p>The job description provided when initiating the job.</p>"
        },
        "Action": {
          "shape": "ActionCode",
          "documentation": "<p>The job type. This value is either <code>ArchiveRetrieval</code>, <code>InventoryRetrieval</code>, or <code>Select</code>. </p>"
        },
        "ArchiveId": {
          "shape": "string",
          "documentation": "<p>The archive ID requested for a select job or archive retrieval. Otherwise, this field is null.</p>"
        },
        "VaultARN": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) of the vault from which an archive retrieval was requested.</p>"
        },
        "CreationDate": {
          "shape": "string",
          "documentation": "<p>The UTC date when the job was created. This value is a string representation of ISO 8601 date format, for example <code>\"2012-03-20T17:03:43.221Z\"</code>.</p>"
        },
        "Completed": {
          "shape": "boolean",
          "documentation": "<p>The job status. When a job is completed, you get the job's output using Get Job Output (GET output).</p>"
        },
        "StatusCode": {
          "shape": "StatusCode",
          "documentation": "<p>The status code can be <code>InProgress</code>, <code>Succeeded</code>, or <code>Failed</code>, and indicates the status of the job.</p>"
        },
        "StatusMessage": {
          "shape": "string",
          "documentation": "<p>A friendly message that describes the job status.</p>"
        },
        "ArchiveSizeInBytes": {
          "shape": "Size",
          "documentation": "<p>For an archive retrieval job, this value is the size in bytes of the archive being requested for download. For an inventory retrieval or select job, this value is null.</p>"
        },
        "InventorySizeInBytes": {
          "shape": "Size",
          "documentation": "<p>For an inventory retrieval job, this value is the size in bytes of the inventory requested for download. For an archive retrieval or select job, this value is null.</p>"
        },
        "SNSTopic": {
          "shape": "string",
          "documentation": "<p>An Amazon SNS topic that receives notification.</p>"
        },
        "CompletionDate": {
          "shape": "string",
          "documentation": "<p>The UTC time that the job request completed. While the job is in progress, the value is null.</p>"
        },
        "SHA256TreeHash": {
          "shape": "string",
          "documentation": "<p>For an archive retrieval job, this value is the checksum of the archive. Otherwise, this value is null.</p> <p>The SHA256 tree hash value for the requested range of an archive. If the <b>InitiateJob</b> request for an archive specified a tree-hash aligned range, then this field returns a value.</p> <p>If the whole archive is retrieved, this value is the same as the ArchiveSHA256TreeHash value.</p> <p>This field is null for the following:</p> <ul> <li> <p>Archive retrieval jobs that specify a range that is not tree-hash aligned</p> </li> </ul> <ul> <li> <p>Archival jobs that specify a range that is equal to the whole archive, when the job status is <code>InProgress</code> </p> </li> </ul> <ul> <li> <p>Inventory jobs</p> </li> <li> <p>Select jobs</p> </li> </ul>"
        },
        "ArchiveSHA256TreeHash": {
          "shape": "string",
          "documentation": "<p>The SHA256 tree hash of the entire archive for an archive retrieval. For inventory retrieval or select jobs, this field is null.</p>"
        },
        "RetrievalByteRange": {
          "shape": "string",
          "documentation": "<p>The retrieved byte range for archive retrieval jobs in the form <i>StartByteValue</i>-<i>EndByteValue</i>. If no range was specified in the archive retrieval, then the whole archive is retrieved. In this case, <i>StartByteValue</i> equals 0 and <i>EndByteValue</i> equals the size of the archive minus 1. For inventory retrieval or select jobs, this field is null. </p>"
        },
        "Tier": {
          "shape": "string",
          "documentation": "<p>The tier to use for a select or an archive retrieval. Valid values are <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>. <code>Standard</code> is the default.</p>"
        },
        "InventoryRetrievalParameters": {
          "shape": "InventoryRetrievalJobDescription",
          "documentation": "<p>Parameters used for range inventory retrieval.</p>"
        },
        "JobOutputPath": {
          "shape": "string",
          "documentation": "<p>Contains the job output location.</p>"
        },
        "SelectParameters": {
          "shape": "SelectParameters",
          "documentation": "<p>Contains the parameters used for a select.</p>"
        },
        "OutputLocation": {
          "shape": "OutputLocation",
          "documentation": "<p>Contains the location where the data from the select job is stored.</p>"
        }
      },
      "documentation": "<p>Contains the description of an Amazon S3 Glacier job.</p>"
    },
    "Grant": {
      "type": "structure",
      "members": {
        "Grantee": {
          "shape": "Grantee",
          "documentation": "<p>The grantee.</p>"
        },
        "Permission": {
          "shape": "Permission",
          "documentation": "<p>Specifies the permission given to the grantee. </p>"
        }
      },
      "documentation": "<p>Contains information about a grant.</p>"
    },
    "Grantee": {
      "type": "structure",
      "required": [
        "Type"
      ],
      "members": {
        "Type": {
          "shape": "Type",
          "documentation": "<p>Type of grantee</p>"
        },
        "DisplayName": {
          "shape": "string",
          "documentation": "<p>Screen name of the grantee.</p>"
        },
        "URI": {
          "shape": "string",
          "documentation": "<p>URI of the grantee group.</p>"
        },
        "ID": {
          "shape": "string",
          "documentation": "<p>The canonical user ID of the grantee.</p>"
        },
        "EmailAddress": {
          "shape": "string",
          "documentation": "<p>Email address of the grantee.</p>"
        }
      },
      "documentation": "<p>Contains information about the grantee.</p>"
    },
    "InitiateJobInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "jobParameters": {
          "shape": "JobParameters",
          "documentation": "<p>Provides options for specifying job information.</p>"
        }
      },
      "documentation": "<p>Provides options for initiating an Amazon S3 Glacier job.</p>",
      "payload": "jobParameters"
    },
    "InitiateJobOutput": {
      "type": "structure",
      "members": {
        "location": {
          "shape": "string",
          "documentation": "<p>The relative URI path of the job.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "jobId": {
          "shape": "string",
          "documentation": "<p>The ID of the job.</p>",
          "location": "header",
          "locationName": "x-amz-job-id"
        },
        "jobOutputPath": {
          "shape": "string",
          "documentation": "<p>The path to the location of where the select results are stored.</p>",
          "location": "header",
          "locationName": "x-amz-job-output-path"
        }
      },
      "documentation": "<p>Contains the Amazon S3 Glacier response to your request.</p>"
    },
    "InitiateMultipartUploadInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "archiveDescription": {
          "shape": "string",
          "documentation": "<p>The archive description that you are uploading in parts.</p> <p>The part size must be a megabyte (1024 KB) multiplied by a power of 2, for example 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum allowable part size is 1 MB, and the maximum is 4 GB (4096 MB).</p>",
          "location": "header",
          "locationName": "x-amz-archive-description"
        },
        "partSize": {
          "shape": "string",
          "documentation": "<p>The size of each part except the last, in bytes. The last part can be smaller than this part size.</p>",
          "location": "header",
          "locationName": "x-amz-part-size"
        }
      },
      "documentation": "<p>Provides options for initiating a multipart upload to an Amazon S3 Glacier vault.</p>"
    },
    "InitiateMultipartUploadOutput": {
      "type": "structure",
      "members": {
        "location": {
          "shape": "string",
          "documentation": "<p>The relative URI path of the multipart upload ID Amazon S3 Glacier created.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "uploadId": {
          "shape": "string",
          "documentation": "<p>The ID of the multipart upload. This value is also included as part of the location.</p>",
          "location": "header",
          "locationName": "x-amz-multipart-upload-id"
        }
      },
      "documentation": "<p>The Amazon S3 Glacier response to your request.</p>"
    },
    "InitiateVaultLockInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "policy": {
          "shape": "VaultLockPolicy",
          "documentation": "<p>The vault lock policy as a JSON string, which uses \"\\\" as an escape character.</p>"
        }
      },
      "documentation": "<p>The input values for <code>InitiateVaultLock</code>.</p>",
      "payload": "policy"
    },
    "InitiateVaultLockOutput": {
      "type": "structure",
      "members": {
        "lockId": {
          "shape": "string",
          "documentation": "<p>The lock ID, which is used to complete the vault locking process.</p>",
          "location": "header",
          "locationName": "x-amz-lock-id"
        }
      },
      "documentation": "<p>Contains the Amazon S3 Glacier response to your request.</p>"
    },
    "InputSerialization": {
      "type": "structure",
      "members": {
        "csv": {
          "shape": "CSVInput",
          "documentation": "<p>Describes the serialization of a CSV-encoded object.</p>"
        }
      },
      "documentation": "<p>Describes how the archive is serialized.</p>"
    },
    "InventoryRetrievalJobDescription": {
      "type": "structure",
      "members": {
        "Format": {
          "shape": "string",
          "documentation": "<p>The output format for the vault inventory list, which is set by the <b>InitiateJob</b> request when initiating a job to retrieve a vault inventory. Valid values are <code>CSV</code> and <code>JSON</code>.</p>"
        },
        "StartDate": {
          "shape": "DateTime",
          "documentation": "<p>The start of the date range in Universal Coordinated Time (UTC) for vault inventory retrieval that includes archives created on or after this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>"
        },
        "EndDate": {
          "shape": "DateTime",
          "documentation": "<p>The end of the date range in UTC for vault inventory retrieval that includes archives created before this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>"
        },
        "Limit": {
          "shape": "string",
          "documentation": "<p>The maximum number of inventory items returned per vault inventory retrieval request. This limit is set when initiating the job with the a <b>InitiateJob</b> request. </p>"
        },
        "Marker": {
          "shape": "string",
          "documentation": "<p>An opaque string that represents where to continue pagination of the vault inventory retrieval results. You use the marker in a new <b>InitiateJob</b> request to obtain additional inventory items. If there are no more inventory items, this value is <code>null</code>. For more information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html#api-initiate-job-post-vault-inventory-list-filtering\"> Range Inventory Retrieval</a>.</p>"
        }
      },
      "documentation": "<p>Describes the options for a range inventory retrieval job.</p>"
    },
    "InventoryRetrievalJobInput": {
      "type": "structure",
      "members": {
        "StartDate": {
          "shape": "string",
          "documentation": "<p>The start of the date range in UTC for vault inventory retrieval that includes archives created on or after this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>"
        },
        "EndDate": {
          "shape": "string",
          "documentation": "<p>The end of the date range in UTC for vault inventory retrieval that includes archives created before this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>"
        },
        "Limit": {
          "shape": "string",
          "documentation": "<p>Specifies the maximum number of inventory items returned per vault inventory retrieval request. Valid values are greater than or equal to 1.</p>"
        },
        "Marker": {
          "shape": "string",
          "documentation": "<p>An opaque string that represents where to continue pagination of the vault inventory retrieval results. You use the marker in a new <b>InitiateJob</b> request to obtain additional inventory items. If there are no more inventory items, this value is <code>null</code>.</p>"
        }
      },
      "documentation": "<p>Provides options for specifying a range inventory retrieval job.</p>"
    },
    "JobList": {
      "type": "list",
      "member": {
        "shape": "GlacierJobDescription"
      }
    },
    "JobParameters": {
      "type": "structure",
      "members": {
        "Format": {
          "shape": "string",
          "documentation": "<p>When initiating a job to retrieve a vault inventory, you can optionally add this parameter to your request to specify the output format. If you are initiating an inventory job and do not specify a Format field, JSON is the default format. Valid values are \"CSV\" and \"JSON\".</p>"
        },
        "Type": {
          "shape": "string",
          "documentation": "<p>The job type. You can initiate a job to perform a select query on an archive, retrieve an archive, or get an inventory of a vault. Valid values are \"select\", \"archive-retrieval\" and \"inventory-retrieval\".</p>"
        },
        "ArchiveId": {
          "shape": "string",
          "documentation": "<p>The ID of the archive that you want to retrieve. This field is required only if <code>Type</code> is set to <code>select</code> or <code>archive-retrieval</code>code&gt;. An error occurs if you specify this request parameter for an inventory retrieval job request. </p>"
        },
        "Description": {
          "shape": "string",
          "documentation": "<p>The optional description for the job. The description must be less than or equal to 1,024 bytes. The allowable characters are 7-bit ASCII without control codes-specifically, ASCII values 32-126 decimal or 0x20-0x7E hexadecimal.</p>"
        },
        "SNSTopic": {
          "shape": "string",
          "documentation": "<p>The Amazon SNS topic ARN to which Amazon S3 Glacier sends a notification when the job is completed and the output is ready for you to download. The specified topic publishes the notification to its subscribers. The SNS topic must exist.</p>"
        },
        "RetrievalByteRange": {
          "shape": "string",
          "documentation": "<p>The byte range to retrieve for an archive retrieval. in the form \"<i>StartByteValue</i>-<i>EndByteValue</i>\" If not specified, the whole archive is retrieved. If specified, the byte range must be megabyte (1024*1024) aligned which means that <i>StartByteValue</i> must be divisible by 1 MB and <i>EndByteValue</i> plus 1 must be divisible by 1 MB or be the end of the archive specified as the archive byte size value minus 1. If RetrievalByteRange is not megabyte aligned, this operation returns a 400 response. </p> <p>An error occurs if you specify this field for an inventory retrieval job request.</p>"
        },
        "Tier": {
          "shape": "string",
          "documentation": "<p>The tier to use for a select or an archive retrieval job. Valid values are <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>. <code>Standard</code> is the default.</p>"
        },
        "InventoryRetrievalParameters": {
          "shape": "InventoryRetrievalJobInput",
          "documentation": "<p>Input parameters used for range inventory retrieval.</p>"
        },
        "SelectParameters": {
          "shape": "SelectParameters",
          "documentation": "<p>Contains the parameters that define a job.</p>"
        },
        "OutputLocation": {
          "shape": "OutputLocation",
          "documentation": "<p>Contains information about the location where the select job results are stored.</p>"
        }
      },
      "documentation": "<p>Provides options for defining a job.</p>"
    },
    "ListJobsInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "limit": {
          "shape": "string",
          "documentation": "<p>The maximum number of jobs to be returned. The default limit is 50. The number of jobs returned might be fewer than the specified limit, but the number of returned jobs never exceeds the limit.</p>",
          "location": "querystring",
          "locationName": "limit"
        },
        "marker": {
          "shape": "string",
          "documentation": "<p>An opaque string used for pagination. This value specifies the job at which the listing of jobs should begin. Get the marker value from a previous List Jobs response. You only need to include the marker if you are continuing the pagination of results started in a previous List Jobs request.</p>",
          "location": "querystring",
          "locationName": "marker"
        },
        "statuscode": {
          "shape": "string",
          "documentation": "<p>The type of job status to return. You can specify the following values: <code>InProgress</code>, <code>Succeeded</code>, or <code>Failed</code>.</p>",
          "location": "querystring",
          "locationName": "statuscode"
        },
        "completed": {
          "shape": "string",
          "documentation": "<p>The state of the jobs to return. You can specify <code>true</code> or <code>false</code>.</p>",
          "location": "querystring",
          "locationName": "completed"
        }
      },
      "documentation": "<p>Provides options for retrieving a job list for an Amazon S3 Glacier vault.</p>"
    },
    "ListJobsOutput": {
      "type": "structure",
      "members": {
        "JobList": {
          "shape": "JobList",
          "documentation": "<p>A list of job objects. Each job object contains metadata describing the job.</p>"
        },
        "Marker": {
          "shape": "string",
          "documentation": "<p> An opaque string used for pagination that specifies the job at which the listing of jobs should begin. You get the <code>marker</code> value from a previous List Jobs response. You only need to include the marker if you are continuing the pagination of the results started in a previous List Jobs request. </p>"
        }
      },
      "documentation": "<p>Contains the Amazon S3 Glacier response to your request.</p>"
    },
    "ListMultipartUploadsInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "marker": {
          "shape": "string",
          "documentation": "<p>An opaque string used for pagination. This value specifies the upload at which the listing of uploads should begin. Get the marker value from a previous List Uploads response. You need only include the marker if you are continuing the pagination of results started in a previous List Uploads request.</p>",
          "location": "querystring",
          "locationName": "marker"
        },
        "limit": {
          "shape": "string",
          "documentation": "<p>Specifies the maximum number of uploads returned in the response body. If this value is not specified, the List Uploads operation returns up to 50 uploads.</p>",
          "location": "querystring",
          "locationName": "limit"
        }
      },
      "documentation": "<p>Provides options for retrieving list of in-progress multipart uploads for an Amazon Glacier vault.</p>"
    },
    "ListMultipartUploadsOutput": {
      "type": "structure",
      "members": {
        "UploadsList": {
          "shape": "UploadsList",
          "documentation": "<p>A list of in-progress multipart uploads.</p>"
        },
        "Marker": {
          "shape": "string",
          "documentation": "<p>An opaque string that represents where to continue pagination of the results. You use the marker in a new List Multipart Uploads request to obtain more uploads in the list. If there are no more uploads, this value is <code>null</code>.</p>"
        }
      },
      "documentation": "<p>Contains the Amazon S3 Glacier response to your request.</p>"
    },
    "ListPartsInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName",
        "uploadId"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "uploadId": {
          "shape": "string",
          "documentation": "<p>The upload ID of the multipart upload.</p>",
          "location": "uri",
          "locationName": "uploadId"
        },
        "marker": {
          "shape": "string",
          "documentation": "<p>An opaque string used for pagination. This value specifies the part at which the listing of parts should begin. Get the marker value from the response of a previous List Parts response. You need only include the marker if you are continuing the pagination of results started in a previous List Parts request.</p>",
          "location": "querystring",
          "locationName": "marker"
        },
        "limit": {
          "shape": "string",
          "documentation": "<p>The maximum number of parts to be returned. The default limit is 50. The number of parts returned might be fewer than the specified limit, but the number of returned parts never exceeds the limit.</p>",
          "location": "querystring",
          "locationName": "limit"
        }
      },
      "documentation": "<p>Provides options for retrieving a list of parts of an archive that have been uploaded in a specific multipart upload.</p>"
    },
    "ListPartsOutput": {
      "type": "structure",
      "members": {
        "MultipartUploadId": {
          "shape": "string",
          "documentation": "<p>The ID of the upload to which the parts are associated.</p>"
        },
        "VaultARN": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) of the vault to which the multipart upload was initiated.</p>"
        },
        "ArchiveDescription": {
          "shape": "string",
          "documentation": "<p>The description of the archive that was specified in the Initiate Multipart Upload request.</p>"
        },
        "PartSizeInBytes": {
          "shape": "long",
          "documentation": "<p>The part size in bytes. This is the same value that you specified in the Initiate Multipart Upload request.</p>"
        },
        "CreationDate": {
          "shape": "string",
          "documentation": "<p>The UTC time at which the multipart upload was initiated.</p>"
        },
        "Parts": {
          "shape": "PartList",
          "documentation": "<p>A list of the part sizes of the multipart upload. Each object in the array contains a <code>RangeBytes</code> and <code>sha256-tree-hash</code> name/value pair.</p>"
        },
        "Marker": {
          "shape": "string",
          "documentation": "<p>An opaque string that represents where to continue pagination of the results. You use the marker in a new List Parts request to obtain more jobs in the list. If there are no more parts, this value is <code>null</code>.</p>"
        }
      },
      "documentation": "<p>Contains the Amazon S3 Glacier response to your request.</p>"
    },
    "ListProvisionedCapacityInput": {
      "type": "structure",
      "required": [
        "accountId"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '-' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, don't include any hyphens ('-') in the ID. </p>",
          "location": "uri",
          "locationName": "accountId"
        }
      }
    },
    "ListProvisionedCapacityOutput": {
      "type": "structure",
      "members": {
        "ProvisionedCapacityList": {
          "shape": "ProvisionedCapacityList",
          "documentation": "<p>The response body contains the following JSON fields.</p>"
        }
      }
    },
    "ListTagsForVaultInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        }
      },
      "documentation": "<p>The input value for <code>ListTagsForVaultInput</code>.</p>"
    },
    "ListTagsForVaultOutput": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags attached to the vault. Each tag is composed of a key and a value.</p>"
        }
      },
      "documentation": "<p>Contains the Amazon S3 Glacier response to your request.</p>"
    },
    "ListVaultsInput": {
      "type": "structure",
      "required": [
        "accountId"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "marker": {
          "shape": "string",
          "documentation": "<p>A string used for pagination. The marker specifies the vault ARN after which the listing of vaults should begin.</p>",
          "location": "querystring",
          "locationName": "marker"
        },
        "limit": {
          "shape": "string",
          "documentation": "<p>The maximum number of vaults to be returned. The default limit is 10. The number of vaults returned might be fewer than the specified limit, but the number of returned vaults never exceeds the limit.</p>",
          "location": "querystring",
          "locationName": "limit"
        }
      },
      "documentation": "<p>Provides options to retrieve the vault list owned by the calling user's account. The list provides metadata information for each vault.</p>"
    },
    "ListVaultsOutput": {
      "type": "structure",
      "members": {
        "VaultList": {
          "shape": "VaultList",
          "documentation": "<p>List of vaults.</p>"
        },
        "Marker": {
          "shape": "string",
          "documentation": "<p>The vault ARN at which to continue pagination of the results. You use the marker in another List Vaults request to obtain more vaults in the list.</p>"
        }
      },
      "documentation": "<p>Contains the Amazon S3 Glacier response to your request.</p>"
    },
    "NotificationEventList": {
      "type": "list",
      "member": {
        "shape": "string"
      }
    },
    "NullableLong": {
      "type": "long"
    },
    "OutputLocation": {
      "type": "structure",
      "members": {
        "S3": {
          "shape": "S3Location",
          "documentation": "<p>Describes an S3 location that will receive the results of the job request.</p>"
        }
      },
      "documentation": "<p>Contains information about the location where the select job results are stored.</p>"
    },
    "OutputSerialization": {
      "type": "structure",
      "members": {
        "csv": {
          "shape": "CSVOutput",
          "documentation": "<p>Describes the serialization of CSV-encoded query results.</p>"
        }
      },
      "documentation": "<p>Describes how the select output is serialized.</p>"
    },
    "PartList": {
      "type": "list",
      "member": {
        "shape": "PartListElement"
      }
    },
    "PartListElement": {
      "type": "structure",
      "members": {
        "RangeInBytes": {
          "shape": "string",
          "documentation": "<p>The byte range of a part, inclusive of the upper value of the range.</p>"
        },
        "SHA256TreeHash": {
          "shape": "string",
          "documentation": "<p>The SHA256 tree hash value that Amazon S3 Glacier calculated for the part. This field is never <code>null</code>.</p>"
        }
      },
      "documentation": "<p>A list of the part sizes of the multipart upload.</p>"
    },
    "Permission": {
      "type": "string",
      "enum": [
        "FULL_CONTROL",
        "WRITE",
        "WRITE_ACP",
        "READ",
        "READ_ACP"
      ]
    },
    "ProvisionedCapacityDescription": {
      "type": "structure",
      "members": {
        "CapacityId": {
          "shape": "string",
          "documentation": "<p>The ID that identifies the provisioned capacity unit.</p>"
        },
        "StartDate": {
          "shape": "string",
          "documentation": "<p>The date that the provisioned capacity unit was purchased, in Universal Coordinated Time (UTC).</p>"
        },
        "ExpirationDate": {
          "shape": "string",
          "documentation": "<p>The date that the provisioned capacity unit expires, in Universal Coordinated Time (UTC).</p>"
        }
      },
      "documentation": "<p>The definition for a provisioned capacity unit.</p>"
    },
    "ProvisionedCapacityList": {
      "type": "list",
      "member": {
        "shape": "ProvisionedCapacityDescription"
      }
    },
    "PurchaseProvisionedCapacityInput": {
      "type": "structure",
      "required": [
        "accountId"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '-' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, don't include any hyphens ('-') in the ID. </p>",
          "location": "uri",
          "locationName": "accountId"
        }
      }
    },
    "PurchaseProvisionedCapacityOutput": {
      "type": "structure",
      "members": {
        "capacityId": {
          "shape": "string",
          "documentation": "<p>The ID that identifies the provisioned capacity unit.</p>",
          "location": "header",
          "locationName": "x-amz-capacity-id"
        }
      }
    },
    "QuoteFields": {
      "type": "string",
      "enum": [
        "ALWAYS",
        "ASNEEDED"
      ]
    },
    "RemoveTagsFromVaultInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A list of tag keys. Each corresponding tag is removed from the vault.</p>"
        }
      },
      "documentation": "<p>The input value for <code>RemoveTagsFromVaultInput</code>.</p>"
    },
    "S3Location": {
      "type": "structure",
      "members": {
        "BucketName": {
          "shape": "string",
          "documentation": "<p>The name of the Amazon S3 bucket where the job results are stored.</p>"
        },
        "Prefix": {
          "shape": "string",
          "documentation": "<p>The prefix that is prepended to the results for this request.</p>"
        },
        "Encryption": {
          "shape": "Encryption",
          "documentation": "<p>Contains information about the encryption used to store the job results in Amazon S3.</p>"
        },
        "CannedACL": {
          "shape": "CannedACL",
          "documentation": "<p>The canned access control list (ACL) to apply to the job results.</p>"
        },
        "AccessControlList": {
          "shape": "AccessControlPolicyList",
          "documentation": "<p>A list of grants that control access to the staged results.</p>"
        },
        "Tagging": {
          "shape": "hashmap",
          "documentation": "<p>The tag-set that is applied to the job results.</p>"
        },
        "UserMetadata": {
          "shape": "hashmap",
          "documentation": "<p>A map of metadata to store with the job results in Amazon S3.</p>"
        },
        "StorageClass": {
          "shape": "StorageClass",
          "documentation": "<p>The storage class used to store the job results.</p>"
        }
      },
      "documentation": "<p>Contains information about the location in Amazon S3 where the select job results are stored.</p>"
    },
    "SelectParameters": {
      "type": "structure",
      "members": {
        "InputSerialization": {
          "shape": "InputSerialization",
          "documentation": "<p>Describes the serialization format of the object.</p>"
        },
        "ExpressionType": {
          "shape": "ExpressionType",
          "documentation": "<p>The type of the provided expression, for example <code>SQL</code>.</p>"
        },
        "Expression": {
          "shape": "string",
          "documentation": "<p>The expression that is used to select the object.</p>"
        },
        "OutputSerialization": {
          "shape": "OutputSerialization",
          "documentation": "<p>Describes how the results of the select job are serialized.</p>"
        }
      },
      "documentation": "<p>Contains information about the parameters used for a select.</p>"
    },
    "SetDataRetrievalPolicyInput": {
      "type": "structure",
      "required": [
        "accountId"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "Policy": {
          "shape": "DataRetrievalPolicy",
          "documentation": "<p>The data retrieval policy in JSON format.</p>"
        }
      },
      "documentation": "<p>SetDataRetrievalPolicy input.</p>"
    },
    "SetVaultAccessPolicyInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "policy": {
          "shape": "VaultAccessPolicy",
          "documentation": "<p>The vault access policy as a JSON string.</p>"
        }
      },
      "documentation": "<p>SetVaultAccessPolicy input.</p>",
      "payload": "policy"
    },
    "SetVaultNotificationsInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "vaultNotificationConfig": {
          "shape": "VaultNotificationConfig",
          "documentation": "<p>Provides options for specifying notification configuration.</p>"
        }
      },
      "documentation": "<p>Provides options to configure notifications that will be sent when specific events happen to a vault.</p>",
      "payload": "vaultNotificationConfig"
    },
    "Size": {
      "type": "long"
    },
    "StatusCode": {
      "type": "string",
      "enum": [
        "InProgress",
        "Succeeded",
        "Failed"
      ]
    },
    "StorageClass": {
      "type": "string",
      "enum": [
        "STANDARD",
        "REDUCED_REDUNDANCY",
        "STANDARD_IA"
      ]
    },
    "Stream": {
      "type": "blob",
      "streaming": true
    },
    "TagKey": {
      "type": "string"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "string"
      }
    },
    "TagMap": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      }
    },
    "TagValue": {
      "type": "string"
    },
    "Type": {
      "type": "string",
      "enum": [
        "AmazonCustomerByEmail",
        "CanonicalUser",
        "Group"
      ]
    },
    "UploadArchiveInput": {
      "type": "structure",
      "required": [
        "vaultName",
        "accountId"
      ],
      "members": {
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "archiveDescription": {
          "shape": "string",
          "documentation": "<p>The optional description of the archive you are uploading.</p>",
          "location": "header",
          "locationName": "x-amz-archive-description"
        },
        "checksum": {
          "shape": "string",
          "documentation": "<p>The SHA256 tree hash of the data being uploaded.</p>",
          "location": "header",
          "locationName": "x-amz-sha256-tree-hash"
        },
        "body": {
          "shape": "Stream",
          "documentation": "<p>The data to upload.</p>"
        }
      },
      "documentation": "<p>Provides options to add an archive to a vault.</p>",
      "payload": "body"
    },
    "UploadListElement": {
      "type": "structure",
      "members": {
        "MultipartUploadId": {
          "shape": "string",
          "documentation": "<p>The ID of a multipart upload.</p>"
        },
        "VaultARN": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) of the vault that contains the archive.</p>"
        },
        "ArchiveDescription": {
          "shape": "string",
          "documentation": "<p>The description of the archive that was specified in the Initiate Multipart Upload request.</p>"
        },
        "PartSizeInBytes": {
          "shape": "long",
          "documentation": "<p>The part size, in bytes, specified in the Initiate Multipart Upload request. This is the size of all the parts in the upload except the last part, which may be smaller than this size.</p>"
        },
        "CreationDate": {
          "shape": "string",
          "documentation": "<p>The UTC time at which the multipart upload was initiated.</p>"
        }
      },
      "documentation": "<p>A list of in-progress multipart uploads for a vault.</p>"
    },
    "UploadMultipartPartInput": {
      "type": "structure",
      "required": [
        "accountId",
        "vaultName",
        "uploadId"
      ],
      "members": {
        "accountId": {
          "shape": "string",
          "documentation": "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "vaultName": {
          "shape": "string",
          "documentation": "<p>The name of the vault.</p>",
          "location": "uri",
          "locationName": "vaultName"
        },
        "uploadId": {
          "shape": "string",
          "documentation": "<p>The upload ID of the multipart upload.</p>",
          "location": "uri",
          "locationName": "uploadId"
        },
        "checksum": {
          "shape": "string",
          "documentation": "<p>The SHA256 tree hash of the data being uploaded.</p>",
          "location": "header",
          "locationName": "x-amz-sha256-tree-hash"
        },
        "range": {
          "shape": "string",
          "documentation": "<p>Identifies the range of bytes in the assembled archive that will be uploaded in this part. Amazon S3 Glacier uses this information to assemble the archive in the proper sequence. The format of this header follows RFC 2616. An example header is Content-Range:bytes 0-4194303/*.</p>",
          "location": "header",
          "locationName": "Content-Range"
        },
        "body": {
          "shape": "Stream",
          "documentation": "<p>The data to upload.</p>"
        }
      },
      "documentation": "<p>Provides options to upload a part of an archive in a multipart upload operation.</p>",
      "payload": "body"
    },
    "UploadMultipartPartOutput": {
      "type": "structure",
      "members": {
        "checksum": {
          "shape": "string",
          "documentation": "<p>The SHA256 tree hash that Amazon S3 Glacier computed for the uploaded part.</p>",
          "location": "header",
          "locationName": "x-amz-sha256-tree-hash"
        }
      },
      "documentation": "<p>Contains the Amazon S3 Glacier response to your request.</p>"
    },
    "UploadsList": {
      "type": "list",
      "member": {
        "shape": "UploadListElement"
      }
    },
    "VaultAccessPolicy": {
      "type": "structure",
      "members": {
        "Policy": {
          "shape": "string",
          "documentation": "<p>The vault access policy.</p>"
        }
      },
      "documentation": "<p>Contains the vault access policy.</p>"
    },
    "VaultList": {
      "type": "list",
      "member": {
        "shape": "DescribeVaultOutput"
      }
    },
    "VaultLockPolicy": {
      "type": "structure",
      "members": {
        "Policy": {
          "shape": "string",
          "documentation": "<p>The vault lock policy.</p>"
        }
      },
      "documentation": "<p>Contains the vault lock policy.</p>"
    },
    "VaultNotificationConfig": {
      "type": "structure",
      "members": {
        "SNSTopic": {
          "shape": "string",
          "documentation": "<p>The Amazon Simple Notification Service (Amazon SNS) topic Amazon Resource Name (ARN).</p>"
        },
        "Events": {
          "shape": "NotificationEventList",
          "documentation": "<p>A list of one or more events for which Amazon S3 Glacier will send a notification to the specified Amazon SNS topic.</p>"
        }
      },
      "documentation": "<p>Represents a vault's notification configuration.</p>"
    },
    "boolean": {
      "type": "boolean"
    },
    "hashmap": {
      "type": "map",
      "key": {
        "shape": "string"
      },
      "value": {
        "shape": "string"
      }
    },
    "httpstatus": {
      "type": "integer"
    },
    "long": {
      "type": "long"
    },
    "string": {
      "type": "string"
    }
  },
  "documentation": "<p> Amazon S3 Glacier (Glacier) is a storage solution for \"cold data.\"</p> <p>Glacier is an extremely low-cost storage service that provides secure, durable, and easy-to-use storage for data backup and archival. With Glacier, customers can store their data cost effectively for months, years, or decades. Glacier also enables customers to offload the administrative burdens of operating and scaling storage to AWS, so they don't have to worry about capacity planning, hardware provisioning, data replication, hardware failure and recovery, or time-consuming hardware migrations.</p> <p>Glacier is a great storage choice when low storage cost is paramount and your data is rarely retrieved. If your application requires fast or frequent access to your data, consider using Amazon S3. For more information, see <a href=\"http://aws.amazon.com/s3/\">Amazon Simple Storage Service (Amazon S3)</a>.</p> <p>You can store any kind of data in any format. There is no maximum limit on the total amount of data you can store in Glacier.</p> <p>If you are a first-time user of Glacier, we recommend that you begin by reading the following sections in the <i>Amazon S3 Glacier Developer Guide</i>:</p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/introduction.html\">What is Amazon S3 Glacier</a> - This section of the Developer Guide describes the underlying data model, the operations it supports, and the AWS SDKs that you can use to interact with the service.</p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/amazon-glacier-getting-started.html\">Getting Started with Amazon S3 Glacier</a> - The Getting Started section walks you through the process of creating a vault, uploading archives, creating jobs to download archives, retrieving the job output, and deleting archives.</p> </li> </ul>"
}
]===]))
