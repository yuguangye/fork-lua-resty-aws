local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2016-10-06",
    "endpointPrefix": "codebuild",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS CodeBuild",
    "serviceId": "CodeBuild",
    "signatureVersion": "v4",
    "targetPrefix": "CodeBuild_20161006",
    "uid": "codebuild-2016-10-06"
  },
  "operations": {
    "BatchDeleteBuilds": {
      "name": "BatchDeleteBuilds",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchDeleteBuildsInput"
      },
      "output": {
        "shape": "BatchDeleteBuildsOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Deletes one or more builds.</p>"
    },
    "BatchGetBuildBatches": {
      "name": "BatchGetBuildBatches",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetBuildBatchesInput"
      },
      "output": {
        "shape": "BatchGetBuildBatchesOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Retrieves information about one or more batch builds.</p>"
    },
    "BatchGetBuilds": {
      "name": "BatchGetBuilds",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetBuildsInput"
      },
      "output": {
        "shape": "BatchGetBuildsOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Gets information about one or more builds.</p>"
    },
    "BatchGetProjects": {
      "name": "BatchGetProjects",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetProjectsInput"
      },
      "output": {
        "shape": "BatchGetProjectsOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Gets information about one or more build projects.</p>"
    },
    "BatchGetReportGroups": {
      "name": "BatchGetReportGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetReportGroupsInput"
      },
      "output": {
        "shape": "BatchGetReportGroupsOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p> Returns an array of report groups. </p>"
    },
    "BatchGetReports": {
      "name": "BatchGetReports",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetReportsInput"
      },
      "output": {
        "shape": "BatchGetReportsOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p> Returns an array of reports. </p>"
    },
    "CreateProject": {
      "name": "CreateProject",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateProjectInput"
      },
      "output": {
        "shape": "CreateProjectOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "AccountLimitExceededException"
        }
      ],
      "documentation": "<p>Creates a build project.</p>"
    },
    "CreateReportGroup": {
      "name": "CreateReportGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateReportGroupInput"
      },
      "output": {
        "shape": "CreateReportGroupOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "AccountLimitExceededException"
        }
      ],
      "documentation": "<p> Creates a report group. A report group contains a collection of reports. </p>"
    },
    "CreateWebhook": {
      "name": "CreateWebhook",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateWebhookInput"
      },
      "output": {
        "shape": "CreateWebhookOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OAuthProviderException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to start rebuilding the source code every time a code change is pushed to the repository.</p> <important> <p>If you enable webhooks for an AWS CodeBuild project, and the project is used as a build step in AWS CodePipeline, then two identical builds are created for each commit. One build is triggered through webhooks, and one through AWS CodePipeline. Because billing is on a per-build basis, you are billed for both builds. Therefore, if you are using AWS CodePipeline, we recommend that you disable webhooks in AWS CodeBuild. In the AWS CodeBuild console, clear the Webhook box. For more information, see step 5 in <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console\">Change a Build Project's Settings</a>.</p> </important>"
    },
    "DeleteBuildBatch": {
      "name": "DeleteBuildBatch",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteBuildBatchInput"
      },
      "output": {
        "shape": "DeleteBuildBatchOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Deletes a batch build.</p>"
    },
    "DeleteProject": {
      "name": "DeleteProject",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteProjectInput"
      },
      "output": {
        "shape": "DeleteProjectOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p> Deletes a build project. When you delete a project, its builds are not deleted. </p>"
    },
    "DeleteReport": {
      "name": "DeleteReport",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteReportInput"
      },
      "output": {
        "shape": "DeleteReportOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p> Deletes a report. </p>"
    },
    "DeleteReportGroup": {
      "name": "DeleteReportGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteReportGroupInput"
      },
      "output": {
        "shape": "DeleteReportGroupOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Deletes a report group. Before you delete a report group, you must delete its reports. </p>"
    },
    "DeleteResourcePolicy": {
      "name": "DeleteResourcePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteResourcePolicyInput"
      },
      "output": {
        "shape": "DeleteResourcePolicyOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p> Deletes a resource policy that is identified by its resource ARN. </p>"
    },
    "DeleteSourceCredentials": {
      "name": "DeleteSourceCredentials",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSourceCredentialsInput"
      },
      "output": {
        "shape": "DeleteSourceCredentialsOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials. </p>"
    },
    "DeleteWebhook": {
      "name": "DeleteWebhook",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteWebhookInput"
      },
      "output": {
        "shape": "DeleteWebhookOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "OAuthProviderException"
        }
      ],
      "documentation": "<p>For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from rebuilding the source code every time a code change is pushed to the repository.</p>"
    },
    "DescribeCodeCoverages": {
      "name": "DescribeCodeCoverages",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCodeCoveragesInput"
      },
      "output": {
        "shape": "DescribeCodeCoveragesOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Retrieves one or more code coverage reports.</p>"
    },
    "DescribeTestCases": {
      "name": "DescribeTestCases",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTestCasesInput"
      },
      "output": {
        "shape": "DescribeTestCasesOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Returns a list of details about test cases for a report. </p>"
    },
    "GetResourcePolicy": {
      "name": "GetResourcePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetResourcePolicyInput"
      },
      "output": {
        "shape": "GetResourcePolicyOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p> Gets a resource policy that is identified by its resource ARN. </p>"
    },
    "ImportSourceCredentials": {
      "name": "ImportSourceCredentials",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ImportSourceCredentialsInput"
      },
      "output": {
        "shape": "ImportSourceCredentialsOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "AccountLimitExceededException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        }
      ],
      "documentation": "<p> Imports the source repository credentials for an AWS CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository. </p>"
    },
    "InvalidateProjectCache": {
      "name": "InvalidateProjectCache",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "InvalidateProjectCacheInput"
      },
      "output": {
        "shape": "InvalidateProjectCacheOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Resets the cache for a project.</p>"
    },
    "ListBuildBatches": {
      "name": "ListBuildBatches",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListBuildBatchesInput"
      },
      "output": {
        "shape": "ListBuildBatchesOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Retrieves the identifiers of your build batches in the current region.</p>"
    },
    "ListBuildBatchesForProject": {
      "name": "ListBuildBatchesForProject",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListBuildBatchesForProjectInput"
      },
      "output": {
        "shape": "ListBuildBatchesForProjectOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Retrieves the identifiers of the build batches for a specific project.</p>"
    },
    "ListBuilds": {
      "name": "ListBuilds",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListBuildsInput"
      },
      "output": {
        "shape": "ListBuildsOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Gets a list of build IDs, with each build ID representing a single build.</p>"
    },
    "ListBuildsForProject": {
      "name": "ListBuildsForProject",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListBuildsForProjectInput"
      },
      "output": {
        "shape": "ListBuildsForProjectOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets a list of build IDs for the specified build project, with each build ID representing a single build.</p>"
    },
    "ListCuratedEnvironmentImages": {
      "name": "ListCuratedEnvironmentImages",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListCuratedEnvironmentImagesInput"
      },
      "output": {
        "shape": "ListCuratedEnvironmentImagesOutput"
      },
      "documentation": "<p>Gets information about Docker images that are managed by AWS CodeBuild.</p>"
    },
    "ListProjects": {
      "name": "ListProjects",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListProjectsInput"
      },
      "output": {
        "shape": "ListProjectsOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Gets a list of build project names, with each build project name representing a single build project.</p>"
    },
    "ListReportGroups": {
      "name": "ListReportGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListReportGroupsInput"
      },
      "output": {
        "shape": "ListReportGroupsOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p> Gets a list ARNs for the report groups in the current AWS account. </p>"
    },
    "ListReports": {
      "name": "ListReports",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListReportsInput"
      },
      "output": {
        "shape": "ListReportsOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p> Returns a list of ARNs for the reports in the current AWS account. </p>"
    },
    "ListReportsForReportGroup": {
      "name": "ListReportsForReportGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListReportsForReportGroupInput"
      },
      "output": {
        "shape": "ListReportsForReportGroupOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Returns a list of ARNs for the reports that belong to a <code>ReportGroup</code>. </p>"
    },
    "ListSharedProjects": {
      "name": "ListSharedProjects",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSharedProjectsInput"
      },
      "output": {
        "shape": "ListSharedProjectsOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p> Gets a list of projects that are shared with other AWS accounts or users. </p>"
    },
    "ListSharedReportGroups": {
      "name": "ListSharedReportGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSharedReportGroupsInput"
      },
      "output": {
        "shape": "ListSharedReportGroupsOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p> Gets a list of report groups that are shared with other AWS accounts or users. </p>"
    },
    "ListSourceCredentials": {
      "name": "ListSourceCredentials",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSourceCredentialsInput"
      },
      "output": {
        "shape": "ListSourceCredentialsOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p> Returns a list of <code>SourceCredentialsInfo</code> objects. </p>"
    },
    "PutResourcePolicy": {
      "name": "PutResourcePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutResourcePolicyInput"
      },
      "output": {
        "shape": "PutResourcePolicyOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p> Stores a resource policy for the ARN of a <code>Project</code> or <code>ReportGroup</code> object. </p>"
    },
    "RetryBuild": {
      "name": "RetryBuild",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RetryBuildInput"
      },
      "output": {
        "shape": "RetryBuildOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccountLimitExceededException"
        }
      ],
      "documentation": "<p>Restarts a build.</p>"
    },
    "RetryBuildBatch": {
      "name": "RetryBuildBatch",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RetryBuildBatchInput"
      },
      "output": {
        "shape": "RetryBuildBatchOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Restarts a batch build.</p>"
    },
    "StartBuild": {
      "name": "StartBuild",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartBuildInput"
      },
      "output": {
        "shape": "StartBuildOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccountLimitExceededException"
        }
      ],
      "documentation": "<p>Starts running a build.</p>"
    },
    "StartBuildBatch": {
      "name": "StartBuildBatch",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartBuildBatchInput"
      },
      "output": {
        "shape": "StartBuildBatchOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Starts a batch build for a project.</p>"
    },
    "StopBuild": {
      "name": "StopBuild",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopBuildInput"
      },
      "output": {
        "shape": "StopBuildOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Attempts to stop running a build.</p>"
    },
    "StopBuildBatch": {
      "name": "StopBuildBatch",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopBuildBatchInput"
      },
      "output": {
        "shape": "StopBuildBatchOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Stops a running batch build.</p>"
    },
    "UpdateProject": {
      "name": "UpdateProject",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateProjectInput"
      },
      "output": {
        "shape": "UpdateProjectOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Changes the settings of a build project.</p>"
    },
    "UpdateReportGroup": {
      "name": "UpdateReportGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateReportGroupInput"
      },
      "output": {
        "shape": "UpdateReportGroupOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Updates a report group. </p>"
    },
    "UpdateWebhook": {
      "name": "UpdateWebhook",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateWebhookInput"
      },
      "output": {
        "shape": "UpdateWebhookOutput"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "OAuthProviderException"
        }
      ],
      "documentation": "<p> Updates the webhook associated with an AWS CodeBuild build project. </p> <note> <p> If you use Bitbucket for your repository, <code>rotateSecret</code> is ignored. </p> </note>"
    }
  },
  "shapes": {
    "ArtifactNamespace": {
      "type": "string",
      "enum": [
        "NONE",
        "BUILD_ID"
      ]
    },
    "ArtifactPackaging": {
      "type": "string",
      "enum": [
        "NONE",
        "ZIP"
      ]
    },
    "ArtifactsType": {
      "type": "string",
      "enum": [
        "CODEPIPELINE",
        "S3",
        "NO_ARTIFACTS"
      ]
    },
    "AuthType": {
      "type": "string",
      "enum": [
        "OAUTH",
        "BASIC_AUTH",
        "PERSONAL_ACCESS_TOKEN"
      ]
    },
    "BatchDeleteBuildsInput": {
      "type": "structure",
      "required": [
        "ids"
      ],
      "members": {
        "ids": {
          "shape": "BuildIds",
          "documentation": "<p>The IDs of the builds to delete.</p>"
        }
      }
    },
    "BatchDeleteBuildsOutput": {
      "type": "structure",
      "members": {
        "buildsDeleted": {
          "shape": "BuildIds",
          "documentation": "<p>The IDs of the builds that were successfully deleted.</p>"
        },
        "buildsNotDeleted": {
          "shape": "BuildsNotDeleted",
          "documentation": "<p>Information about any builds that could not be successfully deleted.</p>"
        }
      }
    },
    "BatchGetBuildBatchesInput": {
      "type": "structure",
      "required": [
        "ids"
      ],
      "members": {
        "ids": {
          "shape": "BuildBatchIds",
          "documentation": "<p>An array that contains the batch build identifiers to retrieve.</p>"
        }
      }
    },
    "BatchGetBuildBatchesOutput": {
      "type": "structure",
      "members": {
        "buildBatches": {
          "shape": "BuildBatches",
          "documentation": "<p>An array of <code>BuildBatch</code> objects that represent the retrieved batch builds.</p>"
        },
        "buildBatchesNotFound": {
          "shape": "BuildBatchIds",
          "documentation": "<p>An array that contains the identifiers of any batch builds that are not found.</p>"
        }
      }
    },
    "BatchGetBuildsInput": {
      "type": "structure",
      "required": [
        "ids"
      ],
      "members": {
        "ids": {
          "shape": "BuildIds",
          "documentation": "<p>The IDs of the builds.</p>"
        }
      }
    },
    "BatchGetBuildsOutput": {
      "type": "structure",
      "members": {
        "builds": {
          "shape": "Builds",
          "documentation": "<p>Information about the requested builds.</p>"
        },
        "buildsNotFound": {
          "shape": "BuildIds",
          "documentation": "<p>The IDs of builds for which information could not be found.</p>"
        }
      }
    },
    "BatchGetProjectsInput": {
      "type": "structure",
      "required": [
        "names"
      ],
      "members": {
        "names": {
          "shape": "ProjectNames",
          "documentation": "<p>The names or ARNs of the build projects. To get information about a project shared with your AWS account, its ARN must be specified. You cannot specify a shared project using its name.</p>"
        }
      }
    },
    "BatchGetProjectsOutput": {
      "type": "structure",
      "members": {
        "projects": {
          "shape": "Projects",
          "documentation": "<p>Information about the requested build projects.</p>"
        },
        "projectsNotFound": {
          "shape": "ProjectNames",
          "documentation": "<p>The names of build projects for which information could not be found.</p>"
        }
      }
    },
    "BatchGetReportGroupsInput": {
      "type": "structure",
      "required": [
        "reportGroupArns"
      ],
      "members": {
        "reportGroupArns": {
          "shape": "ReportGroupArns",
          "documentation": "<p> An array of report group ARNs that identify the report groups to return. </p>"
        }
      }
    },
    "BatchGetReportGroupsOutput": {
      "type": "structure",
      "members": {
        "reportGroups": {
          "shape": "ReportGroups",
          "documentation": "<p> The array of report groups returned by <code>BatchGetReportGroups</code>. </p>"
        },
        "reportGroupsNotFound": {
          "shape": "ReportGroupArns",
          "documentation": "<p> An array of ARNs passed to <code>BatchGetReportGroups</code> that are not associated with a <code>ReportGroup</code>. </p>"
        }
      }
    },
    "BatchGetReportsInput": {
      "type": "structure",
      "required": [
        "reportArns"
      ],
      "members": {
        "reportArns": {
          "shape": "ReportArns",
          "documentation": "<p> An array of ARNs that identify the <code>Report</code> objects to return. </p>"
        }
      }
    },
    "BatchGetReportsOutput": {
      "type": "structure",
      "members": {
        "reports": {
          "shape": "Reports",
          "documentation": "<p> The array of <code>Report</code> objects returned by <code>BatchGetReports</code>. </p>"
        },
        "reportsNotFound": {
          "shape": "ReportArns",
          "documentation": "<p> An array of ARNs passed to <code>BatchGetReportGroups</code> that are not associated with a <code>Report</code>. </p>"
        }
      }
    },
    "BatchRestrictions": {
      "type": "structure",
      "members": {
        "maximumBuildsAllowed": {
          "shape": "WrapperInt",
          "documentation": "<p>Specifies the maximum number of builds allowed.</p>"
        },
        "computeTypesAllowed": {
          "shape": "ComputeTypesAllowed",
          "documentation": "<p>An array of strings that specify the compute types that are allowed for the batch build. See <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html\">Build environment compute types</a> in the <i>AWS CodeBuild User Guide</i> for these values. </p>"
        }
      },
      "documentation": "<p>Specifies restrictions for the batch build.</p>"
    },
    "Boolean": {
      "type": "boolean"
    },
    "Build": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "NonEmptyString",
          "documentation": "<p>The unique ID for the build.</p>"
        },
        "arn": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the build.</p>"
        },
        "buildNumber": {
          "shape": "WrapperLong",
          "documentation": "<p>The number of the build. For each project, the <code>buildNumber</code> of its first build is <code>1</code>. The <code>buildNumber</code> of each subsequent build is incremented by <code>1</code>. If a build is deleted, the <code>buildNumber</code> of other builds does not change.</p>"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the build process started, expressed in Unix time format.</p>"
        },
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the build process ended, expressed in Unix time format.</p>"
        },
        "currentPhase": {
          "shape": "String",
          "documentation": "<p>The current build phase.</p>"
        },
        "buildStatus": {
          "shape": "StatusType",
          "documentation": "<p>The current status of the build. Valid values include:</p> <ul> <li> <p> <code>FAILED</code>: The build failed.</p> </li> <li> <p> <code>FAULT</code>: The build faulted.</p> </li> <li> <p> <code>IN_PROGRESS</code>: The build is still in progress.</p> </li> <li> <p> <code>STOPPED</code>: The build stopped.</p> </li> <li> <p> <code>SUCCEEDED</code>: The build succeeded.</p> </li> <li> <p> <code>TIMED_OUT</code>: The build timed out.</p> </li> </ul>"
        },
        "sourceVersion": {
          "shape": "NonEmptyString",
          "documentation": "<p>Any version identifier for the version of the source code to be built. If <code>sourceVersion</code> is specified at the project level, then this <code>sourceVersion</code> (at the build level) takes precedence. </p> <p> For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html\">Source Version Sample with CodeBuild</a> in the <i>AWS CodeBuild User Guide</i>. </p>"
        },
        "resolvedSourceVersion": {
          "shape": "NonEmptyString",
          "documentation": "<p> An identifier for the version of this build's source code. </p> <ul> <li> <p> For AWS CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the commit ID. </p> </li> <li> <p> For AWS CodePipeline, the source revision provided by AWS CodePipeline. </p> </li> <li> <p> For Amazon Simple Storage Service (Amazon S3), this does not apply. </p> </li> </ul>"
        },
        "projectName": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of the AWS CodeBuild project.</p>"
        },
        "phases": {
          "shape": "BuildPhases",
          "documentation": "<p>Information about all previous build phases that are complete and information about any current build phase that is not yet complete.</p>"
        },
        "source": {
          "shape": "ProjectSource",
          "documentation": "<p>Information about the source code to be built.</p>"
        },
        "secondarySources": {
          "shape": "ProjectSources",
          "documentation": "<p> An array of <code>ProjectSource</code> objects. </p>"
        },
        "secondarySourceVersions": {
          "shape": "ProjectSecondarySourceVersions",
          "documentation": "<p> An array of <code>ProjectSourceVersion</code> objects. Each <code>ProjectSourceVersion</code> must be one of: </p> <ul> <li> <p>For AWS CodeCommit: the commit ID, branch, or Git tag to use.</p> </li> <li> <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example, <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Amazon Simple Storage Service (Amazon S3): the version ID of the object that represents the build input ZIP file to use.</p> </li> </ul>"
        },
        "artifacts": {
          "shape": "BuildArtifacts",
          "documentation": "<p>Information about the output artifacts for the build.</p>"
        },
        "secondaryArtifacts": {
          "shape": "BuildArtifactsList",
          "documentation": "<p> An array of <code>ProjectArtifacts</code> objects. </p>"
        },
        "cache": {
          "shape": "ProjectCache",
          "documentation": "<p>Information about the cache for the build.</p>"
        },
        "environment": {
          "shape": "ProjectEnvironment",
          "documentation": "<p>Information about the build environment for this build.</p>"
        },
        "serviceRole": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of a service role used for this build.</p>"
        },
        "logs": {
          "shape": "LogsLocation",
          "documentation": "<p>Information about the build's logs in Amazon CloudWatch Logs.</p>"
        },
        "timeoutInMinutes": {
          "shape": "WrapperInt",
          "documentation": "<p>How long, in minutes, for AWS CodeBuild to wait before timing out this build if it does not get marked as completed.</p>"
        },
        "queuedTimeoutInMinutes": {
          "shape": "WrapperInt",
          "documentation": "<p> The number of minutes a build is allowed to be queued before it times out. </p>"
        },
        "buildComplete": {
          "shape": "Boolean",
          "documentation": "<p>Whether the build is complete. True if complete; otherwise, false.</p>"
        },
        "initiator": {
          "shape": "String",
          "documentation": "<p>The entity that started the build. Valid values include:</p> <ul> <li> <p>If AWS CodePipeline started the build, the pipeline's name (for example, <code>codepipeline/my-demo-pipeline</code>).</p> </li> <li> <p>If an AWS Identity and Access Management (IAM) user started the build, the user's name (for example, <code>MyUserName</code>).</p> </li> <li> <p>If the Jenkins plugin for AWS CodeBuild started the build, the string <code>CodeBuild-Jenkins-Plugin</code>.</p> </li> </ul>"
        },
        "vpcConfig": {
          "shape": "VpcConfig",
          "documentation": "<p>If your AWS CodeBuild project accesses resources in an Amazon VPC, you provide this parameter that identifies the VPC ID and the list of security group IDs and subnet IDs. The security groups and subnets must belong to the same VPC. You must provide at least one security group and one subnet ID.</p>"
        },
        "networkInterface": {
          "shape": "NetworkInterface",
          "documentation": "<p>Describes a network interface.</p>"
        },
        "encryptionKey": {
          "shape": "NonEmptyString",
          "documentation": "<p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.</p> <note> <p> You can use a cross-account KMS key to encrypt the build output artifacts if your service role has permission to that key. </p> </note> <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format <code>alias/&lt;alias-name&gt;</code>).</p>"
        },
        "exportedEnvironmentVariables": {
          "shape": "ExportedEnvironmentVariables",
          "documentation": "<p> A list of exported environment variables for this build. </p>"
        },
        "reportArns": {
          "shape": "BuildReportArns",
          "documentation": "<p> An array of the ARNs associated with this build's reports. </p>"
        },
        "fileSystemLocations": {
          "shape": "ProjectFileSystemLocations",
          "documentation": "<p> An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System. </p>"
        },
        "debugSession": {
          "shape": "DebugSession",
          "documentation": "<p>Contains information about the debug session for this build.</p>"
        },
        "buildBatchArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the batch build that this build is a member of, if applicable.</p>"
        }
      },
      "documentation": "<p>Information about a build.</p>"
    },
    "BuildArtifacts": {
      "type": "structure",
      "members": {
        "location": {
          "shape": "String",
          "documentation": "<p>Information about the location of the build artifacts.</p>"
        },
        "sha256sum": {
          "shape": "String",
          "documentation": "<p>The SHA-256 hash of the build artifact.</p> <p>You can use this hash along with a checksum tool to confirm file integrity and authenticity.</p> <note> <p>This value is available only if the build project's <code>packaging</code> value is set to <code>ZIP</code>.</p> </note>"
        },
        "md5sum": {
          "shape": "String",
          "documentation": "<p>The MD5 hash of the build artifact.</p> <p>You can use this hash along with a checksum tool to confirm file integrity and authenticity.</p> <note> <p>This value is available only if the build project's <code>packaging</code> value is set to <code>ZIP</code>.</p> </note>"
        },
        "overrideArtifactName": {
          "shape": "WrapperBoolean",
          "documentation": "<p> If this flag is set, a name specified in the buildspec file overrides the artifact name. The name specified in a buildspec file is calculated at build time and uses the Shell Command Language. For example, you can append a date and time to your artifact name so that it is always unique. </p>"
        },
        "encryptionDisabled": {
          "shape": "WrapperBoolean",
          "documentation": "<p> Information that tells you if encryption for build artifacts is disabled. </p>"
        },
        "artifactIdentifier": {
          "shape": "String",
          "documentation": "<p> An identifier for this artifact definition. </p>"
        }
      },
      "documentation": "<p>Information about build output artifacts.</p>"
    },
    "BuildArtifactsList": {
      "type": "list",
      "member": {
        "shape": "BuildArtifacts"
      },
      "max": 12,
      "min": 0
    },
    "BuildBatch": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "NonEmptyString",
          "documentation": "<p>The identifier of the batch build.</p>"
        },
        "arn": {
          "shape": "NonEmptyString",
          "documentation": "<p>The ARN of the batch build.</p>"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the batch build started.</p>"
        },
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the batch build ended.</p>"
        },
        "currentPhase": {
          "shape": "String",
          "documentation": "<p>The current phase of the batch build.</p>"
        },
        "buildBatchStatus": {
          "shape": "StatusType",
          "documentation": "<p>The status of the batch build.</p>"
        },
        "sourceVersion": {
          "shape": "NonEmptyString",
          "documentation": "<p>The identifier of the version of the source code to be built.</p>"
        },
        "resolvedSourceVersion": {
          "shape": "NonEmptyString",
          "documentation": "<p>The identifier of the resolved version of this batch build's source code.</p> <ul> <li> <p>For AWS CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the commit ID.</p> </li> <li> <p>For AWS CodePipeline, the source revision provided by AWS CodePipeline.</p> </li> <li> <p>For Amazon Simple Storage Service (Amazon S3), this does not apply.</p> </li> </ul>"
        },
        "projectName": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of the batch build project.</p>"
        },
        "phases": {
          "shape": "BuildBatchPhases",
          "documentation": "<p>An array of <code>BuildBatchPhase</code> objects the specify the phases of the batch build.</p>"
        },
        "source": {
          "shape": "ProjectSource"
        },
        "secondarySources": {
          "shape": "ProjectSources",
          "documentation": "<p>An array of <code>ProjectSource</code> objects that define the sources for the batch build.</p>"
        },
        "secondarySourceVersions": {
          "shape": "ProjectSecondarySourceVersions",
          "documentation": "<p>An array of <code>ProjectSourceVersion</code> objects. Each <code>ProjectSourceVersion</code> must be one of: </p> <ul> <li> <p>For AWS CodeCommit: the commit ID, branch, or Git tag to use.</p> </li> <li> <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example, <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Amazon Simple Storage Service (Amazon S3): the version ID of the object that represents the build input ZIP file to use.</p> </li> </ul>"
        },
        "artifacts": {
          "shape": "BuildArtifacts",
          "documentation": "<p>A <code>BuildArtifacts</code> object the defines the build artifacts for this batch build.</p>"
        },
        "secondaryArtifacts": {
          "shape": "BuildArtifactsList",
          "documentation": "<p>An array of <code>BuildArtifacts</code> objects the define the build artifacts for this batch build.</p>"
        },
        "cache": {
          "shape": "ProjectCache"
        },
        "environment": {
          "shape": "ProjectEnvironment"
        },
        "serviceRole": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of a service role used for builds in the batch.</p>"
        },
        "logConfig": {
          "shape": "LogsConfig"
        },
        "buildTimeoutInMinutes": {
          "shape": "WrapperInt",
          "documentation": "<p>Specifies the maximum amount of time, in minutes, that the build in a batch must be completed in.</p>"
        },
        "queuedTimeoutInMinutes": {
          "shape": "WrapperInt",
          "documentation": "<p>Specifies the amount of time, in minutes, that the batch build is allowed to be queued before it times out.</p>"
        },
        "complete": {
          "shape": "Boolean",
          "documentation": "<p>Indicates if the batch build is complete.</p>"
        },
        "initiator": {
          "shape": "String",
          "documentation": "<p>The entity that started the batch build. Valid values include:</p> <ul> <li> <p>If AWS CodePipeline started the build, the pipeline's name (for example, <code>codepipeline/my-demo-pipeline</code>).</p> </li> <li> <p>If an AWS Identity and Access Management (IAM) user started the build, the user's name.</p> </li> <li> <p>If the Jenkins plugin for AWS CodeBuild started the build, the string <code>CodeBuild-Jenkins-Plugin</code>.</p> </li> </ul>"
        },
        "vpcConfig": {
          "shape": "VpcConfig"
        },
        "encryptionKey": {
          "shape": "NonEmptyString",
          "documentation": "<p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the batch build output artifacts.</p> <note> <p>You can use a cross-account KMS key to encrypt the build output artifacts if your service role has permission to that key. </p> </note> <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format <code>alias/&lt;alias-name&gt;</code>).</p>"
        },
        "buildBatchNumber": {
          "shape": "WrapperLong",
          "documentation": "<p>The number of the batch build. For each project, the <code>buildBatchNumber</code> of its first batch build is <code>1</code>. The <code>buildBatchNumber</code> of each subsequent batch build is incremented by <code>1</code>. If a batch build is deleted, the <code>buildBatchNumber</code> of other batch builds does not change.</p>"
        },
        "fileSystemLocations": {
          "shape": "ProjectFileSystemLocations",
          "documentation": "<p>An array of <code>ProjectFileSystemLocation</code> objects for the batch build project. A <code>ProjectFileSystemLocation</code> object specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System. </p>"
        },
        "buildBatchConfig": {
          "shape": "ProjectBuildBatchConfig"
        },
        "buildGroups": {
          "shape": "BuildGroups",
          "documentation": "<p>An array of <code>BuildGroup</code> objects that define the build groups for the batch build.</p>"
        }
      },
      "documentation": "<p>Contains information about a batch build.</p>"
    },
    "BuildBatchFilter": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "StatusType",
          "documentation": "<p>The status of the batch builds to retrieve. Only batch builds that have this status will be retrieved.</p>"
        }
      },
      "documentation": "<p>Specifies filters when retrieving batch builds.</p>"
    },
    "BuildBatchIds": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      },
      "max": 100,
      "min": 0
    },
    "BuildBatchPhase": {
      "type": "structure",
      "members": {
        "phaseType": {
          "shape": "BuildBatchPhaseType",
          "documentation": "<p>The name of the batch build phase. Valid values include:</p> <dl> <dt>COMBINE_ARTIFACTS</dt> <dd> <p>Build output artifacts are being combined and uploaded to the output location.</p> </dd> <dt>DOWNLOAD_BATCHSPEC</dt> <dd> <p>The batch build specification is being downloaded.</p> </dd> <dt>FAILED</dt> <dd> <p>One or more of the builds failed.</p> </dd> <dt>IN_PROGRESS</dt> <dd> <p>The batch build is in progress.</p> </dd> <dt>STOPPED</dt> <dd> <p>The batch build was stopped.</p> </dd> <dt>SUBMITTED</dt> <dd> <p>The btach build has been submitted.</p> </dd> <dt>SUCCEEDED</dt> <dd> <p>The batch build succeeded.</p> </dd> </dl>"
        },
        "phaseStatus": {
          "shape": "StatusType",
          "documentation": "<p>The current status of the batch build phase. Valid values include:</p> <dl> <dt>FAILED</dt> <dd> <p>The build phase failed.</p> </dd> <dt>FAULT</dt> <dd> <p>The build phase faulted.</p> </dd> <dt>IN_PROGRESS</dt> <dd> <p>The build phase is still in progress.</p> </dd> <dt>QUEUED</dt> <dd> <p>The build has been submitted and is queued behind other submitted builds.</p> </dd> <dt>STOPPED</dt> <dd> <p>The build phase stopped.</p> </dd> <dt>SUCCEEDED</dt> <dd> <p>The build phase succeeded.</p> </dd> <dt>TIMED_OUT</dt> <dd> <p>The build phase timed out.</p> </dd> </dl>"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the batch build phase started, expressed in Unix time format.</p>"
        },
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the batch build phase ended, expressed in Unix time format.</p>"
        },
        "durationInSeconds": {
          "shape": "WrapperLong",
          "documentation": "<p>How long, in seconds, between the starting and ending times of the batch build's phase.</p>"
        },
        "contexts": {
          "shape": "PhaseContexts",
          "documentation": "<p>Additional information about the batch build phase. Especially to help troubleshoot a failed btach build.</p>"
        }
      },
      "documentation": "<p>Contains information about a stage for a batch build.</p>"
    },
    "BuildBatchPhaseType": {
      "type": "string",
      "enum": [
        "SUBMITTED",
        "DOWNLOAD_BATCHSPEC",
        "IN_PROGRESS",
        "COMBINE_ARTIFACTS",
        "SUCCEEDED",
        "FAILED",
        "STOPPED"
      ]
    },
    "BuildBatchPhases": {
      "type": "list",
      "member": {
        "shape": "BuildBatchPhase"
      }
    },
    "BuildBatches": {
      "type": "list",
      "member": {
        "shape": "BuildBatch"
      },
      "max": 100,
      "min": 0
    },
    "BuildGroup": {
      "type": "structure",
      "members": {
        "identifier": {
          "shape": "String",
          "documentation": "<p>Contains the identifier of the build group.</p>"
        },
        "dependsOn": {
          "shape": "Identifiers",
          "documentation": "<p>An array of strings that contain the identifiers of the build groups that this build group depends on.</p>"
        },
        "ignoreFailure": {
          "shape": "Boolean",
          "documentation": "<p>Specifies if failures in this build group can be ignored.</p>"
        },
        "currentBuildSummary": {
          "shape": "BuildSummary",
          "documentation": "<p>A <code>BuildSummary</code> object that contains a summary of the current build group.</p>"
        },
        "priorBuildSummaryList": {
          "shape": "BuildSummaries",
          "documentation": "<p>An array of <code>BuildSummary</code> objects that contain summaries of previous build groups.</p>"
        }
      },
      "documentation": "<p>Contains information about a batch build build group. Build groups are used to combine builds that can run in parallel, while still being able to set dependencies on other build groups.</p>"
    },
    "BuildGroups": {
      "type": "list",
      "member": {
        "shape": "BuildGroup"
      }
    },
    "BuildIds": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      },
      "max": 100,
      "min": 1
    },
    "BuildNotDeleted": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "NonEmptyString",
          "documentation": "<p>The ID of the build that could not be successfully deleted.</p>"
        },
        "statusCode": {
          "shape": "String",
          "documentation": "<p>Additional information about the build that could not be successfully deleted.</p>"
        }
      },
      "documentation": "<p>Information about a build that could not be successfully deleted.</p>"
    },
    "BuildPhase": {
      "type": "structure",
      "members": {
        "phaseType": {
          "shape": "BuildPhaseType",
          "documentation": "<p>The name of the build phase. Valid values include:</p> <ul> <li> <p> <code>BUILD</code>: Core build activities typically occur in this build phase.</p> </li> <li> <p> <code>COMPLETED</code>: The build has been completed.</p> </li> <li> <p> <code>DOWNLOAD_SOURCE</code>: Source code is being downloaded in this build phase.</p> </li> <li> <p> <code>FINALIZING</code>: The build process is completing in this build phase.</p> </li> <li> <p> <code>INSTALL</code>: Installation activities typically occur in this build phase.</p> </li> <li> <p> <code>POST_BUILD</code>: Post-build activities typically occur in this build phase.</p> </li> <li> <p> <code>PRE_BUILD</code>: Pre-build activities typically occur in this build phase.</p> </li> <li> <p> <code>PROVISIONING</code>: The build environment is being set up.</p> </li> <li> <p> <code>QUEUED</code>: The build has been submitted and is queued behind other submitted builds.</p> </li> <li> <p> <code>SUBMITTED</code>: The build has been submitted.</p> </li> <li> <p> <code>UPLOAD_ARTIFACTS</code>: Build output artifacts are being uploaded to the output location.</p> </li> </ul>"
        },
        "phaseStatus": {
          "shape": "StatusType",
          "documentation": "<p>The current status of the build phase. Valid values include:</p> <dl> <dt>FAILED</dt> <dd> <p>The build phase failed.</p> </dd> <dt>FAULT</dt> <dd> <p>The build phase faulted.</p> </dd> <dt>IN_PROGRESS</dt> <dd> <p>The build phase is still in progress.</p> </dd> <dt>QUEUED</dt> <dd> <p>The build has been submitted and is queued behind other submitted builds.</p> </dd> <dt>STOPPED</dt> <dd> <p>The build phase stopped.</p> </dd> <dt>SUCCEEDED</dt> <dd> <p>The build phase succeeded.</p> </dd> <dt>TIMED_OUT</dt> <dd> <p>The build phase timed out.</p> </dd> </dl>"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the build phase started, expressed in Unix time format.</p>"
        },
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the build phase ended, expressed in Unix time format.</p>"
        },
        "durationInSeconds": {
          "shape": "WrapperLong",
          "documentation": "<p>How long, in seconds, between the starting and ending times of the build's phase.</p>"
        },
        "contexts": {
          "shape": "PhaseContexts",
          "documentation": "<p>Additional information about a build phase, especially to help troubleshoot a failed build.</p>"
        }
      },
      "documentation": "<p>Information about a stage for a build.</p>"
    },
    "BuildPhaseType": {
      "type": "string",
      "enum": [
        "SUBMITTED",
        "QUEUED",
        "PROVISIONING",
        "DOWNLOAD_SOURCE",
        "INSTALL",
        "PRE_BUILD",
        "BUILD",
        "POST_BUILD",
        "UPLOAD_ARTIFACTS",
        "FINALIZING",
        "COMPLETED"
      ]
    },
    "BuildPhases": {
      "type": "list",
      "member": {
        "shape": "BuildPhase"
      }
    },
    "BuildReportArns": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "BuildStatusConfig": {
      "type": "structure",
      "members": {
        "context": {
          "shape": "String",
          "documentation": "<p>Specifies the context of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.</p> <dl> <dt>Bitbucket</dt> <dd> <p>This parameter is used for the <code>name</code> parameter in the Bitbucket commit status. For more information, see <a href=\"https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build\">build</a> in the Bitbucket API documentation.</p> </dd> <dt>GitHub/GitHub Enterprise Server</dt> <dd> <p>This parameter is used for the <code>context</code> parameter in the GitHub commit status. For more information, see <a href=\"https://developer.github.com/v3/repos/statuses/#create-a-commit-status\">Create a commit status</a> in the GitHub developer guide.</p> </dd> </dl>"
        },
        "targetUrl": {
          "shape": "String",
          "documentation": "<p>Specifies the target url of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.</p> <dl> <dt>Bitbucket</dt> <dd> <p>This parameter is used for the <code>url</code> parameter in the Bitbucket commit status. For more information, see <a href=\"https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build\">build</a> in the Bitbucket API documentation.</p> </dd> <dt>GitHub/GitHub Enterprise Server</dt> <dd> <p>This parameter is used for the <code>target_url</code> parameter in the GitHub commit status. For more information, see <a href=\"https://developer.github.com/v3/repos/statuses/#create-a-commit-status\">Create a commit status</a> in the GitHub developer guide.</p> </dd> </dl>"
        }
      },
      "documentation": "<p>Contains information that defines how the AWS CodeBuild build project reports the build status to the source provider. </p>"
    },
    "BuildSummaries": {
      "type": "list",
      "member": {
        "shape": "BuildSummary"
      }
    },
    "BuildSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "String",
          "documentation": "<p>The batch build ARN.</p>"
        },
        "requestedOn": {
          "shape": "Timestamp",
          "documentation": "<p>When the build was started, expressed in Unix time format.</p>"
        },
        "buildStatus": {
          "shape": "StatusType",
          "documentation": "<p>The status of the build group.</p> <dl> <dt>FAILED</dt> <dd> <p>The build group failed.</p> </dd> <dt>FAULT</dt> <dd> <p>The build group faulted.</p> </dd> <dt>IN_PROGRESS</dt> <dd> <p>The build group is still in progress.</p> </dd> <dt>STOPPED</dt> <dd> <p>The build group stopped.</p> </dd> <dt>SUCCEEDED</dt> <dd> <p>The build group succeeded.</p> </dd> <dt>TIMED_OUT</dt> <dd> <p>The build group timed out.</p> </dd> </dl>"
        },
        "primaryArtifact": {
          "shape": "ResolvedArtifact",
          "documentation": "<p>A <code>ResolvedArtifact</code> object that represents the primary build artifacts for the build group.</p>"
        },
        "secondaryArtifacts": {
          "shape": "ResolvedSecondaryArtifacts",
          "documentation": "<p>An array of <code>ResolvedArtifact</code> objects that represents the secondary build artifacts for the build group.</p>"
        }
      },
      "documentation": "<p>Contains summary information about a batch build group.</p>"
    },
    "Builds": {
      "type": "list",
      "member": {
        "shape": "Build"
      }
    },
    "BuildsNotDeleted": {
      "type": "list",
      "member": {
        "shape": "BuildNotDeleted"
      }
    },
    "CacheMode": {
      "type": "string",
      "enum": [
        "LOCAL_DOCKER_LAYER_CACHE",
        "LOCAL_SOURCE_CACHE",
        "LOCAL_CUSTOM_CACHE"
      ]
    },
    "CacheType": {
      "type": "string",
      "enum": [
        "NO_CACHE",
        "S3",
        "LOCAL"
      ]
    },
    "CloudWatchLogsConfig": {
      "type": "structure",
      "required": [
        "status"
      ],
      "members": {
        "status": {
          "shape": "LogsConfigStatusType",
          "documentation": "<p>The current status of the logs in Amazon CloudWatch Logs for a build project. Valid values are:</p> <ul> <li> <p> <code>ENABLED</code>: Amazon CloudWatch Logs are enabled for this build project.</p> </li> <li> <p> <code>DISABLED</code>: Amazon CloudWatch Logs are not enabled for this build project.</p> </li> </ul>"
        },
        "groupName": {
          "shape": "String",
          "documentation": "<p> The group name of the logs in Amazon CloudWatch Logs. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html\">Working with Log Groups and Log Streams</a>. </p>"
        },
        "streamName": {
          "shape": "String",
          "documentation": "<p> The prefix of the stream name of the Amazon CloudWatch Logs. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html\">Working with Log Groups and Log Streams</a>. </p>"
        }
      },
      "documentation": "<p> Information about Amazon CloudWatch Logs for a build project. </p>"
    },
    "CodeCoverage": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "NonEmptyString",
          "documentation": "<p>The identifier of the code coverage report.</p>"
        },
        "reportARN": {
          "shape": "NonEmptyString",
          "documentation": "<p>The ARN of the report.</p>"
        },
        "filePath": {
          "shape": "NonEmptyString",
          "documentation": "<p>The path of the test report file.</p>"
        },
        "lineCoveragePercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of lines that are covered by your tests.</p>"
        },
        "linesCovered": {
          "shape": "NonNegativeInt",
          "documentation": "<p>The number of lines that are covered by your tests.</p>"
        },
        "linesMissed": {
          "shape": "NonNegativeInt",
          "documentation": "<p>The number of lines that are not covered by your tests.</p>"
        },
        "branchCoveragePercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of branches that are covered by your tests.</p>"
        },
        "branchesCovered": {
          "shape": "NonNegativeInt",
          "documentation": "<p>The number of conditional branches that are covered by your tests.</p>"
        },
        "branchesMissed": {
          "shape": "NonNegativeInt",
          "documentation": "<p>The number of conditional branches that are not covered by your tests.</p>"
        },
        "expired": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the tests were run.</p>"
        }
      },
      "documentation": "<p>Contains code coverage report information.</p> <p>Line coverage measures how many statements your tests cover. A statement is a single instruction, not including comments, conditionals, etc.</p> <p>Branch coverage determines if your tests cover every possible branch of a control structure, such as an <code>if</code> or <code>case</code> statement.</p>"
    },
    "CodeCoverageReportSummary": {
      "type": "structure",
      "members": {
        "lineCoveragePercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of lines that are covered by your tests.</p>"
        },
        "linesCovered": {
          "shape": "NonNegativeInt",
          "documentation": "<p>The number of lines that are covered by your tests.</p>"
        },
        "linesMissed": {
          "shape": "NonNegativeInt",
          "documentation": "<p>The number of lines that are not covered by your tests.</p>"
        },
        "branchCoveragePercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of branches that are covered by your tests.</p>"
        },
        "branchesCovered": {
          "shape": "NonNegativeInt",
          "documentation": "<p>The number of conditional branches that are covered by your tests.</p>"
        },
        "branchesMissed": {
          "shape": "NonNegativeInt",
          "documentation": "<p>The number of conditional branches that are not covered by your tests.</p>"
        }
      },
      "documentation": "<p>Contains a summary of a code coverage report.</p> <p>Line coverage measures how many statements your tests cover. A statement is a single instruction, not including comments, conditionals, etc.</p> <p>Branch coverage determines if your tests cover every possible branch of a control structure, such as an <code>if</code> or <code>case</code> statement.</p>"
    },
    "CodeCoverages": {
      "type": "list",
      "member": {
        "shape": "CodeCoverage"
      }
    },
    "ComputeType": {
      "type": "string",
      "enum": [
        "BUILD_GENERAL1_SMALL",
        "BUILD_GENERAL1_MEDIUM",
        "BUILD_GENERAL1_LARGE",
        "BUILD_GENERAL1_2XLARGE"
      ]
    },
    "ComputeTypesAllowed": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      }
    },
    "CreateProjectInput": {
      "type": "structure",
      "required": [
        "name",
        "source",
        "artifacts",
        "environment",
        "serviceRole"
      ],
      "members": {
        "name": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the build project.</p>"
        },
        "description": {
          "shape": "ProjectDescription",
          "documentation": "<p>A description that makes the build project easy to identify.</p>"
        },
        "source": {
          "shape": "ProjectSource",
          "documentation": "<p>Information about the build input source code for the build project.</p>"
        },
        "secondarySources": {
          "shape": "ProjectSources",
          "documentation": "<p>An array of <code>ProjectSource</code> objects. </p>"
        },
        "sourceVersion": {
          "shape": "String",
          "documentation": "<p>A version of the build input to be built for this project. If not specified, the latest version is used. If specified, it must be one of: </p> <ul> <li> <p>For AWS CodeCommit: the commit ID, branch, or Git tag to use.</p> </li> <li> <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Amazon Simple Storage Service (Amazon S3): the version ID of the object that represents the build input ZIP file to use.</p> </li> </ul> <p>If <code>sourceVersion</code> is specified at the build level, then that version takes precedence over this <code>sourceVersion</code> (at the project level). </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html\">Source Version Sample with CodeBuild</a> in the <i>AWS CodeBuild User Guide</i>. </p>"
        },
        "secondarySourceVersions": {
          "shape": "ProjectSecondarySourceVersions",
          "documentation": "<p>An array of <code>ProjectSourceVersion</code> objects. If <code>secondarySourceVersions</code> is specified at the build level, then they take precedence over these <code>secondarySourceVersions</code> (at the project level). </p>"
        },
        "artifacts": {
          "shape": "ProjectArtifacts",
          "documentation": "<p>Information about the build output artifacts for the build project.</p>"
        },
        "secondaryArtifacts": {
          "shape": "ProjectArtifactsList",
          "documentation": "<p>An array of <code>ProjectArtifacts</code> objects. </p>"
        },
        "cache": {
          "shape": "ProjectCache",
          "documentation": "<p>Stores recently used information so that it can be quickly accessed at a later time.</p>"
        },
        "environment": {
          "shape": "ProjectEnvironment",
          "documentation": "<p>Information about the build environment for the build project.</p>"
        },
        "serviceRole": {
          "shape": "NonEmptyString",
          "documentation": "<p>The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>"
        },
        "timeoutInMinutes": {
          "shape": "TimeOut",
          "documentation": "<p>How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before it times out any build that has not been marked as completed. The default is 60 minutes.</p>"
        },
        "queuedTimeoutInMinutes": {
          "shape": "TimeOut",
          "documentation": "<p>The number of minutes a build is allowed to be queued before it times out. </p>"
        },
        "encryptionKey": {
          "shape": "NonEmptyString",
          "documentation": "<p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.</p> <note> <p>You can use a cross-account KMS key to encrypt the build output artifacts if your service role has permission to that key. </p> </note> <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format <code>alias/&lt;alias-name&gt;</code>).</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag key and value pairs associated with this build project.</p> <p>These tags are available for use by AWS services that support AWS CodeBuild build project tags.</p>"
        },
        "vpcConfig": {
          "shape": "VpcConfig",
          "documentation": "<p>VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.</p>"
        },
        "badgeEnabled": {
          "shape": "WrapperBoolean",
          "documentation": "<p>Set this to true to generate a publicly accessible URL for your project's build badge.</p>"
        },
        "logsConfig": {
          "shape": "LogsConfig",
          "documentation": "<p>Information about logs for the build project. These can be logs in Amazon CloudWatch Logs, logs uploaded to a specified S3 bucket, or both. </p>"
        },
        "fileSystemLocations": {
          "shape": "ProjectFileSystemLocations",
          "documentation": "<p> An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System. </p>"
        },
        "buildBatchConfig": {
          "shape": "ProjectBuildBatchConfig",
          "documentation": "<p>A <a>ProjectBuildBatchConfig</a> object that defines the batch build options for the project.</p>"
        }
      }
    },
    "CreateProjectOutput": {
      "type": "structure",
      "members": {
        "project": {
          "shape": "Project",
          "documentation": "<p>Information about the build project that was created.</p>"
        }
      }
    },
    "CreateReportGroupInput": {
      "type": "structure",
      "required": [
        "name",
        "type",
        "exportConfig"
      ],
      "members": {
        "name": {
          "shape": "ReportGroupName",
          "documentation": "<p> The name of the report group. </p>"
        },
        "type": {
          "shape": "ReportType",
          "documentation": "<p> The type of report group. </p>"
        },
        "exportConfig": {
          "shape": "ReportExportConfig",
          "documentation": "<p> A <code>ReportExportConfig</code> object that contains information about where the report group test results are exported. </p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p> A list of tag key and value pairs associated with this report group. </p> <p>These tags are available for use by AWS services that support AWS CodeBuild report group tags.</p>"
        }
      }
    },
    "CreateReportGroupOutput": {
      "type": "structure",
      "members": {
        "reportGroup": {
          "shape": "ReportGroup",
          "documentation": "<p> Information about the report group that was created. </p>"
        }
      }
    },
    "CreateWebhookInput": {
      "type": "structure",
      "required": [
        "projectName"
      ],
      "members": {
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the AWS CodeBuild project.</p>"
        },
        "branchFilter": {
          "shape": "String",
          "documentation": "<p>A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If <code>branchFilter</code> is empty, then all branches are built.</p> <note> <p>It is recommended that you use <code>filterGroups</code> instead of <code>branchFilter</code>. </p> </note>"
        },
        "filterGroups": {
          "shape": "FilterGroups",
          "documentation": "<p>An array of arrays of <code>WebhookFilter</code> objects used to determine which webhooks are triggered. At least one <code>WebhookFilter</code> in the array must specify <code>EVENT</code> as its <code>type</code>. </p> <p>For a build to be triggered, at least one filter group in the <code>filterGroups</code> array must pass. For a filter group to pass, each of its filters must pass. </p>"
        },
        "buildType": {
          "shape": "WebhookBuildType",
          "documentation": "<p>Specifies the type of build this webhook will trigger.</p>"
        }
      }
    },
    "CreateWebhookOutput": {
      "type": "structure",
      "members": {
        "webhook": {
          "shape": "Webhook",
          "documentation": "<p>Information about a webhook that connects repository events to a build project in AWS CodeBuild.</p>"
        }
      }
    },
    "CredentialProviderType": {
      "type": "string",
      "enum": [
        "SECRETS_MANAGER"
      ]
    },
    "DebugSession": {
      "type": "structure",
      "members": {
        "sessionEnabled": {
          "shape": "WrapperBoolean",
          "documentation": "<p>Specifies if session debugging is enabled for this build.</p>"
        },
        "sessionTarget": {
          "shape": "NonEmptyString",
          "documentation": "<p>Contains the identifier of the Session Manager session used for the build. To work with the paused build, you open this session to examine, control, and resume the build.</p>"
        }
      },
      "documentation": "<p>Contains information about the debug session for a build. For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html\">Viewing a running build in Session Manager</a>.</p>"
    },
    "DeleteBuildBatchInput": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "NonEmptyString",
          "documentation": "<p>The identifier of the batch build to delete.</p>"
        }
      }
    },
    "DeleteBuildBatchOutput": {
      "type": "structure",
      "members": {
        "statusCode": {
          "shape": "String",
          "documentation": "<p>The status code.</p>"
        },
        "buildsDeleted": {
          "shape": "BuildIds",
          "documentation": "<p>An array of strings that contain the identifiers of the builds that were deleted.</p>"
        },
        "buildsNotDeleted": {
          "shape": "BuildsNotDeleted",
          "documentation": "<p>An array of <code>BuildNotDeleted</code> objects that specify the builds that could not be deleted.</p>"
        }
      }
    },
    "DeleteProjectInput": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of the build project.</p>"
        }
      }
    },
    "DeleteProjectOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteReportGroupInput": {
      "type": "structure",
      "required": [
        "arn"
      ],
      "members": {
        "arn": {
          "shape": "NonEmptyString",
          "documentation": "<p>The ARN of the report group to delete. </p>"
        },
        "deleteReports": {
          "shape": "Boolean",
          "documentation": "<p>If <code>true</code>, deletes any reports that belong to a report group before deleting the report group. </p> <p>If <code>false</code>, you must delete any reports in the report group. Use <a href=\"https://docs.aws.amazon.com/codebuild/latest/APIReference/API_ListReportsForReportGroup.html\">ListReportsForReportGroup</a> to get the reports in a report group. Use <a href=\"https://docs.aws.amazon.com/codebuild/latest/APIReference/API_DeleteReport.html\">DeleteReport</a> to delete the reports. If you call <code>DeleteReportGroup</code> for a report group that contains one or more reports, an exception is thrown. </p>"
        }
      }
    },
    "DeleteReportGroupOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteReportInput": {
      "type": "structure",
      "required": [
        "arn"
      ],
      "members": {
        "arn": {
          "shape": "NonEmptyString",
          "documentation": "<p> The ARN of the report to delete. </p>"
        }
      }
    },
    "DeleteReportOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteResourcePolicyInput": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "NonEmptyString",
          "documentation": "<p> The ARN of the resource that is associated with the resource policy. </p>"
        }
      }
    },
    "DeleteResourcePolicyOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteSourceCredentialsInput": {
      "type": "structure",
      "required": [
        "arn"
      ],
      "members": {
        "arn": {
          "shape": "NonEmptyString",
          "documentation": "<p> The Amazon Resource Name (ARN) of the token.</p>"
        }
      }
    },
    "DeleteSourceCredentialsOutput": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "NonEmptyString",
          "documentation": "<p> The Amazon Resource Name (ARN) of the token. </p>"
        }
      }
    },
    "DeleteWebhookInput": {
      "type": "structure",
      "required": [
        "projectName"
      ],
      "members": {
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the AWS CodeBuild project.</p>"
        }
      }
    },
    "DeleteWebhookOutput": {
      "type": "structure",
      "members": {}
    },
    "DescribeCodeCoveragesInput": {
      "type": "structure",
      "required": [
        "reportArn"
      ],
      "members": {
        "reportArn": {
          "shape": "NonEmptyString",
          "documentation": "<p> The ARN of the report for which test cases are returned. </p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous call to <code>DescribeCodeCoverages</code>. This specifies the next item to return. To return the beginning of the list, exclude this parameter.</p>"
        },
        "maxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results to return.</p>"
        },
        "sortOrder": {
          "shape": "SortOrderType",
          "documentation": "<p>Specifies if the results are sorted in ascending or descending order.</p>"
        },
        "sortBy": {
          "shape": "ReportCodeCoverageSortByType",
          "documentation": "<p>Specifies how the results are sorted. Possible values are:</p> <dl> <dt>FILE_PATH</dt> <dd> <p>The results are sorted by file path.</p> </dd> <dt>LINE_COVERAGE_PERCENTAGE</dt> <dd> <p>The results are sorted by the percentage of lines that are covered.</p> </dd> </dl>"
        },
        "minLineCoveragePercentage": {
          "shape": "Percentage",
          "documentation": "<p>The minimum line coverage percentage to report.</p>"
        },
        "maxLineCoveragePercentage": {
          "shape": "Percentage",
          "documentation": "<p>The maximum line coverage percentage to report.</p>"
        }
      }
    },
    "DescribeCodeCoveragesOutput": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p>If there are more items to return, this contains a token that is passed to a subsequent call to <code>DescribeCodeCoverages</code> to retrieve the next set of items.</p>"
        },
        "codeCoverages": {
          "shape": "CodeCoverages",
          "documentation": "<p>An array of <code>CodeCoverage</code> objects that contain the results.</p>"
        }
      }
    },
    "DescribeTestCasesInput": {
      "type": "structure",
      "required": [
        "reportArn"
      ],
      "members": {
        "reportArn": {
          "shape": "String",
          "documentation": "<p> The ARN of the report for which test cases are returned. </p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p> During a previous call, the maximum number of items that can be returned is the value specified in <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i> is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. </p>"
        },
        "maxResults": {
          "shape": "PageSize",
          "documentation": "<p> The maximum number of paginated test cases returned per response. Use <code>nextToken</code> to iterate pages in the list of returned <code>TestCase</code> objects. The default value is 100. </p>"
        },
        "filter": {
          "shape": "TestCaseFilter",
          "documentation": "<p> A <code>TestCaseFilter</code> object used to filter the returned reports. </p>"
        }
      }
    },
    "DescribeTestCasesOutput": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p> During a previous call, the maximum number of items that can be returned is the value specified in <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i> is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. </p>"
        },
        "testCases": {
          "shape": "TestCases",
          "documentation": "<p> The returned list of test cases. </p>"
        }
      }
    },
    "EnvironmentImage": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the Docker image.</p>"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>The description of the Docker image.</p>"
        },
        "versions": {
          "shape": "ImageVersions",
          "documentation": "<p>A list of environment image versions.</p>"
        }
      },
      "documentation": "<p>Information about a Docker image that is managed by AWS CodeBuild.</p>"
    },
    "EnvironmentImages": {
      "type": "list",
      "member": {
        "shape": "EnvironmentImage"
      }
    },
    "EnvironmentLanguage": {
      "type": "structure",
      "members": {
        "language": {
          "shape": "LanguageType",
          "documentation": "<p>The programming language for the Docker images.</p>"
        },
        "images": {
          "shape": "EnvironmentImages",
          "documentation": "<p>The list of Docker images that are related by the specified programming language.</p>"
        }
      },
      "documentation": "<p>A set of Docker images that are related by programming language and are managed by AWS CodeBuild.</p>"
    },
    "EnvironmentLanguages": {
      "type": "list",
      "member": {
        "shape": "EnvironmentLanguage"
      }
    },
    "EnvironmentPlatform": {
      "type": "structure",
      "members": {
        "platform": {
          "shape": "PlatformType",
          "documentation": "<p>The platform's name.</p>"
        },
        "languages": {
          "shape": "EnvironmentLanguages",
          "documentation": "<p>The list of programming languages that are available for the specified platform.</p>"
        }
      },
      "documentation": "<p>A set of Docker images that are related by platform and are managed by AWS CodeBuild.</p>"
    },
    "EnvironmentPlatforms": {
      "type": "list",
      "member": {
        "shape": "EnvironmentPlatform"
      }
    },
    "EnvironmentType": {
      "type": "string",
      "enum": [
        "WINDOWS_CONTAINER",
        "LINUX_CONTAINER",
        "LINUX_GPU_CONTAINER",
        "ARM_CONTAINER",
        "WINDOWS_SERVER_2019_CONTAINER"
      ]
    },
    "EnvironmentVariable": {
      "type": "structure",
      "required": [
        "name",
        "value"
      ],
      "members": {
        "name": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name or key of the environment variable.</p>"
        },
        "value": {
          "shape": "String",
          "documentation": "<p>The value of the environment variable.</p> <important> <p>We strongly discourage the use of <code>PLAINTEXT</code> environment variables to store sensitive values, especially AWS secret key IDs and secret access keys. <code>PLAINTEXT</code> environment variables can be displayed in plain text using the AWS CodeBuild console and the AWS Command Line Interface (AWS CLI). For sensitive values, we recommend you use an environment variable of type <code>PARAMETER_STORE</code> or <code>SECRETS_MANAGER</code>. </p> </important>"
        },
        "type": {
          "shape": "EnvironmentVariableType",
          "documentation": "<p>The type of environment variable. Valid values include:</p> <ul> <li> <p> <code>PARAMETER_STORE</code>: An environment variable stored in Amazon EC2 Systems Manager Parameter Store. To learn how to specify a parameter store environment variable, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.parameter-store\">env/parameter-store</a> in the <i>AWS CodeBuild User Guide</i>.</p> </li> <li> <p> <code>PLAINTEXT</code>: An environment variable in plain text format. This is the default value.</p> </li> <li> <p> <code>SECRETS_MANAGER</code>: An environment variable stored in AWS Secrets Manager. To learn how to specify a secrets manager environment variable, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.secrets-manager\">env/secrets-manager</a> in the <i>AWS CodeBuild User Guide</i>.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Information about an environment variable for a build project or a build.</p>"
    },
    "EnvironmentVariableType": {
      "type": "string",
      "enum": [
        "PLAINTEXT",
        "PARAMETER_STORE",
        "SECRETS_MANAGER"
      ]
    },
    "EnvironmentVariables": {
      "type": "list",
      "member": {
        "shape": "EnvironmentVariable"
      }
    },
    "ExportedEnvironmentVariable": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "NonEmptyString",
          "documentation": "<p> The name of this exported environment variable. </p>"
        },
        "value": {
          "shape": "String",
          "documentation": "<p> The value assigned to this exported environment variable. </p> <note> <p> During a build, the value of a variable is available starting with the <code>install</code> phase. It can be updated between the start of the <code>install</code> phase and the end of the <code>post_build</code> phase. After the <code>post_build</code> phase ends, the value of exported variables cannot change.</p> </note>"
        }
      },
      "documentation": "<p> Information about an exported environment variable. </p>"
    },
    "ExportedEnvironmentVariables": {
      "type": "list",
      "member": {
        "shape": "ExportedEnvironmentVariable"
      }
    },
    "FileSystemType": {
      "type": "string",
      "enum": [
        "EFS"
      ]
    },
    "FilterGroup": {
      "type": "list",
      "member": {
        "shape": "WebhookFilter"
      }
    },
    "FilterGroups": {
      "type": "list",
      "member": {
        "shape": "FilterGroup"
      }
    },
    "GetResourcePolicyInput": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "NonEmptyString",
          "documentation": "<p> The ARN of the resource that is associated with the resource policy. </p>"
        }
      }
    },
    "GetResourcePolicyOutput": {
      "type": "structure",
      "members": {
        "policy": {
          "shape": "NonEmptyString",
          "documentation": "<p> The resource policy for the resource identified by the input ARN parameter. </p>"
        }
      }
    },
    "GitCloneDepth": {
      "type": "integer",
      "min": 0
    },
    "GitSubmodulesConfig": {
      "type": "structure",
      "required": [
        "fetchSubmodules"
      ],
      "members": {
        "fetchSubmodules": {
          "shape": "WrapperBoolean",
          "documentation": "<p> Set to true to fetch Git submodules for your AWS CodeBuild build project. </p>"
        }
      },
      "documentation": "<p> Information about the Git submodules configuration for an AWS CodeBuild build project. </p>"
    },
    "Identifiers": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      }
    },
    "ImagePullCredentialsType": {
      "type": "string",
      "enum": [
        "CODEBUILD",
        "SERVICE_ROLE"
      ]
    },
    "ImageVersions": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ImportSourceCredentialsInput": {
      "type": "structure",
      "required": [
        "token",
        "serverType",
        "authType"
      ],
      "members": {
        "username": {
          "shape": "NonEmptyString",
          "documentation": "<p> The Bitbucket username when the <code>authType</code> is BASIC_AUTH. This parameter is not valid for other types of source providers or connections. </p>"
        },
        "token": {
          "shape": "SensitiveNonEmptyString",
          "documentation": "<p> For GitHub or GitHub Enterprise, this is the personal access token. For Bitbucket, this is the app password. </p>"
        },
        "serverType": {
          "shape": "ServerType",
          "documentation": "<p> The source provider used for this project. </p>"
        },
        "authType": {
          "shape": "AuthType",
          "documentation": "<p> The type of authentication used to connect to a GitHub, GitHub Enterprise, or Bitbucket repository. An OAUTH connection is not supported by the API and must be created using the AWS CodeBuild console. </p>"
        },
        "shouldOverwrite": {
          "shape": "WrapperBoolean",
          "documentation": "<p> Set to <code>false</code> to prevent overwriting the repository source credentials. Set to <code>true</code> to overwrite the repository source credentials. The default value is <code>true</code>. </p>"
        }
      }
    },
    "ImportSourceCredentialsOutput": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "NonEmptyString",
          "documentation": "<p> The Amazon Resource Name (ARN) of the token. </p>"
        }
      }
    },
    "InvalidateProjectCacheInput": {
      "type": "structure",
      "required": [
        "projectName"
      ],
      "members": {
        "projectName": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of the AWS CodeBuild build project that the cache is reset for.</p>"
        }
      }
    },
    "InvalidateProjectCacheOutput": {
      "type": "structure",
      "members": {}
    },
    "KeyInput": {
      "type": "string",
      "max": 127,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=@+\\-]*)$"
    },
    "LanguageType": {
      "type": "string",
      "enum": [
        "JAVA",
        "PYTHON",
        "NODE_JS",
        "RUBY",
        "GOLANG",
        "DOCKER",
        "ANDROID",
        "DOTNET",
        "BASE",
        "PHP"
      ]
    },
    "ListBuildBatchesForProjectInput": {
      "type": "structure",
      "members": {
        "projectName": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of the project.</p>"
        },
        "filter": {
          "shape": "BuildBatchFilter",
          "documentation": "<p>A <code>BuildBatchFilter</code> object that specifies the filters for the search.</p>"
        },
        "maxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results to return.</p>"
        },
        "sortOrder": {
          "shape": "SortOrderType",
          "documentation": "<p>Specifies the sort order of the returned items. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List the batch build identifiers in ascending order by identifier.</p> </li> <li> <p> <code>DESCENDING</code>: List the batch build identifiers in descending order by identifier.</p> </li> </ul>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous call to <code>ListBuildBatchesForProject</code>. This specifies the next item to return. To return the beginning of the list, exclude this parameter.</p>"
        }
      }
    },
    "ListBuildBatchesForProjectOutput": {
      "type": "structure",
      "members": {
        "ids": {
          "shape": "BuildBatchIds",
          "documentation": "<p>An array of strings that contains the batch build identifiers.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>If there are more items to return, this contains a token that is passed to a subsequent call to <code>ListBuildBatchesForProject</code> to retrieve the next set of items.</p>"
        }
      }
    },
    "ListBuildBatchesInput": {
      "type": "structure",
      "members": {
        "filter": {
          "shape": "BuildBatchFilter",
          "documentation": "<p>A <code>BuildBatchFilter</code> object that specifies the filters for the search.</p>"
        },
        "maxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results to return.</p>"
        },
        "sortOrder": {
          "shape": "SortOrderType",
          "documentation": "<p>Specifies the sort order of the returned items. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List the batch build identifiers in ascending order by identifier.</p> </li> <li> <p> <code>DESCENDING</code>: List the batch build identifiers in descending order by identifier.</p> </li> </ul>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous call to <code>ListBuildBatches</code>. This specifies the next item to return. To return the beginning of the list, exclude this parameter.</p>"
        }
      }
    },
    "ListBuildBatchesOutput": {
      "type": "structure",
      "members": {
        "ids": {
          "shape": "BuildBatchIds",
          "documentation": "<p>An array of strings that contains the batch build identifiers.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>If there are more items to return, this contains a token that is passed to a subsequent call to <code>ListBuildBatches</code> to retrieve the next set of items.</p>"
        }
      }
    },
    "ListBuildsForProjectInput": {
      "type": "structure",
      "required": [
        "projectName"
      ],
      "members": {
        "projectName": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of the AWS CodeBuild project.</p>"
        },
        "sortOrder": {
          "shape": "SortOrderType",
          "documentation": "<p>The order to list build IDs. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List the build IDs in ascending order by build ID.</p> </li> <li> <p> <code>DESCENDING</code>: List the build IDs in descending order by build ID.</p> </li> </ul>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>nextToken</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>"
        }
      }
    },
    "ListBuildsForProjectOutput": {
      "type": "structure",
      "members": {
        "ids": {
          "shape": "BuildIds",
          "documentation": "<p>A list of build IDs for the specified build project, with each build ID representing a single build.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>If there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>nextToken</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>"
        }
      }
    },
    "ListBuildsInput": {
      "type": "structure",
      "members": {
        "sortOrder": {
          "shape": "SortOrderType",
          "documentation": "<p>The order to list build IDs. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List the build IDs in ascending order by build ID.</p> </li> <li> <p> <code>DESCENDING</code>: List the build IDs in descending order by build ID.</p> </li> </ul>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>nextToken</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>"
        }
      }
    },
    "ListBuildsOutput": {
      "type": "structure",
      "members": {
        "ids": {
          "shape": "BuildIds",
          "documentation": "<p>A list of build IDs, with each build ID representing a single build.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>If there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>nextToken</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>"
        }
      }
    },
    "ListCuratedEnvironmentImagesInput": {
      "type": "structure",
      "members": {}
    },
    "ListCuratedEnvironmentImagesOutput": {
      "type": "structure",
      "members": {
        "platforms": {
          "shape": "EnvironmentPlatforms",
          "documentation": "<p>Information about supported platforms for Docker images that are managed by AWS CodeBuild.</p>"
        }
      }
    },
    "ListProjectsInput": {
      "type": "structure",
      "members": {
        "sortBy": {
          "shape": "ProjectSortByType",
          "documentation": "<p>The criterion to be used to list build project names. Valid values include:</p> <ul> <li> <p> <code>CREATED_TIME</code>: List based on when each build project was created.</p> </li> <li> <p> <code>LAST_MODIFIED_TIME</code>: List based on when information about each build project was last changed.</p> </li> <li> <p> <code>NAME</code>: List based on each build project's name.</p> </li> </ul> <p>Use <code>sortOrder</code> to specify in what order to list the build project names based on the preceding criteria.</p>"
        },
        "sortOrder": {
          "shape": "SortOrderType",
          "documentation": "<p>The order in which to list build projects. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List in ascending order.</p> </li> <li> <p> <code>DESCENDING</code>: List in descending order.</p> </li> </ul> <p>Use <code>sortBy</code> to specify the criterion to be used to list build project names.</p>"
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>nextToken</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>"
        }
      }
    },
    "ListProjectsOutput": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p>If there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>nextToken</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>"
        },
        "projects": {
          "shape": "ProjectNames",
          "documentation": "<p>The list of build project names, with each build project name representing a single build project.</p>"
        }
      }
    },
    "ListReportGroupsInput": {
      "type": "structure",
      "members": {
        "sortOrder": {
          "shape": "SortOrderType",
          "documentation": "<p> Used to specify the order to sort the list of returned report groups. Valid values are <code>ASCENDING</code> and <code>DESCENDING</code>. </p>"
        },
        "sortBy": {
          "shape": "ReportGroupSortByType",
          "documentation": "<p> The criterion to be used to list build report groups. Valid values include: </p> <ul> <li> <p> <code>CREATED_TIME</code>: List based on when each report group was created.</p> </li> <li> <p> <code>LAST_MODIFIED_TIME</code>: List based on when each report group was last changed.</p> </li> <li> <p> <code>NAME</code>: List based on each report group's name.</p> </li> </ul>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p> During a previous call, the maximum number of items that can be returned is the value specified in <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i> is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. </p>"
        },
        "maxResults": {
          "shape": "PageSize",
          "documentation": "<p> The maximum number of paginated report groups returned per response. Use <code>nextToken</code> to iterate pages in the list of returned <code>ReportGroup</code> objects. The default value is 100. </p>"
        }
      }
    },
    "ListReportGroupsOutput": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p> During a previous call, the maximum number of items that can be returned is the value specified in <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i> is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. </p>"
        },
        "reportGroups": {
          "shape": "ReportGroupArns",
          "documentation": "<p> The list of ARNs for the report groups in the current AWS account. </p>"
        }
      }
    },
    "ListReportsForReportGroupInput": {
      "type": "structure",
      "required": [
        "reportGroupArn"
      ],
      "members": {
        "reportGroupArn": {
          "shape": "String",
          "documentation": "<p> The ARN of the report group for which you want to return report ARNs. </p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p> During a previous call, the maximum number of items that can be returned is the value specified in <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i> is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. </p>"
        },
        "sortOrder": {
          "shape": "SortOrderType",
          "documentation": "<p> Use to specify whether the results are returned in ascending or descending order. </p>"
        },
        "maxResults": {
          "shape": "PageSize",
          "documentation": "<p> The maximum number of paginated reports in this report group returned per response. Use <code>nextToken</code> to iterate pages in the list of returned <code>Report</code> objects. The default value is 100. </p>"
        },
        "filter": {
          "shape": "ReportFilter",
          "documentation": "<p> A <code>ReportFilter</code> object used to filter the returned reports. </p>"
        }
      }
    },
    "ListReportsForReportGroupOutput": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p> During a previous call, the maximum number of items that can be returned is the value specified in <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i> is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. </p>"
        },
        "reports": {
          "shape": "ReportArns",
          "documentation": "<p> The list of report ARNs. </p>"
        }
      }
    },
    "ListReportsInput": {
      "type": "structure",
      "members": {
        "sortOrder": {
          "shape": "SortOrderType",
          "documentation": "<p> Specifies the sort order for the list of returned reports. Valid values are: </p> <ul> <li> <p> <code>ASCENDING</code>: return reports in chronological order based on their creation date. </p> </li> <li> <p> <code>DESCENDING</code>: return reports in the reverse chronological order based on their creation date. </p> </li> </ul>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p> During a previous call, the maximum number of items that can be returned is the value specified in <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i> is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. </p>"
        },
        "maxResults": {
          "shape": "PageSize",
          "documentation": "<p> The maximum number of paginated reports returned per response. Use <code>nextToken</code> to iterate pages in the list of returned <code>Report</code> objects. The default value is 100. </p>"
        },
        "filter": {
          "shape": "ReportFilter",
          "documentation": "<p> A <code>ReportFilter</code> object used to filter the returned reports. </p>"
        }
      }
    },
    "ListReportsOutput": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p> During a previous call, the maximum number of items that can be returned is the value specified in <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i> is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. </p>"
        },
        "reports": {
          "shape": "ReportArns",
          "documentation": "<p> The list of returned ARNs for the reports in the current AWS account. </p>"
        }
      }
    },
    "ListSharedProjectsInput": {
      "type": "structure",
      "members": {
        "sortBy": {
          "shape": "SharedResourceSortByType",
          "documentation": "<p> The criterion to be used to list build projects shared with the current AWS account or user. Valid values include: </p> <ul> <li> <p> <code>ARN</code>: List based on the ARN. </p> </li> <li> <p> <code>MODIFIED_TIME</code>: List based on when information about the shared project was last changed. </p> </li> </ul>"
        },
        "sortOrder": {
          "shape": "SortOrderType",
          "documentation": "<p>The order in which to list shared build projects. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List in ascending order.</p> </li> <li> <p> <code>DESCENDING</code>: List in descending order.</p> </li> </ul>"
        },
        "maxResults": {
          "shape": "PageSize",
          "documentation": "<p> The maximum number of paginated shared build projects returned per response. Use <code>nextToken</code> to iterate pages in the list of returned <code>Project</code> objects. The default value is 100. </p>"
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p> During a previous call, the maximum number of items that can be returned is the value specified in <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i> is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. </p>"
        }
      }
    },
    "ListSharedProjectsOutput": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p> During a previous call, the maximum number of items that can be returned is the value specified in <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i> is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. </p>"
        },
        "projects": {
          "shape": "ProjectArns",
          "documentation": "<p> The list of ARNs for the build projects shared with the current AWS account or user. </p>"
        }
      }
    },
    "ListSharedReportGroupsInput": {
      "type": "structure",
      "members": {
        "sortOrder": {
          "shape": "SortOrderType",
          "documentation": "<p>The order in which to list shared report groups. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List in ascending order.</p> </li> <li> <p> <code>DESCENDING</code>: List in descending order.</p> </li> </ul>"
        },
        "sortBy": {
          "shape": "SharedResourceSortByType",
          "documentation": "<p> The criterion to be used to list report groups shared with the current AWS account or user. Valid values include: </p> <ul> <li> <p> <code>ARN</code>: List based on the ARN. </p> </li> <li> <p> <code>MODIFIED_TIME</code>: List based on when information about the shared report group was last changed. </p> </li> </ul>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p> During a previous call, the maximum number of items that can be returned is the value specified in <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i> is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. </p>"
        },
        "maxResults": {
          "shape": "PageSize",
          "documentation": "<p> The maximum number of paginated shared report groups per response. Use <code>nextToken</code> to iterate pages in the list of returned <code>ReportGroup</code> objects. The default value is 100. </p>"
        }
      }
    },
    "ListSharedReportGroupsOutput": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p> During a previous call, the maximum number of items that can be returned is the value specified in <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i> is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. </p>"
        },
        "reportGroups": {
          "shape": "ReportGroupArns",
          "documentation": "<p> The list of ARNs for the report groups shared with the current AWS account or user. </p>"
        }
      }
    },
    "ListSourceCredentialsInput": {
      "type": "structure",
      "members": {}
    },
    "ListSourceCredentialsOutput": {
      "type": "structure",
      "members": {
        "sourceCredentialsInfos": {
          "shape": "SourceCredentialsInfos",
          "documentation": "<p> A list of <code>SourceCredentialsInfo</code> objects. Each <code>SourceCredentialsInfo</code> object includes the authentication type, token ARN, and type of source provider for one set of credentials. </p>"
        }
      }
    },
    "LogsConfig": {
      "type": "structure",
      "members": {
        "cloudWatchLogs": {
          "shape": "CloudWatchLogsConfig",
          "documentation": "<p> Information about Amazon CloudWatch Logs for a build project. Amazon CloudWatch Logs are enabled by default. </p>"
        },
        "s3Logs": {
          "shape": "S3LogsConfig",
          "documentation": "<p> Information about logs built to an S3 bucket for a build project. S3 logs are not enabled by default. </p>"
        }
      },
      "documentation": "<p> Information about logs for a build project. These can be logs in Amazon CloudWatch Logs, built in a specified S3 bucket, or both. </p>"
    },
    "LogsConfigStatusType": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "LogsLocation": {
      "type": "structure",
      "members": {
        "groupName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon CloudWatch Logs group for the build logs.</p>"
        },
        "streamName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon CloudWatch Logs stream for the build logs.</p>"
        },
        "deepLink": {
          "shape": "String",
          "documentation": "<p>The URL to an individual build log in Amazon CloudWatch Logs.</p>"
        },
        "s3DeepLink": {
          "shape": "String",
          "documentation": "<p> The URL to a build log in an S3 bucket. </p>"
        },
        "cloudWatchLogsArn": {
          "shape": "String",
          "documentation": "<p> The ARN of Amazon CloudWatch Logs for a build project. Its format is <code>arn:${Partition}:logs:${Region}:${Account}:log-group:${LogGroupName}:log-stream:${LogStreamName}</code>. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatchlogs.html#amazoncloudwatchlogs-resources-for-iam-policies\">Resources Defined by Amazon CloudWatch Logs</a>. </p>"
        },
        "s3LogsArn": {
          "shape": "String",
          "documentation": "<p> The ARN of S3 logs for a build project. Its format is <code>arn:${Partition}:s3:::${BucketName}/${ObjectName}</code>. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html#amazons3-resources-for-iam-policies\">Resources Defined by Amazon S3</a>. </p>"
        },
        "cloudWatchLogs": {
          "shape": "CloudWatchLogsConfig",
          "documentation": "<p> Information about Amazon CloudWatch Logs for a build project. </p>"
        },
        "s3Logs": {
          "shape": "S3LogsConfig",
          "documentation": "<p> Information about S3 logs for a build project. </p>"
        }
      },
      "documentation": "<p>Information about build logs in Amazon CloudWatch Logs.</p>"
    },
    "NetworkInterface": {
      "type": "structure",
      "members": {
        "subnetId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The ID of the subnet.</p>"
        },
        "networkInterfaceId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The ID of the network interface.</p>"
        }
      },
      "documentation": "<p>Describes a network interface.</p>"
    },
    "NonEmptyString": {
      "type": "string",
      "min": 1
    },
    "NonNegativeInt": {
      "type": "integer",
      "min": 0
    },
    "PageSize": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "Percentage": {
      "type": "double",
      "max": 100,
      "min": 0
    },
    "PhaseContext": {
      "type": "structure",
      "members": {
        "statusCode": {
          "shape": "String",
          "documentation": "<p>The status code for the context of the build phase.</p>"
        },
        "message": {
          "shape": "String",
          "documentation": "<p>An explanation of the build phase's context. This might include a command ID and an exit code.</p>"
        }
      },
      "documentation": "<p>Additional information about a build phase that has an error. You can use this information for troubleshooting.</p>"
    },
    "PhaseContexts": {
      "type": "list",
      "member": {
        "shape": "PhaseContext"
      }
    },
    "PlatformType": {
      "type": "string",
      "enum": [
        "DEBIAN",
        "AMAZON_LINUX",
        "UBUNTU",
        "WINDOWS_SERVER"
      ]
    },
    "Project": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the build project.</p>"
        },
        "arn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the build project.</p>"
        },
        "description": {
          "shape": "ProjectDescription",
          "documentation": "<p>A description that makes the build project easy to identify.</p>"
        },
        "source": {
          "shape": "ProjectSource",
          "documentation": "<p>Information about the build input source code for this build project.</p>"
        },
        "secondarySources": {
          "shape": "ProjectSources",
          "documentation": "<p>An array of <code>ProjectSource</code> objects. </p>"
        },
        "sourceVersion": {
          "shape": "String",
          "documentation": "<p>A version of the build input to be built for this project. If not specified, the latest version is used. If specified, it must be one of:</p> <ul> <li> <p>For AWS CodeCommit: the commit ID, branch, or Git tag to use.</p> </li> <li> <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Amazon Simple Storage Service (Amazon S3): the version ID of the object that represents the build input ZIP file to use.</p> </li> </ul> <p>If <code>sourceVersion</code> is specified at the build level, then that version takes precedence over this <code>sourceVersion</code> (at the project level). </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html\">Source Version Sample with CodeBuild</a> in the <i>AWS CodeBuild User Guide</i>. </p>"
        },
        "secondarySourceVersions": {
          "shape": "ProjectSecondarySourceVersions",
          "documentation": "<p>An array of <code>ProjectSourceVersion</code> objects. If <code>secondarySourceVersions</code> is specified at the build level, then they take over these <code>secondarySourceVersions</code> (at the project level). </p>"
        },
        "artifacts": {
          "shape": "ProjectArtifacts",
          "documentation": "<p>Information about the build output artifacts for the build project.</p>"
        },
        "secondaryArtifacts": {
          "shape": "ProjectArtifactsList",
          "documentation": "<p>An array of <code>ProjectArtifacts</code> objects. </p>"
        },
        "cache": {
          "shape": "ProjectCache",
          "documentation": "<p>Information about the cache for the build project.</p>"
        },
        "environment": {
          "shape": "ProjectEnvironment",
          "documentation": "<p>Information about the build environment for this build project.</p>"
        },
        "serviceRole": {
          "shape": "NonEmptyString",
          "documentation": "<p>The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>"
        },
        "timeoutInMinutes": {
          "shape": "TimeOut",
          "documentation": "<p>How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any related build that did not get marked as completed. The default is 60 minutes.</p>"
        },
        "queuedTimeoutInMinutes": {
          "shape": "TimeOut",
          "documentation": "<p>The number of minutes a build is allowed to be queued before it times out. </p>"
        },
        "encryptionKey": {
          "shape": "NonEmptyString",
          "documentation": "<p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.</p> <note> <p>You can use a cross-account KMS key to encrypt the build output artifacts if your service role has permission to that key. </p> </note> <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format <code>alias/&lt;alias-name&gt;</code>).</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag key and value pairs associated with this build project.</p> <p>These tags are available for use by AWS services that support AWS CodeBuild build project tags.</p>"
        },
        "created": {
          "shape": "Timestamp",
          "documentation": "<p>When the build project was created, expressed in Unix time format.</p>"
        },
        "lastModified": {
          "shape": "Timestamp",
          "documentation": "<p>When the build project's settings were last modified, expressed in Unix time format.</p>"
        },
        "webhook": {
          "shape": "Webhook",
          "documentation": "<p>Information about a webhook that connects repository events to a build project in AWS CodeBuild.</p>"
        },
        "vpcConfig": {
          "shape": "VpcConfig",
          "documentation": "<p>Information about the VPC configuration that AWS CodeBuild accesses.</p>"
        },
        "badge": {
          "shape": "ProjectBadge",
          "documentation": "<p>Information about the build badge for the build project.</p>"
        },
        "logsConfig": {
          "shape": "LogsConfig",
          "documentation": "<p>Information about logs for the build project. A project can create logs in Amazon CloudWatch Logs, an S3 bucket, or both. </p>"
        },
        "fileSystemLocations": {
          "shape": "ProjectFileSystemLocations",
          "documentation": "<p> An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System. </p>"
        },
        "buildBatchConfig": {
          "shape": "ProjectBuildBatchConfig",
          "documentation": "<p>A <a>ProjectBuildBatchConfig</a> object that defines the batch build options for the project.</p>"
        }
      },
      "documentation": "<p>Information about a build project.</p>"
    },
    "ProjectArns": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      },
      "max": 100,
      "min": 1
    },
    "ProjectArtifacts": {
      "type": "structure",
      "required": [
        "type"
      ],
      "members": {
        "type": {
          "shape": "ArtifactsType",
          "documentation": "<p>The type of build output artifact. Valid values include:</p> <ul> <li> <p> <code>CODEPIPELINE</code>: The build project has build output generated through AWS CodePipeline. </p> <note> <p>The <code>CODEPIPELINE</code> type is not supported for <code>secondaryArtifacts</code>.</p> </note> </li> <li> <p> <code>NO_ARTIFACTS</code>: The build project does not produce any build output.</p> </li> <li> <p> <code>S3</code>: The build project stores build output in Amazon Simple Storage Service (Amazon S3).</p> </li> </ul>"
        },
        "location": {
          "shape": "String",
          "documentation": "<p>Information about the build output artifact location:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, AWS CodePipeline ignores this value if specified. This is because AWS CodePipeline manages its build output locations instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is ignored if specified, because no build output is produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, this is the name of the output bucket.</p> </li> </ul>"
        },
        "path": {
          "shape": "String",
          "documentation": "<p>Along with <code>namespaceType</code> and <code>name</code>, the pattern that AWS CodeBuild uses to name and store the output artifact:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, AWS CodePipeline ignores this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is ignored if specified, because no build output is produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, this is the path to the output artifact. If <code>path</code> is not specified, <code>path</code> is not used.</p> </li> </ul> <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>, <code>namespaceType</code> is set to <code>NONE</code>, and <code>name</code> is set to <code>MyArtifact.zip</code>, the output artifact is stored in the output bucket at <code>MyArtifacts/MyArtifact.zip</code>.</p>"
        },
        "namespaceType": {
          "shape": "ArtifactNamespace",
          "documentation": "<p>Along with <code>path</code> and <code>name</code>, the pattern that AWS CodeBuild uses to determine the name and location to store the output artifact:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, AWS CodePipeline ignores this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is ignored if specified, because no build output is produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, valid values include:</p> <ul> <li> <p> <code>BUILD_ID</code>: Include the build ID in the location of the build output artifact.</p> </li> <li> <p> <code>NONE</code>: Do not include the build ID. This is the default if <code>namespaceType</code> is not specified.</p> </li> </ul> </li> </ul> <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>, <code>namespaceType</code> is set to <code>BUILD_ID</code>, and <code>name</code> is set to <code>MyArtifact.zip</code>, the output artifact is stored in <code>MyArtifacts/&lt;build-ID&gt;/MyArtifact.zip</code>.</p>"
        },
        "name": {
          "shape": "String",
          "documentation": "<p>Along with <code>path</code> and <code>namespaceType</code>, the pattern that AWS CodeBuild uses to name and store the output artifact:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, AWS CodePipeline ignores this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is ignored if specified, because no build output is produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, this is the name of the output artifact object. If you set the name to be a forward slash (\"/\"), the artifact is stored in the root of the output bucket.</p> </li> </ul> <p>For example:</p> <ul> <li> <p> If <code>path</code> is set to <code>MyArtifacts</code>, <code>namespaceType</code> is set to <code>BUILD_ID</code>, and <code>name</code> is set to <code>MyArtifact.zip</code>, then the output artifact is stored in <code>MyArtifacts/&lt;build-ID&gt;/MyArtifact.zip</code>. </p> </li> <li> <p> If <code>path</code> is empty, <code>namespaceType</code> is set to <code>NONE</code>, and <code>name</code> is set to \"<code>/</code>\", the output artifact is stored in the root of the output bucket. </p> </li> <li> <p> If <code>path</code> is set to <code>MyArtifacts</code>, <code>namespaceType</code> is set to <code>BUILD_ID</code>, and <code>name</code> is set to \"<code>/</code>\", the output artifact is stored in <code>MyArtifacts/&lt;build-ID&gt;</code>. </p> </li> </ul>"
        },
        "packaging": {
          "shape": "ArtifactPackaging",
          "documentation": "<p>The type of build output artifact to create:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, AWS CodePipeline ignores this value if specified. This is because AWS CodePipeline manages its build output artifacts instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is ignored if specified, because no build output is produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, valid values include:</p> <ul> <li> <p> <code>NONE</code>: AWS CodeBuild creates in the output bucket a folder that contains the build output. This is the default if <code>packaging</code> is not specified.</p> </li> <li> <p> <code>ZIP</code>: AWS CodeBuild creates in the output bucket a ZIP file that contains the build output.</p> </li> </ul> </li> </ul>"
        },
        "overrideArtifactName": {
          "shape": "WrapperBoolean",
          "documentation": "<p> If this flag is set, a name specified in the buildspec file overrides the artifact name. The name specified in a buildspec file is calculated at build time and uses the Shell Command Language. For example, you can append a date and time to your artifact name so that it is always unique. </p>"
        },
        "encryptionDisabled": {
          "shape": "WrapperBoolean",
          "documentation": "<p> Set to true if you do not want your output artifacts encrypted. This option is valid only if your artifacts type is Amazon Simple Storage Service (Amazon S3). If this is set with another artifacts type, an invalidInputException is thrown. </p>"
        },
        "artifactIdentifier": {
          "shape": "String",
          "documentation": "<p> An identifier for this artifact definition. </p>"
        }
      },
      "documentation": "<p>Information about the build output artifacts for the build project.</p>"
    },
    "ProjectArtifactsList": {
      "type": "list",
      "member": {
        "shape": "ProjectArtifacts"
      },
      "max": 12,
      "min": 0
    },
    "ProjectBadge": {
      "type": "structure",
      "members": {
        "badgeEnabled": {
          "shape": "Boolean",
          "documentation": "<p>Set this to true to generate a publicly accessible URL for your project's build badge.</p>"
        },
        "badgeRequestUrl": {
          "shape": "String",
          "documentation": "<p>The publicly-accessible URL through which you can access the build badge for your project. </p> <p>The publicly accessible URL through which you can access the build badge for your project. </p>"
        }
      },
      "documentation": "<p>Information about the build badge for the build project.</p>"
    },
    "ProjectBuildBatchConfig": {
      "type": "structure",
      "members": {
        "serviceRole": {
          "shape": "NonEmptyString",
          "documentation": "<p>Specifies the service role ARN for the batch build project.</p>"
        },
        "combineArtifacts": {
          "shape": "WrapperBoolean",
          "documentation": "<p>Specifies if the build artifacts for the batch build should be combined into a single artifact location.</p>"
        },
        "restrictions": {
          "shape": "BatchRestrictions",
          "documentation": "<p>A <code>BatchRestrictions</code> object that specifies the restrictions for the batch build.</p>"
        },
        "timeoutInMins": {
          "shape": "WrapperInt",
          "documentation": "<p>Specifies the maximum amount of time, in minutes, that the batch build must be completed in.</p>"
        }
      },
      "documentation": "<p>Contains configuration information about a batch build project.</p>"
    },
    "ProjectCache": {
      "type": "structure",
      "required": [
        "type"
      ],
      "members": {
        "type": {
          "shape": "CacheType",
          "documentation": "<p>The type of cache used by the build project. Valid values include:</p> <ul> <li> <p> <code>NO_CACHE</code>: The build project does not use any cache.</p> </li> <li> <p> <code>S3</code>: The build project reads and writes from and to S3.</p> </li> <li> <p> <code>LOCAL</code>: The build project stores a cache locally on a build host that is only available to that build host.</p> </li> </ul>"
        },
        "location": {
          "shape": "String",
          "documentation": "<p>Information about the cache location: </p> <ul> <li> <p> <code>NO_CACHE</code> or <code>LOCAL</code>: This value is ignored.</p> </li> <li> <p> <code>S3</code>: This is the S3 bucket name/prefix.</p> </li> </ul>"
        },
        "modes": {
          "shape": "ProjectCacheModes",
          "documentation": "<p> If you use a <code>LOCAL</code> cache, the local cache mode. You can use one or more local cache modes at the same time. </p> <ul> <li> <p> <code>LOCAL_SOURCE_CACHE</code> mode caches Git metadata for primary and secondary sources. After the cache is created, subsequent builds pull only the change between commits. This mode is a good choice for projects with a clean working directory and a source that is a large Git repository. If you choose this option and your project does not use a Git repository (GitHub, GitHub Enterprise, or Bitbucket), the option is ignored. </p> </li> <li> <p> <code>LOCAL_DOCKER_LAYER_CACHE</code> mode caches existing Docker layers. This mode is a good choice for projects that build or pull large Docker images. It can prevent the performance issues caused by pulling large Docker images down from the network. </p> <note> <ul> <li> <p> You can use a Docker layer cache in the Linux environment only. </p> </li> <li> <p> The <code>privileged</code> flag must be set so that your project has the required Docker permissions. </p> </li> <li> <p> You should consider the security implications before you use a Docker layer cache. </p> </li> </ul> </note> </li> </ul> <ul> <li> <p> <code>LOCAL_CUSTOM_CACHE</code> mode caches directories you specify in the buildspec file. This mode is a good choice if your build scenario is not suited to one of the other three local cache modes. If you use a custom cache: </p> <ul> <li> <p> Only directories can be specified for caching. You cannot specify individual files. </p> </li> <li> <p> Symlinks are used to reference cached directories. </p> </li> <li> <p> Cached directories are linked to your build before it downloads its project sources. Cached items are overridden if a source item has the same name. Directories are specified using cache paths in the buildspec file. </p> </li> </ul> </li> </ul>"
        }
      },
      "documentation": "<p>Information about the cache for the build project.</p>"
    },
    "ProjectCacheModes": {
      "type": "list",
      "member": {
        "shape": "CacheMode"
      }
    },
    "ProjectDescription": {
      "type": "string",
      "max": 255,
      "min": 0
    },
    "ProjectEnvironment": {
      "type": "structure",
      "required": [
        "type",
        "image",
        "computeType"
      ],
      "members": {
        "type": {
          "shape": "EnvironmentType",
          "documentation": "<p>The type of build environment to use for related builds.</p> <ul> <li> <p>The environment type <code>ARM_CONTAINER</code> is available only in regions US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific (Sydney), and EU (Frankfurt).</p> </li> <li> <p>The environment type <code>LINUX_CONTAINER</code> with compute type <code>build.general1.2xlarge</code> is available only in regions US East (N. Virginia), US East (Ohio), US West (Oregon), Canada (Central), EU (Ireland), EU (London), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific (Singapore), Asia Pacific (Sydney), China (Beijing), and China (Ningxia).</p> </li> <li> <p>The environment type <code>LINUX_GPU_CONTAINER</code> is available only in regions US East (N. Virginia), US East (Ohio), US West (Oregon), Canada (Central), EU (Ireland), EU (London), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific (Singapore), Asia Pacific (Sydney) , China (Beijing), and China (Ningxia).</p> </li> </ul>"
        },
        "image": {
          "shape": "NonEmptyString",
          "documentation": "<p>The image tag or image digest that identifies the Docker image to use for this build project. Use the following formats:</p> <ul> <li> <p>For an image tag: <code>&lt;registry&gt;/&lt;repository&gt;:&lt;tag&gt;</code>. For example, in the Docker repository that CodeBuild uses to manage its Docker images, this would be <code>aws/codebuild/standard:4.0</code>. To specify the latest version of this image, this would be <code>aws/codebuild/standard:latest</code>.</p> </li> <li> <p>For an image digest: <code>&lt;registry&gt;/&lt;repository&gt;@&lt;digest&gt;</code>. For example, to specify an image with the digest \"sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf,\" use <code>&lt;registry&gt;/&lt;repository&gt;@sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf</code>.</p> </li> </ul>"
        },
        "computeType": {
          "shape": "ComputeType",
          "documentation": "<p>Information about the compute resources the build project uses. Available values include:</p> <ul> <li> <p> <code>BUILD_GENERAL1_SMALL</code>: Use up to 3 GB memory and 2 vCPUs for builds.</p> </li> <li> <p> <code>BUILD_GENERAL1_MEDIUM</code>: Use up to 7 GB memory and 4 vCPUs for builds.</p> </li> <li> <p> <code>BUILD_GENERAL1_LARGE</code>: Use up to 16 GB memory and 8 vCPUs for builds, depending on your environment type.</p> </li> <li> <p> <code>BUILD_GENERAL1_2XLARGE</code>: Use up to 145 GB memory, 72 vCPUs, and 824 GB of SSD storage for builds. This compute type supports Docker images up to 100 GB uncompressed.</p> </li> </ul> <p> If you use <code>BUILD_GENERAL1_LARGE</code>: </p> <ul> <li> <p> For environment type <code>LINUX_CONTAINER</code>, you can use up to 15 GB memory and 8 vCPUs for builds. </p> </li> <li> <p> For environment type <code>LINUX_GPU_CONTAINER</code>, you can use up to 255 GB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.</p> </li> <li> <p> For environment type <code>ARM_CONTAINER</code>, you can use up to 16 GB memory and 8 vCPUs on ARM-based processors for builds.</p> </li> </ul> <p> For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html\">Build Environment Compute Types</a> in the <i>AWS CodeBuild User Guide.</i> </p>"
        },
        "environmentVariables": {
          "shape": "EnvironmentVariables",
          "documentation": "<p>A set of environment variables to make available to builds for this build project.</p>"
        },
        "privilegedMode": {
          "shape": "WrapperBoolean",
          "documentation": "<p>Enables running the Docker daemon inside a Docker container. Set to true only if the build project is used to build Docker images. Otherwise, a build that attempts to interact with the Docker daemon fails. The default setting is <code>false</code>.</p> <p>You can initialize the Docker daemon during the install phase of your build by adding one of the following sets of commands to the install phase of your buildspec file:</p> <p>If the operating system's base image is Ubuntu Linux:</p> <p> <code>- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&amp;</code> </p> <p> <code>- timeout 15 sh -c \"until docker info; do echo .; sleep 1; done\"</code> </p> <p>If the operating system's base image is Alpine Linux and the previous command does not work, add the <code>-t</code> argument to <code>timeout</code>:</p> <p> <code>- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&amp;</code> </p> <p> <code>- timeout -t 15 sh -c \"until docker info; do echo .; sleep 1; done\"</code> </p>"
        },
        "certificate": {
          "shape": "String",
          "documentation": "<p>The certificate to use with this build project.</p>"
        },
        "registryCredential": {
          "shape": "RegistryCredential",
          "documentation": "<p> The credentials for access to a private registry.</p>"
        },
        "imagePullCredentialsType": {
          "shape": "ImagePullCredentialsType",
          "documentation": "<p> The type of credentials AWS CodeBuild uses to pull images in your build. There are two valid values: </p> <ul> <li> <p> <code>CODEBUILD</code> specifies that AWS CodeBuild uses its own credentials. This requires that you modify your ECR repository policy to trust AWS CodeBuild's service principal. </p> </li> <li> <p> <code>SERVICE_ROLE</code> specifies that AWS CodeBuild uses your build project's service role. </p> </li> </ul> <p> When you use a cross-account or private registry image, you must use SERVICE_ROLE credentials. When you use an AWS CodeBuild curated image, you must use CODEBUILD credentials. </p>"
        }
      },
      "documentation": "<p>Information about the build environment of the build project.</p>"
    },
    "ProjectFileSystemLocation": {
      "type": "structure",
      "members": {
        "type": {
          "shape": "FileSystemType",
          "documentation": "<p> The type of the file system. The one supported type is <code>EFS</code>. </p>"
        },
        "location": {
          "shape": "String",
          "documentation": "<p> A string that specifies the location of the file system created by Amazon EFS. Its format is <code>efs-dns-name:/directory-path</code>. You can find the DNS name of file system when you view it in the AWS EFS console. The directory path is a path to a directory in the file system that CodeBuild mounts. For example, if the DNS name of a file system is <code>fs-abcd1234.efs.us-west-2.amazonaws.com</code>, and its mount directory is <code>my-efs-mount-directory</code>, then the <code>location</code> is <code>fs-abcd1234.efs.us-west-2.amazonaws.com:/my-efs-mount-directory</code>. </p> <p> The directory path in the format <code>efs-dns-name:/directory-path</code> is optional. If you do not specify a directory path, the location is only the DNS name and CodeBuild mounts the entire file system. </p>"
        },
        "mountPoint": {
          "shape": "String",
          "documentation": "<p> The location in the container where you mount the file system. </p>"
        },
        "identifier": {
          "shape": "String",
          "documentation": "<p> The name used to access a file system created by Amazon EFS. CodeBuild creates an environment variable by appending the <code>identifier</code> in all capital letters to <code>CODEBUILD_</code>. For example, if you specify <code>my-efs</code> for <code>identifier</code>, a new environment variable is create named <code>CODEBUILD_MY-EFS</code>. </p> <p> The <code>identifier</code> is used to mount your file system. </p>"
        },
        "mountOptions": {
          "shape": "String",
          "documentation": "<p> The mount options for a file system created by AWS EFS. The default mount options used by CodeBuild are <code>nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2</code>. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/mounting-fs-nfs-mount-settings.html\">Recommended NFS Mount Options</a>. </p>"
        }
      },
      "documentation": "<p> Information about a file system created by Amazon Elastic File System (EFS). For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html\">What Is Amazon Elastic File System?</a> </p>"
    },
    "ProjectFileSystemLocations": {
      "type": "list",
      "member": {
        "shape": "ProjectFileSystemLocation"
      }
    },
    "ProjectName": {
      "type": "string",
      "max": 255,
      "min": 2,
      "pattern": "[A-Za-z0-9][A-Za-z0-9\\-_]{1,254}"
    },
    "ProjectNames": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      },
      "max": 100,
      "min": 1
    },
    "ProjectSecondarySourceVersions": {
      "type": "list",
      "member": {
        "shape": "ProjectSourceVersion"
      },
      "max": 12,
      "min": 0
    },
    "ProjectSortByType": {
      "type": "string",
      "enum": [
        "NAME",
        "CREATED_TIME",
        "LAST_MODIFIED_TIME"
      ]
    },
    "ProjectSource": {
      "type": "structure",
      "required": [
        "type"
      ],
      "members": {
        "type": {
          "shape": "SourceType",
          "documentation": "<p>The type of repository that contains the source code to be built. Valid values include:</p> <ul> <li> <p> <code>BITBUCKET</code>: The source code is in a Bitbucket repository.</p> </li> <li> <p> <code>CODECOMMIT</code>: The source code is in an AWS CodeCommit repository.</p> </li> <li> <p> <code>CODEPIPELINE</code>: The source code settings are specified in the source action of a pipeline in AWS CodePipeline.</p> </li> <li> <p> <code>GITHUB</code>: The source code is in a GitHub or GitHub Enterprise Cloud repository.</p> </li> <li> <p> <code>GITHUB_ENTERPRISE</code>: The source code is in a GitHub Enterprise Server repository.</p> </li> <li> <p> <code>NO_SOURCE</code>: The project does not have input source code.</p> </li> <li> <p> <code>S3</code>: The source code is in an Amazon Simple Storage Service (Amazon S3) input bucket.</p> </li> </ul>"
        },
        "location": {
          "shape": "String",
          "documentation": "<p>Information about the location of the source code to be built. Valid values include:</p> <ul> <li> <p>For source code settings that are specified in the source action of a pipeline in AWS CodePipeline, <code>location</code> should not be specified. If it is specified, AWS CodePipeline ignores it. This is because AWS CodePipeline uses the settings in a pipeline's source action instead of this value.</p> </li> <li> <p>For source code in an AWS CodeCommit repository, the HTTPS clone URL to the repository that contains the source code and the buildspec file (for example, <code>https://git-codecommit.&lt;region-ID&gt;.amazonaws.com/v1/repos/&lt;repo-name&gt;</code>).</p> </li> <li> <p>For source code in an Amazon Simple Storage Service (Amazon S3) input bucket, one of the following. </p> <ul> <li> <p>The path to the ZIP file that contains the source code (for example, <code>&lt;bucket-name&gt;/&lt;path&gt;/&lt;object-name&gt;.zip</code>). </p> </li> <li> <p>The path to the folder that contains the source code (for example, <code>&lt;bucket-name&gt;/&lt;path-to-source-code&gt;/&lt;folder&gt;/</code>). </p> </li> </ul> </li> <li> <p>For source code in a GitHub repository, the HTTPS clone URL to the repository that contains the source and the buildspec file. You must connect your AWS account to your GitHub account. Use the AWS CodeBuild console to start creating a build project. When you use the console to connect (or reconnect) with GitHub, on the GitHub <b>Authorize application</b> page, for <b>Organization access</b>, choose <b>Request access</b> next to each repository you want to allow AWS CodeBuild to have access to, and then choose <b>Authorize application</b>. (After you have connected to your GitHub account, you do not need to finish creating the build project. You can leave the AWS CodeBuild console.) To instruct AWS CodeBuild to use this connection, in the <code>source</code> object, set the <code>auth</code> object's <code>type</code> value to <code>OAUTH</code>.</p> </li> <li> <p>For source code in a Bitbucket repository, the HTTPS clone URL to the repository that contains the source and the buildspec file. You must connect your AWS account to your Bitbucket account. Use the AWS CodeBuild console to start creating a build project. When you use the console to connect (or reconnect) with Bitbucket, on the Bitbucket <b>Confirm access to your account</b> page, choose <b>Grant access</b>. (After you have connected to your Bitbucket account, you do not need to finish creating the build project. You can leave the AWS CodeBuild console.) To instruct AWS CodeBuild to use this connection, in the <code>source</code> object, set the <code>auth</code> object's <code>type</code> value to <code>OAUTH</code>.</p> </li> </ul>"
        },
        "gitCloneDepth": {
          "shape": "GitCloneDepth",
          "documentation": "<p>Information about the Git clone depth for the build project.</p>"
        },
        "gitSubmodulesConfig": {
          "shape": "GitSubmodulesConfig",
          "documentation": "<p> Information about the Git submodules configuration for the build project. </p>"
        },
        "buildspec": {
          "shape": "String",
          "documentation": "<p>The buildspec file declaration to use for the builds in this build project.</p> <p> If this value is set, it can be either an inline buildspec definition, the path to an alternate buildspec file relative to the value of the built-in <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket. The bucket must be in the same AWS Region as the build project. Specify the buildspec file using its ARN (for example, <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not provided or is set to an empty string, the source code must contain a buildspec file in its root directory. For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage\">Buildspec File Name and Storage Location</a>. </p>"
        },
        "auth": {
          "shape": "SourceAuth",
          "documentation": "<p>Information about the authorization settings for AWS CodeBuild to access the source code to be built.</p> <p>This information is for the AWS CodeBuild console's use only. Your code should not get or set this information directly.</p>"
        },
        "reportBuildStatus": {
          "shape": "WrapperBoolean",
          "documentation": "<p> Set to true to report the status of a build's start and finish to your source provider. This option is valid only when your source provider is GitHub, GitHub Enterprise, or Bitbucket. If this is set and you use a different source provider, an invalidInputException is thrown. </p> <note> <p> The status of a build triggered by a webhook is always reported to your source provider. </p> </note>"
        },
        "buildStatusConfig": {
          "shape": "BuildStatusConfig",
          "documentation": "<p>Contains information that defines how the build project reports the build status to the source provider. This option is only used when the source provider is <code>GITHUB</code>, <code>GITHUB_ENTERPRISE</code>, or <code>BITBUCKET</code>.</p>"
        },
        "insecureSsl": {
          "shape": "WrapperBoolean",
          "documentation": "<p>Enable this flag to ignore SSL warnings while connecting to the project source code.</p>"
        },
        "sourceIdentifier": {
          "shape": "String",
          "documentation": "<p> An identifier for this project source. </p>"
        }
      },
      "documentation": "<p>Information about the build input source code for the build project.</p>"
    },
    "ProjectSourceVersion": {
      "type": "structure",
      "required": [
        "sourceIdentifier",
        "sourceVersion"
      ],
      "members": {
        "sourceIdentifier": {
          "shape": "String",
          "documentation": "<p>An identifier for a source in the build project.</p>"
        },
        "sourceVersion": {
          "shape": "String",
          "documentation": "<p>The source version for the corresponding source identifier. If specified, must be one of:</p> <ul> <li> <p>For AWS CodeCommit: the commit ID, branch, or Git tag to use.</p> </li> <li> <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example, <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Amazon Simple Storage Service (Amazon S3): the version ID of the object that represents the build input ZIP file to use.</p> </li> </ul> <p> For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html\">Source Version Sample with CodeBuild</a> in the <i>AWS CodeBuild User Guide</i>. </p>"
        }
      },
      "documentation": "<p> A source identifier and its corresponding version. </p>"
    },
    "ProjectSources": {
      "type": "list",
      "member": {
        "shape": "ProjectSource"
      },
      "max": 12,
      "min": 0
    },
    "Projects": {
      "type": "list",
      "member": {
        "shape": "Project"
      }
    },
    "PutResourcePolicyInput": {
      "type": "structure",
      "required": [
        "policy",
        "resourceArn"
      ],
      "members": {
        "policy": {
          "shape": "NonEmptyString",
          "documentation": "<p> A JSON-formatted resource policy. For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/project-sharing.html#project-sharing-share\">Sharing a Project</a> and <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/report-groups-sharing.html#report-groups-sharing-share\">Sharing a Report Group</a> in the <i>AWS CodeBuild User Guide</i>. </p>"
        },
        "resourceArn": {
          "shape": "NonEmptyString",
          "documentation": "<p> The ARN of the <code>Project</code> or <code>ReportGroup</code> resource you want to associate with a resource policy. </p>"
        }
      }
    },
    "PutResourcePolicyOutput": {
      "type": "structure",
      "members": {
        "resourceArn": {
          "shape": "NonEmptyString",
          "documentation": "<p> The ARN of the <code>Project</code> or <code>ReportGroup</code> resource that is associated with a resource policy. </p>"
        }
      }
    },
    "RegistryCredential": {
      "type": "structure",
      "required": [
        "credential",
        "credentialProvider"
      ],
      "members": {
        "credential": {
          "shape": "NonEmptyString",
          "documentation": "<p> The Amazon Resource Name (ARN) or name of credentials created using AWS Secrets Manager. </p> <note> <p> The <code>credential</code> can use the name of the credentials only if they exist in your current AWS Region. </p> </note>"
        },
        "credentialProvider": {
          "shape": "CredentialProviderType",
          "documentation": "<p> The service that created the credentials to access a private Docker registry. The valid value, SECRETS_MANAGER, is for AWS Secrets Manager. </p>"
        }
      },
      "documentation": "<p> Information about credentials that provide access to a private Docker registry. When this is set: </p> <ul> <li> <p> <code>imagePullCredentialsType</code> must be set to <code>SERVICE_ROLE</code>. </p> </li> <li> <p> images cannot be curated or an Amazon ECR image.</p> </li> </ul> <p> For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-private-registry.html\">Private Registry with AWS Secrets Manager Sample for AWS CodeBuild</a>. </p>"
    },
    "Report": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "NonEmptyString",
          "documentation": "<p> The ARN of the report run. </p>"
        },
        "type": {
          "shape": "ReportType",
          "documentation": "<p>The type of the report that was run.</p> <dl> <dt>CODE_COVERAGE</dt> <dd> <p>A code coverage report.</p> </dd> <dt>TEST</dt> <dd> <p>A test report.</p> </dd> </dl>"
        },
        "name": {
          "shape": "String",
          "documentation": "<p> The name of the report that was run. </p>"
        },
        "reportGroupArn": {
          "shape": "NonEmptyString",
          "documentation": "<p> The ARN of the report group associated with this report. </p>"
        },
        "executionId": {
          "shape": "String",
          "documentation": "<p> The ARN of the build run that generated this report. </p>"
        },
        "status": {
          "shape": "ReportStatusType",
          "documentation": "<p> The status of this report. </p>"
        },
        "created": {
          "shape": "Timestamp",
          "documentation": "<p> The date and time this report run occurred. </p>"
        },
        "expired": {
          "shape": "Timestamp",
          "documentation": "<p> The date and time a report expires. A report expires 30 days after it is created. An expired report is not available to view in CodeBuild. </p>"
        },
        "exportConfig": {
          "shape": "ReportExportConfig",
          "documentation": "<p> Information about where the raw data used to generate this report was exported. </p>"
        },
        "truncated": {
          "shape": "WrapperBoolean",
          "documentation": "<p> A boolean that specifies if this report run is truncated. The list of test cases is truncated after the maximum number of test cases is reached. </p>"
        },
        "testSummary": {
          "shape": "TestReportSummary",
          "documentation": "<p> A <code>TestReportSummary</code> object that contains information about this test report. </p>"
        },
        "codeCoverageSummary": {
          "shape": "CodeCoverageReportSummary",
          "documentation": "<p>A <code>CodeCoverageReportSummary</code> object that contains a code coverage summary for this report.</p>"
        }
      },
      "documentation": "<p>Information about the results from running a series of test cases during the run of a build project. The test cases are specified in the buildspec for the build project using one or more paths to the test case files. You can specify any type of tests you want, such as unit tests, integration tests, and functional tests. </p>"
    },
    "ReportArns": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      },
      "max": 100,
      "min": 1
    },
    "ReportCodeCoverageSortByType": {
      "type": "string",
      "enum": [
        "LINE_COVERAGE_PERCENTAGE",
        "FILE_PATH"
      ]
    },
    "ReportExportConfig": {
      "type": "structure",
      "members": {
        "exportConfigType": {
          "shape": "ReportExportConfigType",
          "documentation": "<p> The export configuration type. Valid values are: </p> <ul> <li> <p> <code>S3</code>: The report results are exported to an S3 bucket. </p> </li> <li> <p> <code>NO_EXPORT</code>: The report results are not exported. </p> </li> </ul>"
        },
        "s3Destination": {
          "shape": "S3ReportExportConfig",
          "documentation": "<p> A <code>S3ReportExportConfig</code> object that contains information about the S3 bucket where the run of a report is exported. </p>"
        }
      },
      "documentation": "<p> Information about the location where the run of a report is exported. </p>"
    },
    "ReportExportConfigType": {
      "type": "string",
      "enum": [
        "S3",
        "NO_EXPORT"
      ]
    },
    "ReportFilter": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "ReportStatusType",
          "documentation": "<p> The status used to filter reports. You can filter using one status only. </p>"
        }
      },
      "documentation": "<p> A filter used to return reports with the status specified by the input <code>status</code> parameter. </p>"
    },
    "ReportGroup": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "NonEmptyString",
          "documentation": "<p> The ARN of a <code>ReportGroup</code>. </p>"
        },
        "name": {
          "shape": "ReportGroupName",
          "documentation": "<p> The name of a <code>ReportGroup</code>. </p>"
        },
        "type": {
          "shape": "ReportType",
          "documentation": "<p> The type of the <code>ReportGroup</code>. The one valid value is <code>TEST</code>. </p>"
        },
        "exportConfig": {
          "shape": "ReportExportConfig",
          "documentation": "<p> Information about the destination where the raw data of this <code>ReportGroup</code> is exported. </p>"
        },
        "created": {
          "shape": "Timestamp",
          "documentation": "<p> The date and time this <code>ReportGroup</code> was created. </p>"
        },
        "lastModified": {
          "shape": "Timestamp",
          "documentation": "<p> The date and time this <code>ReportGroup</code> was last modified. </p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p> A list of tag key and value pairs associated with this report group. </p> <p>These tags are available for use by AWS services that support AWS CodeBuild report group tags.</p>"
        }
      },
      "documentation": "<p> A series of reports. Each report contains information about the results from running a series of test cases. You specify the test cases for a report group in the buildspec for a build project using one or more paths to the test case files. </p>"
    },
    "ReportGroupArns": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      },
      "max": 100,
      "min": 1
    },
    "ReportGroupName": {
      "type": "string",
      "max": 128,
      "min": 2
    },
    "ReportGroupSortByType": {
      "type": "string",
      "enum": [
        "NAME",
        "CREATED_TIME",
        "LAST_MODIFIED_TIME"
      ]
    },
    "ReportGroups": {
      "type": "list",
      "member": {
        "shape": "ReportGroup"
      },
      "max": 100,
      "min": 1
    },
    "ReportPackagingType": {
      "type": "string",
      "enum": [
        "ZIP",
        "NONE"
      ]
    },
    "ReportStatusCounts": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "WrapperInt"
      }
    },
    "ReportStatusType": {
      "type": "string",
      "enum": [
        "GENERATING",
        "SUCCEEDED",
        "FAILED",
        "INCOMPLETE",
        "DELETING"
      ]
    },
    "ReportType": {
      "type": "string",
      "enum": [
        "TEST",
        "CODE_COVERAGE"
      ]
    },
    "Reports": {
      "type": "list",
      "member": {
        "shape": "Report"
      },
      "max": 100,
      "min": 1
    },
    "ResolvedArtifact": {
      "type": "structure",
      "members": {
        "type": {
          "shape": "ArtifactsType",
          "documentation": "<p>Specifies the type of artifact.</p>"
        },
        "location": {
          "shape": "String",
          "documentation": "<p>The location of the artifact.</p>"
        },
        "identifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the artifact.</p>"
        }
      },
      "documentation": "<p>Represents a resolved build artifact. A resolve artifact is an artifact that is built and deployed to the destination, such as Amazon Simple Storage Service (Amazon S3).</p>"
    },
    "ResolvedSecondaryArtifacts": {
      "type": "list",
      "member": {
        "shape": "ResolvedArtifact"
      }
    },
    "RetryBuildBatchInput": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "NonEmptyString",
          "documentation": "<p>Specifies the identifier of the batch build to restart.</p>"
        },
        "idempotencyToken": {
          "shape": "String",
          "documentation": "<p>A unique, case sensitive identifier you provide to ensure the idempotency of the <code>RetryBuildBatch</code> request. The token is included in the <code>RetryBuildBatch</code> request and is valid for five minutes. If you repeat the <code>RetryBuildBatch</code> request with the same token, but change a parameter, AWS CodeBuild returns a parameter mismatch error.</p>"
        },
        "retryType": {
          "shape": "RetryBuildBatchType",
          "documentation": "<p>Specifies the type of retry to perform.</p>"
        }
      }
    },
    "RetryBuildBatchOutput": {
      "type": "structure",
      "members": {
        "buildBatch": {
          "shape": "BuildBatch"
        }
      }
    },
    "RetryBuildBatchType": {
      "type": "string",
      "enum": [
        "RETRY_ALL_BUILDS",
        "RETRY_FAILED_BUILDS"
      ]
    },
    "RetryBuildInput": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "NonEmptyString",
          "documentation": "<p>Specifies the identifier of the build to restart.</p>"
        },
        "idempotencyToken": {
          "shape": "String",
          "documentation": "<p>A unique, case sensitive identifier you provide to ensure the idempotency of the <code>RetryBuild</code> request. The token is included in the <code>RetryBuild</code> request and is valid for five minutes. If you repeat the <code>RetryBuild</code> request with the same token, but change a parameter, AWS CodeBuild returns a parameter mismatch error.</p>"
        }
      }
    },
    "RetryBuildOutput": {
      "type": "structure",
      "members": {
        "build": {
          "shape": "Build"
        }
      }
    },
    "S3LogsConfig": {
      "type": "structure",
      "required": [
        "status"
      ],
      "members": {
        "status": {
          "shape": "LogsConfigStatusType",
          "documentation": "<p>The current status of the S3 build logs. Valid values are:</p> <ul> <li> <p> <code>ENABLED</code>: S3 build logs are enabled for this build project.</p> </li> <li> <p> <code>DISABLED</code>: S3 build logs are not enabled for this build project.</p> </li> </ul>"
        },
        "location": {
          "shape": "String",
          "documentation": "<p> The ARN of an S3 bucket and the path prefix for S3 logs. If your Amazon S3 bucket name is <code>my-bucket</code>, and your path prefix is <code>build-log</code>, then acceptable formats are <code>my-bucket/build-log</code> or <code>arn:aws:s3:::my-bucket/build-log</code>. </p>"
        },
        "encryptionDisabled": {
          "shape": "WrapperBoolean",
          "documentation": "<p> Set to true if you do not want your S3 build log output encrypted. By default S3 build logs are encrypted. </p>"
        }
      },
      "documentation": "<p> Information about S3 logs for a build project. </p>"
    },
    "S3ReportExportConfig": {
      "type": "structure",
      "members": {
        "bucket": {
          "shape": "NonEmptyString",
          "documentation": "<p> The name of the S3 bucket where the raw data of a report are exported. </p>"
        },
        "path": {
          "shape": "String",
          "documentation": "<p> The path to the exported report's raw data results. </p>"
        },
        "packaging": {
          "shape": "ReportPackagingType",
          "documentation": "<p> The type of build output artifact to create. Valid values include: </p> <ul> <li> <p> <code>NONE</code>: AWS CodeBuild creates the raw data in the output bucket. This is the default if packaging is not specified. </p> </li> <li> <p> <code>ZIP</code>: AWS CodeBuild creates a ZIP file with the raw data in the output bucket. </p> </li> </ul>"
        },
        "encryptionKey": {
          "shape": "NonEmptyString",
          "documentation": "<p> The encryption key for the report's encrypted raw data. </p>"
        },
        "encryptionDisabled": {
          "shape": "WrapperBoolean",
          "documentation": "<p> A boolean value that specifies if the results of a report are encrypted. </p>"
        }
      },
      "documentation": "<p> Information about the S3 bucket where the raw data of a report are exported. </p>"
    },
    "SecurityGroupIds": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      },
      "max": 5
    },
    "SensitiveNonEmptyString": {
      "type": "string",
      "min": 1,
      "sensitive": true
    },
    "ServerType": {
      "type": "string",
      "enum": [
        "GITHUB",
        "BITBUCKET",
        "GITHUB_ENTERPRISE"
      ]
    },
    "SharedResourceSortByType": {
      "type": "string",
      "enum": [
        "ARN",
        "MODIFIED_TIME"
      ]
    },
    "SortOrderType": {
      "type": "string",
      "enum": [
        "ASCENDING",
        "DESCENDING"
      ]
    },
    "SourceAuth": {
      "type": "structure",
      "required": [
        "type"
      ],
      "members": {
        "type": {
          "shape": "SourceAuthType",
          "documentation": "<note> <p> This data type is deprecated and is no longer accurate or used. </p> </note> <p>The authorization type to use. The only valid value is <code>OAUTH</code>, which represents the OAuth authorization type.</p>"
        },
        "resource": {
          "shape": "String",
          "documentation": "<p>The resource value that applies to the specified authorization type.</p>"
        }
      },
      "documentation": "<p>Information about the authorization settings for AWS CodeBuild to access the source code to be built.</p> <p>This information is for the AWS CodeBuild console's use only. Your code should not get or set this information directly.</p>"
    },
    "SourceAuthType": {
      "type": "string",
      "enum": [
        "OAUTH"
      ]
    },
    "SourceCredentialsInfo": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "NonEmptyString",
          "documentation": "<p> The Amazon Resource Name (ARN) of the token. </p>"
        },
        "serverType": {
          "shape": "ServerType",
          "documentation": "<p> The type of source provider. The valid options are GITHUB, GITHUB_ENTERPRISE, or BITBUCKET. </p>"
        },
        "authType": {
          "shape": "AuthType",
          "documentation": "<p> The type of authentication used by the credentials. Valid options are OAUTH, BASIC_AUTH, or PERSONAL_ACCESS_TOKEN. </p>"
        }
      },
      "documentation": "<p> Information about the credentials for a GitHub, GitHub Enterprise, or Bitbucket repository. </p>"
    },
    "SourceCredentialsInfos": {
      "type": "list",
      "member": {
        "shape": "SourceCredentialsInfo"
      }
    },
    "SourceType": {
      "type": "string",
      "enum": [
        "CODECOMMIT",
        "CODEPIPELINE",
        "GITHUB",
        "S3",
        "BITBUCKET",
        "GITHUB_ENTERPRISE",
        "NO_SOURCE"
      ]
    },
    "StartBuildBatchInput": {
      "type": "structure",
      "required": [
        "projectName"
      ],
      "members": {
        "projectName": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of the project.</p>"
        },
        "secondarySourcesOverride": {
          "shape": "ProjectSources",
          "documentation": "<p>An array of <code>ProjectSource</code> objects that override the secondary sources defined in the batch build project.</p>"
        },
        "secondarySourcesVersionOverride": {
          "shape": "ProjectSecondarySourceVersions",
          "documentation": "<p>An array of <code>ProjectSourceVersion</code> objects that override the secondary source versions in the batch build project.</p>"
        },
        "sourceVersion": {
          "shape": "String",
          "documentation": "<p>The version of the batch build input to be built, for this build only. If not specified, the latest version is used. If specified, the contents depends on the source provider:</p> <dl> <dt>AWS CodeCommit</dt> <dd> <p>The commit ID, branch, or Git tag to use.</p> </dd> <dt>GitHub</dt> <dd> <p>The commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </dd> <dt>Bitbucket</dt> <dd> <p>The commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </dd> <dt>Amazon Simple Storage Service (Amazon S3)</dt> <dd> <p>The version ID of the object that represents the build input ZIP file to use.</p> </dd> </dl> <p>If <code>sourceVersion</code> is specified at the project level, then this <code>sourceVersion</code> (at the build level) takes precedence. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html\">Source Version Sample with CodeBuild</a> in the <i>AWS CodeBuild User Guide</i>. </p>"
        },
        "artifactsOverride": {
          "shape": "ProjectArtifacts",
          "documentation": "<p>An array of <code>ProjectArtifacts</code> objects that contains information about the build output artifact overrides for the build project.</p>"
        },
        "secondaryArtifactsOverride": {
          "shape": "ProjectArtifactsList",
          "documentation": "<p>An array of <code>ProjectArtifacts</code> objects that override the secondary artifacts defined in the batch build project.</p>"
        },
        "environmentVariablesOverride": {
          "shape": "EnvironmentVariables",
          "documentation": "<p>An array of <code>EnvironmentVariable</code> objects that override, or add to, the environment variables defined in the batch build project.</p>"
        },
        "sourceTypeOverride": {
          "shape": "SourceType",
          "documentation": "<p>The source input type that overrides the source input defined in the batch build project.</p>"
        },
        "sourceLocationOverride": {
          "shape": "String",
          "documentation": "<p>A location that overrides, for this batch build, the source location defined in the batch build project.</p>"
        },
        "sourceAuthOverride": {
          "shape": "SourceAuth",
          "documentation": "<p>A <code>SourceAuth</code> object that overrides the one defined in the batch build project. This override applies only if the build project's source is BitBucket or GitHub.</p>"
        },
        "gitCloneDepthOverride": {
          "shape": "GitCloneDepth",
          "documentation": "<p>The user-defined depth of history, with a minimum value of 0, that overrides, for this batch build only, any previous depth of history defined in the batch build project.</p>"
        },
        "gitSubmodulesConfigOverride": {
          "shape": "GitSubmodulesConfig",
          "documentation": "<p>A <code>GitSubmodulesConfig</code> object that overrides the Git submodules configuration for this batch build.</p>"
        },
        "buildspecOverride": {
          "shape": "String",
          "documentation": "<p>A buildspec file declaration that overrides, for this build only, the latest one already defined in the build project.</p> <p>If this value is set, it can be either an inline buildspec definition, the path to an alternate buildspec file relative to the value of the built-in <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket. The bucket must be in the same AWS Region as the build project. Specify the buildspec file using its ARN (for example, <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not provided or is set to an empty string, the source code must contain a buildspec file in its root directory. For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage\">Buildspec File Name and Storage Location</a>. </p>"
        },
        "insecureSslOverride": {
          "shape": "WrapperBoolean",
          "documentation": "<p>Enable this flag to override the insecure SSL setting that is specified in the batch build project. The insecure SSL setting determines whether to ignore SSL warnings while connecting to the project source code. This override applies only if the build's source is GitHub Enterprise.</p>"
        },
        "reportBuildBatchStatusOverride": {
          "shape": "WrapperBoolean",
          "documentation": "<p>Set to <code>true</code> to report to your source provider the status of a batch build's start and completion. If you use this option with a source provider other than GitHub, GitHub Enterprise, or Bitbucket, an <code>invalidInputException</code> is thrown. </p> <note> <p>The status of a build triggered by a webhook is always reported to your source provider. </p> </note>"
        },
        "environmentTypeOverride": {
          "shape": "EnvironmentType",
          "documentation": "<p>A container type for this batch build that overrides the one specified in the batch build project.</p>"
        },
        "imageOverride": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of an image for this batch build that overrides the one specified in the batch build project.</p>"
        },
        "computeTypeOverride": {
          "shape": "ComputeType",
          "documentation": "<p>The name of a compute type for this batch build that overrides the one specified in the batch build project.</p>"
        },
        "certificateOverride": {
          "shape": "String",
          "documentation": "<p>The name of a certificate for this batch build that overrides the one specified in the batch build project.</p>"
        },
        "cacheOverride": {
          "shape": "ProjectCache",
          "documentation": "<p>A <code>ProjectCache</code> object that specifies cache overrides.</p>"
        },
        "serviceRoleOverride": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of a service role for this batch build that overrides the one specified in the batch build project.</p>"
        },
        "privilegedModeOverride": {
          "shape": "WrapperBoolean",
          "documentation": "<p>Enable this flag to override privileged mode in the batch build project.</p>"
        },
        "buildTimeoutInMinutesOverride": {
          "shape": "TimeOut",
          "documentation": "<p>Overrides the build timeout specified in the batch build project.</p>"
        },
        "queuedTimeoutInMinutesOverride": {
          "shape": "TimeOut",
          "documentation": "<p>The number of minutes a batch build is allowed to be queued before it times out.</p>"
        },
        "encryptionKeyOverride": {
          "shape": "NonEmptyString",
          "documentation": "<p>The AWS Key Management Service (AWS KMS) customer master key (CMK) that overrides the one specified in the batch build project. The CMK key encrypts the build output artifacts.</p> <note> <p>You can use a cross-account KMS key to encrypt the build output artifacts if your service role has permission to that key. </p> </note> <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format <code>alias/&lt;alias-name&gt;</code>).</p>"
        },
        "idempotencyToken": {
          "shape": "String",
          "documentation": "<p>A unique, case sensitive identifier you provide to ensure the idempotency of the <code>StartBuildBatch</code> request. The token is included in the <code>StartBuildBatch</code> request and is valid for five minutes. If you repeat the <code>StartBuildBatch</code> request with the same token, but change a parameter, AWS CodeBuild returns a parameter mismatch error.</p>"
        },
        "logsConfigOverride": {
          "shape": "LogsConfig",
          "documentation": "<p>A <code>LogsConfig</code> object that override the log settings defined in the batch build project.</p>"
        },
        "registryCredentialOverride": {
          "shape": "RegistryCredential",
          "documentation": "<p>A <code>RegistryCredential</code> object that overrides credentials for access to a private registry.</p>"
        },
        "imagePullCredentialsTypeOverride": {
          "shape": "ImagePullCredentialsType",
          "documentation": "<p>The type of credentials AWS CodeBuild uses to pull images in your batch build. There are two valid values: </p> <dl> <dt>CODEBUILD</dt> <dd> <p>Specifies that AWS CodeBuild uses its own credentials. This requires that you modify your ECR repository policy to trust AWS CodeBuild's service principal.</p> </dd> <dt>SERVICE_ROLE</dt> <dd> <p>Specifies that AWS CodeBuild uses your build project's service role. </p> </dd> </dl> <p>When using a cross-account or private registry image, you must use <code>SERVICE_ROLE</code> credentials. When using an AWS CodeBuild curated image, you must use <code>CODEBUILD</code> credentials. </p>"
        },
        "buildBatchConfigOverride": {
          "shape": "ProjectBuildBatchConfig",
          "documentation": "<p>A <code>BuildBatchConfigOverride</code> object that contains batch build configuration overrides.</p>"
        }
      }
    },
    "StartBuildBatchOutput": {
      "type": "structure",
      "members": {
        "buildBatch": {
          "shape": "BuildBatch",
          "documentation": "<p>A <code>BuildBatch</code> object that contains information about the batch build.</p>"
        }
      }
    },
    "StartBuildInput": {
      "type": "structure",
      "required": [
        "projectName"
      ],
      "members": {
        "projectName": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of the AWS CodeBuild build project to start running a build.</p>"
        },
        "secondarySourcesOverride": {
          "shape": "ProjectSources",
          "documentation": "<p> An array of <code>ProjectSource</code> objects. </p>"
        },
        "secondarySourcesVersionOverride": {
          "shape": "ProjectSecondarySourceVersions",
          "documentation": "<p> An array of <code>ProjectSourceVersion</code> objects that specify one or more versions of the project's secondary sources to be used for this build only. </p>"
        },
        "sourceVersion": {
          "shape": "String",
          "documentation": "<p>The version of the build input to be built, for this build only. If not specified, the latest version is used. If specified, the contents depends on the source provider:</p> <dl> <dt>AWS CodeCommit</dt> <dd> <p>The commit ID, branch, or Git tag to use.</p> </dd> <dt>GitHub</dt> <dd> <p>The commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </dd> <dt>Bitbucket</dt> <dd> <p>The commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </dd> <dt>Amazon Simple Storage Service (Amazon S3)</dt> <dd> <p>The version ID of the object that represents the build input ZIP file to use.</p> </dd> </dl> <p>If <code>sourceVersion</code> is specified at the project level, then this <code>sourceVersion</code> (at the build level) takes precedence. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html\">Source Version Sample with CodeBuild</a> in the <i>AWS CodeBuild User Guide</i>. </p>"
        },
        "artifactsOverride": {
          "shape": "ProjectArtifacts",
          "documentation": "<p>Build output artifact settings that override, for this build only, the latest ones already defined in the build project.</p>"
        },
        "secondaryArtifactsOverride": {
          "shape": "ProjectArtifactsList",
          "documentation": "<p> An array of <code>ProjectArtifacts</code> objects. </p>"
        },
        "environmentVariablesOverride": {
          "shape": "EnvironmentVariables",
          "documentation": "<p>A set of environment variables that overrides, for this build only, the latest ones already defined in the build project.</p>"
        },
        "sourceTypeOverride": {
          "shape": "SourceType",
          "documentation": "<p>A source input type, for this build, that overrides the source input defined in the build project.</p>"
        },
        "sourceLocationOverride": {
          "shape": "String",
          "documentation": "<p>A location that overrides, for this build, the source location for the one defined in the build project.</p>"
        },
        "sourceAuthOverride": {
          "shape": "SourceAuth",
          "documentation": "<p>An authorization type for this build that overrides the one defined in the build project. This override applies only if the build project's source is BitBucket or GitHub.</p>"
        },
        "gitCloneDepthOverride": {
          "shape": "GitCloneDepth",
          "documentation": "<p>The user-defined depth of history, with a minimum value of 0, that overrides, for this build only, any previous depth of history defined in the build project.</p>"
        },
        "gitSubmodulesConfigOverride": {
          "shape": "GitSubmodulesConfig",
          "documentation": "<p> Information about the Git submodules configuration for this build of an AWS CodeBuild build project. </p>"
        },
        "buildspecOverride": {
          "shape": "String",
          "documentation": "<p>A buildspec file declaration that overrides, for this build only, the latest one already defined in the build project.</p> <p> If this value is set, it can be either an inline buildspec definition, the path to an alternate buildspec file relative to the value of the built-in <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket. The bucket must be in the same AWS Region as the build project. Specify the buildspec file using its ARN (for example, <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not provided or is set to an empty string, the source code must contain a buildspec file in its root directory. For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage\">Buildspec File Name and Storage Location</a>. </p>"
        },
        "insecureSslOverride": {
          "shape": "WrapperBoolean",
          "documentation": "<p>Enable this flag to override the insecure SSL setting that is specified in the build project. The insecure SSL setting determines whether to ignore SSL warnings while connecting to the project source code. This override applies only if the build's source is GitHub Enterprise.</p>"
        },
        "reportBuildStatusOverride": {
          "shape": "WrapperBoolean",
          "documentation": "<p> Set to true to report to your source provider the status of a build's start and completion. If you use this option with a source provider other than GitHub, GitHub Enterprise, or Bitbucket, an invalidInputException is thrown. </p> <note> <p> The status of a build triggered by a webhook is always reported to your source provider. </p> </note>"
        },
        "buildStatusConfigOverride": {
          "shape": "BuildStatusConfig",
          "documentation": "<p>Contains information that defines how the build project reports the build status to the source provider. This option is only used when the source provider is <code>GITHUB</code>, <code>GITHUB_ENTERPRISE</code>, or <code>BITBUCKET</code>.</p>"
        },
        "environmentTypeOverride": {
          "shape": "EnvironmentType",
          "documentation": "<p>A container type for this build that overrides the one specified in the build project.</p>"
        },
        "imageOverride": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of an image for this build that overrides the one specified in the build project.</p>"
        },
        "computeTypeOverride": {
          "shape": "ComputeType",
          "documentation": "<p>The name of a compute type for this build that overrides the one specified in the build project.</p>"
        },
        "certificateOverride": {
          "shape": "String",
          "documentation": "<p>The name of a certificate for this build that overrides the one specified in the build project.</p>"
        },
        "cacheOverride": {
          "shape": "ProjectCache",
          "documentation": "<p>A ProjectCache object specified for this build that overrides the one defined in the build project.</p>"
        },
        "serviceRoleOverride": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of a service role for this build that overrides the one specified in the build project.</p>"
        },
        "privilegedModeOverride": {
          "shape": "WrapperBoolean",
          "documentation": "<p>Enable this flag to override privileged mode in the build project.</p>"
        },
        "timeoutInMinutesOverride": {
          "shape": "TimeOut",
          "documentation": "<p>The number of build timeout minutes, from 5 to 480 (8 hours), that overrides, for this build only, the latest setting already defined in the build project.</p>"
        },
        "queuedTimeoutInMinutesOverride": {
          "shape": "TimeOut",
          "documentation": "<p> The number of minutes a build is allowed to be queued before it times out. </p>"
        },
        "encryptionKeyOverride": {
          "shape": "NonEmptyString",
          "documentation": "<p>The AWS Key Management Service (AWS KMS) customer master key (CMK) that overrides the one specified in the build project. The CMK key encrypts the build output artifacts.</p> <note> <p> You can use a cross-account KMS key to encrypt the build output artifacts if your service role has permission to that key. </p> </note> <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format <code>alias/&lt;alias-name&gt;</code>).</p>"
        },
        "idempotencyToken": {
          "shape": "String",
          "documentation": "<p>A unique, case sensitive identifier you provide to ensure the idempotency of the StartBuild request. The token is included in the StartBuild request and is valid for 5 minutes. If you repeat the StartBuild request with the same token, but change a parameter, AWS CodeBuild returns a parameter mismatch error. </p>"
        },
        "logsConfigOverride": {
          "shape": "LogsConfig",
          "documentation": "<p> Log settings for this build that override the log settings defined in the build project. </p>"
        },
        "registryCredentialOverride": {
          "shape": "RegistryCredential",
          "documentation": "<p> The credentials for access to a private registry. </p>"
        },
        "imagePullCredentialsTypeOverride": {
          "shape": "ImagePullCredentialsType",
          "documentation": "<p>The type of credentials AWS CodeBuild uses to pull images in your build. There are two valid values: </p> <dl> <dt>CODEBUILD</dt> <dd> <p>Specifies that AWS CodeBuild uses its own credentials. This requires that you modify your ECR repository policy to trust AWS CodeBuild's service principal.</p> </dd> <dt>SERVICE_ROLE</dt> <dd> <p>Specifies that AWS CodeBuild uses your build project's service role. </p> </dd> </dl> <p>When using a cross-account or private registry image, you must use <code>SERVICE_ROLE</code> credentials. When using an AWS CodeBuild curated image, you must use <code>CODEBUILD</code> credentials. </p>"
        },
        "debugSessionEnabled": {
          "shape": "WrapperBoolean",
          "documentation": "<p>Specifies if session debugging is enabled for this build. For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html\">Viewing a running build in Session Manager</a>.</p>"
        }
      }
    },
    "StartBuildOutput": {
      "type": "structure",
      "members": {
        "build": {
          "shape": "Build",
          "documentation": "<p>Information about the build to be run.</p>"
        }
      }
    },
    "StatusType": {
      "type": "string",
      "enum": [
        "SUCCEEDED",
        "FAILED",
        "FAULT",
        "TIMED_OUT",
        "IN_PROGRESS",
        "STOPPED"
      ]
    },
    "StopBuildBatchInput": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "NonEmptyString",
          "documentation": "<p>The identifier of the batch build to stop.</p>"
        }
      }
    },
    "StopBuildBatchOutput": {
      "type": "structure",
      "members": {
        "buildBatch": {
          "shape": "BuildBatch"
        }
      }
    },
    "StopBuildInput": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "NonEmptyString",
          "documentation": "<p>The ID of the build.</p>"
        }
      }
    },
    "StopBuildOutput": {
      "type": "structure",
      "members": {
        "build": {
          "shape": "Build",
          "documentation": "<p>Information about the build.</p>"
        }
      }
    },
    "String": {
      "type": "string"
    },
    "Subnets": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      },
      "max": 16
    },
    "Tag": {
      "type": "structure",
      "members": {
        "key": {
          "shape": "KeyInput",
          "documentation": "<p>The tag's key.</p>"
        },
        "value": {
          "shape": "ValueInput",
          "documentation": "<p>The tag's value.</p>"
        }
      },
      "documentation": "<p>A tag, consisting of a key and a value.</p> <p>This tag is available for use by AWS services that support tags in AWS CodeBuild.</p>"
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 50,
      "min": 0
    },
    "TestCase": {
      "type": "structure",
      "members": {
        "reportArn": {
          "shape": "NonEmptyString",
          "documentation": "<p> The ARN of the report to which the test case belongs. </p>"
        },
        "testRawDataPath": {
          "shape": "String",
          "documentation": "<p> The path to the raw data file that contains the test result. </p>"
        },
        "prefix": {
          "shape": "String",
          "documentation": "<p> A string that is applied to a series of related test cases. CodeBuild generates the prefix. The prefix depends on the framework used to generate the tests. </p>"
        },
        "name": {
          "shape": "String",
          "documentation": "<p> The name of the test case. </p>"
        },
        "status": {
          "shape": "String",
          "documentation": "<p> The status returned by the test case after it was run. Valid statuses are <code>SUCCEEDED</code>, <code>FAILED</code>, <code>ERROR</code>, <code>SKIPPED</code>, and <code>UNKNOWN</code>. </p>"
        },
        "durationInNanoSeconds": {
          "shape": "WrapperLong",
          "documentation": "<p> The number of nanoseconds it took to run this test case. </p>"
        },
        "message": {
          "shape": "String",
          "documentation": "<p> A message associated with a test case. For example, an error message or stack trace. </p>"
        },
        "expired": {
          "shape": "Timestamp",
          "documentation": "<p> The date and time a test case expires. A test case expires 30 days after it is created. An expired test case is not available to view in CodeBuild. </p>"
        }
      },
      "documentation": "<p> Information about a test case created using a framework such as NUnit or Cucumber. A test case might be a unit test or a configuration test. </p>"
    },
    "TestCaseFilter": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "String",
          "documentation": "<p>The status used to filter test cases. A <code>TestCaseFilter</code> can have one status. Valid values are:</p> <ul> <li> <p> <code>SUCCEEDED</code> </p> </li> <li> <p> <code>FAILED</code> </p> </li> <li> <p> <code>ERROR</code> </p> </li> <li> <p> <code>SKIPPED</code> </p> </li> <li> <p> <code>UNKNOWN</code> </p> </li> </ul>"
        },
        "keyword": {
          "shape": "String",
          "documentation": "<p>A keyword that is used to filter on the <code>name</code> or the <code>prefix</code> of the test cases. Only test cases where the keyword is a substring of the <code>name</code> or the <code>prefix</code> will be returned.</p>"
        }
      },
      "documentation": "<p>A filter used to return specific types of test cases. In order to pass the filter, the report must meet all of the filter properties.</p>"
    },
    "TestCases": {
      "type": "list",
      "member": {
        "shape": "TestCase"
      }
    },
    "TestReportSummary": {
      "type": "structure",
      "required": [
        "total",
        "statusCounts",
        "durationInNanoSeconds"
      ],
      "members": {
        "total": {
          "shape": "WrapperInt",
          "documentation": "<p> The number of test cases in this <code>TestReportSummary</code>. The total includes truncated test cases. </p>"
        },
        "statusCounts": {
          "shape": "ReportStatusCounts",
          "documentation": "<p> A map that contains the number of each type of status returned by the test results in this <code>TestReportSummary</code>. </p>"
        },
        "durationInNanoSeconds": {
          "shape": "WrapperLong",
          "documentation": "<p> The number of nanoseconds it took to run all of the test cases in this report. </p>"
        }
      },
      "documentation": "<p> Information about a test report. </p>"
    },
    "TimeOut": {
      "type": "integer",
      "max": 480,
      "min": 5
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UpdateProjectInput": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of the build project.</p> <note> <p>You cannot change a build project's name.</p> </note>"
        },
        "description": {
          "shape": "ProjectDescription",
          "documentation": "<p>A new or replacement description of the build project.</p>"
        },
        "source": {
          "shape": "ProjectSource",
          "documentation": "<p>Information to be changed about the build input source code for the build project.</p>"
        },
        "secondarySources": {
          "shape": "ProjectSources",
          "documentation": "<p> An array of <code>ProjectSource</code> objects. </p>"
        },
        "sourceVersion": {
          "shape": "String",
          "documentation": "<p> A version of the build input to be built for this project. If not specified, the latest version is used. If specified, it must be one of: </p> <ul> <li> <p>For AWS CodeCommit: the commit ID, branch, or Git tag to use.</p> </li> <li> <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Amazon Simple Storage Service (Amazon S3): the version ID of the object that represents the build input ZIP file to use.</p> </li> </ul> <p> If <code>sourceVersion</code> is specified at the build level, then that version takes precedence over this <code>sourceVersion</code> (at the project level). </p> <p> For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html\">Source Version Sample with CodeBuild</a> in the <i>AWS CodeBuild User Guide</i>. </p>"
        },
        "secondarySourceVersions": {
          "shape": "ProjectSecondarySourceVersions",
          "documentation": "<p> An array of <code>ProjectSourceVersion</code> objects. If <code>secondarySourceVersions</code> is specified at the build level, then they take over these <code>secondarySourceVersions</code> (at the project level). </p>"
        },
        "artifacts": {
          "shape": "ProjectArtifacts",
          "documentation": "<p>Information to be changed about the build output artifacts for the build project.</p>"
        },
        "secondaryArtifacts": {
          "shape": "ProjectArtifactsList",
          "documentation": "<p> An array of <code>ProjectSource</code> objects. </p>"
        },
        "cache": {
          "shape": "ProjectCache",
          "documentation": "<p>Stores recently used information so that it can be quickly accessed at a later time.</p>"
        },
        "environment": {
          "shape": "ProjectEnvironment",
          "documentation": "<p>Information to be changed about the build environment for the build project.</p>"
        },
        "serviceRole": {
          "shape": "NonEmptyString",
          "documentation": "<p>The replacement ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>"
        },
        "timeoutInMinutes": {
          "shape": "TimeOut",
          "documentation": "<p>The replacement value in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any related build that did not get marked as completed.</p>"
        },
        "queuedTimeoutInMinutes": {
          "shape": "TimeOut",
          "documentation": "<p> The number of minutes a build is allowed to be queued before it times out. </p>"
        },
        "encryptionKey": {
          "shape": "NonEmptyString",
          "documentation": "<p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.</p> <note> <p> You can use a cross-account KMS key to encrypt the build output artifacts if your service role has permission to that key. </p> </note> <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format <code>alias/&lt;alias-name&gt;</code>).</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>An updated list of tag key and value pairs associated with this build project.</p> <p>These tags are available for use by AWS services that support AWS CodeBuild build project tags.</p>"
        },
        "vpcConfig": {
          "shape": "VpcConfig",
          "documentation": "<p>VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.</p>"
        },
        "badgeEnabled": {
          "shape": "WrapperBoolean",
          "documentation": "<p>Set this to true to generate a publicly accessible URL for your project's build badge.</p>"
        },
        "logsConfig": {
          "shape": "LogsConfig",
          "documentation": "<p> Information about logs for the build project. A project can create logs in Amazon CloudWatch Logs, logs in an S3 bucket, or both. </p>"
        },
        "fileSystemLocations": {
          "shape": "ProjectFileSystemLocations",
          "documentation": "<p> An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System. </p>"
        },
        "buildBatchConfig": {
          "shape": "ProjectBuildBatchConfig"
        }
      }
    },
    "UpdateProjectOutput": {
      "type": "structure",
      "members": {
        "project": {
          "shape": "Project",
          "documentation": "<p>Information about the build project that was changed.</p>"
        }
      }
    },
    "UpdateReportGroupInput": {
      "type": "structure",
      "required": [
        "arn"
      ],
      "members": {
        "arn": {
          "shape": "NonEmptyString",
          "documentation": "<p> The ARN of the report group to update. </p>"
        },
        "exportConfig": {
          "shape": "ReportExportConfig",
          "documentation": "<p> Used to specify an updated export type. Valid values are: </p> <ul> <li> <p> <code>S3</code>: The report results are exported to an S3 bucket. </p> </li> <li> <p> <code>NO_EXPORT</code>: The report results are not exported. </p> </li> </ul>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p> An updated list of tag key and value pairs associated with this report group. </p> <p>These tags are available for use by AWS services that support AWS CodeBuild report group tags.</p>"
        }
      }
    },
    "UpdateReportGroupOutput": {
      "type": "structure",
      "members": {
        "reportGroup": {
          "shape": "ReportGroup",
          "documentation": "<p> Information about the updated report group. </p>"
        }
      }
    },
    "UpdateWebhookInput": {
      "type": "structure",
      "required": [
        "projectName"
      ],
      "members": {
        "projectName": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the AWS CodeBuild project.</p>"
        },
        "branchFilter": {
          "shape": "String",
          "documentation": "<p>A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If <code>branchFilter</code> is empty, then all branches are built.</p> <note> <p> It is recommended that you use <code>filterGroups</code> instead of <code>branchFilter</code>. </p> </note>"
        },
        "rotateSecret": {
          "shape": "Boolean",
          "documentation": "<p> A boolean value that specifies whether the associated GitHub repository's secret token should be updated. If you use Bitbucket for your repository, <code>rotateSecret</code> is ignored. </p>"
        },
        "filterGroups": {
          "shape": "FilterGroups",
          "documentation": "<p> An array of arrays of <code>WebhookFilter</code> objects used to determine if a webhook event can trigger a build. A filter group must contain at least one <code>EVENT</code> <code>WebhookFilter</code>. </p>"
        },
        "buildType": {
          "shape": "WebhookBuildType",
          "documentation": "<p>Specifies the type of build this webhook will trigger.</p>"
        }
      }
    },
    "UpdateWebhookOutput": {
      "type": "structure",
      "members": {
        "webhook": {
          "shape": "Webhook",
          "documentation": "<p> Information about a repository's webhook that is associated with a project in AWS CodeBuild. </p>"
        }
      }
    },
    "ValueInput": {
      "type": "string",
      "max": 255,
      "min": 0,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=@+\\-]*)$"
    },
    "VpcConfig": {
      "type": "structure",
      "members": {
        "vpcId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The ID of the Amazon VPC.</p>"
        },
        "subnets": {
          "shape": "Subnets",
          "documentation": "<p>A list of one or more subnet IDs in your Amazon VPC.</p>"
        },
        "securityGroupIds": {
          "shape": "SecurityGroupIds",
          "documentation": "<p>A list of one or more security groups IDs in your Amazon VPC.</p>"
        }
      },
      "documentation": "<p>Information about the VPC configuration that AWS CodeBuild accesses.</p>"
    },
    "Webhook": {
      "type": "structure",
      "members": {
        "url": {
          "shape": "NonEmptyString",
          "documentation": "<p>The URL to the webhook.</p>"
        },
        "payloadUrl": {
          "shape": "NonEmptyString",
          "documentation": "<p>The AWS CodeBuild endpoint where webhook events are sent.</p>"
        },
        "secret": {
          "shape": "NonEmptyString",
          "documentation": "<p>The secret token of the associated repository. </p> <note> <p>A Bitbucket webhook does not support <code>secret</code>. </p> </note>"
        },
        "branchFilter": {
          "shape": "String",
          "documentation": "<p>A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If <code>branchFilter</code> is empty, then all branches are built.</p> <note> <p>It is recommended that you use <code>filterGroups</code> instead of <code>branchFilter</code>. </p> </note>"
        },
        "filterGroups": {
          "shape": "FilterGroups",
          "documentation": "<p>An array of arrays of <code>WebhookFilter</code> objects used to determine which webhooks are triggered. At least one <code>WebhookFilter</code> in the array must specify <code>EVENT</code> as its <code>type</code>. </p> <p>For a build to be triggered, at least one filter group in the <code>filterGroups</code> array must pass. For a filter group to pass, each of its filters must pass. </p>"
        },
        "buildType": {
          "shape": "WebhookBuildType",
          "documentation": "<p>Specifies the type of build this webhook will trigger.</p>"
        },
        "lastModifiedSecret": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp that indicates the last time a repository's secret token was modified. </p>"
        }
      },
      "documentation": "<p>Information about a webhook that connects repository events to a build project in AWS CodeBuild.</p>"
    },
    "WebhookBuildType": {
      "type": "string",
      "enum": [
        "BUILD",
        "BUILD_BATCH"
      ]
    },
    "WebhookFilter": {
      "type": "structure",
      "required": [
        "type",
        "pattern"
      ],
      "members": {
        "type": {
          "shape": "WebhookFilterType",
          "documentation": "<p> The type of webhook filter. There are six webhook filter types: <code>EVENT</code>, <code>ACTOR_ACCOUNT_ID</code>, <code>HEAD_REF</code>, <code>BASE_REF</code>, <code>FILE_PATH</code>, and <code>COMMIT_MESSAGE</code>. </p> <dl> <dt> EVENT </dt> <dd> <p> A webhook event triggers a build when the provided <code>pattern</code> matches one of five event types: <code>PUSH</code>, <code>PULL_REQUEST_CREATED</code>, <code>PULL_REQUEST_UPDATED</code>, <code>PULL_REQUEST_REOPENED</code>, and <code>PULL_REQUEST_MERGED</code>. The <code>EVENT</code> patterns are specified as a comma-separated string. For example, <code>PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED</code> filters all push, pull request created, and pull request updated events. </p> <note> <p> The <code>PULL_REQUEST_REOPENED</code> works with GitHub and GitHub Enterprise only. </p> </note> </dd> <dt> ACTOR_ACCOUNT_ID </dt> <dd> <p> A webhook event triggers a build when a GitHub, GitHub Enterprise, or Bitbucket account ID matches the regular expression <code>pattern</code>. </p> </dd> <dt> HEAD_REF </dt> <dd> <p> A webhook event triggers a build when the head reference matches the regular expression <code>pattern</code>. For example, <code>refs/heads/branch-name</code> and <code>refs/tags/tag-name</code>. </p> <p> Works with GitHub and GitHub Enterprise push, GitHub and GitHub Enterprise pull request, Bitbucket push, and Bitbucket pull request events. </p> </dd> <dt> BASE_REF </dt> <dd> <p> A webhook event triggers a build when the base reference matches the regular expression <code>pattern</code>. For example, <code>refs/heads/branch-name</code>. </p> <note> <p> Works with pull request events only. </p> </note> </dd> <dt> FILE_PATH </dt> <dd> <p> A webhook triggers a build when the path of a changed file matches the regular expression <code>pattern</code>. </p> <note> <p> Works with GitHub and Bitbucket events push and pull requests events. Also works with GitHub Enterprise push events, but does not work with GitHub Enterprise pull request events. </p> </note> </dd> <dt>COMMIT_MESSAGE</dt> <dd> <p>A webhook triggers a build when the head commit message matches the regular expression <code>pattern</code>.</p> <note> <p> Works with GitHub and Bitbucket events push and pull requests events. Also works with GitHub Enterprise push events, but does not work with GitHub Enterprise pull request events. </p> </note> </dd> </dl>"
        },
        "pattern": {
          "shape": "String",
          "documentation": "<p> For a <code>WebHookFilter</code> that uses <code>EVENT</code> type, a comma-separated string that specifies one or more events. For example, the webhook filter <code>PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED</code> allows all push, pull request created, and pull request updated events to trigger a build. </p> <p> For a <code>WebHookFilter</code> that uses any of the other filter types, a regular expression pattern. For example, a <code>WebHookFilter</code> that uses <code>HEAD_REF</code> for its <code>type</code> and the pattern <code>^refs/heads/</code> triggers a build when the head reference is a branch with a reference name <code>refs/heads/branch-name</code>. </p>"
        },
        "excludeMatchedPattern": {
          "shape": "WrapperBoolean",
          "documentation": "<p> Used to indicate that the <code>pattern</code> determines which webhook events do not trigger a build. If true, then a webhook event that does not match the <code>pattern</code> triggers a build. If false, then a webhook event that matches the <code>pattern</code> triggers a build. </p>"
        }
      },
      "documentation": "<p> A filter used to determine which webhooks trigger a build. </p>"
    },
    "WebhookFilterType": {
      "type": "string",
      "enum": [
        "EVENT",
        "BASE_REF",
        "HEAD_REF",
        "ACTOR_ACCOUNT_ID",
        "FILE_PATH",
        "COMMIT_MESSAGE"
      ]
    },
    "WrapperBoolean": {
      "type": "boolean"
    },
    "WrapperInt": {
      "type": "integer"
    },
    "WrapperLong": {
      "type": "long"
    }
  },
  "documentation": "<fullname>AWS CodeBuild</fullname> <p>AWS CodeBuild is a fully managed build service in the cloud. AWS CodeBuild compiles your source code, runs unit tests, and produces artifacts that are ready to deploy. AWS CodeBuild eliminates the need to provision, manage, and scale your own build servers. It provides prepackaged build environments for the most popular programming languages and build tools, such as Apache Maven, Gradle, and more. You can also fully customize build environments in AWS CodeBuild to use your own build tools. AWS CodeBuild scales automatically to meet peak build requests. You pay only for the build time you consume. For more information about AWS CodeBuild, see the <i> <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html\">AWS CodeBuild User Guide</a>.</i> </p> <p>AWS CodeBuild supports these operations:</p> <ul> <li> <p> <code>BatchDeleteBuilds</code>: Deletes one or more builds.</p> </li> <li> <p> <code>BatchGetBuilds</code>: Gets information about one or more builds.</p> </li> <li> <p> <code>BatchGetProjects</code>: Gets information about one or more build projects. A <i>build project</i> defines how AWS CodeBuild runs a build. This includes information such as where to get the source code to build, the build environment to use, the build commands to run, and where to store the build output. A <i>build environment</i> is a representation of operating system, programming language runtime, and tools that AWS CodeBuild uses to run a build. You can add tags to build projects to help manage your resources and costs.</p> </li> <li> <p> <code>BatchGetReportGroups</code>: Returns an array of report groups. </p> </li> <li> <p> <code>BatchGetReports</code>: Returns an array of reports. </p> </li> <li> <p> <code>CreateProject</code>: Creates a build project.</p> </li> <li> <p> <code>CreateReportGroup</code>: Creates a report group. A report group contains a collection of reports. </p> </li> <li> <p> <code>CreateWebhook</code>: For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to start rebuilding the source code every time a code change is pushed to the repository.</p> </li> <li> <p> <code>DeleteProject</code>: Deletes a build project.</p> </li> <li> <p> <code>DeleteReport</code>: Deletes a report. </p> </li> <li> <p> <code>DeleteReportGroup</code>: Deletes a report group. </p> </li> <li> <p> <code>DeleteResourcePolicy</code>: Deletes a resource policy that is identified by its resource ARN. </p> </li> <li> <p> <code>DeleteSourceCredentials</code>: Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials.</p> </li> <li> <p> <code>DeleteWebhook</code>: For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from rebuilding the source code every time a code change is pushed to the repository.</p> </li> <li> <p> <code>DescribeTestCases</code>: Returns a list of details about test cases for a report. </p> </li> <li> <p> <code>GetResourcePolicy</code>: Gets a resource policy that is identified by its resource ARN. </p> </li> <li> <p> <code>ImportSourceCredentials</code>: Imports the source repository credentials for an AWS CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository.</p> </li> <li> <p> <code>InvalidateProjectCache</code>: Resets the cache for a project.</p> </li> <li> <p> <code>ListBuilds</code>: Gets a list of build IDs, with each build ID representing a single build.</p> </li> <li> <p> <code>ListBuildsForProject</code>: Gets a list of build IDs for the specified build project, with each build ID representing a single build.</p> </li> <li> <p> <code>ListCuratedEnvironmentImages</code>: Gets information about Docker images that are managed by AWS CodeBuild.</p> </li> <li> <p> <code>ListProjects</code>: Gets a list of build project names, with each build project name representing a single build project.</p> </li> <li> <p> <code>ListReportGroups</code>: Gets a list ARNs for the report groups in the current AWS account. </p> </li> <li> <p> <code>ListReports</code>: Gets a list ARNs for the reports in the current AWS account. </p> </li> <li> <p> <code>ListReportsForReportGroup</code>: Returns a list of ARNs for the reports that belong to a <code>ReportGroup</code>. </p> </li> <li> <p> <code>ListSharedProjects</code>: Gets a list of ARNs associated with projects shared with the current AWS account or user.</p> </li> <li> <p> <code>ListSharedReportGroups</code>: Gets a list of ARNs associated with report groups shared with the current AWS account or user</p> </li> <li> <p> <code>ListSourceCredentials</code>: Returns a list of <code>SourceCredentialsInfo</code> objects. Each <code>SourceCredentialsInfo</code> object includes the authentication type, token ARN, and type of source provider for one set of credentials.</p> </li> <li> <p> <code>PutResourcePolicy</code>: Stores a resource policy for the ARN of a <code>Project</code> or <code>ReportGroup</code> object. </p> </li> <li> <p> <code>StartBuild</code>: Starts running a build.</p> </li> <li> <p> <code>StopBuild</code>: Attempts to stop running a build.</p> </li> <li> <p> <code>UpdateProject</code>: Changes the settings of an existing build project.</p> </li> <li> <p> <code>UpdateReportGroup</code>: Changes a report group.</p> </li> <li> <p> <code>UpdateWebhook</code>: Changes the settings of an existing webhook.</p> </li> </ul>"
}
]===]))
