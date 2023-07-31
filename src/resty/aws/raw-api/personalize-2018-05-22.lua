local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-05-22",
    "endpointPrefix": "personalize",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "Amazon Personalize",
    "serviceId": "Personalize",
    "signatureVersion": "v4",
    "signingName": "personalize",
    "targetPrefix": "AmazonPersonalize",
    "uid": "personalize-2018-05-22"
  },
  "operations": {
    "CreateBatchInferenceJob": {
      "name": "CreateBatchInferenceJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateBatchInferenceJobRequest"
      },
      "output": {
        "shape": "CreateBatchInferenceJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Creates a batch inference job. The operation can handle up to 50 million records and the input file must be in JSON format. For more information, see <a>recommendations-batch</a>.</p>"
    },
    "CreateCampaign": {
      "name": "CreateCampaign",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateCampaignRequest"
      },
      "output": {
        "shape": "CreateCampaignResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Creates a campaign by deploying a solution version. When a client calls the <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html\">GetRecommendations</a> and <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetPersonalizedRanking.html\">GetPersonalizedRanking</a> APIs, a campaign is specified in the request.</p> <p> <b>Minimum Provisioned TPS and Auto-Scaling</b> </p> <p>A transaction is a single <code>GetRecommendations</code> or <code>GetPersonalizedRanking</code> call. Transactions per second (TPS) is the throughput and unit of billing for Amazon Personalize. The minimum provisioned TPS (<code>minProvisionedTPS</code>) specifies the baseline throughput provisioned by Amazon Personalize, and thus, the minimum billing charge. If your TPS increases beyond <code>minProvisionedTPS</code>, Amazon Personalize auto-scales the provisioned capacity up and down, but never below <code>minProvisionedTPS</code>, to maintain a 70% utilization. There's a short time delay while the capacity is increased that might cause loss of transactions. It's recommended to start with a low <code>minProvisionedTPS</code>, track your usage using Amazon CloudWatch metrics, and then increase the <code>minProvisionedTPS</code> as necessary.</p> <p> <b>Status</b> </p> <p>A campaign can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING &gt; DELETE IN_PROGRESS</p> </li> </ul> <p>To get the campaign status, call <a>DescribeCampaign</a>.</p> <note> <p>Wait until the <code>status</code> of the campaign is <code>ACTIVE</code> before asking the campaign for recommendations.</p> </note> <p class=\"title\"> <b>Related APIs</b> </p> <ul> <li> <p> <a>ListCampaigns</a> </p> </li> <li> <p> <a>DescribeCampaign</a> </p> </li> <li> <p> <a>UpdateCampaign</a> </p> </li> <li> <p> <a>DeleteCampaign</a> </p> </li> </ul>",
      "idempotent": true
    },
    "CreateDataset": {
      "name": "CreateDataset",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDatasetRequest"
      },
      "output": {
        "shape": "CreateDatasetResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Creates an empty dataset and adds it to the specified dataset group. Use <a>CreateDatasetImportJob</a> to import your training data to a dataset.</p> <p>There are three types of datasets:</p> <ul> <li> <p>Interactions</p> </li> <li> <p>Items</p> </li> <li> <p>Users</p> </li> </ul> <p>Each dataset type has an associated schema with required field types. Only the <code>Interactions</code> dataset is required in order to train a model (also referred to as creating a solution).</p> <p>A dataset can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING &gt; DELETE IN_PROGRESS</p> </li> </ul> <p>To get the status of the dataset, call <a>DescribeDataset</a>.</p> <p class=\"title\"> <b>Related APIs</b> </p> <ul> <li> <p> <a>CreateDatasetGroup</a> </p> </li> <li> <p> <a>ListDatasets</a> </p> </li> <li> <p> <a>DescribeDataset</a> </p> </li> <li> <p> <a>DeleteDataset</a> </p> </li> </ul>",
      "idempotent": true
    },
    "CreateDatasetGroup": {
      "name": "CreateDatasetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDatasetGroupRequest"
      },
      "output": {
        "shape": "CreateDatasetGroupResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates an empty dataset group. A dataset group contains related datasets that supply data for training a model. A dataset group can contain at most three datasets, one for each type of dataset:</p> <ul> <li> <p>Interactions</p> </li> <li> <p>Items</p> </li> <li> <p>Users</p> </li> </ul> <p>To train a model (create a solution), a dataset group that contains an <code>Interactions</code> dataset is required. Call <a>CreateDataset</a> to add a dataset to the group.</p> <p>A dataset group can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING</p> </li> </ul> <p>To get the status of the dataset group, call <a>DescribeDatasetGroup</a>. If the status shows as CREATE FAILED, the response includes a <code>failureReason</code> key, which describes why the creation failed.</p> <note> <p>You must wait until the <code>status</code> of the dataset group is <code>ACTIVE</code> before adding a dataset to the group.</p> </note> <p>You can specify an AWS Key Management Service (KMS) key to encrypt the datasets in the group. If you specify a KMS key, you must also include an AWS Identity and Access Management (IAM) role that has permission to access the key.</p> <p class=\"title\"> <b>APIs that require a dataset group ARN in the request</b> </p> <ul> <li> <p> <a>CreateDataset</a> </p> </li> <li> <p> <a>CreateEventTracker</a> </p> </li> <li> <p> <a>CreateSolution</a> </p> </li> </ul> <p class=\"title\"> <b>Related APIs</b> </p> <ul> <li> <p> <a>ListDatasetGroups</a> </p> </li> <li> <p> <a>DescribeDatasetGroup</a> </p> </li> <li> <p> <a>DeleteDatasetGroup</a> </p> </li> </ul>"
    },
    "CreateDatasetImportJob": {
      "name": "CreateDatasetImportJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDatasetImportJobRequest"
      },
      "output": {
        "shape": "CreateDatasetImportJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Creates a job that imports training data from your data source (an Amazon S3 bucket) to an Amazon Personalize dataset. To allow Amazon Personalize to import the training data, you must specify an AWS Identity and Access Management (IAM) role that has permission to read from the data source, as Amazon Personalize makes a copy of your data and processes it in an internal AWS system.</p> <important> <p>The dataset import job replaces any previous data in the dataset.</p> </important> <p> <b>Status</b> </p> <p>A dataset import job can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> </ul> <p>To get the status of the import job, call <a>DescribeDatasetImportJob</a>, providing the Amazon Resource Name (ARN) of the dataset import job. The dataset import is complete when the status shows as ACTIVE. If the status shows as CREATE FAILED, the response includes a <code>failureReason</code> key, which describes why the job failed.</p> <note> <p>Importing takes time. You must wait until the status shows as ACTIVE before training a model using the dataset.</p> </note> <p class=\"title\"> <b>Related APIs</b> </p> <ul> <li> <p> <a>ListDatasetImportJobs</a> </p> </li> <li> <p> <a>DescribeDatasetImportJob</a> </p> </li> </ul>"
    },
    "CreateEventTracker": {
      "name": "CreateEventTracker",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateEventTrackerRequest"
      },
      "output": {
        "shape": "CreateEventTrackerResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Creates an event tracker that you use when sending event data to the specified dataset group using the <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html\">PutEvents</a> API.</p> <p>When Amazon Personalize creates an event tracker, it also creates an <i>event-interactions</i> dataset in the dataset group associated with the event tracker. The event-interactions dataset stores the event data from the <code>PutEvents</code> call. The contents of this dataset are not available to the user.</p> <note> <p>Only one event tracker can be associated with a dataset group. You will get an error if you call <code>CreateEventTracker</code> using the same dataset group as an existing event tracker.</p> </note> <p>When you send event data you include your tracking ID. The tracking ID identifies the customer and authorizes the customer to send the data.</p> <p>The event tracker can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING &gt; DELETE IN_PROGRESS</p> </li> </ul> <p>To get the status of the event tracker, call <a>DescribeEventTracker</a>.</p> <note> <p>The event tracker must be in the ACTIVE state before using the tracking ID.</p> </note> <p class=\"title\"> <b>Related APIs</b> </p> <ul> <li> <p> <a>ListEventTrackers</a> </p> </li> <li> <p> <a>DescribeEventTracker</a> </p> </li> <li> <p> <a>DeleteEventTracker</a> </p> </li> </ul>",
      "idempotent": true
    },
    "CreateFilter": {
      "name": "CreateFilter",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateFilterRequest"
      },
      "output": {
        "shape": "CreateFilterResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a recommendation filter. For more information, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filters.html\">Using Filters with Amazon Personalize</a>.</p>"
    },
    "CreateSchema": {
      "name": "CreateSchema",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateSchemaRequest"
      },
      "output": {
        "shape": "CreateSchemaResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates an Amazon Personalize schema from the specified schema string. The schema you create must be in Avro JSON format.</p> <p>Amazon Personalize recognizes three schema variants. Each schema is associated with a dataset type and has a set of required field and keywords. You specify a schema when you call <a>CreateDataset</a>.</p> <p class=\"title\"> <b>Related APIs</b> </p> <ul> <li> <p> <a>ListSchemas</a> </p> </li> <li> <p> <a>DescribeSchema</a> </p> </li> <li> <p> <a>DeleteSchema</a> </p> </li> </ul>",
      "idempotent": true
    },
    "CreateSolution": {
      "name": "CreateSolution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateSolutionRequest"
      },
      "output": {
        "shape": "CreateSolutionResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Creates the configuration for training a model. A trained model is known as a solution. After the configuration is created, you train the model (create a solution) by calling the <a>CreateSolutionVersion</a> operation. Every time you call <code>CreateSolutionVersion</code>, a new version of the solution is created.</p> <p>After creating a solution version, you check its accuracy by calling <a>GetSolutionMetrics</a>. When you are satisfied with the version, you deploy it using <a>CreateCampaign</a>. The campaign provides recommendations to a client through the <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html\">GetRecommendations</a> API.</p> <p>To train a model, Amazon Personalize requires training data and a recipe. The training data comes from the dataset group that you provide in the request. A recipe specifies the training algorithm and a feature transformation. You can specify one of the predefined recipes provided by Amazon Personalize. Alternatively, you can specify <code>performAutoML</code> and Amazon Personalize will analyze your data and select the optimum USER_PERSONALIZATION recipe for you.</p> <p> <b>Status</b> </p> <p>A solution can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING &gt; DELETE IN_PROGRESS</p> </li> </ul> <p>To get the status of the solution, call <a>DescribeSolution</a>. Wait until the status shows as ACTIVE before calling <code>CreateSolutionVersion</code>.</p> <p class=\"title\"> <b>Related APIs</b> </p> <ul> <li> <p> <a>ListSolutions</a> </p> </li> <li> <p> <a>CreateSolutionVersion</a> </p> </li> <li> <p> <a>DescribeSolution</a> </p> </li> <li> <p> <a>DeleteSolution</a> </p> </li> </ul> <ul> <li> <p> <a>ListSolutionVersions</a> </p> </li> <li> <p> <a>DescribeSolutionVersion</a> </p> </li> </ul>"
    },
    "CreateSolutionVersion": {
      "name": "CreateSolutionVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateSolutionVersionRequest"
      },
      "output": {
        "shape": "CreateSolutionVersionResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Trains or retrains an active solution. A solution is created using the <a>CreateSolution</a> operation and must be in the ACTIVE state before calling <code>CreateSolutionVersion</code>. A new version of the solution is created every time you call this operation.</p> <p> <b>Status</b> </p> <p>A solution version can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> </ul> <p>To get the status of the version, call <a>DescribeSolutionVersion</a>. Wait until the status shows as ACTIVE before calling <code>CreateCampaign</code>.</p> <p>If the status shows as CREATE FAILED, the response includes a <code>failureReason</code> key, which describes why the job failed.</p> <p class=\"title\"> <b>Related APIs</b> </p> <ul> <li> <p> <a>ListSolutionVersions</a> </p> </li> <li> <p> <a>DescribeSolutionVersion</a> </p> </li> </ul> <ul> <li> <p> <a>ListSolutions</a> </p> </li> <li> <p> <a>CreateSolution</a> </p> </li> <li> <p> <a>DescribeSolution</a> </p> </li> <li> <p> <a>DeleteSolution</a> </p> </li> </ul>"
    },
    "DeleteCampaign": {
      "name": "DeleteCampaign",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteCampaignRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Removes a campaign by deleting the solution deployment. The solution that the campaign is based on is not deleted and can be redeployed when needed. A deleted campaign can no longer be specified in a <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html\">GetRecommendations</a> request. For more information on campaigns, see <a>CreateCampaign</a>.</p>",
      "idempotent": true
    },
    "DeleteDataset": {
      "name": "DeleteDataset",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDatasetRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a dataset. You can't delete a dataset if an associated <code>DatasetImportJob</code> or <code>SolutionVersion</code> is in the CREATE PENDING or IN PROGRESS state. For more information on datasets, see <a>CreateDataset</a>.</p>",
      "idempotent": true
    },
    "DeleteDatasetGroup": {
      "name": "DeleteDatasetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDatasetGroupRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a dataset group. Before you delete a dataset group, you must delete the following:</p> <ul> <li> <p>All associated event trackers.</p> </li> <li> <p>All associated solutions.</p> </li> <li> <p>All datasets in the dataset group.</p> </li> </ul>",
      "idempotent": true
    },
    "DeleteEventTracker": {
      "name": "DeleteEventTracker",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteEventTrackerRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes the event tracker. Does not delete the event-interactions dataset from the associated dataset group. For more information on event trackers, see <a>CreateEventTracker</a>.</p>",
      "idempotent": true
    },
    "DeleteFilter": {
      "name": "DeleteFilter",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteFilterRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a filter.</p>"
    },
    "DeleteSchema": {
      "name": "DeleteSchema",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSchemaRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a schema. Before deleting a schema, you must delete all datasets referencing the schema. For more information on schemas, see <a>CreateSchema</a>.</p>",
      "idempotent": true
    },
    "DeleteSolution": {
      "name": "DeleteSolution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSolutionRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes all versions of a solution and the <code>Solution</code> object itself. Before deleting a solution, you must delete all campaigns based on the solution. To determine what campaigns are using the solution, call <a>ListCampaigns</a> and supply the Amazon Resource Name (ARN) of the solution. You can't delete a solution if an associated <code>SolutionVersion</code> is in the CREATE PENDING or IN PROGRESS state. For more information on solutions, see <a>CreateSolution</a>.</p>",
      "idempotent": true
    },
    "DescribeAlgorithm": {
      "name": "DescribeAlgorithm",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAlgorithmRequest"
      },
      "output": {
        "shape": "DescribeAlgorithmResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes the given algorithm.</p>",
      "idempotent": true
    },
    "DescribeBatchInferenceJob": {
      "name": "DescribeBatchInferenceJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeBatchInferenceJobRequest"
      },
      "output": {
        "shape": "DescribeBatchInferenceJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets the properties of a batch inference job including name, Amazon Resource Name (ARN), status, input and output configurations, and the ARN of the solution version used to generate the recommendations.</p>",
      "idempotent": true
    },
    "DescribeCampaign": {
      "name": "DescribeCampaign",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCampaignRequest"
      },
      "output": {
        "shape": "DescribeCampaignResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes the given campaign, including its status.</p> <p>A campaign can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING &gt; DELETE IN_PROGRESS</p> </li> </ul> <p>When the <code>status</code> is <code>CREATE FAILED</code>, the response includes the <code>failureReason</code> key, which describes why.</p> <p>For more information on campaigns, see <a>CreateCampaign</a>.</p>",
      "idempotent": true
    },
    "DescribeDataset": {
      "name": "DescribeDataset",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDatasetRequest"
      },
      "output": {
        "shape": "DescribeDatasetResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes the given dataset. For more information on datasets, see <a>CreateDataset</a>.</p>",
      "idempotent": true
    },
    "DescribeDatasetGroup": {
      "name": "DescribeDatasetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDatasetGroupRequest"
      },
      "output": {
        "shape": "DescribeDatasetGroupResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes the given dataset group. For more information on dataset groups, see <a>CreateDatasetGroup</a>.</p>",
      "idempotent": true
    },
    "DescribeDatasetImportJob": {
      "name": "DescribeDatasetImportJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDatasetImportJobRequest"
      },
      "output": {
        "shape": "DescribeDatasetImportJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes the dataset import job created by <a>CreateDatasetImportJob</a>, including the import job status.</p>",
      "idempotent": true
    },
    "DescribeEventTracker": {
      "name": "DescribeEventTracker",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventTrackerRequest"
      },
      "output": {
        "shape": "DescribeEventTrackerResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes an event tracker. The response includes the <code>trackingId</code> and <code>status</code> of the event tracker. For more information on event trackers, see <a>CreateEventTracker</a>.</p>",
      "idempotent": true
    },
    "DescribeFeatureTransformation": {
      "name": "DescribeFeatureTransformation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeFeatureTransformationRequest"
      },
      "output": {
        "shape": "DescribeFeatureTransformationResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes the given feature transformation.</p>",
      "idempotent": true
    },
    "DescribeFilter": {
      "name": "DescribeFilter",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeFilterRequest"
      },
      "output": {
        "shape": "DescribeFilterResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes a filter's properties.</p>",
      "idempotent": true
    },
    "DescribeRecipe": {
      "name": "DescribeRecipe",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeRecipeRequest"
      },
      "output": {
        "shape": "DescribeRecipeResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes a recipe.</p> <p>A recipe contains three items:</p> <ul> <li> <p>An algorithm that trains a model.</p> </li> <li> <p>Hyperparameters that govern the training.</p> </li> <li> <p>Feature transformation information for modifying the input data before training.</p> </li> </ul> <p>Amazon Personalize provides a set of predefined recipes. You specify a recipe when you create a solution with the <a>CreateSolution</a> API. <code>CreateSolution</code> trains a model by using the algorithm in the specified recipe and a training dataset. The solution, when deployed as a campaign, can provide recommendations using the <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html\">GetRecommendations</a> API.</p>",
      "idempotent": true
    },
    "DescribeSchema": {
      "name": "DescribeSchema",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeSchemaRequest"
      },
      "output": {
        "shape": "DescribeSchemaResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes a schema. For more information on schemas, see <a>CreateSchema</a>.</p>",
      "idempotent": true
    },
    "DescribeSolution": {
      "name": "DescribeSolution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeSolutionRequest"
      },
      "output": {
        "shape": "DescribeSolutionResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes a solution. For more information on solutions, see <a>CreateSolution</a>.</p>",
      "idempotent": true
    },
    "DescribeSolutionVersion": {
      "name": "DescribeSolutionVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeSolutionVersionRequest"
      },
      "output": {
        "shape": "DescribeSolutionVersionResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes a specific version of a solution. For more information on solutions, see <a>CreateSolution</a>.</p>",
      "idempotent": true
    },
    "GetSolutionMetrics": {
      "name": "GetSolutionMetrics",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSolutionMetricsRequest"
      },
      "output": {
        "shape": "GetSolutionMetricsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Gets the metrics for the specified solution version.</p>"
    },
    "ListBatchInferenceJobs": {
      "name": "ListBatchInferenceJobs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListBatchInferenceJobsRequest"
      },
      "output": {
        "shape": "ListBatchInferenceJobsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Gets a list of the batch inference jobs that have been performed off of a solution version.</p>",
      "idempotent": true
    },
    "ListCampaigns": {
      "name": "ListCampaigns",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListCampaignsRequest"
      },
      "output": {
        "shape": "ListCampaignsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns a list of campaigns that use the given solution. When a solution is not specified, all the campaigns associated with the account are listed. The response provides the properties for each campaign, including the Amazon Resource Name (ARN). For more information on campaigns, see <a>CreateCampaign</a>.</p>",
      "idempotent": true
    },
    "ListDatasetGroups": {
      "name": "ListDatasetGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDatasetGroupsRequest"
      },
      "output": {
        "shape": "ListDatasetGroupsResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns a list of dataset groups. The response provides the properties for each dataset group, including the Amazon Resource Name (ARN). For more information on dataset groups, see <a>CreateDatasetGroup</a>.</p>",
      "idempotent": true
    },
    "ListDatasetImportJobs": {
      "name": "ListDatasetImportJobs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDatasetImportJobsRequest"
      },
      "output": {
        "shape": "ListDatasetImportJobsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns a list of dataset import jobs that use the given dataset. When a dataset is not specified, all the dataset import jobs associated with the account are listed. The response provides the properties for each dataset import job, including the Amazon Resource Name (ARN). For more information on dataset import jobs, see <a>CreateDatasetImportJob</a>. For more information on datasets, see <a>CreateDataset</a>.</p>",
      "idempotent": true
    },
    "ListDatasets": {
      "name": "ListDatasets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDatasetsRequest"
      },
      "output": {
        "shape": "ListDatasetsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns the list of datasets contained in the given dataset group. The response provides the properties for each dataset, including the Amazon Resource Name (ARN). For more information on datasets, see <a>CreateDataset</a>.</p>",
      "idempotent": true
    },
    "ListEventTrackers": {
      "name": "ListEventTrackers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListEventTrackersRequest"
      },
      "output": {
        "shape": "ListEventTrackersResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns the list of event trackers associated with the account. The response provides the properties for each event tracker, including the Amazon Resource Name (ARN) and tracking ID. For more information on event trackers, see <a>CreateEventTracker</a>.</p>",
      "idempotent": true
    },
    "ListFilters": {
      "name": "ListFilters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListFiltersRequest"
      },
      "output": {
        "shape": "ListFiltersResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Lists all filters that belong to a given dataset group.</p>",
      "idempotent": true
    },
    "ListRecipes": {
      "name": "ListRecipes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListRecipesRequest"
      },
      "output": {
        "shape": "ListRecipesResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns a list of available recipes. The response provides the properties for each recipe, including the recipe's Amazon Resource Name (ARN).</p>",
      "idempotent": true
    },
    "ListSchemas": {
      "name": "ListSchemas",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSchemasRequest"
      },
      "output": {
        "shape": "ListSchemasResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns the list of schemas associated with the account. The response provides the properties for each schema, including the Amazon Resource Name (ARN). For more information on schemas, see <a>CreateSchema</a>.</p>",
      "idempotent": true
    },
    "ListSolutionVersions": {
      "name": "ListSolutionVersions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSolutionVersionsRequest"
      },
      "output": {
        "shape": "ListSolutionVersionsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns a list of solution versions for the given solution. When a solution is not specified, all the solution versions associated with the account are listed. The response provides the properties for each solution version, including the Amazon Resource Name (ARN). For more information on solutions, see <a>CreateSolution</a>.</p>",
      "idempotent": true
    },
    "ListSolutions": {
      "name": "ListSolutions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSolutionsRequest"
      },
      "output": {
        "shape": "ListSolutionsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns a list of solutions that use the given dataset group. When a dataset group is not specified, all the solutions associated with the account are listed. The response provides the properties for each solution, including the Amazon Resource Name (ARN). For more information on solutions, see <a>CreateSolution</a>.</p>",
      "idempotent": true
    },
    "UpdateCampaign": {
      "name": "UpdateCampaign",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateCampaignRequest"
      },
      "output": {
        "shape": "UpdateCampaignResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Updates a campaign by either deploying a new solution or changing the value of the campaign's <code>minProvisionedTPS</code> parameter.</p> <p>To update a campaign, the campaign status must be ACTIVE or CREATE FAILED. Check the campaign status using the <a>DescribeCampaign</a> API.</p> <note> <p>You must wait until the <code>status</code> of the updated campaign is <code>ACTIVE</code> before asking the campaign for recommendations.</p> </note> <p>For more information on campaigns, see <a>CreateCampaign</a>.</p>",
      "idempotent": true
    }
  },
  "shapes": {
    "AccountId": {
      "type": "string",
      "max": 256
    },
    "Algorithm": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the algorithm.</p>"
        },
        "algorithmArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the algorithm.</p>"
        },
        "algorithmImage": {
          "shape": "AlgorithmImage",
          "documentation": "<p>The URI of the Docker container for the algorithm image.</p>"
        },
        "defaultHyperParameters": {
          "shape": "HyperParameters",
          "documentation": "<p>Specifies the default hyperparameters.</p>"
        },
        "defaultHyperParameterRanges": {
          "shape": "DefaultHyperParameterRanges",
          "documentation": "<p>Specifies the default hyperparameters, their ranges, and whether they are tunable. A tunable hyperparameter can have its value determined during hyperparameter optimization (HPO).</p>"
        },
        "defaultResourceConfig": {
          "shape": "ResourceConfig",
          "documentation": "<p>Specifies the default maximum number of training jobs and parallel training jobs.</p>"
        },
        "trainingInputMode": {
          "shape": "TrainingInputMode",
          "documentation": "<p>The training input mode.</p>"
        },
        "roleArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the role.</p>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the algorithm was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the algorithm was last updated.</p>"
        }
      },
      "documentation": "<p>Describes a custom algorithm.</p>"
    },
    "AlgorithmImage": {
      "type": "structure",
      "required": [
        "dockerURI"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the algorithm image.</p>"
        },
        "dockerURI": {
          "shape": "DockerURI",
          "documentation": "<p>The URI of the Docker container for the algorithm image.</p>"
        }
      },
      "documentation": "<p>Describes an algorithm image.</p>"
    },
    "Arn": {
      "type": "string",
      "max": 256,
      "pattern": "arn:([a-z\\d-]+):personalize:.*:.*:.+"
    },
    "ArnList": {
      "type": "list",
      "member": {
        "shape": "Arn"
      },
      "max": 100
    },
    "AutoMLConfig": {
      "type": "structure",
      "members": {
        "metricName": {
          "shape": "MetricName",
          "documentation": "<p>The metric to optimize.</p>"
        },
        "recipeList": {
          "shape": "ArnList",
          "documentation": "<p>The list of candidate recipes.</p>"
        }
      },
      "documentation": "<p>When the solution performs AutoML (<code>performAutoML</code> is true in <a>CreateSolution</a>), Amazon Personalize determines which recipe, from the specified list, optimizes the given metric. Amazon Personalize then uses that recipe for the solution.</p>"
    },
    "AutoMLResult": {
      "type": "structure",
      "members": {
        "bestRecipeArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the best recipe.</p>"
        }
      },
      "documentation": "<p>When the solution performs AutoML (<code>performAutoML</code> is true in <a>CreateSolution</a>), specifies the recipe that best optimized the specified metric.</p>"
    },
    "AvroSchema": {
      "type": "string",
      "max": 10000
    },
    "BatchInferenceJob": {
      "type": "structure",
      "members": {
        "jobName": {
          "shape": "Name",
          "documentation": "<p>The name of the batch inference job.</p>"
        },
        "batchInferenceJobArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the batch inference job.</p>"
        },
        "filterArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the filter used on the batch inference job.</p>"
        },
        "failureReason": {
          "shape": "FailureReason",
          "documentation": "<p>If the batch inference job failed, the reason for the failure.</p>"
        },
        "solutionVersionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the solution version from which the batch inference job was created.</p>"
        },
        "numResults": {
          "shape": "NumBatchResults",
          "documentation": "<p>The number of recommendations generated by the batch inference job. This number includes the error messages generated for failed input records.</p>"
        },
        "jobInput": {
          "shape": "BatchInferenceJobInput",
          "documentation": "<p>The Amazon S3 path that leads to the input data used to generate the batch inference job.</p>"
        },
        "jobOutput": {
          "shape": "BatchInferenceJobOutput",
          "documentation": "<p>The Amazon S3 bucket that contains the output data generated by the batch inference job.</p>"
        },
        "batchInferenceJobConfig": {
          "shape": "BatchInferenceJobConfig",
          "documentation": "<p>A string to string map of the configuration details of a batch inference job.</p>"
        },
        "roleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The ARN of the Amazon Identity and Access Management (IAM) role that requested the batch inference job.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the batch inference job. The status is one of the following values:</p> <ul> <li> <p>PENDING</p> </li> <li> <p>IN PROGRESS</p> </li> <li> <p>ACTIVE</p> </li> <li> <p>CREATE FAILED</p> </li> </ul>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The time at which the batch inference job was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The time at which the batch inference job was last updated.</p>"
        }
      },
      "documentation": "<p>Contains information on a batch inference job.</p>"
    },
    "BatchInferenceJobConfig": {
      "type": "structure",
      "members": {
        "itemExplorationConfig": {
          "shape": "HyperParameters",
          "documentation": "<p>A string to string map specifying the inference hyperparameters you wish to use for hyperparameter optimization. See <a>customizing-solution-config-hpo</a>.</p>"
        }
      },
      "documentation": "<p>The configuration details of a batch inference job.</p>"
    },
    "BatchInferenceJobInput": {
      "type": "structure",
      "required": [
        "s3DataSource"
      ],
      "members": {
        "s3DataSource": {
          "shape": "S3DataConfig",
          "documentation": "<p>The URI of the Amazon S3 location that contains your input data. The Amazon S3 bucket must be in the same region as the API endpoint you are calling.</p>"
        }
      },
      "documentation": "<p>The input configuration of a batch inference job.</p>"
    },
    "BatchInferenceJobOutput": {
      "type": "structure",
      "required": [
        "s3DataDestination"
      ],
      "members": {
        "s3DataDestination": {
          "shape": "S3DataConfig",
          "documentation": "<p>Information on the Amazon S3 bucket in which the batch inference job's output is stored.</p>"
        }
      },
      "documentation": "<p>The output configuration parameters of a batch inference job.</p>"
    },
    "BatchInferenceJobSummary": {
      "type": "structure",
      "members": {
        "batchInferenceJobArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the batch inference job.</p>"
        },
        "jobName": {
          "shape": "Name",
          "documentation": "<p>The name of the batch inference job.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the batch inference job. The status is one of the following values:</p> <ul> <li> <p>PENDING</p> </li> <li> <p>IN PROGRESS</p> </li> <li> <p>ACTIVE</p> </li> <li> <p>CREATE FAILED</p> </li> </ul>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The time at which the batch inference job was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The time at which the batch inference job was last updated.</p>"
        },
        "failureReason": {
          "shape": "FailureReason",
          "documentation": "<p>If the batch inference job failed, the reason for the failure.</p>"
        },
        "solutionVersionArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the solution version used by the batch inference job.</p>"
        }
      },
      "documentation": "<p>A truncated version of the <a>BatchInferenceJob</a> datatype. The <a>ListBatchInferenceJobs</a> operation returns a list of batch inference job summaries.</p>"
    },
    "BatchInferenceJobs": {
      "type": "list",
      "member": {
        "shape": "BatchInferenceJobSummary"
      },
      "max": 100
    },
    "Boolean": {
      "type": "boolean"
    },
    "Campaign": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the campaign.</p>"
        },
        "campaignArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the campaign. </p>"
        },
        "solutionVersionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of a specific version of the solution.</p>"
        },
        "minProvisionedTPS": {
          "shape": "TransactionsPerSecond",
          "documentation": "<p>Specifies the requested minimum provisioned transactions (recommendations) per second.</p>"
        },
        "campaignConfig": {
          "shape": "CampaignConfig",
          "documentation": "<p>The configuration details of a campaign.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the campaign.</p> <p>A campaign can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING &gt; DELETE IN_PROGRESS</p> </li> </ul>"
        },
        "failureReason": {
          "shape": "FailureReason",
          "documentation": "<p>If a campaign fails, the reason behind the failure.</p>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix format) that the campaign was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix format) that the campaign was last updated.</p>"
        },
        "latestCampaignUpdate": {
          "shape": "CampaignUpdateSummary"
        }
      },
      "documentation": "<p>Describes a deployed solution version, otherwise known as a campaign. For more information on campaigns, see <a>CreateCampaign</a>.</p>"
    },
    "CampaignConfig": {
      "type": "structure",
      "members": {
        "itemExplorationConfig": {
          "shape": "HyperParameters",
          "documentation": "<p>A string to string map specifying the inference hyperparameters you wish to use for hyperparameter optimization. See <a>customizing-solution-config-hpo</a>.</p>"
        }
      },
      "documentation": "<p>The configuration details of a campaign.</p>"
    },
    "CampaignSummary": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the campaign.</p>"
        },
        "campaignArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the campaign.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the campaign.</p> <p>A campaign can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING &gt; DELETE IN_PROGRESS</p> </li> </ul>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the campaign was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the campaign was last updated.</p>"
        },
        "failureReason": {
          "shape": "FailureReason",
          "documentation": "<p>If a campaign fails, the reason behind the failure.</p>"
        }
      },
      "documentation": "<p>Provides a summary of the properties of a campaign. For a complete listing, call the <a>DescribeCampaign</a> API.</p>"
    },
    "CampaignUpdateSummary": {
      "type": "structure",
      "members": {
        "solutionVersionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the deployed solution version.</p>"
        },
        "minProvisionedTPS": {
          "shape": "TransactionsPerSecond",
          "documentation": "<p>Specifies the requested minimum provisioned transactions (recommendations) per second that Amazon Personalize will support.</p>"
        },
        "campaignConfig": {
          "shape": "CampaignConfig"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the campaign update.</p> <p>A campaign update can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING &gt; DELETE IN_PROGRESS</p> </li> </ul>"
        },
        "failureReason": {
          "shape": "FailureReason",
          "documentation": "<p>If a campaign update fails, the reason behind the failure.</p>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the campaign update was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the campaign update was last updated.</p>"
        }
      },
      "documentation": "<p>Provides a summary of the properties of a campaign update. For a complete listing, call the <a>DescribeCampaign</a> API.</p>"
    },
    "Campaigns": {
      "type": "list",
      "member": {
        "shape": "CampaignSummary"
      },
      "max": 100
    },
    "CategoricalHyperParameterRange": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ParameterName",
          "documentation": "<p>The name of the hyperparameter.</p>"
        },
        "values": {
          "shape": "CategoricalValues",
          "documentation": "<p>A list of the categories for the hyperparameter.</p>"
        }
      },
      "documentation": "<p>Provides the name and range of a categorical hyperparameter.</p>"
    },
    "CategoricalHyperParameterRanges": {
      "type": "list",
      "member": {
        "shape": "CategoricalHyperParameterRange"
      },
      "max": 100
    },
    "CategoricalValue": {
      "type": "string",
      "max": 1000
    },
    "CategoricalValues": {
      "type": "list",
      "member": {
        "shape": "CategoricalValue"
      },
      "max": 100
    },
    "ContinuousHyperParameterRange": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ParameterName",
          "documentation": "<p>The name of the hyperparameter.</p>"
        },
        "minValue": {
          "shape": "ContinuousMinValue",
          "documentation": "<p>The minimum allowable value for the hyperparameter.</p>"
        },
        "maxValue": {
          "shape": "ContinuousMaxValue",
          "documentation": "<p>The maximum allowable value for the hyperparameter.</p>"
        }
      },
      "documentation": "<p>Provides the name and range of a continuous hyperparameter.</p>"
    },
    "ContinuousHyperParameterRanges": {
      "type": "list",
      "member": {
        "shape": "ContinuousHyperParameterRange"
      },
      "max": 100
    },
    "ContinuousMaxValue": {
      "type": "double",
      "min": -1000000
    },
    "ContinuousMinValue": {
      "type": "double",
      "min": -1000000
    },
    "CreateBatchInferenceJobRequest": {
      "type": "structure",
      "required": [
        "jobName",
        "solutionVersionArn",
        "jobInput",
        "jobOutput",
        "roleArn"
      ],
      "members": {
        "jobName": {
          "shape": "Name",
          "documentation": "<p>The name of the batch inference job to create.</p>"
        },
        "solutionVersionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the solution version that will be used to generate the batch inference recommendations.</p>"
        },
        "filterArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the filter to apply to the batch inference job. For more information on using filters, see Using Filters with Amazon Personalize.</p>"
        },
        "numResults": {
          "shape": "NumBatchResults",
          "documentation": "<p>The number of recommendations to retreive.</p>"
        },
        "jobInput": {
          "shape": "BatchInferenceJobInput",
          "documentation": "<p>The Amazon S3 path that leads to the input file to base your recommendations on. The input material must be in JSON format.</p>"
        },
        "jobOutput": {
          "shape": "BatchInferenceJobOutput",
          "documentation": "<p>The path to the Amazon S3 bucket where the job's output will be stored.</p>"
        },
        "roleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The ARN of the Amazon Identity and Access Management role that has permissions to read and write to your input and out Amazon S3 buckets respectively.</p>"
        },
        "batchInferenceJobConfig": {
          "shape": "BatchInferenceJobConfig",
          "documentation": "<p>The configuration details of a batch inference job.</p>"
        }
      }
    },
    "CreateBatchInferenceJobResponse": {
      "type": "structure",
      "members": {
        "batchInferenceJobArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the batch inference job.</p>"
        }
      }
    },
    "CreateCampaignRequest": {
      "type": "structure",
      "required": [
        "name",
        "solutionVersionArn",
        "minProvisionedTPS"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>A name for the new campaign. The campaign name must be unique within your account.</p>"
        },
        "solutionVersionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the solution version to deploy.</p>"
        },
        "minProvisionedTPS": {
          "shape": "TransactionsPerSecond",
          "documentation": "<p>Specifies the requested minimum provisioned transactions (recommendations) per second that Amazon Personalize will support.</p>"
        },
        "campaignConfig": {
          "shape": "CampaignConfig",
          "documentation": "<p>The configuration details of a campaign.</p>"
        }
      }
    },
    "CreateCampaignResponse": {
      "type": "structure",
      "members": {
        "campaignArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the campaign.</p>"
        }
      }
    },
    "CreateDatasetGroupRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name for the new dataset group.</p>"
        },
        "roleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The ARN of the IAM role that has permissions to access the KMS key. Supplying an IAM role is only valid when also specifying a KMS key.</p>"
        },
        "kmsKeyArn": {
          "shape": "KmsKeyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of a KMS key used to encrypt the datasets.</p>"
        }
      }
    },
    "CreateDatasetGroupResponse": {
      "type": "structure",
      "members": {
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the new dataset group.</p>"
        }
      }
    },
    "CreateDatasetImportJobRequest": {
      "type": "structure",
      "required": [
        "jobName",
        "datasetArn",
        "dataSource",
        "roleArn"
      ],
      "members": {
        "jobName": {
          "shape": "Name",
          "documentation": "<p>The name for the dataset import job.</p>"
        },
        "datasetArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dataset that receives the imported data.</p>"
        },
        "dataSource": {
          "shape": "DataSource",
          "documentation": "<p>The Amazon S3 bucket that contains the training data to import.</p>"
        },
        "roleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The ARN of the IAM role that has permissions to read from the Amazon S3 data source.</p>"
        }
      }
    },
    "CreateDatasetImportJobResponse": {
      "type": "structure",
      "members": {
        "datasetImportJobArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dataset import job.</p>"
        }
      }
    },
    "CreateDatasetRequest": {
      "type": "structure",
      "required": [
        "name",
        "schemaArn",
        "datasetGroupArn",
        "datasetType"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name for the dataset.</p>"
        },
        "schemaArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the schema to associate with the dataset. The schema defines the dataset fields.</p>"
        },
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group to add the dataset to.</p>"
        },
        "datasetType": {
          "shape": "DatasetType",
          "documentation": "<p>The type of dataset.</p> <p>One of the following (case insensitive) values:</p> <ul> <li> <p>Interactions</p> </li> <li> <p>Items</p> </li> <li> <p>Users</p> </li> </ul>"
        }
      }
    },
    "CreateDatasetResponse": {
      "type": "structure",
      "members": {
        "datasetArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dataset.</p>"
        }
      }
    },
    "CreateEventTrackerRequest": {
      "type": "structure",
      "required": [
        "name",
        "datasetGroupArn"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name for the event tracker.</p>"
        },
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group that receives the event data.</p>"
        }
      }
    },
    "CreateEventTrackerResponse": {
      "type": "structure",
      "members": {
        "eventTrackerArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the event tracker.</p>"
        },
        "trackingId": {
          "shape": "TrackingId",
          "documentation": "<p>The ID of the event tracker. Include this ID in requests to the <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html\">PutEvents</a> API.</p>"
        }
      }
    },
    "CreateFilterRequest": {
      "type": "structure",
      "required": [
        "name",
        "datasetGroupArn",
        "filterExpression"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the filter to create.</p>"
        },
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dataset group that the filter will belong to.</p>"
        },
        "filterExpression": {
          "shape": "FilterExpression",
          "documentation": "<p>The filter expression that designates the interaction types that the filter will filter out. A filter expression must follow the following format:</p> <p> <code>EXCLUDE itemId WHERE INTERACTIONS.event_type in (\"EVENT_TYPE\")</code> </p> <p>Where \"EVENT_TYPE\" is the type of event to filter out. To filter out all items with any interactions history, set <code>\"*\"</code> as the EVENT_TYPE. For more information, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filters.html\">Using Filters with Amazon Personalize</a>.</p>"
        }
      }
    },
    "CreateFilterResponse": {
      "type": "structure",
      "members": {
        "filterArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the new filter.</p>"
        }
      }
    },
    "CreateSchemaRequest": {
      "type": "structure",
      "required": [
        "name",
        "schema"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name for the schema.</p>"
        },
        "schema": {
          "shape": "AvroSchema",
          "documentation": "<p>A schema in Avro JSON format.</p>"
        }
      }
    },
    "CreateSchemaResponse": {
      "type": "structure",
      "members": {
        "schemaArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the created schema.</p>"
        }
      }
    },
    "CreateSolutionRequest": {
      "type": "structure",
      "required": [
        "name",
        "datasetGroupArn"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name for the solution.</p>"
        },
        "performHPO": {
          "shape": "Boolean",
          "documentation": "<p>Whether to perform hyperparameter optimization (HPO) on the specified or selected recipe. The default is <code>false</code>.</p> <p>When performing AutoML, this parameter is always <code>true</code> and you should not set it to <code>false</code>.</p>"
        },
        "performAutoML": {
          "shape": "PerformAutoML",
          "documentation": "<p>Whether to perform automated machine learning (AutoML). The default is <code>false</code>. For this case, you must specify <code>recipeArn</code>.</p> <p>When set to <code>true</code>, Amazon Personalize analyzes your training data and selects the optimal USER_PERSONALIZATION recipe and hyperparameters. In this case, you must omit <code>recipeArn</code>. Amazon Personalize determines the optimal recipe by running tests with different values for the hyperparameters. AutoML lengthens the training process as compared to selecting a specific recipe.</p>"
        },
        "recipeArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the recipe to use for model training. Only specified when <code>performAutoML</code> is false.</p>"
        },
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group that provides the training data.</p>"
        },
        "eventType": {
          "shape": "EventType",
          "documentation": "<p>When your have multiple event types (using an <code>EVENT_TYPE</code> schema field), this parameter specifies which event type (for example, 'click' or 'like') is used for training the model.</p>"
        },
        "solutionConfig": {
          "shape": "SolutionConfig",
          "documentation": "<p>The configuration to use with the solution. When <code>performAutoML</code> is set to true, Amazon Personalize only evaluates the <code>autoMLConfig</code> section of the solution configuration.</p>"
        }
      }
    },
    "CreateSolutionResponse": {
      "type": "structure",
      "members": {
        "solutionArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the solution.</p>"
        }
      }
    },
    "CreateSolutionVersionRequest": {
      "type": "structure",
      "required": [
        "solutionArn"
      ],
      "members": {
        "solutionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the solution containing the training configuration information.</p>"
        },
        "trainingMode": {
          "shape": "TrainingMode",
          "documentation": "<p>The scope of training to be performed when creating the solution version. The <code>FULL</code> option trains the solution version based on the entirety of the input solution's training data, while the <code>UPDATE</code> option processes only the data that has changed in comparison to the input solution. Choose <code>UPDATE</code> when you want to incrementally update your solution version instead of creating an entirely new one.</p> <important> <p>The <code>UPDATE</code> option can only be used when you already have an active solution version created from the input solution using the <code>FULL</code> option and the input solution was trained with the <a>native-recipe-hrnn-coldstart</a> recipe.</p> </important>"
        }
      }
    },
    "CreateSolutionVersionResponse": {
      "type": "structure",
      "members": {
        "solutionVersionArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the new solution version.</p>"
        }
      }
    },
    "DataSource": {
      "type": "structure",
      "members": {
        "dataLocation": {
          "shape": "S3Location",
          "documentation": "<p>The path to the Amazon S3 bucket where the data that you want to upload to your dataset is stored. For example: </p> <p> <code>s3://bucket-name/training-data.csv</code> </p>"
        }
      },
      "documentation": "<p>Describes the data source that contains the data to upload to a dataset.</p>"
    },
    "Dataset": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the dataset.</p>"
        },
        "datasetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset that you want metadata for.</p>"
        },
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group.</p>"
        },
        "datasetType": {
          "shape": "DatasetType",
          "documentation": "<p>One of the following values:</p> <ul> <li> <p>Interactions</p> </li> <li> <p>Items</p> </li> <li> <p>Users</p> </li> </ul>"
        },
        "schemaArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the associated schema.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the dataset.</p> <p>A dataset can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING &gt; DELETE IN_PROGRESS</p> </li> </ul>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The creation date and time (in Unix time) of the dataset.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>A time stamp that shows when the dataset was updated.</p>"
        }
      },
      "documentation": "<p>Provides metadata for a dataset.</p>"
    },
    "DatasetGroup": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the dataset group.</p>"
        },
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The current status of the dataset group.</p> <p>A dataset group can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING</p> </li> </ul>"
        },
        "roleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The ARN of the IAM role that has permissions to create the dataset group.</p>"
        },
        "kmsKeyArn": {
          "shape": "KmsKeyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the datasets.</p>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The creation date and time (in Unix time) of the dataset group.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The last update date and time (in Unix time) of the dataset group.</p>"
        },
        "failureReason": {
          "shape": "FailureReason",
          "documentation": "<p>If creating a dataset group fails, provides the reason why.</p>"
        }
      },
      "documentation": "<p>A dataset group is a collection of related datasets (Interactions, User, and Item). You create a dataset group by calling <a>CreateDatasetGroup</a>. You then create a dataset and add it to a dataset group by calling <a>CreateDataset</a>. The dataset group is used to create and train a solution by calling <a>CreateSolution</a>. A dataset group can contain only one of each type of dataset.</p> <p>You can specify an AWS Key Management Service (KMS) key to encrypt the datasets in the group.</p>"
    },
    "DatasetGroupSummary": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the dataset group.</p>"
        },
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the dataset group.</p> <p>A dataset group can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING</p> </li> </ul>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the dataset group was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the dataset group was last updated.</p>"
        },
        "failureReason": {
          "shape": "FailureReason",
          "documentation": "<p>If creating a dataset group fails, the reason behind the failure.</p>"
        }
      },
      "documentation": "<p>Provides a summary of the properties of a dataset group. For a complete listing, call the <a>DescribeDatasetGroup</a> API.</p>"
    },
    "DatasetGroups": {
      "type": "list",
      "member": {
        "shape": "DatasetGroupSummary"
      },
      "max": 100
    },
    "DatasetImportJob": {
      "type": "structure",
      "members": {
        "jobName": {
          "shape": "Name",
          "documentation": "<p>The name of the import job.</p>"
        },
        "datasetImportJobArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dataset import job.</p>"
        },
        "datasetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset that receives the imported data.</p>"
        },
        "dataSource": {
          "shape": "DataSource",
          "documentation": "<p>The Amazon S3 bucket that contains the training data to import.</p>"
        },
        "roleArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the AWS Identity and Access Management (IAM) role that has permissions to read from the Amazon S3 data source.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the dataset import job.</p> <p>A dataset import job can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> </ul>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The creation date and time (in Unix time) of the dataset import job.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) the dataset was last updated.</p>"
        },
        "failureReason": {
          "shape": "FailureReason",
          "documentation": "<p>If a dataset import job fails, provides the reason why.</p>"
        }
      },
      "documentation": "<p>Describes a job that imports training data from a data source (Amazon S3 bucket) to an Amazon Personalize dataset. For more information, see <a>CreateDatasetImportJob</a>.</p> <p>A dataset import job can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> </ul>"
    },
    "DatasetImportJobSummary": {
      "type": "structure",
      "members": {
        "datasetImportJobArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset import job.</p>"
        },
        "jobName": {
          "shape": "Name",
          "documentation": "<p>The name of the dataset import job.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the dataset import job.</p> <p>A dataset import job can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> </ul>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the dataset import job was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the dataset was last updated.</p>"
        },
        "failureReason": {
          "shape": "FailureReason",
          "documentation": "<p>If a dataset import job fails, the reason behind the failure.</p>"
        }
      },
      "documentation": "<p>Provides a summary of the properties of a dataset import job. For a complete listing, call the <a>DescribeDatasetImportJob</a> API.</p>"
    },
    "DatasetImportJobs": {
      "type": "list",
      "member": {
        "shape": "DatasetImportJobSummary"
      },
      "max": 100
    },
    "DatasetSchema": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the schema.</p>"
        },
        "schemaArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the schema.</p>"
        },
        "schema": {
          "shape": "AvroSchema",
          "documentation": "<p>The schema.</p>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the schema was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the schema was last updated.</p>"
        }
      },
      "documentation": "<p>Describes the schema for a dataset. For more information on schemas, see <a>CreateSchema</a>.</p>"
    },
    "DatasetSchemaSummary": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the schema.</p>"
        },
        "schemaArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the schema.</p>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the schema was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the schema was last updated.</p>"
        }
      },
      "documentation": "<p>Provides a summary of the properties of a dataset schema. For a complete listing, call the <a>DescribeSchema</a> API.</p>"
    },
    "DatasetSummary": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the dataset.</p>"
        },
        "datasetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset.</p>"
        },
        "datasetType": {
          "shape": "DatasetType",
          "documentation": "<p>The dataset type. One of the following values:</p> <ul> <li> <p>Interactions</p> </li> <li> <p>Items</p> </li> <li> <p>Users</p> </li> <li> <p>Event-Interactions</p> </li> </ul>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the dataset.</p> <p>A dataset can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING &gt; DELETE IN_PROGRESS</p> </li> </ul>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the dataset was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the dataset was last updated.</p>"
        }
      },
      "documentation": "<p>Provides a summary of the properties of a dataset. For a complete listing, call the <a>DescribeDataset</a> API.</p>"
    },
    "DatasetType": {
      "type": "string",
      "max": 256
    },
    "Datasets": {
      "type": "list",
      "member": {
        "shape": "DatasetSummary"
      },
      "max": 100
    },
    "Date": {
      "type": "timestamp"
    },
    "DefaultCategoricalHyperParameterRange": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ParameterName",
          "documentation": "<p>The name of the hyperparameter.</p>"
        },
        "values": {
          "shape": "CategoricalValues",
          "documentation": "<p>A list of the categories for the hyperparameter.</p>"
        },
        "isTunable": {
          "shape": "Tunable",
          "documentation": "<p>Whether the hyperparameter is tunable.</p>"
        }
      },
      "documentation": "<p>Provides the name and default range of a categorical hyperparameter and whether the hyperparameter is tunable. A tunable hyperparameter can have its value determined during hyperparameter optimization (HPO).</p>"
    },
    "DefaultCategoricalHyperParameterRanges": {
      "type": "list",
      "member": {
        "shape": "DefaultCategoricalHyperParameterRange"
      },
      "max": 100
    },
    "DefaultContinuousHyperParameterRange": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ParameterName",
          "documentation": "<p>The name of the hyperparameter.</p>"
        },
        "minValue": {
          "shape": "ContinuousMinValue",
          "documentation": "<p>The minimum allowable value for the hyperparameter.</p>"
        },
        "maxValue": {
          "shape": "ContinuousMaxValue",
          "documentation": "<p>The maximum allowable value for the hyperparameter.</p>"
        },
        "isTunable": {
          "shape": "Tunable",
          "documentation": "<p>Whether the hyperparameter is tunable.</p>"
        }
      },
      "documentation": "<p>Provides the name and default range of a continuous hyperparameter and whether the hyperparameter is tunable. A tunable hyperparameter can have its value determined during hyperparameter optimization (HPO).</p>"
    },
    "DefaultContinuousHyperParameterRanges": {
      "type": "list",
      "member": {
        "shape": "DefaultContinuousHyperParameterRange"
      },
      "max": 100
    },
    "DefaultHyperParameterRanges": {
      "type": "structure",
      "members": {
        "integerHyperParameterRanges": {
          "shape": "DefaultIntegerHyperParameterRanges",
          "documentation": "<p>The integer-valued hyperparameters and their default ranges.</p>"
        },
        "continuousHyperParameterRanges": {
          "shape": "DefaultContinuousHyperParameterRanges",
          "documentation": "<p>The continuous hyperparameters and their default ranges.</p>"
        },
        "categoricalHyperParameterRanges": {
          "shape": "DefaultCategoricalHyperParameterRanges",
          "documentation": "<p>The categorical hyperparameters and their default ranges.</p>"
        }
      },
      "documentation": "<p>Specifies the hyperparameters and their default ranges. Hyperparameters can be categorical, continuous, or integer-valued.</p>"
    },
    "DefaultIntegerHyperParameterRange": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ParameterName",
          "documentation": "<p>The name of the hyperparameter.</p>"
        },
        "minValue": {
          "shape": "IntegerMinValue",
          "documentation": "<p>The minimum allowable value for the hyperparameter.</p>"
        },
        "maxValue": {
          "shape": "IntegerMaxValue",
          "documentation": "<p>The maximum allowable value for the hyperparameter.</p>"
        },
        "isTunable": {
          "shape": "Tunable",
          "documentation": "<p>Indicates whether the hyperparameter is tunable.</p>"
        }
      },
      "documentation": "<p>Provides the name and default range of a integer-valued hyperparameter and whether the hyperparameter is tunable. A tunable hyperparameter can have its value determined during hyperparameter optimization (HPO).</p>"
    },
    "DefaultIntegerHyperParameterRanges": {
      "type": "list",
      "member": {
        "shape": "DefaultIntegerHyperParameterRange"
      },
      "max": 100
    },
    "DeleteCampaignRequest": {
      "type": "structure",
      "required": [
        "campaignArn"
      ],
      "members": {
        "campaignArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the campaign to delete.</p>"
        }
      }
    },
    "DeleteDatasetGroupRequest": {
      "type": "structure",
      "required": [
        "datasetGroupArn"
      ],
      "members": {
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dataset group to delete.</p>"
        }
      }
    },
    "DeleteDatasetRequest": {
      "type": "structure",
      "required": [
        "datasetArn"
      ],
      "members": {
        "datasetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset to delete.</p>"
        }
      }
    },
    "DeleteEventTrackerRequest": {
      "type": "structure",
      "required": [
        "eventTrackerArn"
      ],
      "members": {
        "eventTrackerArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the event tracker to delete.</p>"
        }
      }
    },
    "DeleteFilterRequest": {
      "type": "structure",
      "required": [
        "filterArn"
      ],
      "members": {
        "filterArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the filter to delete.</p>"
        }
      }
    },
    "DeleteSchemaRequest": {
      "type": "structure",
      "required": [
        "schemaArn"
      ],
      "members": {
        "schemaArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the schema to delete.</p>"
        }
      }
    },
    "DeleteSolutionRequest": {
      "type": "structure",
      "required": [
        "solutionArn"
      ],
      "members": {
        "solutionArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the solution to delete.</p>"
        }
      }
    },
    "DescribeAlgorithmRequest": {
      "type": "structure",
      "required": [
        "algorithmArn"
      ],
      "members": {
        "algorithmArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the algorithm to describe.</p>"
        }
      }
    },
    "DescribeAlgorithmResponse": {
      "type": "structure",
      "members": {
        "algorithm": {
          "shape": "Algorithm",
          "documentation": "<p>A listing of the properties of the algorithm.</p>"
        }
      }
    },
    "DescribeBatchInferenceJobRequest": {
      "type": "structure",
      "required": [
        "batchInferenceJobArn"
      ],
      "members": {
        "batchInferenceJobArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the batch inference job to describe.</p>"
        }
      }
    },
    "DescribeBatchInferenceJobResponse": {
      "type": "structure",
      "members": {
        "batchInferenceJob": {
          "shape": "BatchInferenceJob",
          "documentation": "<p>Information on the specified batch inference job.</p>"
        }
      }
    },
    "DescribeCampaignRequest": {
      "type": "structure",
      "required": [
        "campaignArn"
      ],
      "members": {
        "campaignArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the campaign.</p>"
        }
      }
    },
    "DescribeCampaignResponse": {
      "type": "structure",
      "members": {
        "campaign": {
          "shape": "Campaign",
          "documentation": "<p>The properties of the campaign.</p>"
        }
      }
    },
    "DescribeDatasetGroupRequest": {
      "type": "structure",
      "required": [
        "datasetGroupArn"
      ],
      "members": {
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group to describe.</p>"
        }
      }
    },
    "DescribeDatasetGroupResponse": {
      "type": "structure",
      "members": {
        "datasetGroup": {
          "shape": "DatasetGroup",
          "documentation": "<p>A listing of the dataset group's properties.</p>"
        }
      }
    },
    "DescribeDatasetImportJobRequest": {
      "type": "structure",
      "required": [
        "datasetImportJobArn"
      ],
      "members": {
        "datasetImportJobArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset import job to describe.</p>"
        }
      }
    },
    "DescribeDatasetImportJobResponse": {
      "type": "structure",
      "members": {
        "datasetImportJob": {
          "shape": "DatasetImportJob",
          "documentation": "<p>Information about the dataset import job, including the status.</p> <p>The status is one of the following values:</p> <ul> <li> <p>CREATE PENDING</p> </li> <li> <p>CREATE IN_PROGRESS</p> </li> <li> <p>ACTIVE</p> </li> <li> <p>CREATE FAILED</p> </li> </ul>"
        }
      }
    },
    "DescribeDatasetRequest": {
      "type": "structure",
      "required": [
        "datasetArn"
      ],
      "members": {
        "datasetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset to describe.</p>"
        }
      }
    },
    "DescribeDatasetResponse": {
      "type": "structure",
      "members": {
        "dataset": {
          "shape": "Dataset",
          "documentation": "<p>A listing of the dataset's properties.</p>"
        }
      }
    },
    "DescribeEventTrackerRequest": {
      "type": "structure",
      "required": [
        "eventTrackerArn"
      ],
      "members": {
        "eventTrackerArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the event tracker to describe.</p>"
        }
      }
    },
    "DescribeEventTrackerResponse": {
      "type": "structure",
      "members": {
        "eventTracker": {
          "shape": "EventTracker",
          "documentation": "<p>An object that describes the event tracker.</p>"
        }
      }
    },
    "DescribeFeatureTransformationRequest": {
      "type": "structure",
      "required": [
        "featureTransformationArn"
      ],
      "members": {
        "featureTransformationArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the feature transformation to describe.</p>"
        }
      }
    },
    "DescribeFeatureTransformationResponse": {
      "type": "structure",
      "members": {
        "featureTransformation": {
          "shape": "FeatureTransformation",
          "documentation": "<p>A listing of the FeatureTransformation properties.</p>"
        }
      }
    },
    "DescribeFilterRequest": {
      "type": "structure",
      "required": [
        "filterArn"
      ],
      "members": {
        "filterArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the filter to describe.</p>"
        }
      }
    },
    "DescribeFilterResponse": {
      "type": "structure",
      "members": {
        "filter": {
          "shape": "Filter",
          "documentation": "<p>The filter's details.</p>"
        }
      }
    },
    "DescribeRecipeRequest": {
      "type": "structure",
      "required": [
        "recipeArn"
      ],
      "members": {
        "recipeArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the recipe to describe.</p>"
        }
      }
    },
    "DescribeRecipeResponse": {
      "type": "structure",
      "members": {
        "recipe": {
          "shape": "Recipe",
          "documentation": "<p>An object that describes the recipe.</p>"
        }
      }
    },
    "DescribeSchemaRequest": {
      "type": "structure",
      "required": [
        "schemaArn"
      ],
      "members": {
        "schemaArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the schema to retrieve.</p>"
        }
      }
    },
    "DescribeSchemaResponse": {
      "type": "structure",
      "members": {
        "schema": {
          "shape": "DatasetSchema",
          "documentation": "<p>The requested schema.</p>"
        }
      }
    },
    "DescribeSolutionRequest": {
      "type": "structure",
      "required": [
        "solutionArn"
      ],
      "members": {
        "solutionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the solution to describe.</p>"
        }
      }
    },
    "DescribeSolutionResponse": {
      "type": "structure",
      "members": {
        "solution": {
          "shape": "Solution",
          "documentation": "<p>An object that describes the solution.</p>"
        }
      }
    },
    "DescribeSolutionVersionRequest": {
      "type": "structure",
      "required": [
        "solutionVersionArn"
      ],
      "members": {
        "solutionVersionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the solution version.</p>"
        }
      }
    },
    "DescribeSolutionVersionResponse": {
      "type": "structure",
      "members": {
        "solutionVersion": {
          "shape": "SolutionVersion",
          "documentation": "<p>The solution version.</p>"
        }
      }
    },
    "Description": {
      "type": "string"
    },
    "DockerURI": {
      "type": "string",
      "max": 256
    },
    "EventTracker": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the event tracker.</p>"
        },
        "eventTrackerArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the event tracker.</p>"
        },
        "accountId": {
          "shape": "AccountId",
          "documentation": "<p>The Amazon AWS account that owns the event tracker.</p>"
        },
        "trackingId": {
          "shape": "TrackingId",
          "documentation": "<p>The ID of the event tracker. Include this ID in requests to the <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html\">PutEvents</a> API.</p>"
        },
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group that receives the event data.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the event tracker.</p> <p>An event tracker can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING &gt; DELETE IN_PROGRESS</p> </li> </ul>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix format) that the event tracker was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the event tracker was last updated.</p>"
        }
      },
      "documentation": "<p>Provides information about an event tracker.</p>"
    },
    "EventTrackerSummary": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the event tracker.</p>"
        },
        "eventTrackerArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the event tracker.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the event tracker.</p> <p>An event tracker can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING &gt; DELETE IN_PROGRESS</p> </li> </ul>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the event tracker was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the event tracker was last updated.</p>"
        }
      },
      "documentation": "<p>Provides a summary of the properties of an event tracker. For a complete listing, call the <a>DescribeEventTracker</a> API.</p>"
    },
    "EventTrackers": {
      "type": "list",
      "member": {
        "shape": "EventTrackerSummary"
      },
      "max": 100
    },
    "EventType": {
      "type": "string",
      "max": 256
    },
    "EventValueThreshold": {
      "type": "string",
      "max": 256
    },
    "FailureReason": {
      "type": "string"
    },
    "FeatureTransformation": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the feature transformation.</p>"
        },
        "featureTransformationArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the FeatureTransformation object.</p>"
        },
        "defaultParameters": {
          "shape": "FeaturizationParameters",
          "documentation": "<p>Provides the default parameters for feature transformation.</p>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The creation date and time (in Unix time) of the feature transformation.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The last update date and time (in Unix time) of the feature transformation.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the feature transformation.</p> <p>A feature transformation can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> </ul>"
        }
      },
      "documentation": "<p>Provides feature transformation information. Feature transformation is the process of modifying raw input data into a form more suitable for model training.</p>"
    },
    "FeatureTransformationParameters": {
      "type": "map",
      "key": {
        "shape": "ParameterName"
      },
      "value": {
        "shape": "ParameterValue"
      },
      "max": 100
    },
    "FeaturizationParameters": {
      "type": "map",
      "key": {
        "shape": "ParameterName"
      },
      "value": {
        "shape": "ParameterValue"
      },
      "max": 100
    },
    "Filter": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the filter.</p>"
        },
        "filterArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the filter.</p>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The time at which the filter was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The time at which the filter was last updated.</p>"
        },
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dataset group to which the filter belongs.</p>"
        },
        "failureReason": {
          "shape": "FailureReason",
          "documentation": "<p>If the filter failed, the reason for its failure.</p>"
        },
        "filterExpression": {
          "shape": "FilterExpression",
          "documentation": "<p>Specifies the type of item interactions to filter out of recommendation results. The filter expression must follow the following format:</p> <p> <code>EXCLUDE itemId WHERE INTERACTIONS.event_type in (\"EVENT_TYPE\")</code> </p> <p>Where \"EVENT_TYPE\" is the type of event to filter out. For more information, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filters.html\">Using Filters with Amazon Personalize</a>.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the filter.</p>"
        }
      },
      "documentation": "<p>Contains information on a recommendation filter, including its ARN, status, and filter expression.</p>"
    },
    "FilterExpression": {
      "type": "string",
      "max": 2500,
      "min": 1,
      "sensitive": true
    },
    "FilterSummary": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the filter.</p>"
        },
        "filterArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the filter.</p>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The time at which the filter was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The time at which the filter was last updated.</p>"
        },
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dataset group to which the filter belongs.</p>"
        },
        "failureReason": {
          "shape": "FailureReason",
          "documentation": "<p>If the filter failed, the reason for the failure.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the filter.</p>"
        }
      },
      "documentation": "<p>A short summary of a filter's attributes.</p>"
    },
    "Filters": {
      "type": "list",
      "member": {
        "shape": "FilterSummary"
      },
      "max": 100
    },
    "GetSolutionMetricsRequest": {
      "type": "structure",
      "required": [
        "solutionVersionArn"
      ],
      "members": {
        "solutionVersionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the solution version for which to get metrics.</p>"
        }
      }
    },
    "GetSolutionMetricsResponse": {
      "type": "structure",
      "members": {
        "solutionVersionArn": {
          "shape": "Arn",
          "documentation": "<p>The same solution version ARN as specified in the request.</p>"
        },
        "metrics": {
          "shape": "Metrics",
          "documentation": "<p>The metrics for the solution version.</p>"
        }
      }
    },
    "HPOConfig": {
      "type": "structure",
      "members": {
        "hpoObjective": {
          "shape": "HPOObjective",
          "documentation": "<p>The metric to optimize during HPO.</p>"
        },
        "hpoResourceConfig": {
          "shape": "HPOResourceConfig",
          "documentation": "<p>Describes the resource configuration for HPO.</p>"
        },
        "algorithmHyperParameterRanges": {
          "shape": "HyperParameterRanges",
          "documentation": "<p>The hyperparameters and their allowable ranges.</p>"
        }
      },
      "documentation": "<p>Describes the properties for hyperparameter optimization (HPO). For use with the bring-your-own-recipe feature. Do not use for Amazon Personalize native recipes.</p>"
    },
    "HPOObjective": {
      "type": "structure",
      "members": {
        "type": {
          "shape": "HPOObjectiveType",
          "documentation": "<p>The type of the metric. Valid values are <code>Maximize</code> and <code>Minimize</code>.</p>"
        },
        "metricName": {
          "shape": "MetricName",
          "documentation": "<p>The name of the metric.</p>"
        },
        "metricRegex": {
          "shape": "MetricRegex",
          "documentation": "<p>A regular expression for finding the metric in the training job logs.</p>"
        }
      },
      "documentation": "<p>The metric to optimize during hyperparameter optimization (HPO).</p>"
    },
    "HPOObjectiveType": {
      "type": "string",
      "max": 256
    },
    "HPOResource": {
      "type": "string",
      "max": 256
    },
    "HPOResourceConfig": {
      "type": "structure",
      "members": {
        "maxNumberOfTrainingJobs": {
          "shape": "HPOResource",
          "documentation": "<p>The maximum number of training jobs when you create a solution version. The maximum value for <code>maxNumberOfTrainingJobs</code> is <code>40</code>.</p>"
        },
        "maxParallelTrainingJobs": {
          "shape": "HPOResource",
          "documentation": "<p>The maximum number of parallel training jobs when you create a solution version. The maximum value for <code>maxParallelTrainingJobs</code> is <code>10</code>.</p>"
        }
      },
      "documentation": "<p>Describes the resource configuration for hyperparameter optimization (HPO).</p>"
    },
    "HyperParameterRanges": {
      "type": "structure",
      "members": {
        "integerHyperParameterRanges": {
          "shape": "IntegerHyperParameterRanges",
          "documentation": "<p>The integer-valued hyperparameters and their ranges.</p>"
        },
        "continuousHyperParameterRanges": {
          "shape": "ContinuousHyperParameterRanges",
          "documentation": "<p>The continuous hyperparameters and their ranges.</p>"
        },
        "categoricalHyperParameterRanges": {
          "shape": "CategoricalHyperParameterRanges",
          "documentation": "<p>The categorical hyperparameters and their ranges.</p>"
        }
      },
      "documentation": "<p>Specifies the hyperparameters and their ranges. Hyperparameters can be categorical, continuous, or integer-valued.</p>"
    },
    "HyperParameters": {
      "type": "map",
      "key": {
        "shape": "ParameterName"
      },
      "value": {
        "shape": "ParameterValue"
      },
      "max": 100
    },
    "IntegerHyperParameterRange": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ParameterName",
          "documentation": "<p>The name of the hyperparameter.</p>"
        },
        "minValue": {
          "shape": "IntegerMinValue",
          "documentation": "<p>The minimum allowable value for the hyperparameter.</p>"
        },
        "maxValue": {
          "shape": "IntegerMaxValue",
          "documentation": "<p>The maximum allowable value for the hyperparameter.</p>"
        }
      },
      "documentation": "<p>Provides the name and range of an integer-valued hyperparameter.</p>"
    },
    "IntegerHyperParameterRanges": {
      "type": "list",
      "member": {
        "shape": "IntegerHyperParameterRange"
      },
      "max": 100
    },
    "IntegerMaxValue": {
      "type": "integer",
      "max": 1000000
    },
    "IntegerMinValue": {
      "type": "integer",
      "min": -1000000
    },
    "KmsKeyArn": {
      "type": "string"
    },
    "ListBatchInferenceJobsRequest": {
      "type": "structure",
      "members": {
        "solutionVersionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the solution version from which the batch inference jobs were created.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to request the next page of results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of batch inference job results to return in each page. The default value is 100.</p>"
        }
      }
    },
    "ListBatchInferenceJobsResponse": {
      "type": "structure",
      "members": {
        "batchInferenceJobs": {
          "shape": "BatchInferenceJobs",
          "documentation": "<p>A list containing information on each job that is returned.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to retreive the next page of results. The value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "ListCampaignsRequest": {
      "type": "structure",
      "members": {
        "solutionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the solution to list the campaigns for. When a solution is not specified, all the campaigns associated with the account are listed.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from the previous call to <code>ListCampaigns</code> for getting the next set of campaigns (if they exist).</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of campaigns to return.</p>"
        }
      }
    },
    "ListCampaignsResponse": {
      "type": "structure",
      "members": {
        "campaigns": {
          "shape": "Campaigns",
          "documentation": "<p>A list of the campaigns.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token for getting the next set of campaigns (if they exist).</p>"
        }
      }
    },
    "ListDatasetGroupsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from the previous call to <code>ListDatasetGroups</code> for getting the next set of dataset groups (if they exist).</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of dataset groups to return.</p>"
        }
      }
    },
    "ListDatasetGroupsResponse": {
      "type": "structure",
      "members": {
        "datasetGroups": {
          "shape": "DatasetGroups",
          "documentation": "<p>The list of your dataset groups.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token for getting the next set of dataset groups (if they exist).</p>"
        }
      }
    },
    "ListDatasetImportJobsRequest": {
      "type": "structure",
      "members": {
        "datasetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset to list the dataset import jobs for.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from the previous call to <code>ListDatasetImportJobs</code> for getting the next set of dataset import jobs (if they exist).</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of dataset import jobs to return.</p>"
        }
      }
    },
    "ListDatasetImportJobsResponse": {
      "type": "structure",
      "members": {
        "datasetImportJobs": {
          "shape": "DatasetImportJobs",
          "documentation": "<p>The list of dataset import jobs.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token for getting the next set of dataset import jobs (if they exist).</p>"
        }
      }
    },
    "ListDatasetsRequest": {
      "type": "structure",
      "members": {
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group that contains the datasets to list.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from the previous call to <code>ListDatasetImportJobs</code> for getting the next set of dataset import jobs (if they exist).</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of datasets to return.</p>"
        }
      }
    },
    "ListDatasetsResponse": {
      "type": "structure",
      "members": {
        "datasets": {
          "shape": "Datasets",
          "documentation": "<p>An array of <code>Dataset</code> objects. Each object provides metadata information.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token for getting the next set of datasets (if they exist).</p>"
        }
      }
    },
    "ListEventTrackersRequest": {
      "type": "structure",
      "members": {
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of a dataset group used to filter the response.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from the previous call to <code>ListEventTrackers</code> for getting the next set of event trackers (if they exist).</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of event trackers to return.</p>"
        }
      }
    },
    "ListEventTrackersResponse": {
      "type": "structure",
      "members": {
        "eventTrackers": {
          "shape": "EventTrackers",
          "documentation": "<p>A list of event trackers.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token for getting the next set of event trackers (if they exist).</p>"
        }
      }
    },
    "ListFiltersRequest": {
      "type": "structure",
      "members": {
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dataset group that contains the filters.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from the previous call to <code>ListFilters</code> for getting the next set of filters (if they exist).</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of filters to return.</p>"
        }
      }
    },
    "ListFiltersResponse": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>A list of returned filters.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token for getting the next set of filters (if they exist).</p>"
        }
      }
    },
    "ListRecipesRequest": {
      "type": "structure",
      "members": {
        "recipeProvider": {
          "shape": "RecipeProvider",
          "documentation": "<p>The default is <code>SERVICE</code>.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from the previous call to <code>ListRecipes</code> for getting the next set of recipes (if they exist).</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of recipes to return.</p>"
        }
      }
    },
    "ListRecipesResponse": {
      "type": "structure",
      "members": {
        "recipes": {
          "shape": "Recipes",
          "documentation": "<p>The list of available recipes.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token for getting the next set of recipes.</p>"
        }
      }
    },
    "ListSchemasRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from the previous call to <code>ListSchemas</code> for getting the next set of schemas (if they exist).</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of schemas to return.</p>"
        }
      }
    },
    "ListSchemasResponse": {
      "type": "structure",
      "members": {
        "schemas": {
          "shape": "Schemas",
          "documentation": "<p>A list of schemas.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token used to get the next set of schemas (if they exist).</p>"
        }
      }
    },
    "ListSolutionVersionsRequest": {
      "type": "structure",
      "members": {
        "solutionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the solution.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from the previous call to <code>ListSolutionVersions</code> for getting the next set of solution versions (if they exist).</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of solution versions to return.</p>"
        }
      }
    },
    "ListSolutionVersionsResponse": {
      "type": "structure",
      "members": {
        "solutionVersions": {
          "shape": "SolutionVersions",
          "documentation": "<p>A list of solution versions describing the version properties.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token for getting the next set of solution versions (if they exist).</p>"
        }
      }
    },
    "ListSolutionsRequest": {
      "type": "structure",
      "members": {
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from the previous call to <code>ListSolutions</code> for getting the next set of solutions (if they exist).</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of solutions to return.</p>"
        }
      }
    },
    "ListSolutionsResponse": {
      "type": "structure",
      "members": {
        "solutions": {
          "shape": "Solutions",
          "documentation": "<p>A list of the current solutions.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token for getting the next set of solutions (if they exist).</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "MetricName": {
      "type": "string",
      "max": 256
    },
    "MetricRegex": {
      "type": "string",
      "max": 256
    },
    "MetricValue": {
      "type": "double"
    },
    "Metrics": {
      "type": "map",
      "key": {
        "shape": "MetricName"
      },
      "value": {
        "shape": "MetricValue"
      },
      "max": 100
    },
    "Name": {
      "type": "string",
      "max": 63,
      "min": 1,
      "pattern": "^[a-zA-Z0-9][a-zA-Z0-9\\-_]*"
    },
    "NextToken": {
      "type": "string",
      "max": 1300
    },
    "NumBatchResults": {
      "type": "integer"
    },
    "ParameterName": {
      "type": "string",
      "max": 256
    },
    "ParameterValue": {
      "type": "string",
      "max": 1000
    },
    "PerformAutoML": {
      "type": "boolean"
    },
    "PerformHPO": {
      "type": "boolean"
    },
    "Recipe": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the recipe.</p>"
        },
        "recipeArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the recipe.</p>"
        },
        "algorithmArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the algorithm that Amazon Personalize uses to train the model.</p>"
        },
        "featureTransformationArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the FeatureTransformation object.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the recipe.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The description of the recipe.</p>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix format) that the recipe was created.</p>"
        },
        "recipeType": {
          "shape": "RecipeType",
          "documentation": "<p>One of the following values:</p> <ul> <li> <p>PERSONALIZED_RANKING</p> </li> <li> <p>RELATED_ITEMS</p> </li> <li> <p>USER_PERSONALIZATION</p> </li> </ul>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix format) that the recipe was last updated.</p>"
        }
      },
      "documentation": "<p>Provides information about a recipe. Each recipe provides an algorithm that Amazon Personalize uses in model training when you use the <a>CreateSolution</a> operation. </p>"
    },
    "RecipeProvider": {
      "type": "string",
      "enum": [
        "SERVICE"
      ]
    },
    "RecipeSummary": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the recipe.</p>"
        },
        "recipeArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the recipe.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the recipe.</p>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the recipe was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the recipe was last updated.</p>"
        }
      },
      "documentation": "<p>Provides a summary of the properties of a recipe. For a complete listing, call the <a>DescribeRecipe</a> API.</p>"
    },
    "RecipeType": {
      "type": "string",
      "max": 256
    },
    "Recipes": {
      "type": "list",
      "member": {
        "shape": "RecipeSummary"
      },
      "max": 100
    },
    "ResourceConfig": {
      "type": "map",
      "key": {
        "shape": "ParameterName"
      },
      "value": {
        "shape": "ParameterValue"
      },
      "max": 100
    },
    "RoleArn": {
      "type": "string",
      "max": 256,
      "pattern": "arn:([a-z\\d-]+):iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"
    },
    "S3DataConfig": {
      "type": "structure",
      "required": [
        "path"
      ],
      "members": {
        "path": {
          "shape": "S3Location",
          "documentation": "<p>The file path of the Amazon S3 bucket.</p>"
        },
        "kmsKeyArn": {
          "shape": "KmsKeyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon Key Management Service (KMS) key that Amazon Personalize uses to encrypt or decrypt the input and output files of a batch inference job.</p>"
        }
      },
      "documentation": "<p>The configuration details of an Amazon S3 input or output bucket.</p>"
    },
    "S3Location": {
      "type": "string",
      "max": 256
    },
    "Schemas": {
      "type": "list",
      "member": {
        "shape": "DatasetSchemaSummary"
      },
      "max": 100
    },
    "Solution": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the solution.</p>"
        },
        "solutionArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the solution.</p>"
        },
        "performHPO": {
          "shape": "PerformHPO",
          "documentation": "<p>Whether to perform hyperparameter optimization (HPO) on the chosen recipe. The default is <code>false</code>.</p>"
        },
        "performAutoML": {
          "shape": "PerformAutoML",
          "documentation": "<p>When true, Amazon Personalize performs a search for the best USER_PERSONALIZATION recipe from the list specified in the solution configuration (<code>recipeArn</code> must not be specified). When false (the default), Amazon Personalize uses <code>recipeArn</code> for training.</p>"
        },
        "recipeArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the recipe used to create the solution.</p>"
        },
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group that provides the training data.</p>"
        },
        "eventType": {
          "shape": "EventType",
          "documentation": "<p>The event type (for example, 'click' or 'like') that is used for training the model.</p>"
        },
        "solutionConfig": {
          "shape": "SolutionConfig",
          "documentation": "<p>Describes the configuration properties for the solution.</p>"
        },
        "autoMLResult": {
          "shape": "AutoMLResult",
          "documentation": "<p>When <code>performAutoML</code> is true, specifies the best recipe found.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the solution.</p> <p>A solution can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING &gt; DELETE IN_PROGRESS</p> </li> </ul>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The creation date and time (in Unix time) of the solution.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the solution was last updated.</p>"
        },
        "latestSolutionVersion": {
          "shape": "SolutionVersionSummary",
          "documentation": "<p>Describes the latest version of the solution, including the status and the ARN.</p>"
        }
      },
      "documentation": "<p>An object that provides information about a solution. A solution is a trained model that can be deployed as a campaign.</p>"
    },
    "SolutionConfig": {
      "type": "structure",
      "members": {
        "eventValueThreshold": {
          "shape": "EventValueThreshold",
          "documentation": "<p>Only events with a value greater than or equal to this threshold are used for training a model.</p>"
        },
        "hpoConfig": {
          "shape": "HPOConfig",
          "documentation": "<p>Describes the properties for hyperparameter optimization (HPO).</p>"
        },
        "algorithmHyperParameters": {
          "shape": "HyperParameters",
          "documentation": "<p>Lists the hyperparameter names and ranges.</p>"
        },
        "featureTransformationParameters": {
          "shape": "FeatureTransformationParameters",
          "documentation": "<p>Lists the feature transformation parameters.</p>"
        },
        "autoMLConfig": {
          "shape": "AutoMLConfig",
          "documentation": "<p>The <a>AutoMLConfig</a> object containing a list of recipes to search when AutoML is performed.</p>"
        }
      },
      "documentation": "<p>Describes the configuration properties for the solution.</p>"
    },
    "SolutionSummary": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the solution.</p>"
        },
        "solutionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the solution.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the solution.</p> <p>A solution can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> <li> <p>DELETE PENDING &gt; DELETE IN_PROGRESS</p> </li> </ul>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the solution was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the solution was last updated.</p>"
        }
      },
      "documentation": "<p>Provides a summary of the properties of a solution. For a complete listing, call the <a>DescribeSolution</a> API.</p>"
    },
    "SolutionVersion": {
      "type": "structure",
      "members": {
        "solutionVersionArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the solution version.</p>"
        },
        "solutionArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the solution.</p>"
        },
        "performHPO": {
          "shape": "PerformHPO",
          "documentation": "<p>Whether to perform hyperparameter optimization (HPO) on the chosen recipe. The default is <code>false</code>.</p>"
        },
        "performAutoML": {
          "shape": "PerformAutoML",
          "documentation": "<p>When true, Amazon Personalize searches for the most optimal recipe according to the solution configuration. When false (the default), Amazon Personalize uses <code>recipeArn</code>.</p>"
        },
        "recipeArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the recipe used in the solution.</p>"
        },
        "eventType": {
          "shape": "EventType",
          "documentation": "<p>The event type (for example, 'click' or 'like') that is used for training the model.</p>"
        },
        "datasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group providing the training data.</p>"
        },
        "solutionConfig": {
          "shape": "SolutionConfig",
          "documentation": "<p>Describes the configuration properties for the solution.</p>"
        },
        "trainingHours": {
          "shape": "TrainingHours",
          "documentation": "<p>The time used to train the model. You are billed for the time it takes to train a model. This field is visible only after Amazon Personalize successfully trains a model.</p>"
        },
        "trainingMode": {
          "shape": "TrainingMode",
          "documentation": "<p>The scope of training used to create the solution version. The <code>FULL</code> option trains the solution version based on the entirety of the input solution's training data, while the <code>UPDATE</code> option processes only the training data that has changed since the creation of the last solution version. Choose <code>UPDATE</code> when you want to start recommending items added to the dataset without retraining the model.</p> <important> <p>The <code>UPDATE</code> option can only be used after you've created a solution version with the <code>FULL</code> option and the training solution uses the <a>native-recipe-hrnn-coldstart</a>.</p> </important>"
        },
        "tunedHPOParams": {
          "shape": "TunedHPOParams",
          "documentation": "<p>If hyperparameter optimization was performed, contains the hyperparameter values of the best performing model.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the solution version.</p> <p>A solution version can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING</p> </li> <li> <p>CREATE IN_PROGRESS</p> </li> <li> <p>ACTIVE</p> </li> <li> <p>CREATE FAILED</p> </li> </ul>"
        },
        "failureReason": {
          "shape": "FailureReason",
          "documentation": "<p>If training a solution version fails, the reason for the failure.</p>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that this version of the solution was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the solution was last updated.</p>"
        }
      },
      "documentation": "<p>An object that provides information about a specific version of a <a>Solution</a>.</p>"
    },
    "SolutionVersionSummary": {
      "type": "structure",
      "members": {
        "solutionVersionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the solution version.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the solution version.</p> <p>A solution version can be in one of the following states:</p> <ul> <li> <p>CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED</p> </li> </ul>"
        },
        "creationDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that this version of a solution was created.</p>"
        },
        "lastUpdatedDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time (in Unix time) that the solution version was last updated.</p>"
        },
        "failureReason": {
          "shape": "FailureReason",
          "documentation": "<p>If a solution version fails, the reason behind the failure.</p>"
        }
      },
      "documentation": "<p>Provides a summary of the properties of a solution version. For a complete listing, call the <a>DescribeSolutionVersion</a> API.</p>"
    },
    "SolutionVersions": {
      "type": "list",
      "member": {
        "shape": "SolutionVersionSummary"
      },
      "max": 100
    },
    "Solutions": {
      "type": "list",
      "member": {
        "shape": "SolutionSummary"
      },
      "max": 100
    },
    "Status": {
      "type": "string",
      "max": 256
    },
    "TrackingId": {
      "type": "string",
      "max": 256
    },
    "TrainingHours": {
      "type": "double",
      "min": 0
    },
    "TrainingInputMode": {
      "type": "string",
      "max": 256
    },
    "TrainingMode": {
      "type": "string",
      "enum": [
        "FULL",
        "UPDATE"
      ]
    },
    "TransactionsPerSecond": {
      "type": "integer",
      "min": 1
    },
    "Tunable": {
      "type": "boolean"
    },
    "TunedHPOParams": {
      "type": "structure",
      "members": {
        "algorithmHyperParameters": {
          "shape": "HyperParameters",
          "documentation": "<p>A list of the hyperparameter values of the best performing model.</p>"
        }
      },
      "documentation": "<p>If hyperparameter optimization (HPO) was performed, contains the hyperparameter values of the best performing model.</p>"
    },
    "UpdateCampaignRequest": {
      "type": "structure",
      "required": [
        "campaignArn"
      ],
      "members": {
        "campaignArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the campaign.</p>"
        },
        "solutionVersionArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of a new solution version to deploy.</p>"
        },
        "minProvisionedTPS": {
          "shape": "TransactionsPerSecond",
          "documentation": "<p>Specifies the requested minimum provisioned transactions (recommendations) per second that Amazon Personalize will support.</p>"
        },
        "campaignConfig": {
          "shape": "CampaignConfig",
          "documentation": "<p>The configuration details of a campaign.</p>"
        }
      }
    },
    "UpdateCampaignResponse": {
      "type": "structure",
      "members": {
        "campaignArn": {
          "shape": "Arn",
          "documentation": "<p>The same campaign ARN as given in the request.</p>"
        }
      }
    }
  },
  "documentation": "<p>Amazon Personalize is a machine learning service that makes it easy to add individualized recommendations to customers.</p>"
}
]===]))
