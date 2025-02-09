local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2015-04-13",
    "endpointPrefix": "codecommit",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "CodeCommit",
    "serviceFullName": "AWS CodeCommit",
    "serviceId": "CodeCommit",
    "signatureVersion": "v4",
    "targetPrefix": "CodeCommit_20150413",
    "uid": "codecommit-2015-04-13"
  },
  "operations": {
    "AssociateApprovalRuleTemplateWithRepository": {
      "name": "AssociateApprovalRuleTemplateWithRepository",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateApprovalRuleTemplateWithRepositoryInput"
      },
      "errors": [
        {
          "shape": "ApprovalRuleTemplateNameRequiredException"
        },
        {
          "shape": "InvalidApprovalRuleTemplateNameException"
        },
        {
          "shape": "ApprovalRuleTemplateDoesNotExistException"
        },
        {
          "shape": "MaximumRuleTemplatesAssociatedWithRepositoryException"
        },
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Creates an association between an approval rule template and a specified repository. Then, the next time a pull request is created in the repository where the destination reference (if specified) matches the destination reference (branch) for the pull request, an approval rule that matches the template conditions is automatically created for that pull request. If no destination references are specified in the template, an approval rule that matches the template contents is created for all pull requests in that repository.</p>"
    },
    "BatchAssociateApprovalRuleTemplateWithRepositories": {
      "name": "BatchAssociateApprovalRuleTemplateWithRepositories",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchAssociateApprovalRuleTemplateWithRepositoriesInput"
      },
      "output": {
        "shape": "BatchAssociateApprovalRuleTemplateWithRepositoriesOutput"
      },
      "errors": [
        {
          "shape": "ApprovalRuleTemplateNameRequiredException"
        },
        {
          "shape": "InvalidApprovalRuleTemplateNameException"
        },
        {
          "shape": "ApprovalRuleTemplateDoesNotExistException"
        },
        {
          "shape": "RepositoryNamesRequiredException"
        },
        {
          "shape": "MaximumRepositoryNamesExceededException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Creates an association between an approval rule template and one or more specified repositories. </p>"
    },
    "BatchDescribeMergeConflicts": {
      "name": "BatchDescribeMergeConflicts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchDescribeMergeConflictsInput"
      },
      "output": {
        "shape": "BatchDescribeMergeConflictsOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "MergeOptionRequiredException"
        },
        {
          "shape": "InvalidMergeOptionException"
        },
        {
          "shape": "InvalidContinuationTokenException"
        },
        {
          "shape": "CommitRequiredException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "InvalidCommitException"
        },
        {
          "shape": "TipsDivergenceExceededException"
        },
        {
          "shape": "InvalidMaxConflictFilesException"
        },
        {
          "shape": "InvalidMaxMergeHunksException"
        },
        {
          "shape": "InvalidConflictDetailLevelException"
        },
        {
          "shape": "InvalidConflictResolutionStrategyException"
        },
        {
          "shape": "MaximumFileContentToLoadExceededException"
        },
        {
          "shape": "MaximumItemsToCompareExceededException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns information about one or more merge conflicts in the attempted merge of two commit specifiers using the squash or three-way merge strategy.</p>"
    },
    "BatchDisassociateApprovalRuleTemplateFromRepositories": {
      "name": "BatchDisassociateApprovalRuleTemplateFromRepositories",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchDisassociateApprovalRuleTemplateFromRepositoriesInput"
      },
      "output": {
        "shape": "BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput"
      },
      "errors": [
        {
          "shape": "ApprovalRuleTemplateNameRequiredException"
        },
        {
          "shape": "InvalidApprovalRuleTemplateNameException"
        },
        {
          "shape": "ApprovalRuleTemplateDoesNotExistException"
        },
        {
          "shape": "RepositoryNamesRequiredException"
        },
        {
          "shape": "MaximumRepositoryNamesExceededException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Removes the association between an approval rule template and one or more specified repositories. </p>"
    },
    "BatchGetCommits": {
      "name": "BatchGetCommits",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetCommitsInput"
      },
      "output": {
        "shape": "BatchGetCommitsOutput"
      },
      "errors": [
        {
          "shape": "CommitIdsListRequiredException"
        },
        {
          "shape": "CommitIdsLimitExceededException"
        },
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns information about the contents of one or more commits in a repository.</p>"
    },
    "BatchGetRepositories": {
      "name": "BatchGetRepositories",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetRepositoriesInput"
      },
      "output": {
        "shape": "BatchGetRepositoriesOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNamesRequiredException"
        },
        {
          "shape": "MaximumRepositoryNamesExceededException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns information about one or more repositories.</p> <note> <p>The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a webpage can expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a webpage.</p> </note>"
    },
    "CreateApprovalRuleTemplate": {
      "name": "CreateApprovalRuleTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateApprovalRuleTemplateInput"
      },
      "output": {
        "shape": "CreateApprovalRuleTemplateOutput"
      },
      "errors": [
        {
          "shape": "ApprovalRuleTemplateNameRequiredException"
        },
        {
          "shape": "InvalidApprovalRuleTemplateNameException"
        },
        {
          "shape": "ApprovalRuleTemplateNameAlreadyExistsException"
        },
        {
          "shape": "ApprovalRuleTemplateContentRequiredException"
        },
        {
          "shape": "InvalidApprovalRuleTemplateContentException"
        },
        {
          "shape": "InvalidApprovalRuleTemplateDescriptionException"
        },
        {
          "shape": "NumberOfRuleTemplatesExceededException"
        }
      ],
      "documentation": "<p>Creates a template for approval rules that can then be associated with one or more repositories in your AWS account. When you associate a template with a repository, AWS CodeCommit creates an approval rule that matches the conditions of the template for all pull requests that meet the conditions of the template. For more information, see <a>AssociateApprovalRuleTemplateWithRepository</a>.</p>"
    },
    "CreateBranch": {
      "name": "CreateBranch",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateBranchInput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "BranchNameRequiredException"
        },
        {
          "shape": "BranchNameExistsException"
        },
        {
          "shape": "InvalidBranchNameException"
        },
        {
          "shape": "CommitIdRequiredException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "InvalidCommitIdException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Creates a branch in a repository and points the branch to a commit.</p> <note> <p>Calling the create branch operation does not set a repository's default branch. To do this, call the update default branch operation.</p> </note>"
    },
    "CreateCommit": {
      "name": "CreateCommit",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateCommitInput"
      },
      "output": {
        "shape": "CreateCommitOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "ParentCommitIdRequiredException"
        },
        {
          "shape": "InvalidParentCommitIdException"
        },
        {
          "shape": "ParentCommitDoesNotExistException"
        },
        {
          "shape": "ParentCommitIdOutdatedException"
        },
        {
          "shape": "BranchNameRequiredException"
        },
        {
          "shape": "InvalidBranchNameException"
        },
        {
          "shape": "BranchDoesNotExistException"
        },
        {
          "shape": "BranchNameIsTagNameException"
        },
        {
          "shape": "FileEntryRequiredException"
        },
        {
          "shape": "MaximumFileEntriesExceededException"
        },
        {
          "shape": "PutFileEntryConflictException"
        },
        {
          "shape": "SourceFileOrContentRequiredException"
        },
        {
          "shape": "FileContentAndSourceFileSpecifiedException"
        },
        {
          "shape": "PathRequiredException"
        },
        {
          "shape": "InvalidPathException"
        },
        {
          "shape": "SamePathRequestException"
        },
        {
          "shape": "FileDoesNotExistException"
        },
        {
          "shape": "FileContentSizeLimitExceededException"
        },
        {
          "shape": "FolderContentSizeLimitExceededException"
        },
        {
          "shape": "InvalidDeletionParameterException"
        },
        {
          "shape": "RestrictedSourceFileException"
        },
        {
          "shape": "FileModeRequiredException"
        },
        {
          "shape": "InvalidFileModeException"
        },
        {
          "shape": "NameLengthExceededException"
        },
        {
          "shape": "InvalidEmailException"
        },
        {
          "shape": "CommitMessageLengthExceededException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        },
        {
          "shape": "NoChangeException"
        },
        {
          "shape": "FileNameConflictsWithDirectoryNameException"
        },
        {
          "shape": "DirectoryNameConflictsWithFileNameException"
        },
        {
          "shape": "FilePathConflictsWithSubmodulePathException"
        }
      ],
      "documentation": "<p>Creates a commit for a repository on the tip of a specified branch.</p>"
    },
    "CreatePullRequest": {
      "name": "CreatePullRequest",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePullRequestInput"
      },
      "output": {
        "shape": "CreatePullRequestOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        },
        {
          "shape": "ClientRequestTokenRequiredException"
        },
        {
          "shape": "InvalidClientRequestTokenException"
        },
        {
          "shape": "IdempotencyParameterMismatchException"
        },
        {
          "shape": "ReferenceNameRequiredException"
        },
        {
          "shape": "InvalidReferenceNameException"
        },
        {
          "shape": "ReferenceDoesNotExistException"
        },
        {
          "shape": "ReferenceTypeNotSupportedException"
        },
        {
          "shape": "TitleRequiredException"
        },
        {
          "shape": "InvalidTitleException"
        },
        {
          "shape": "InvalidDescriptionException"
        },
        {
          "shape": "TargetsRequiredException"
        },
        {
          "shape": "InvalidTargetsException"
        },
        {
          "shape": "TargetRequiredException"
        },
        {
          "shape": "InvalidTargetException"
        },
        {
          "shape": "MultipleRepositoriesInPullRequestException"
        },
        {
          "shape": "MaximumOpenPullRequestsExceededException"
        },
        {
          "shape": "SourceAndDestinationAreSameException"
        }
      ],
      "documentation": "<p>Creates a pull request in the specified repository.</p>"
    },
    "CreatePullRequestApprovalRule": {
      "name": "CreatePullRequestApprovalRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePullRequestApprovalRuleInput"
      },
      "output": {
        "shape": "CreatePullRequestApprovalRuleOutput"
      },
      "errors": [
        {
          "shape": "ApprovalRuleNameRequiredException"
        },
        {
          "shape": "InvalidApprovalRuleNameException"
        },
        {
          "shape": "ApprovalRuleNameAlreadyExistsException"
        },
        {
          "shape": "ApprovalRuleContentRequiredException"
        },
        {
          "shape": "InvalidApprovalRuleContentException"
        },
        {
          "shape": "NumberOfRulesExceededException"
        },
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "PullRequestAlreadyClosedException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Creates an approval rule for a pull request.</p>"
    },
    "CreateRepository": {
      "name": "CreateRepository",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateRepositoryInput"
      },
      "output": {
        "shape": "CreateRepositoryOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameExistsException"
        },
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "InvalidRepositoryDescriptionException"
        },
        {
          "shape": "RepositoryLimitExceededException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        },
        {
          "shape": "InvalidTagsMapException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "InvalidSystemTagUsageException"
        },
        {
          "shape": "TagPolicyException"
        }
      ],
      "documentation": "<p>Creates a new, empty repository.</p>"
    },
    "CreateUnreferencedMergeCommit": {
      "name": "CreateUnreferencedMergeCommit",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateUnreferencedMergeCommitInput"
      },
      "output": {
        "shape": "CreateUnreferencedMergeCommitOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "TipsDivergenceExceededException"
        },
        {
          "shape": "CommitRequiredException"
        },
        {
          "shape": "InvalidCommitException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "MergeOptionRequiredException"
        },
        {
          "shape": "InvalidMergeOptionException"
        },
        {
          "shape": "InvalidConflictDetailLevelException"
        },
        {
          "shape": "InvalidConflictResolutionStrategyException"
        },
        {
          "shape": "InvalidConflictResolutionException"
        },
        {
          "shape": "ManualMergeRequiredException"
        },
        {
          "shape": "MaximumConflictResolutionEntriesExceededException"
        },
        {
          "shape": "MultipleConflictResolutionEntriesException"
        },
        {
          "shape": "ReplacementTypeRequiredException"
        },
        {
          "shape": "InvalidReplacementTypeException"
        },
        {
          "shape": "ReplacementContentRequiredException"
        },
        {
          "shape": "InvalidReplacementContentException"
        },
        {
          "shape": "PathRequiredException"
        },
        {
          "shape": "InvalidPathException"
        },
        {
          "shape": "FileContentSizeLimitExceededException"
        },
        {
          "shape": "FolderContentSizeLimitExceededException"
        },
        {
          "shape": "MaximumFileContentToLoadExceededException"
        },
        {
          "shape": "MaximumItemsToCompareExceededException"
        },
        {
          "shape": "ConcurrentReferenceUpdateException"
        },
        {
          "shape": "FileModeRequiredException"
        },
        {
          "shape": "InvalidFileModeException"
        },
        {
          "shape": "NameLengthExceededException"
        },
        {
          "shape": "InvalidEmailException"
        },
        {
          "shape": "CommitMessageLengthExceededException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Creates an unreferenced commit that represents the result of merging two branches using a specified merge strategy. This can help you determine the outcome of a potential merge. This API cannot be used with the fast-forward merge strategy because that strategy does not create a merge commit.</p> <note> <p>This unreferenced merge commit can only be accessed using the GetCommit API or through git commands such as git fetch. To retrieve this commit, you must specify its commit ID or otherwise reference it.</p> </note>"
    },
    "DeleteApprovalRuleTemplate": {
      "name": "DeleteApprovalRuleTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApprovalRuleTemplateInput"
      },
      "output": {
        "shape": "DeleteApprovalRuleTemplateOutput"
      },
      "errors": [
        {
          "shape": "ApprovalRuleTemplateNameRequiredException"
        },
        {
          "shape": "InvalidApprovalRuleTemplateNameException"
        },
        {
          "shape": "ApprovalRuleTemplateInUseException"
        }
      ],
      "documentation": "<p>Deletes a specified approval rule template. Deleting a template does not remove approval rules on pull requests already created with the template.</p>"
    },
    "DeleteBranch": {
      "name": "DeleteBranch",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteBranchInput"
      },
      "output": {
        "shape": "DeleteBranchOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "BranchNameRequiredException"
        },
        {
          "shape": "InvalidBranchNameException"
        },
        {
          "shape": "DefaultBranchCannotBeDeletedException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Deletes a branch from a repository, unless that branch is the default branch for the repository. </p>"
    },
    "DeleteCommentContent": {
      "name": "DeleteCommentContent",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteCommentContentInput"
      },
      "output": {
        "shape": "DeleteCommentContentOutput"
      },
      "errors": [
        {
          "shape": "CommentDoesNotExistException"
        },
        {
          "shape": "CommentIdRequiredException"
        },
        {
          "shape": "InvalidCommentIdException"
        },
        {
          "shape": "CommentDeletedException"
        }
      ],
      "documentation": "<p>Deletes the content of a comment made on a change, file, or commit in a repository.</p>"
    },
    "DeleteFile": {
      "name": "DeleteFile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteFileInput"
      },
      "output": {
        "shape": "DeleteFileOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "ParentCommitIdRequiredException"
        },
        {
          "shape": "InvalidParentCommitIdException"
        },
        {
          "shape": "ParentCommitDoesNotExistException"
        },
        {
          "shape": "ParentCommitIdOutdatedException"
        },
        {
          "shape": "PathRequiredException"
        },
        {
          "shape": "InvalidPathException"
        },
        {
          "shape": "FileDoesNotExistException"
        },
        {
          "shape": "BranchNameRequiredException"
        },
        {
          "shape": "InvalidBranchNameException"
        },
        {
          "shape": "BranchDoesNotExistException"
        },
        {
          "shape": "BranchNameIsTagNameException"
        },
        {
          "shape": "NameLengthExceededException"
        },
        {
          "shape": "InvalidEmailException"
        },
        {
          "shape": "CommitMessageLengthExceededException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Deletes a specified file from a specified branch. A commit is created on the branch that contains the revision. The file still exists in the commits earlier to the commit that contains the deletion.</p>"
    },
    "DeletePullRequestApprovalRule": {
      "name": "DeletePullRequestApprovalRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePullRequestApprovalRuleInput"
      },
      "output": {
        "shape": "DeletePullRequestApprovalRuleOutput"
      },
      "errors": [
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "PullRequestAlreadyClosedException"
        },
        {
          "shape": "ApprovalRuleNameRequiredException"
        },
        {
          "shape": "InvalidApprovalRuleNameException"
        },
        {
          "shape": "CannotDeleteApprovalRuleFromTemplateException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Deletes an approval rule from a specified pull request. Approval rules can be deleted from a pull request only if the pull request is open, and if the approval rule was created specifically for a pull request and not generated from an approval rule template associated with the repository where the pull request was created. You cannot delete an approval rule from a merged or closed pull request.</p>"
    },
    "DeleteRepository": {
      "name": "DeleteRepository",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRepositoryInput"
      },
      "output": {
        "shape": "DeleteRepositoryOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Deletes a repository. If a specified repository was already deleted, a null repository ID is returned.</p> <important> <p>Deleting a repository also deletes all associated objects and metadata. After a repository is deleted, all future push calls to the deleted repository fail.</p> </important>"
    },
    "DescribeMergeConflicts": {
      "name": "DescribeMergeConflicts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeMergeConflictsInput"
      },
      "output": {
        "shape": "DescribeMergeConflictsOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "MergeOptionRequiredException"
        },
        {
          "shape": "InvalidMergeOptionException"
        },
        {
          "shape": "InvalidContinuationTokenException"
        },
        {
          "shape": "CommitRequiredException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "InvalidCommitException"
        },
        {
          "shape": "TipsDivergenceExceededException"
        },
        {
          "shape": "PathRequiredException"
        },
        {
          "shape": "InvalidPathException"
        },
        {
          "shape": "FileDoesNotExistException"
        },
        {
          "shape": "InvalidMaxMergeHunksException"
        },
        {
          "shape": "InvalidConflictDetailLevelException"
        },
        {
          "shape": "InvalidConflictResolutionStrategyException"
        },
        {
          "shape": "MaximumFileContentToLoadExceededException"
        },
        {
          "shape": "MaximumItemsToCompareExceededException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns information about one or more merge conflicts in the attempted merge of two commit specifiers using the squash or three-way merge strategy. If the merge option for the attempted merge is specified as FAST_FORWARD_MERGE, an exception is thrown.</p>"
    },
    "DescribePullRequestEvents": {
      "name": "DescribePullRequestEvents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePullRequestEventsInput"
      },
      "output": {
        "shape": "DescribePullRequestEventsOutput"
      },
      "errors": [
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "InvalidPullRequestEventTypeException"
        },
        {
          "shape": "InvalidActorArnException"
        },
        {
          "shape": "ActorDoesNotExistException"
        },
        {
          "shape": "InvalidMaxResultsException"
        },
        {
          "shape": "InvalidContinuationTokenException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns information about one or more pull request events.</p>"
    },
    "DisassociateApprovalRuleTemplateFromRepository": {
      "name": "DisassociateApprovalRuleTemplateFromRepository",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateApprovalRuleTemplateFromRepositoryInput"
      },
      "errors": [
        {
          "shape": "ApprovalRuleTemplateNameRequiredException"
        },
        {
          "shape": "InvalidApprovalRuleTemplateNameException"
        },
        {
          "shape": "ApprovalRuleTemplateDoesNotExistException"
        },
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Removes the association between a template and a repository so that approval rules based on the template are not automatically created when pull requests are created in the specified repository. This does not delete any approval rules previously created for pull requests through the template association.</p>"
    },
    "EvaluatePullRequestApprovalRules": {
      "name": "EvaluatePullRequestApprovalRules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EvaluatePullRequestApprovalRulesInput"
      },
      "output": {
        "shape": "EvaluatePullRequestApprovalRulesOutput"
      },
      "errors": [
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "InvalidRevisionIdException"
        },
        {
          "shape": "RevisionIdRequiredException"
        },
        {
          "shape": "RevisionNotCurrentException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Evaluates whether a pull request has met all the conditions specified in its associated approval rules.</p>"
    },
    "GetApprovalRuleTemplate": {
      "name": "GetApprovalRuleTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetApprovalRuleTemplateInput"
      },
      "output": {
        "shape": "GetApprovalRuleTemplateOutput"
      },
      "errors": [
        {
          "shape": "ApprovalRuleTemplateNameRequiredException"
        },
        {
          "shape": "InvalidApprovalRuleTemplateNameException"
        },
        {
          "shape": "ApprovalRuleTemplateDoesNotExistException"
        }
      ],
      "documentation": "<p>Returns information about a specified approval rule template.</p>"
    },
    "GetBlob": {
      "name": "GetBlob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetBlobInput"
      },
      "output": {
        "shape": "GetBlobOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "BlobIdRequiredException"
        },
        {
          "shape": "InvalidBlobIdException"
        },
        {
          "shape": "BlobIdDoesNotExistException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        },
        {
          "shape": "FileTooLargeException"
        }
      ],
      "documentation": "<p>Returns the base-64 encoded content of an individual blob in a repository.</p>"
    },
    "GetBranch": {
      "name": "GetBranch",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetBranchInput"
      },
      "output": {
        "shape": "GetBranchOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "BranchNameRequiredException"
        },
        {
          "shape": "InvalidBranchNameException"
        },
        {
          "shape": "BranchDoesNotExistException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns information about a repository branch, including its name and the last commit ID.</p>"
    },
    "GetComment": {
      "name": "GetComment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCommentInput"
      },
      "output": {
        "shape": "GetCommentOutput"
      },
      "errors": [
        {
          "shape": "CommentDoesNotExistException"
        },
        {
          "shape": "CommentDeletedException"
        },
        {
          "shape": "CommentIdRequiredException"
        },
        {
          "shape": "InvalidCommentIdException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns the content of a comment made on a change, file, or commit in a repository. </p> <note> <p>Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of reactions from active identities, use GetCommentReactions.</p> </note>"
    },
    "GetCommentReactions": {
      "name": "GetCommentReactions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCommentReactionsInput"
      },
      "output": {
        "shape": "GetCommentReactionsOutput"
      },
      "errors": [
        {
          "shape": "CommentDoesNotExistException"
        },
        {
          "shape": "CommentIdRequiredException"
        },
        {
          "shape": "InvalidCommentIdException"
        },
        {
          "shape": "InvalidReactionUserArnException"
        },
        {
          "shape": "InvalidMaxResultsException"
        },
        {
          "shape": "InvalidContinuationTokenException"
        },
        {
          "shape": "CommentDeletedException"
        }
      ],
      "documentation": "<p>Returns information about reactions to a specified comment ID. Reactions from users who have been deleted will not be included in the count.</p>"
    },
    "GetCommentsForComparedCommit": {
      "name": "GetCommentsForComparedCommit",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCommentsForComparedCommitInput"
      },
      "output": {
        "shape": "GetCommentsForComparedCommitOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "CommitIdRequiredException"
        },
        {
          "shape": "InvalidCommitIdException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "InvalidMaxResultsException"
        },
        {
          "shape": "InvalidContinuationTokenException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns information about comments made on the comparison between two commits.</p> <note> <p>Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of reactions from active identities, use GetCommentReactions.</p> </note>"
    },
    "GetCommentsForPullRequest": {
      "name": "GetCommentsForPullRequest",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCommentsForPullRequestInput"
      },
      "output": {
        "shape": "GetCommentsForPullRequestOutput"
      },
      "errors": [
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "CommitIdRequiredException"
        },
        {
          "shape": "InvalidCommitIdException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "InvalidMaxResultsException"
        },
        {
          "shape": "InvalidContinuationTokenException"
        },
        {
          "shape": "RepositoryNotAssociatedWithPullRequestException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns comments made on a pull request.</p> <note> <p>Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of reactions from active identities, use GetCommentReactions.</p> </note>"
    },
    "GetCommit": {
      "name": "GetCommit",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCommitInput"
      },
      "output": {
        "shape": "GetCommitOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "CommitIdRequiredException"
        },
        {
          "shape": "InvalidCommitIdException"
        },
        {
          "shape": "CommitIdDoesNotExistException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns information about a commit, including commit message and committer information.</p>"
    },
    "GetDifferences": {
      "name": "GetDifferences",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDifferencesInput"
      },
      "output": {
        "shape": "GetDifferencesOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "InvalidContinuationTokenException"
        },
        {
          "shape": "InvalidMaxResultsException"
        },
        {
          "shape": "InvalidCommitIdException"
        },
        {
          "shape": "CommitRequiredException"
        },
        {
          "shape": "InvalidCommitException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "InvalidPathException"
        },
        {
          "shape": "PathDoesNotExistException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID, or other fully qualified reference). Results can be limited to a specified path.</p>"
    },
    "GetFile": {
      "name": "GetFile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetFileInput"
      },
      "output": {
        "shape": "GetFileOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidCommitException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "PathRequiredException"
        },
        {
          "shape": "InvalidPathException"
        },
        {
          "shape": "FileDoesNotExistException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        },
        {
          "shape": "FileTooLargeException"
        }
      ],
      "documentation": "<p>Returns the base-64 encoded contents of a specified file and its metadata.</p>"
    },
    "GetFolder": {
      "name": "GetFolder",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetFolderInput"
      },
      "output": {
        "shape": "GetFolderOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidCommitException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "PathRequiredException"
        },
        {
          "shape": "InvalidPathException"
        },
        {
          "shape": "FolderDoesNotExistException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns the contents of a specified folder in a repository.</p>"
    },
    "GetMergeCommit": {
      "name": "GetMergeCommit",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMergeCommitInput"
      },
      "output": {
        "shape": "GetMergeCommitOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "CommitRequiredException"
        },
        {
          "shape": "InvalidCommitException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "InvalidConflictDetailLevelException"
        },
        {
          "shape": "InvalidConflictResolutionStrategyException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns information about a specified merge commit.</p>"
    },
    "GetMergeConflicts": {
      "name": "GetMergeConflicts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMergeConflictsInput"
      },
      "output": {
        "shape": "GetMergeConflictsOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "MergeOptionRequiredException"
        },
        {
          "shape": "InvalidMergeOptionException"
        },
        {
          "shape": "InvalidContinuationTokenException"
        },
        {
          "shape": "CommitRequiredException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "InvalidCommitException"
        },
        {
          "shape": "TipsDivergenceExceededException"
        },
        {
          "shape": "InvalidMaxConflictFilesException"
        },
        {
          "shape": "InvalidConflictDetailLevelException"
        },
        {
          "shape": "InvalidDestinationCommitSpecifierException"
        },
        {
          "shape": "InvalidSourceCommitSpecifierException"
        },
        {
          "shape": "InvalidConflictResolutionStrategyException"
        },
        {
          "shape": "MaximumFileContentToLoadExceededException"
        },
        {
          "shape": "MaximumItemsToCompareExceededException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository.</p>"
    },
    "GetMergeOptions": {
      "name": "GetMergeOptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMergeOptionsInput"
      },
      "output": {
        "shape": "GetMergeOptionsOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "CommitRequiredException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "InvalidCommitException"
        },
        {
          "shape": "TipsDivergenceExceededException"
        },
        {
          "shape": "InvalidConflictDetailLevelException"
        },
        {
          "shape": "InvalidConflictResolutionStrategyException"
        },
        {
          "shape": "MaximumFileContentToLoadExceededException"
        },
        {
          "shape": "MaximumItemsToCompareExceededException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns information about the merge options available for merging two specified branches. For details about why a merge option is not available, use GetMergeConflicts or DescribeMergeConflicts.</p>"
    },
    "GetPullRequest": {
      "name": "GetPullRequest",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetPullRequestInput"
      },
      "output": {
        "shape": "GetPullRequestOutput"
      },
      "errors": [
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Gets information about a pull request in a specified repository.</p>"
    },
    "GetPullRequestApprovalStates": {
      "name": "GetPullRequestApprovalStates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetPullRequestApprovalStatesInput"
      },
      "output": {
        "shape": "GetPullRequestApprovalStatesOutput"
      },
      "errors": [
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "InvalidRevisionIdException"
        },
        {
          "shape": "RevisionIdRequiredException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Gets information about the approval states for a specified pull request. Approval states only apply to pull requests that have one or more approval rules applied to them.</p>"
    },
    "GetPullRequestOverrideState": {
      "name": "GetPullRequestOverrideState",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetPullRequestOverrideStateInput"
      },
      "output": {
        "shape": "GetPullRequestOverrideStateOutput"
      },
      "errors": [
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "InvalidRevisionIdException"
        },
        {
          "shape": "RevisionIdRequiredException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns information about whether approval rules have been set aside (overridden) for a pull request, and if so, the Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.</p>"
    },
    "GetRepository": {
      "name": "GetRepository",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetRepositoryInput"
      },
      "output": {
        "shape": "GetRepositoryOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns information about a repository.</p> <note> <p>The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a webpage can expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a webpage.</p> </note>"
    },
    "GetRepositoryTriggers": {
      "name": "GetRepositoryTriggers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetRepositoryTriggersInput"
      },
      "output": {
        "shape": "GetRepositoryTriggersOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Gets information about triggers configured for a repository.</p>"
    },
    "ListApprovalRuleTemplates": {
      "name": "ListApprovalRuleTemplates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListApprovalRuleTemplatesInput"
      },
      "output": {
        "shape": "ListApprovalRuleTemplatesOutput"
      },
      "errors": [
        {
          "shape": "InvalidMaxResultsException"
        },
        {
          "shape": "InvalidContinuationTokenException"
        }
      ],
      "documentation": "<p>Lists all approval rule templates in the specified AWS Region in your AWS account. If an AWS Region is not specified, the AWS Region where you are signed in is used.</p>"
    },
    "ListAssociatedApprovalRuleTemplatesForRepository": {
      "name": "ListAssociatedApprovalRuleTemplatesForRepository",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAssociatedApprovalRuleTemplatesForRepositoryInput"
      },
      "output": {
        "shape": "ListAssociatedApprovalRuleTemplatesForRepositoryOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidMaxResultsException"
        },
        {
          "shape": "InvalidContinuationTokenException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Lists all approval rule templates that are associated with a specified repository.</p>"
    },
    "ListBranches": {
      "name": "ListBranches",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListBranchesInput"
      },
      "output": {
        "shape": "ListBranchesOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        },
        {
          "shape": "InvalidContinuationTokenException"
        }
      ],
      "documentation": "<p>Gets information about one or more branches in a repository.</p>"
    },
    "ListPullRequests": {
      "name": "ListPullRequests",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPullRequestsInput"
      },
      "output": {
        "shape": "ListPullRequestsOutput"
      },
      "errors": [
        {
          "shape": "InvalidPullRequestStatusException"
        },
        {
          "shape": "InvalidAuthorArnException"
        },
        {
          "shape": "AuthorDoesNotExistException"
        },
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidMaxResultsException"
        },
        {
          "shape": "InvalidContinuationTokenException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Returns a list of pull requests for a specified repository. The return list can be refined by pull request status or pull request author ARN.</p>"
    },
    "ListRepositories": {
      "name": "ListRepositories",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListRepositoriesInput"
      },
      "output": {
        "shape": "ListRepositoriesOutput"
      },
      "errors": [
        {
          "shape": "InvalidSortByException"
        },
        {
          "shape": "InvalidOrderException"
        },
        {
          "shape": "InvalidContinuationTokenException"
        }
      ],
      "documentation": "<p>Gets information about one or more repositories.</p>"
    },
    "ListRepositoriesForApprovalRuleTemplate": {
      "name": "ListRepositoriesForApprovalRuleTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListRepositoriesForApprovalRuleTemplateInput"
      },
      "output": {
        "shape": "ListRepositoriesForApprovalRuleTemplateOutput"
      },
      "errors": [
        {
          "shape": "ApprovalRuleTemplateNameRequiredException"
        },
        {
          "shape": "InvalidApprovalRuleTemplateNameException"
        },
        {
          "shape": "ApprovalRuleTemplateDoesNotExistException"
        },
        {
          "shape": "InvalidMaxResultsException"
        },
        {
          "shape": "InvalidContinuationTokenException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Lists all repositories associated with the specified approval rule template.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceInput"
      },
      "output": {
        "shape": "ListTagsForResourceOutput"
      },
      "errors": [
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "ResourceArnRequiredException"
        },
        {
          "shape": "InvalidResourceArnException"
        }
      ],
      "documentation": "<p>Gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS CodeCommit. For a list of valid resources in AWS CodeCommit, see <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats\">CodeCommit Resources and Operations</a> in the<i> AWS CodeCommit User Guide</i>.</p>"
    },
    "MergeBranchesByFastForward": {
      "name": "MergeBranchesByFastForward",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "MergeBranchesByFastForwardInput"
      },
      "output": {
        "shape": "MergeBranchesByFastForwardOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "TipsDivergenceExceededException"
        },
        {
          "shape": "CommitRequiredException"
        },
        {
          "shape": "InvalidCommitException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "InvalidTargetBranchException"
        },
        {
          "shape": "InvalidBranchNameException"
        },
        {
          "shape": "BranchNameRequiredException"
        },
        {
          "shape": "BranchNameIsTagNameException"
        },
        {
          "shape": "BranchDoesNotExistException"
        },
        {
          "shape": "ManualMergeRequiredException"
        },
        {
          "shape": "ConcurrentReferenceUpdateException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Merges two branches using the fast-forward merge strategy.</p>"
    },
    "MergeBranchesBySquash": {
      "name": "MergeBranchesBySquash",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "MergeBranchesBySquashInput"
      },
      "output": {
        "shape": "MergeBranchesBySquashOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "TipsDivergenceExceededException"
        },
        {
          "shape": "CommitRequiredException"
        },
        {
          "shape": "InvalidCommitException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "InvalidTargetBranchException"
        },
        {
          "shape": "InvalidBranchNameException"
        },
        {
          "shape": "BranchNameRequiredException"
        },
        {
          "shape": "BranchNameIsTagNameException"
        },
        {
          "shape": "BranchDoesNotExistException"
        },
        {
          "shape": "ManualMergeRequiredException"
        },
        {
          "shape": "InvalidConflictDetailLevelException"
        },
        {
          "shape": "InvalidConflictResolutionStrategyException"
        },
        {
          "shape": "InvalidConflictResolutionException"
        },
        {
          "shape": "MaximumConflictResolutionEntriesExceededException"
        },
        {
          "shape": "MultipleConflictResolutionEntriesException"
        },
        {
          "shape": "ReplacementTypeRequiredException"
        },
        {
          "shape": "InvalidReplacementTypeException"
        },
        {
          "shape": "ReplacementContentRequiredException"
        },
        {
          "shape": "InvalidReplacementContentException"
        },
        {
          "shape": "PathRequiredException"
        },
        {
          "shape": "InvalidPathException"
        },
        {
          "shape": "FileContentSizeLimitExceededException"
        },
        {
          "shape": "FolderContentSizeLimitExceededException"
        },
        {
          "shape": "MaximumFileContentToLoadExceededException"
        },
        {
          "shape": "MaximumItemsToCompareExceededException"
        },
        {
          "shape": "FileModeRequiredException"
        },
        {
          "shape": "InvalidFileModeException"
        },
        {
          "shape": "NameLengthExceededException"
        },
        {
          "shape": "InvalidEmailException"
        },
        {
          "shape": "CommitMessageLengthExceededException"
        },
        {
          "shape": "ConcurrentReferenceUpdateException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Merges two branches using the squash merge strategy.</p>"
    },
    "MergeBranchesByThreeWay": {
      "name": "MergeBranchesByThreeWay",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "MergeBranchesByThreeWayInput"
      },
      "output": {
        "shape": "MergeBranchesByThreeWayOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "TipsDivergenceExceededException"
        },
        {
          "shape": "CommitRequiredException"
        },
        {
          "shape": "InvalidCommitException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "InvalidTargetBranchException"
        },
        {
          "shape": "InvalidBranchNameException"
        },
        {
          "shape": "BranchNameRequiredException"
        },
        {
          "shape": "BranchNameIsTagNameException"
        },
        {
          "shape": "BranchDoesNotExistException"
        },
        {
          "shape": "ManualMergeRequiredException"
        },
        {
          "shape": "ConcurrentReferenceUpdateException"
        },
        {
          "shape": "InvalidConflictDetailLevelException"
        },
        {
          "shape": "InvalidConflictResolutionStrategyException"
        },
        {
          "shape": "InvalidConflictResolutionException"
        },
        {
          "shape": "MaximumConflictResolutionEntriesExceededException"
        },
        {
          "shape": "MultipleConflictResolutionEntriesException"
        },
        {
          "shape": "ReplacementTypeRequiredException"
        },
        {
          "shape": "InvalidReplacementTypeException"
        },
        {
          "shape": "ReplacementContentRequiredException"
        },
        {
          "shape": "InvalidReplacementContentException"
        },
        {
          "shape": "PathRequiredException"
        },
        {
          "shape": "InvalidPathException"
        },
        {
          "shape": "FileContentSizeLimitExceededException"
        },
        {
          "shape": "FolderContentSizeLimitExceededException"
        },
        {
          "shape": "MaximumFileContentToLoadExceededException"
        },
        {
          "shape": "MaximumItemsToCompareExceededException"
        },
        {
          "shape": "FileModeRequiredException"
        },
        {
          "shape": "InvalidFileModeException"
        },
        {
          "shape": "NameLengthExceededException"
        },
        {
          "shape": "InvalidEmailException"
        },
        {
          "shape": "CommitMessageLengthExceededException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Merges two specified branches using the three-way merge strategy.</p>"
    },
    "MergePullRequestByFastForward": {
      "name": "MergePullRequestByFastForward",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "MergePullRequestByFastForwardInput"
      },
      "output": {
        "shape": "MergePullRequestByFastForwardOutput"
      },
      "errors": [
        {
          "shape": "ManualMergeRequiredException"
        },
        {
          "shape": "PullRequestAlreadyClosedException"
        },
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "TipOfSourceReferenceIsDifferentException"
        },
        {
          "shape": "ReferenceDoesNotExistException"
        },
        {
          "shape": "InvalidCommitIdException"
        },
        {
          "shape": "RepositoryNotAssociatedWithPullRequestException"
        },
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "ConcurrentReferenceUpdateException"
        },
        {
          "shape": "PullRequestApprovalRulesNotSatisfiedException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the fast-forward merge strategy. If the merge is successful, it closes the pull request.</p>"
    },
    "MergePullRequestBySquash": {
      "name": "MergePullRequestBySquash",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "MergePullRequestBySquashInput"
      },
      "output": {
        "shape": "MergePullRequestBySquashOutput"
      },
      "errors": [
        {
          "shape": "PullRequestAlreadyClosedException"
        },
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "InvalidCommitIdException"
        },
        {
          "shape": "ManualMergeRequiredException"
        },
        {
          "shape": "TipOfSourceReferenceIsDifferentException"
        },
        {
          "shape": "TipsDivergenceExceededException"
        },
        {
          "shape": "NameLengthExceededException"
        },
        {
          "shape": "InvalidEmailException"
        },
        {
          "shape": "CommitMessageLengthExceededException"
        },
        {
          "shape": "InvalidConflictDetailLevelException"
        },
        {
          "shape": "InvalidConflictResolutionStrategyException"
        },
        {
          "shape": "InvalidConflictResolutionException"
        },
        {
          "shape": "ReplacementTypeRequiredException"
        },
        {
          "shape": "InvalidReplacementTypeException"
        },
        {
          "shape": "MultipleConflictResolutionEntriesException"
        },
        {
          "shape": "ReplacementContentRequiredException"
        },
        {
          "shape": "MaximumConflictResolutionEntriesExceededException"
        },
        {
          "shape": "ConcurrentReferenceUpdateException"
        },
        {
          "shape": "PathRequiredException"
        },
        {
          "shape": "InvalidPathException"
        },
        {
          "shape": "InvalidFileModeException"
        },
        {
          "shape": "InvalidReplacementContentException"
        },
        {
          "shape": "FileContentSizeLimitExceededException"
        },
        {
          "shape": "FolderContentSizeLimitExceededException"
        },
        {
          "shape": "MaximumFileContentToLoadExceededException"
        },
        {
          "shape": "MaximumItemsToCompareExceededException"
        },
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "RepositoryNotAssociatedWithPullRequestException"
        },
        {
          "shape": "PullRequestApprovalRulesNotSatisfiedException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the squash merge strategy. If the merge is successful, it closes the pull request.</p>"
    },
    "MergePullRequestByThreeWay": {
      "name": "MergePullRequestByThreeWay",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "MergePullRequestByThreeWayInput"
      },
      "output": {
        "shape": "MergePullRequestByThreeWayOutput"
      },
      "errors": [
        {
          "shape": "PullRequestAlreadyClosedException"
        },
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "InvalidCommitIdException"
        },
        {
          "shape": "ManualMergeRequiredException"
        },
        {
          "shape": "TipOfSourceReferenceIsDifferentException"
        },
        {
          "shape": "TipsDivergenceExceededException"
        },
        {
          "shape": "NameLengthExceededException"
        },
        {
          "shape": "InvalidEmailException"
        },
        {
          "shape": "CommitMessageLengthExceededException"
        },
        {
          "shape": "InvalidConflictDetailLevelException"
        },
        {
          "shape": "InvalidConflictResolutionStrategyException"
        },
        {
          "shape": "InvalidConflictResolutionException"
        },
        {
          "shape": "ReplacementTypeRequiredException"
        },
        {
          "shape": "InvalidReplacementTypeException"
        },
        {
          "shape": "MultipleConflictResolutionEntriesException"
        },
        {
          "shape": "ReplacementContentRequiredException"
        },
        {
          "shape": "MaximumConflictResolutionEntriesExceededException"
        },
        {
          "shape": "PathRequiredException"
        },
        {
          "shape": "InvalidPathException"
        },
        {
          "shape": "InvalidFileModeException"
        },
        {
          "shape": "InvalidReplacementContentException"
        },
        {
          "shape": "FileContentSizeLimitExceededException"
        },
        {
          "shape": "FolderContentSizeLimitExceededException"
        },
        {
          "shape": "MaximumFileContentToLoadExceededException"
        },
        {
          "shape": "MaximumItemsToCompareExceededException"
        },
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "RepositoryNotAssociatedWithPullRequestException"
        },
        {
          "shape": "ConcurrentReferenceUpdateException"
        },
        {
          "shape": "PullRequestApprovalRulesNotSatisfiedException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the three-way merge strategy. If the merge is successful, it closes the pull request.</p>"
    },
    "OverridePullRequestApprovalRules": {
      "name": "OverridePullRequestApprovalRules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "OverridePullRequestApprovalRulesInput"
      },
      "errors": [
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "InvalidRevisionIdException"
        },
        {
          "shape": "RevisionIdRequiredException"
        },
        {
          "shape": "InvalidOverrideStatusException"
        },
        {
          "shape": "OverrideStatusRequiredException"
        },
        {
          "shape": "OverrideAlreadySetException"
        },
        {
          "shape": "RevisionNotCurrentException"
        },
        {
          "shape": "PullRequestAlreadyClosedException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Sets aside (overrides) all approval rule requirements for a specified pull request.</p>"
    },
    "PostCommentForComparedCommit": {
      "name": "PostCommentForComparedCommit",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PostCommentForComparedCommitInput"
      },
      "output": {
        "shape": "PostCommentForComparedCommitOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "ClientRequestTokenRequiredException"
        },
        {
          "shape": "InvalidClientRequestTokenException"
        },
        {
          "shape": "IdempotencyParameterMismatchException"
        },
        {
          "shape": "CommentContentRequiredException"
        },
        {
          "shape": "CommentContentSizeLimitExceededException"
        },
        {
          "shape": "InvalidFileLocationException"
        },
        {
          "shape": "InvalidRelativeFileVersionEnumException"
        },
        {
          "shape": "PathRequiredException"
        },
        {
          "shape": "InvalidFilePositionException"
        },
        {
          "shape": "CommitIdRequiredException"
        },
        {
          "shape": "InvalidCommitIdException"
        },
        {
          "shape": "BeforeCommitIdAndAfterCommitIdAreSameException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "InvalidPathException"
        },
        {
          "shape": "PathDoesNotExistException"
        },
        {
          "shape": "PathRequiredException"
        }
      ],
      "documentation": "<p>Posts a comment on the comparison between two commits.</p>",
      "idempotent": true
    },
    "PostCommentForPullRequest": {
      "name": "PostCommentForPullRequest",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PostCommentForPullRequestInput"
      },
      "output": {
        "shape": "PostCommentForPullRequestOutput"
      },
      "errors": [
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "RepositoryNotAssociatedWithPullRequestException"
        },
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "ClientRequestTokenRequiredException"
        },
        {
          "shape": "InvalidClientRequestTokenException"
        },
        {
          "shape": "IdempotencyParameterMismatchException"
        },
        {
          "shape": "CommentContentRequiredException"
        },
        {
          "shape": "CommentContentSizeLimitExceededException"
        },
        {
          "shape": "InvalidFileLocationException"
        },
        {
          "shape": "InvalidRelativeFileVersionEnumException"
        },
        {
          "shape": "PathRequiredException"
        },
        {
          "shape": "InvalidFilePositionException"
        },
        {
          "shape": "CommitIdRequiredException"
        },
        {
          "shape": "InvalidCommitIdException"
        },
        {
          "shape": "BeforeCommitIdAndAfterCommitIdAreSameException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        },
        {
          "shape": "CommitDoesNotExistException"
        },
        {
          "shape": "InvalidPathException"
        },
        {
          "shape": "PathDoesNotExistException"
        },
        {
          "shape": "PathRequiredException"
        }
      ],
      "documentation": "<p>Posts a comment on a pull request.</p>",
      "idempotent": true
    },
    "PostCommentReply": {
      "name": "PostCommentReply",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PostCommentReplyInput"
      },
      "output": {
        "shape": "PostCommentReplyOutput"
      },
      "errors": [
        {
          "shape": "ClientRequestTokenRequiredException"
        },
        {
          "shape": "InvalidClientRequestTokenException"
        },
        {
          "shape": "IdempotencyParameterMismatchException"
        },
        {
          "shape": "CommentContentRequiredException"
        },
        {
          "shape": "CommentContentSizeLimitExceededException"
        },
        {
          "shape": "CommentDoesNotExistException"
        },
        {
          "shape": "CommentIdRequiredException"
        },
        {
          "shape": "InvalidCommentIdException"
        }
      ],
      "documentation": "<p>Posts a comment in reply to an existing comment on a comparison between commits or a pull request.</p>",
      "idempotent": true
    },
    "PutCommentReaction": {
      "name": "PutCommentReaction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutCommentReactionInput"
      },
      "errors": [
        {
          "shape": "CommentDoesNotExistException"
        },
        {
          "shape": "CommentIdRequiredException"
        },
        {
          "shape": "InvalidCommentIdException"
        },
        {
          "shape": "InvalidReactionValueException"
        },
        {
          "shape": "ReactionValueRequiredException"
        },
        {
          "shape": "ReactionLimitExceededException"
        },
        {
          "shape": "CommentDeletedException"
        }
      ],
      "documentation": "<p>Adds or updates a reaction to a specified comment for the user whose identity is used to make the request. You can only add or update a reaction for yourself. You cannot add, modify, or delete a reaction for another user.</p>"
    },
    "PutFile": {
      "name": "PutFile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutFileInput"
      },
      "output": {
        "shape": "PutFileOutput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "ParentCommitIdRequiredException"
        },
        {
          "shape": "InvalidParentCommitIdException"
        },
        {
          "shape": "ParentCommitDoesNotExistException"
        },
        {
          "shape": "ParentCommitIdOutdatedException"
        },
        {
          "shape": "FileContentRequiredException"
        },
        {
          "shape": "FileContentSizeLimitExceededException"
        },
        {
          "shape": "FolderContentSizeLimitExceededException"
        },
        {
          "shape": "PathRequiredException"
        },
        {
          "shape": "InvalidPathException"
        },
        {
          "shape": "BranchNameRequiredException"
        },
        {
          "shape": "InvalidBranchNameException"
        },
        {
          "shape": "BranchDoesNotExistException"
        },
        {
          "shape": "BranchNameIsTagNameException"
        },
        {
          "shape": "InvalidFileModeException"
        },
        {
          "shape": "NameLengthExceededException"
        },
        {
          "shape": "InvalidEmailException"
        },
        {
          "shape": "CommitMessageLengthExceededException"
        },
        {
          "shape": "InvalidDeletionParameterException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        },
        {
          "shape": "SameFileContentException"
        },
        {
          "shape": "FileNameConflictsWithDirectoryNameException"
        },
        {
          "shape": "DirectoryNameConflictsWithFileNameException"
        },
        {
          "shape": "FilePathConflictsWithSubmodulePathException"
        }
      ],
      "documentation": "<p>Adds or updates a file in a branch in an AWS CodeCommit repository, and generates a commit for the addition in the specified branch.</p>"
    },
    "PutRepositoryTriggers": {
      "name": "PutRepositoryTriggers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutRepositoryTriggersInput"
      },
      "output": {
        "shape": "PutRepositoryTriggersOutput"
      },
      "errors": [
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryTriggersListRequiredException"
        },
        {
          "shape": "MaximumRepositoryTriggersExceededException"
        },
        {
          "shape": "InvalidRepositoryTriggerNameException"
        },
        {
          "shape": "InvalidRepositoryTriggerDestinationArnException"
        },
        {
          "shape": "InvalidRepositoryTriggerRegionException"
        },
        {
          "shape": "InvalidRepositoryTriggerCustomDataException"
        },
        {
          "shape": "MaximumBranchesExceededException"
        },
        {
          "shape": "InvalidRepositoryTriggerBranchNameException"
        },
        {
          "shape": "InvalidRepositoryTriggerEventsException"
        },
        {
          "shape": "RepositoryTriggerNameRequiredException"
        },
        {
          "shape": "RepositoryTriggerDestinationArnRequiredException"
        },
        {
          "shape": "RepositoryTriggerBranchNameListRequiredException"
        },
        {
          "shape": "RepositoryTriggerEventsListRequiredException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Replaces all triggers for a repository. Used to create or delete triggers.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourceInput"
      },
      "errors": [
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "ResourceArnRequiredException"
        },
        {
          "shape": "InvalidResourceArnException"
        },
        {
          "shape": "TagsMapRequiredException"
        },
        {
          "shape": "InvalidTagsMapException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "InvalidSystemTagUsageException"
        },
        {
          "shape": "TagPolicyException"
        }
      ],
      "documentation": "<p>Adds or updates tags for a resource in AWS CodeCommit. For a list of valid resources in AWS CodeCommit, see <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats\">CodeCommit Resources and Operations</a> in the <i>AWS CodeCommit User Guide</i>.</p>"
    },
    "TestRepositoryTriggers": {
      "name": "TestRepositoryTriggers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TestRepositoryTriggersInput"
      },
      "output": {
        "shape": "TestRepositoryTriggersOutput"
      },
      "errors": [
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "RepositoryTriggersListRequiredException"
        },
        {
          "shape": "MaximumRepositoryTriggersExceededException"
        },
        {
          "shape": "InvalidRepositoryTriggerNameException"
        },
        {
          "shape": "InvalidRepositoryTriggerDestinationArnException"
        },
        {
          "shape": "InvalidRepositoryTriggerRegionException"
        },
        {
          "shape": "InvalidRepositoryTriggerCustomDataException"
        },
        {
          "shape": "MaximumBranchesExceededException"
        },
        {
          "shape": "InvalidRepositoryTriggerBranchNameException"
        },
        {
          "shape": "InvalidRepositoryTriggerEventsException"
        },
        {
          "shape": "RepositoryTriggerNameRequiredException"
        },
        {
          "shape": "RepositoryTriggerDestinationArnRequiredException"
        },
        {
          "shape": "RepositoryTriggerBranchNameListRequiredException"
        },
        {
          "shape": "RepositoryTriggerEventsListRequiredException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Tests the functionality of repository triggers by sending information to the trigger target. If real data is available in the repository, the test sends data from the last commit. If no data is available, sample data is generated.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourceInput"
      },
      "errors": [
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "ResourceArnRequiredException"
        },
        {
          "shape": "InvalidResourceArnException"
        },
        {
          "shape": "TagKeysListRequiredException"
        },
        {
          "shape": "InvalidTagKeysListException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "InvalidSystemTagUsageException"
        },
        {
          "shape": "TagPolicyException"
        }
      ],
      "documentation": "<p>Removes tags for a resource in AWS CodeCommit. For a list of valid resources in AWS CodeCommit, see <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats\">CodeCommit Resources and Operations</a> in the <i>AWS CodeCommit User Guide</i>.</p>"
    },
    "UpdateApprovalRuleTemplateContent": {
      "name": "UpdateApprovalRuleTemplateContent",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateApprovalRuleTemplateContentInput"
      },
      "output": {
        "shape": "UpdateApprovalRuleTemplateContentOutput"
      },
      "errors": [
        {
          "shape": "InvalidApprovalRuleTemplateNameException"
        },
        {
          "shape": "ApprovalRuleTemplateNameRequiredException"
        },
        {
          "shape": "ApprovalRuleTemplateDoesNotExistException"
        },
        {
          "shape": "InvalidApprovalRuleTemplateContentException"
        },
        {
          "shape": "InvalidRuleContentSha256Exception"
        },
        {
          "shape": "ApprovalRuleTemplateContentRequiredException"
        }
      ],
      "documentation": "<p>Updates the content of an approval rule template. You can change the number of required approvals, the membership of the approval rule, and whether an approval pool is defined.</p>"
    },
    "UpdateApprovalRuleTemplateDescription": {
      "name": "UpdateApprovalRuleTemplateDescription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateApprovalRuleTemplateDescriptionInput"
      },
      "output": {
        "shape": "UpdateApprovalRuleTemplateDescriptionOutput"
      },
      "errors": [
        {
          "shape": "InvalidApprovalRuleTemplateNameException"
        },
        {
          "shape": "ApprovalRuleTemplateNameRequiredException"
        },
        {
          "shape": "ApprovalRuleTemplateDoesNotExistException"
        },
        {
          "shape": "InvalidApprovalRuleTemplateDescriptionException"
        }
      ],
      "documentation": "<p>Updates the description for a specified approval rule template.</p>"
    },
    "UpdateApprovalRuleTemplateName": {
      "name": "UpdateApprovalRuleTemplateName",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateApprovalRuleTemplateNameInput"
      },
      "output": {
        "shape": "UpdateApprovalRuleTemplateNameOutput"
      },
      "errors": [
        {
          "shape": "InvalidApprovalRuleTemplateNameException"
        },
        {
          "shape": "ApprovalRuleTemplateNameRequiredException"
        },
        {
          "shape": "ApprovalRuleTemplateDoesNotExistException"
        },
        {
          "shape": "ApprovalRuleTemplateNameAlreadyExistsException"
        }
      ],
      "documentation": "<p>Updates the name of a specified approval rule template.</p>"
    },
    "UpdateComment": {
      "name": "UpdateComment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateCommentInput"
      },
      "output": {
        "shape": "UpdateCommentOutput"
      },
      "errors": [
        {
          "shape": "CommentContentRequiredException"
        },
        {
          "shape": "CommentContentSizeLimitExceededException"
        },
        {
          "shape": "CommentDoesNotExistException"
        },
        {
          "shape": "CommentIdRequiredException"
        },
        {
          "shape": "InvalidCommentIdException"
        },
        {
          "shape": "CommentNotCreatedByCallerException"
        },
        {
          "shape": "CommentDeletedException"
        }
      ],
      "documentation": "<p>Replaces the contents of a comment.</p>"
    },
    "UpdateDefaultBranch": {
      "name": "UpdateDefaultBranch",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateDefaultBranchInput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "BranchNameRequiredException"
        },
        {
          "shape": "InvalidBranchNameException"
        },
        {
          "shape": "BranchDoesNotExistException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Sets or changes the default branch name for the specified repository.</p> <note> <p>If you use this operation to change the default branch name to the current default branch name, a success message is returned even though the default branch did not change.</p> </note>"
    },
    "UpdatePullRequestApprovalRuleContent": {
      "name": "UpdatePullRequestApprovalRuleContent",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdatePullRequestApprovalRuleContentInput"
      },
      "output": {
        "shape": "UpdatePullRequestApprovalRuleContentOutput"
      },
      "errors": [
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "PullRequestAlreadyClosedException"
        },
        {
          "shape": "ApprovalRuleNameRequiredException"
        },
        {
          "shape": "InvalidApprovalRuleNameException"
        },
        {
          "shape": "ApprovalRuleDoesNotExistException"
        },
        {
          "shape": "InvalidRuleContentSha256Exception"
        },
        {
          "shape": "ApprovalRuleContentRequiredException"
        },
        {
          "shape": "InvalidApprovalRuleContentException"
        },
        {
          "shape": "CannotModifyApprovalRuleFromTemplateException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Updates the structure of an approval rule created specifically for a pull request. For example, you can change the number of required approvers and the approval pool for approvers. </p>"
    },
    "UpdatePullRequestApprovalState": {
      "name": "UpdatePullRequestApprovalState",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdatePullRequestApprovalStateInput"
      },
      "errors": [
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "InvalidRevisionIdException"
        },
        {
          "shape": "RevisionIdRequiredException"
        },
        {
          "shape": "InvalidApprovalStateException"
        },
        {
          "shape": "ApprovalStateRequiredException"
        },
        {
          "shape": "PullRequestCannotBeApprovedByAuthorException"
        },
        {
          "shape": "RevisionNotCurrentException"
        },
        {
          "shape": "PullRequestAlreadyClosedException"
        },
        {
          "shape": "MaximumNumberOfApprovalsExceededException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Updates the state of a user's approval on a pull request. The user is derived from the signed-in account when the request is made.</p>"
    },
    "UpdatePullRequestDescription": {
      "name": "UpdatePullRequestDescription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdatePullRequestDescriptionInput"
      },
      "output": {
        "shape": "UpdatePullRequestDescriptionOutput"
      },
      "errors": [
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "InvalidDescriptionException"
        },
        {
          "shape": "PullRequestAlreadyClosedException"
        }
      ],
      "documentation": "<p>Replaces the contents of the description of a pull request.</p>"
    },
    "UpdatePullRequestStatus": {
      "name": "UpdatePullRequestStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdatePullRequestStatusInput"
      },
      "output": {
        "shape": "UpdatePullRequestStatusOutput"
      },
      "errors": [
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "InvalidPullRequestStatusUpdateException"
        },
        {
          "shape": "InvalidPullRequestStatusException"
        },
        {
          "shape": "PullRequestStatusRequiredException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Updates the status of a pull request. </p>"
    },
    "UpdatePullRequestTitle": {
      "name": "UpdatePullRequestTitle",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdatePullRequestTitleInput"
      },
      "output": {
        "shape": "UpdatePullRequestTitleOutput"
      },
      "errors": [
        {
          "shape": "PullRequestDoesNotExistException"
        },
        {
          "shape": "InvalidPullRequestIdException"
        },
        {
          "shape": "PullRequestIdRequiredException"
        },
        {
          "shape": "TitleRequiredException"
        },
        {
          "shape": "InvalidTitleException"
        },
        {
          "shape": "PullRequestAlreadyClosedException"
        }
      ],
      "documentation": "<p>Replaces the title of a pull request.</p>"
    },
    "UpdateRepositoryDescription": {
      "name": "UpdateRepositoryDescription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateRepositoryDescriptionInput"
      },
      "errors": [
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        },
        {
          "shape": "InvalidRepositoryDescriptionException"
        },
        {
          "shape": "EncryptionIntegrityChecksFailedException"
        },
        {
          "shape": "EncryptionKeyAccessDeniedException"
        },
        {
          "shape": "EncryptionKeyDisabledException"
        },
        {
          "shape": "EncryptionKeyNotFoundException"
        },
        {
          "shape": "EncryptionKeyUnavailableException"
        }
      ],
      "documentation": "<p>Sets or changes the comment or description for a repository.</p> <note> <p>The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a webpage can expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a webpage.</p> </note>"
    },
    "UpdateRepositoryName": {
      "name": "UpdateRepositoryName",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateRepositoryNameInput"
      },
      "errors": [
        {
          "shape": "RepositoryDoesNotExistException"
        },
        {
          "shape": "RepositoryNameExistsException"
        },
        {
          "shape": "RepositoryNameRequiredException"
        },
        {
          "shape": "InvalidRepositoryNameException"
        }
      ],
      "documentation": "<p>Renames a repository. The repository name must be unique across the calling AWS account. Repository names are limited to 100 alphanumeric, dash, and underscore characters, and cannot include certain characters. The suffix .git is prohibited. For more information about the limits on repository names, see <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html\">Limits</a> in the AWS CodeCommit User Guide.</p>"
    }
  },
  "shapes": {
    "AccountId": {
      "type": "string"
    },
    "AdditionalData": {
      "type": "string"
    },
    "Approval": {
      "type": "structure",
      "members": {
        "userArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user.</p>"
        },
        "approvalState": {
          "shape": "ApprovalState",
          "documentation": "<p>The state of the approval, APPROVE or REVOKE. REVOKE states are not stored.</p>"
        }
      },
      "documentation": "<p>Returns information about a specific approval on a pull request.</p>"
    },
    "ApprovalList": {
      "type": "list",
      "member": {
        "shape": "Approval"
      }
    },
    "ApprovalRule": {
      "type": "structure",
      "members": {
        "approvalRuleId": {
          "shape": "ApprovalRuleId",
          "documentation": "<p>The system-generated ID of the approval rule.</p>"
        },
        "approvalRuleName": {
          "shape": "ApprovalRuleName",
          "documentation": "<p>The name of the approval rule.</p>"
        },
        "approvalRuleContent": {
          "shape": "ApprovalRuleContent",
          "documentation": "<p>The content of the approval rule.</p>"
        },
        "ruleContentSha256": {
          "shape": "RuleContentSha256",
          "documentation": "<p>The SHA-256 hash signature for the content of the approval rule.</p>"
        },
        "lastModifiedDate": {
          "shape": "LastModifiedDate",
          "documentation": "<p>The date the approval rule was most recently changed, in timestamp format.</p>"
        },
        "creationDate": {
          "shape": "CreationDate",
          "documentation": "<p>The date the approval rule was created, in timestamp format.</p>"
        },
        "lastModifiedUser": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule.</p>"
        },
        "originApprovalRuleTemplate": {
          "shape": "OriginApprovalRuleTemplate",
          "documentation": "<p>The approval rule template used to create the rule.</p>"
        }
      },
      "documentation": "<p>Returns information about an approval rule.</p>"
    },
    "ApprovalRuleContent": {
      "type": "string",
      "max": 3000,
      "min": 1
    },
    "ApprovalRuleEventMetadata": {
      "type": "structure",
      "members": {
        "approvalRuleName": {
          "shape": "ApprovalRuleName",
          "documentation": "<p>The name of the approval rule.</p>"
        },
        "approvalRuleId": {
          "shape": "ApprovalRuleId",
          "documentation": "<p>The system-generated ID of the approval rule.</p>"
        },
        "approvalRuleContent": {
          "shape": "ApprovalRuleContent",
          "documentation": "<p>The content of the approval rule.</p>"
        }
      },
      "documentation": "<p>Returns information about an event for an approval rule.</p>"
    },
    "ApprovalRuleId": {
      "type": "string"
    },
    "ApprovalRuleName": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "ApprovalRuleOverriddenEventMetadata": {
      "type": "structure",
      "members": {
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The revision ID of the pull request when the override event occurred.</p>"
        },
        "overrideStatus": {
          "shape": "OverrideStatus",
          "documentation": "<p>The status of the override event.</p>"
        }
      },
      "documentation": "<p>Returns information about an override event for approval rules for a pull request.</p>"
    },
    "ApprovalRuleTemplate": {
      "type": "structure",
      "members": {
        "approvalRuleTemplateId": {
          "shape": "ApprovalRuleTemplateId",
          "documentation": "<p>The system-generated ID of the approval rule template.</p>"
        },
        "approvalRuleTemplateName": {
          "shape": "ApprovalRuleTemplateName",
          "documentation": "<p>The name of the approval rule template.</p>"
        },
        "approvalRuleTemplateDescription": {
          "shape": "ApprovalRuleTemplateDescription",
          "documentation": "<p>The description of the approval rule template.</p>"
        },
        "approvalRuleTemplateContent": {
          "shape": "ApprovalRuleTemplateContent",
          "documentation": "<p>The content of the approval rule template.</p>"
        },
        "ruleContentSha256": {
          "shape": "RuleContentSha256",
          "documentation": "<p>The SHA-256 hash signature for the content of the approval rule template.</p>"
        },
        "lastModifiedDate": {
          "shape": "LastModifiedDate",
          "documentation": "<p>The date the approval rule template was most recently changed, in timestamp format.</p>"
        },
        "creationDate": {
          "shape": "CreationDate",
          "documentation": "<p>The date the approval rule template was created, in timestamp format.</p>"
        },
        "lastModifiedUser": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule template.</p>"
        }
      },
      "documentation": "<p>Returns information about an approval rule template.</p>"
    },
    "ApprovalRuleTemplateContent": {
      "type": "string",
      "max": 3000,
      "min": 1
    },
    "ApprovalRuleTemplateDescription": {
      "type": "string",
      "max": 1000,
      "min": 0
    },
    "ApprovalRuleTemplateId": {
      "type": "string"
    },
    "ApprovalRuleTemplateName": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "ApprovalRuleTemplateNameList": {
      "type": "list",
      "member": {
        "shape": "ApprovalRuleTemplateName"
      }
    },
    "ApprovalRulesList": {
      "type": "list",
      "member": {
        "shape": "ApprovalRule"
      }
    },
    "ApprovalRulesNotSatisfiedList": {
      "type": "list",
      "member": {
        "shape": "ApprovalRuleName"
      }
    },
    "ApprovalRulesSatisfiedList": {
      "type": "list",
      "member": {
        "shape": "ApprovalRuleName"
      }
    },
    "ApprovalState": {
      "type": "string",
      "enum": [
        "APPROVE",
        "REVOKE"
      ]
    },
    "ApprovalStateChangedEventMetadata": {
      "type": "structure",
      "members": {
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The revision ID of the pull request when the approval state changed.</p>"
        },
        "approvalStatus": {
          "shape": "ApprovalState",
          "documentation": "<p>The approval status for the pull request.</p>"
        }
      },
      "documentation": "<p>Returns information about a change in the approval state for a pull request.</p>"
    },
    "Approved": {
      "type": "boolean"
    },
    "Arn": {
      "type": "string"
    },
    "AssociateApprovalRuleTemplateWithRepositoryInput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplateName",
        "repositoryName"
      ],
      "members": {
        "approvalRuleTemplateName": {
          "shape": "ApprovalRuleTemplateName",
          "documentation": "<p>The name for the approval rule template. </p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that you want to associate with the template.</p>"
        }
      }
    },
    "BatchAssociateApprovalRuleTemplateWithRepositoriesError": {
      "type": "structure",
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where the association was not made.</p>"
        },
        "errorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>An error code that specifies whether the repository name was not valid or not found.</p>"
        },
        "errorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>An error message that provides details about why the repository name was not found or not valid.</p>"
        }
      },
      "documentation": "<p>Returns information about errors in a BatchAssociateApprovalRuleTemplateWithRepositories operation.</p>"
    },
    "BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList": {
      "type": "list",
      "member": {
        "shape": "BatchAssociateApprovalRuleTemplateWithRepositoriesError"
      }
    },
    "BatchAssociateApprovalRuleTemplateWithRepositoriesInput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplateName",
        "repositoryNames"
      ],
      "members": {
        "approvalRuleTemplateName": {
          "shape": "ApprovalRuleTemplateName",
          "documentation": "<p>The name of the template you want to associate with one or more repositories.</p>"
        },
        "repositoryNames": {
          "shape": "RepositoryNameList",
          "documentation": "<p>The names of the repositories you want to associate with the template.</p> <note> <p>The length constraint limit is for each string in the array. The array itself can be empty.</p> </note>"
        }
      }
    },
    "BatchAssociateApprovalRuleTemplateWithRepositoriesOutput": {
      "type": "structure",
      "required": [
        "associatedRepositoryNames",
        "errors"
      ],
      "members": {
        "associatedRepositoryNames": {
          "shape": "RepositoryNameList",
          "documentation": "<p>A list of names of the repositories that have been associated with the template.</p>"
        },
        "errors": {
          "shape": "BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList",
          "documentation": "<p>A list of any errors that might have occurred while attempting to create the association between the template and the repositories.</p>"
        }
      }
    },
    "BatchDescribeMergeConflictsError": {
      "type": "structure",
      "required": [
        "filePath",
        "exceptionName",
        "message"
      ],
      "members": {
        "filePath": {
          "shape": "Path",
          "documentation": "<p>The path to the file.</p>"
        },
        "exceptionName": {
          "shape": "ExceptionName",
          "documentation": "<p>The name of the exception.</p>"
        },
        "message": {
          "shape": "Message",
          "documentation": "<p>The message provided by the exception.</p>"
        }
      },
      "documentation": "<p>Returns information about errors in a BatchDescribeMergeConflicts operation.</p>"
    },
    "BatchDescribeMergeConflictsErrors": {
      "type": "list",
      "member": {
        "shape": "BatchDescribeMergeConflictsError"
      }
    },
    "BatchDescribeMergeConflictsInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "destinationCommitSpecifier",
        "sourceCommitSpecifier",
        "mergeOption"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the merge conflicts you want to review.</p>"
        },
        "destinationCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "sourceCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "mergeOption": {
          "shape": "MergeOptionTypeEnum",
          "documentation": "<p>The merge option or strategy you want to use to merge the code.</p>"
        },
        "maxMergeHunks": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of merge hunks to include in the output.</p>"
        },
        "maxConflictFiles": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of files to include in the output.</p>"
        },
        "filePaths": {
          "shape": "FilePaths",
          "documentation": "<p>The path of the target files used to describe the conflicts. If not specified, the default is all conflict files.</p>"
        },
        "conflictDetailLevel": {
          "shape": "ConflictDetailLevelTypeEnum",
          "documentation": "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.</p>"
        },
        "conflictResolutionStrategy": {
          "shape": "ConflictResolutionStrategyTypeEnum",
          "documentation": "<p>Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results.</p>"
        }
      }
    },
    "BatchDescribeMergeConflictsOutput": {
      "type": "structure",
      "required": [
        "conflicts",
        "destinationCommitId",
        "sourceCommitId"
      ],
      "members": {
        "conflicts": {
          "shape": "Conflicts",
          "documentation": "<p>A list of conflicts for each file, including the conflict metadata and the hunks of the differences between the files.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
        },
        "errors": {
          "shape": "BatchDescribeMergeConflictsErrors",
          "documentation": "<p>A list of any errors returned while describing the merge conflicts for each file.</p>"
        },
        "destinationCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>"
        },
        "sourceCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>"
        },
        "baseCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the merge base.</p>"
        }
      }
    },
    "BatchDisassociateApprovalRuleTemplateFromRepositoriesError": {
      "type": "structure",
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where the association with the template was not able to be removed.</p>"
        },
        "errorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>An error code that specifies whether the repository name was not valid or not found.</p>"
        },
        "errorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>An error message that provides details about why the repository name was either not found or not valid.</p>"
        }
      },
      "documentation": "<p>Returns information about errors in a BatchDisassociateApprovalRuleTemplateFromRepositories operation.</p>"
    },
    "BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList": {
      "type": "list",
      "member": {
        "shape": "BatchDisassociateApprovalRuleTemplateFromRepositoriesError"
      }
    },
    "BatchDisassociateApprovalRuleTemplateFromRepositoriesInput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplateName",
        "repositoryNames"
      ],
      "members": {
        "approvalRuleTemplateName": {
          "shape": "ApprovalRuleTemplateName",
          "documentation": "<p>The name of the template that you want to disassociate from one or more repositories.</p>"
        },
        "repositoryNames": {
          "shape": "RepositoryNameList",
          "documentation": "<p>The repository names that you want to disassociate from the approval rule template.</p> <note> <p>The length constraint limit is for each string in the array. The array itself can be empty.</p> </note>"
        }
      }
    },
    "BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput": {
      "type": "structure",
      "required": [
        "disassociatedRepositoryNames",
        "errors"
      ],
      "members": {
        "disassociatedRepositoryNames": {
          "shape": "RepositoryNameList",
          "documentation": "<p>A list of repository names that have had their association with the template removed.</p>"
        },
        "errors": {
          "shape": "BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList",
          "documentation": "<p>A list of any errors that might have occurred while attempting to remove the association between the template and the repositories.</p>"
        }
      }
    },
    "BatchGetCommitsError": {
      "type": "structure",
      "members": {
        "commitId": {
          "shape": "ObjectId",
          "documentation": "<p>A commit ID that either could not be found or was not in a valid format.</p>"
        },
        "errorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>An error code that specifies whether the commit ID was not valid or not found.</p>"
        },
        "errorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>An error message that provides detail about why the commit ID either was not found or was not valid.</p>"
        }
      },
      "documentation": "<p>Returns information about errors in a BatchGetCommits operation.</p>"
    },
    "BatchGetCommitsErrorsList": {
      "type": "list",
      "member": {
        "shape": "BatchGetCommitsError"
      }
    },
    "BatchGetCommitsInput": {
      "type": "structure",
      "required": [
        "commitIds",
        "repositoryName"
      ],
      "members": {
        "commitIds": {
          "shape": "CommitIdsInputList",
          "documentation": "<p>The full commit IDs of the commits to get information about.</p> <note> <p>You must supply the full SHA IDs of each commit. You cannot use shortened SHA IDs.</p> </note>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the commits.</p>"
        }
      }
    },
    "BatchGetCommitsOutput": {
      "type": "structure",
      "members": {
        "commits": {
          "shape": "CommitObjectsList",
          "documentation": "<p>An array of commit data type objects, each of which contains information about a specified commit.</p>"
        },
        "errors": {
          "shape": "BatchGetCommitsErrorsList",
          "documentation": "<p>Returns any commit IDs for which information could not be found. For example, if one of the commit IDs was a shortened SHA ID or that commit was not found in the specified repository, the ID returns an error object with more information.</p>"
        }
      }
    },
    "BatchGetRepositoriesInput": {
      "type": "structure",
      "required": [
        "repositoryNames"
      ],
      "members": {
        "repositoryNames": {
          "shape": "RepositoryNameList",
          "documentation": "<p>The names of the repositories to get information about.</p> <note> <p>The length constraint limit is for each string in the array. The array itself can be empty.</p> </note>"
        }
      },
      "documentation": "<p>Represents the input of a batch get repositories operation.</p>"
    },
    "BatchGetRepositoriesOutput": {
      "type": "structure",
      "members": {
        "repositories": {
          "shape": "RepositoryMetadataList",
          "documentation": "<p>A list of repositories returned by the batch get repositories operation.</p>"
        },
        "repositoriesNotFound": {
          "shape": "RepositoryNotFoundList",
          "documentation": "<p>Returns a list of repository names for which information could not be found.</p>"
        }
      },
      "documentation": "<p>Represents the output of a batch get repositories operation.</p>"
    },
    "BlobMetadata": {
      "type": "structure",
      "members": {
        "blobId": {
          "shape": "ObjectId",
          "documentation": "<p>The full ID of the blob.</p>"
        },
        "path": {
          "shape": "Path",
          "documentation": "<p>The path to the blob and associated file name, if any.</p>"
        },
        "mode": {
          "shape": "Mode",
          "documentation": "<p>The file mode permissions of the blob. File mode permission codes include:</p> <ul> <li> <p> <code>100644</code> indicates read/write</p> </li> <li> <p> <code>100755</code> indicates read/write/execute</p> </li> <li> <p> <code>160000</code> indicates a submodule</p> </li> <li> <p> <code>120000</code> indicates a symlink</p> </li> </ul>"
        }
      },
      "documentation": "<p>Returns information about a specific Git blob object.</p>"
    },
    "BranchInfo": {
      "type": "structure",
      "members": {
        "branchName": {
          "shape": "BranchName",
          "documentation": "<p>The name of the branch.</p>"
        },
        "commitId": {
          "shape": "CommitId",
          "documentation": "<p>The ID of the last commit made to the branch.</p>"
        }
      },
      "documentation": "<p>Returns information about a branch.</p>"
    },
    "BranchName": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "BranchNameList": {
      "type": "list",
      "member": {
        "shape": "BranchName"
      }
    },
    "CallerReactions": {
      "type": "list",
      "member": {
        "shape": "ReactionValue"
      }
    },
    "CapitalBoolean": {
      "type": "boolean"
    },
    "ChangeTypeEnum": {
      "type": "string",
      "enum": [
        "A",
        "M",
        "D"
      ]
    },
    "ClientRequestToken": {
      "type": "string"
    },
    "CloneUrlHttp": {
      "type": "string"
    },
    "CloneUrlSsh": {
      "type": "string"
    },
    "Comment": {
      "type": "structure",
      "members": {
        "commentId": {
          "shape": "CommentId",
          "documentation": "<p>The system-generated comment ID.</p>"
        },
        "content": {
          "shape": "Content",
          "documentation": "<p>The content of the comment.</p>"
        },
        "inReplyTo": {
          "shape": "CommentId",
          "documentation": "<p>The ID of the comment for which this comment is a reply, if any.</p>"
        },
        "creationDate": {
          "shape": "CreationDate",
          "documentation": "<p>The date and time the comment was created, in timestamp format.</p>"
        },
        "lastModifiedDate": {
          "shape": "LastModifiedDate",
          "documentation": "<p>The date and time the comment was most recently modified, in timestamp format.</p>"
        },
        "authorArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the person who posted the comment.</p>"
        },
        "deleted": {
          "shape": "IsCommentDeleted",
          "documentation": "<p>A Boolean value indicating whether the comment has been deleted.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.</p>"
        },
        "callerReactions": {
          "shape": "CallerReactions",
          "documentation": "<p>The emoji reactions to a comment, if any, submitted by the user whose credentials are associated with the call to the API.</p>"
        },
        "reactionCounts": {
          "shape": "ReactionCountsMap",
          "documentation": "<p>A string to integer map that represents the number of individual users who have responded to a comment with the specified reactions.</p>"
        }
      },
      "documentation": "<p>Returns information about a specific comment.</p>"
    },
    "CommentId": {
      "type": "string"
    },
    "Comments": {
      "type": "list",
      "member": {
        "shape": "Comment"
      }
    },
    "CommentsForComparedCommit": {
      "type": "structure",
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the compared commits.</p>"
        },
        "beforeCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The full commit ID of the commit used to establish the before of the comparison.</p>"
        },
        "afterCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The full commit ID of the commit used to establish the after of the comparison.</p>"
        },
        "beforeBlobId": {
          "shape": "ObjectId",
          "documentation": "<p>The full blob ID of the commit used to establish the before of the comparison.</p>"
        },
        "afterBlobId": {
          "shape": "ObjectId",
          "documentation": "<p>The full blob ID of the commit used to establish the after of the comparison.</p>"
        },
        "location": {
          "shape": "Location",
          "documentation": "<p>Location information about the comment on the comparison, including the file name, line number, and whether the version of the file where the comment was made is BEFORE or AFTER.</p>"
        },
        "comments": {
          "shape": "Comments",
          "documentation": "<p>An array of comment objects. Each comment object contains information about a comment on the comparison between commits.</p>"
        }
      },
      "documentation": "<p>Returns information about comments on the comparison between two commits.</p>"
    },
    "CommentsForComparedCommitData": {
      "type": "list",
      "member": {
        "shape": "CommentsForComparedCommit"
      }
    },
    "CommentsForPullRequest": {
      "type": "structure",
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the pull request.</p>"
        },
        "beforeCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The full commit ID of the commit that was the tip of the destination branch when the pull request was created. This commit is superceded by the after commit in the source branch when and if you merge the source branch into the destination branch.</p>"
        },
        "afterCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The full commit ID of the commit that was the tip of the source branch at the time the comment was made. </p>"
        },
        "beforeBlobId": {
          "shape": "ObjectId",
          "documentation": "<p>The full blob ID of the file on which you want to comment on the destination commit.</p>"
        },
        "afterBlobId": {
          "shape": "ObjectId",
          "documentation": "<p>The full blob ID of the file on which you want to comment on the source commit.</p>"
        },
        "location": {
          "shape": "Location",
          "documentation": "<p>Location information about the comment on the pull request, including the file name, line number, and whether the version of the file where the comment was made is BEFORE (destination branch) or AFTER (source branch).</p>"
        },
        "comments": {
          "shape": "Comments",
          "documentation": "<p>An array of comment objects. Each comment object contains information about a comment on the pull request.</p>"
        }
      },
      "documentation": "<p>Returns information about comments on a pull request.</p>"
    },
    "CommentsForPullRequestData": {
      "type": "list",
      "member": {
        "shape": "CommentsForPullRequest"
      }
    },
    "Commit": {
      "type": "structure",
      "members": {
        "commitId": {
          "shape": "ObjectId",
          "documentation": "<p>The full SHA ID of the specified commit. </p>"
        },
        "treeId": {
          "shape": "ObjectId",
          "documentation": "<p>Tree information for the specified commit.</p>"
        },
        "parents": {
          "shape": "ParentList",
          "documentation": "<p>A list of parent commits for the specified commit. Each parent commit ID is the full commit ID.</p>"
        },
        "message": {
          "shape": "Message",
          "documentation": "<p>The commit message associated with the specified commit.</p>"
        },
        "author": {
          "shape": "UserInfo",
          "documentation": "<p>Information about the author of the specified commit. Information includes the date in timestamp format with GMT offset, the name of the author, and the email address for the author, as configured in Git.</p>"
        },
        "committer": {
          "shape": "UserInfo",
          "documentation": "<p>Information about the person who committed the specified commit, also known as the committer. Information includes the date in timestamp format with GMT offset, the name of the committer, and the email address for the committer, as configured in Git.</p> <p>For more information about the difference between an author and a committer in Git, see <a href=\"http://git-scm.com/book/ch2-3.html\">Viewing the Commit History</a> in Pro Git by Scott Chacon and Ben Straub.</p>"
        },
        "additionalData": {
          "shape": "AdditionalData",
          "documentation": "<p>Any other data associated with the specified commit.</p>"
        }
      },
      "documentation": "<p>Returns information about a specific commit.</p>"
    },
    "CommitId": {
      "type": "string"
    },
    "CommitIdsInputList": {
      "type": "list",
      "member": {
        "shape": "ObjectId"
      }
    },
    "CommitName": {
      "type": "string"
    },
    "CommitObjectsList": {
      "type": "list",
      "member": {
        "shape": "Commit"
      }
    },
    "Conflict": {
      "type": "structure",
      "members": {
        "conflictMetadata": {
          "shape": "ConflictMetadata",
          "documentation": "<p>Metadata about a conflict in a merge operation.</p>"
        },
        "mergeHunks": {
          "shape": "MergeHunks",
          "documentation": "<p>A list of hunks that contain the differences between files or lines causing the conflict.</p>"
        }
      },
      "documentation": "<p>Information about conflicts in a merge operation.</p>"
    },
    "ConflictDetailLevelTypeEnum": {
      "type": "string",
      "enum": [
        "FILE_LEVEL",
        "LINE_LEVEL"
      ]
    },
    "ConflictMetadata": {
      "type": "structure",
      "members": {
        "filePath": {
          "shape": "Path",
          "documentation": "<p>The path of the file that contains conflicts.</p>"
        },
        "fileSizes": {
          "shape": "FileSizes",
          "documentation": "<p>The file sizes of the file in the source, destination, and base of the merge.</p>"
        },
        "fileModes": {
          "shape": "FileModes",
          "documentation": "<p>The file modes of the file in the source, destination, and base of the merge.</p>"
        },
        "objectTypes": {
          "shape": "ObjectTypes",
          "documentation": "<p>Information about any object type conflicts in a merge operation.</p>"
        },
        "numberOfConflicts": {
          "shape": "NumberOfConflicts",
          "documentation": "<p>The number of conflicts, including both hunk conflicts and metadata conflicts.</p>"
        },
        "isBinaryFile": {
          "shape": "IsBinaryFile",
          "documentation": "<p>A boolean value (true or false) indicating whether the file is binary or textual in the source, destination, and base of the merge.</p>"
        },
        "contentConflict": {
          "shape": "IsContentConflict",
          "documentation": "<p>A boolean value indicating whether there are conflicts in the content of a file.</p>"
        },
        "fileModeConflict": {
          "shape": "IsFileModeConflict",
          "documentation": "<p>A boolean value indicating whether there are conflicts in the file mode of a file.</p>"
        },
        "objectTypeConflict": {
          "shape": "IsObjectTypeConflict",
          "documentation": "<p>A boolean value (true or false) indicating whether there are conflicts between the branches in the object type of a file, folder, or submodule.</p>"
        },
        "mergeOperations": {
          "shape": "MergeOperations",
          "documentation": "<p>Whether an add, modify, or delete operation caused the conflict between the source and destination of the merge.</p>"
        }
      },
      "documentation": "<p>Information about the metadata for a conflict in a merge operation.</p>"
    },
    "ConflictMetadataList": {
      "type": "list",
      "member": {
        "shape": "ConflictMetadata"
      }
    },
    "ConflictResolution": {
      "type": "structure",
      "members": {
        "replaceContents": {
          "shape": "ReplaceContentEntries",
          "documentation": "<p>Files to have content replaced as part of the merge conflict resolution.</p>"
        },
        "deleteFiles": {
          "shape": "DeleteFileEntries",
          "documentation": "<p>Files to be deleted as part of the merge conflict resolution.</p>"
        },
        "setFileModes": {
          "shape": "SetFileModeEntries",
          "documentation": "<p>File modes that are set as part of the merge conflict resolution.</p>"
        }
      },
      "documentation": "<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.</p>"
    },
    "ConflictResolutionStrategyTypeEnum": {
      "type": "string",
      "enum": [
        "NONE",
        "ACCEPT_SOURCE",
        "ACCEPT_DESTINATION",
        "AUTOMERGE"
      ]
    },
    "Conflicts": {
      "type": "list",
      "member": {
        "shape": "Conflict"
      }
    },
    "Content": {
      "type": "string"
    },
    "Count": {
      "type": "integer"
    },
    "CreateApprovalRuleTemplateInput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplateName",
        "approvalRuleTemplateContent"
      ],
      "members": {
        "approvalRuleTemplateName": {
          "shape": "ApprovalRuleTemplateName",
          "documentation": "<p>The name of the approval rule template. Provide descriptive names, because this name is applied to the approval rules created automatically in associated repositories.</p>"
        },
        "approvalRuleTemplateContent": {
          "shape": "ApprovalRuleTemplateContent",
          "documentation": "<p>The content of the approval rule that is created on pull requests in associated repositories. If you specify one or more destination references (branches), approval rules are created in an associated repository only if their destination references (branches) match those specified in the template.</p> <note> <p>When you create the content of the approval rule template, you can specify approvers in an approval pool in one of two ways:</p> <ul> <li> <p> <b>CodeCommitApprovers</b>: This option only requires an AWS account and a resource. It can be used for both IAM users and federated access users whose name matches the provided resource name. This is a very powerful option that offers a great deal of flexibility. For example, if you specify the AWS account <i>123456789012</i> and <i>Mary_Major</i>, all of the following are counted as approvals coming from that user:</p> <ul> <li> <p>An IAM user in the account (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p> </li> <li> <p>A federated user identified in IAM as Mary_Major (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p> </li> </ul> <p>This option does not recognize an active session of someone assuming the role of CodeCommitReview with a role session name of <i>Mary_Major</i> (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>) unless you include a wildcard (*Mary_Major).</p> </li> <li> <p> <b>Fully qualified ARN</b>: This option allows you to specify the fully qualified Amazon Resource Name (ARN) of the IAM user or role. </p> </li> </ul> <p>For more information about IAM ARNs, wildcards, and formats, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> </note>"
        },
        "approvalRuleTemplateDescription": {
          "shape": "ApprovalRuleTemplateDescription",
          "documentation": "<p>The description of the approval rule template. Consider providing a description that explains what this template does and when it might be appropriate to associate it with repositories.</p>"
        }
      }
    },
    "CreateApprovalRuleTemplateOutput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplate"
      ],
      "members": {
        "approvalRuleTemplate": {
          "shape": "ApprovalRuleTemplate",
          "documentation": "<p>The content and structure of the created approval rule template.</p>"
        }
      }
    },
    "CreateBranchInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "branchName",
        "commitId"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository in which you want to create the new branch.</p>"
        },
        "branchName": {
          "shape": "BranchName",
          "documentation": "<p>The name of the new branch to create.</p>"
        },
        "commitId": {
          "shape": "CommitId",
          "documentation": "<p>The ID of the commit to point the new branch to.</p>"
        }
      },
      "documentation": "<p>Represents the input of a create branch operation.</p>"
    },
    "CreateCommitInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "branchName"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where you create the commit.</p>"
        },
        "branchName": {
          "shape": "BranchName",
          "documentation": "<p>The name of the branch where you create the commit.</p>"
        },
        "parentCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The ID of the commit that is the parent of the commit you create. Not required if this is an empty repository.</p>"
        },
        "authorName": {
          "shape": "Name",
          "documentation": "<p>The name of the author who created the commit. This information is used as both the author and committer for the commit.</p>"
        },
        "email": {
          "shape": "Email",
          "documentation": "<p>The email address of the person who created the commit.</p>"
        },
        "commitMessage": {
          "shape": "Message",
          "documentation": "<p>The commit message you want to include in the commit. Commit messages are limited to 256 KB. If no message is specified, a default message is used.</p>"
        },
        "keepEmptyFolders": {
          "shape": "KeepEmptyFolders",
          "documentation": "<p>If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a ..gitkeep file is created for empty folders. The default is false.</p>"
        },
        "putFiles": {
          "shape": "PutFileEntries",
          "documentation": "<p>The files to add or update in this commit.</p>"
        },
        "deleteFiles": {
          "shape": "DeleteFileEntries",
          "documentation": "<p>The files to delete in this commit. These files still exist in earlier commits.</p>"
        },
        "setFileModes": {
          "shape": "SetFileModeEntries",
          "documentation": "<p>The file modes to update for files in this commit.</p>"
        }
      }
    },
    "CreateCommitOutput": {
      "type": "structure",
      "members": {
        "commitId": {
          "shape": "ObjectId",
          "documentation": "<p>The full commit ID of the commit that contains your committed file changes.</p>"
        },
        "treeId": {
          "shape": "ObjectId",
          "documentation": "<p>The full SHA-1 pointer of the tree information for the commit that contains the commited file changes.</p>"
        },
        "filesAdded": {
          "shape": "FilesMetadata",
          "documentation": "<p>The files added as part of the committed file changes.</p>"
        },
        "filesUpdated": {
          "shape": "FilesMetadata",
          "documentation": "<p>The files updated as part of the commited file changes.</p>"
        },
        "filesDeleted": {
          "shape": "FilesMetadata",
          "documentation": "<p>The files deleted as part of the committed file changes.</p>"
        }
      }
    },
    "CreatePullRequestApprovalRuleInput": {
      "type": "structure",
      "required": [
        "pullRequestId",
        "approvalRuleName",
        "approvalRuleContent"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request for which you want to create the approval rule.</p>"
        },
        "approvalRuleName": {
          "shape": "ApprovalRuleName",
          "documentation": "<p>The name for the approval rule.</p>"
        },
        "approvalRuleContent": {
          "shape": "ApprovalRuleContent",
          "documentation": "<p>The content of the approval rule, including the number of approvals needed and the structure of an approval pool defined for approvals, if any. For more information about approval pools, see the AWS CodeCommit User Guide.</p> <note> <p>When you create the content of the approval rule, you can specify approvers in an approval pool in one of two ways:</p> <ul> <li> <p> <b>CodeCommitApprovers</b>: This option only requires an AWS account and a resource. It can be used for both IAM users and federated access users whose name matches the provided resource name. This is a very powerful option that offers a great deal of flexibility. For example, if you specify the AWS account <i>123456789012</i> and <i>Mary_Major</i>, all of the following would be counted as approvals coming from that user:</p> <ul> <li> <p>An IAM user in the account (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p> </li> <li> <p>A federated user identified in IAM as Mary_Major (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p> </li> </ul> <p>This option does not recognize an active session of someone assuming the role of CodeCommitReview with a role session name of <i>Mary_Major</i> (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>) unless you include a wildcard (*Mary_Major).</p> </li> <li> <p> <b>Fully qualified ARN</b>: This option allows you to specify the fully qualified Amazon Resource Name (ARN) of the IAM user or role. </p> </li> </ul> <p>For more information about IAM ARNs, wildcards, and formats, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> </note>"
        }
      }
    },
    "CreatePullRequestApprovalRuleOutput": {
      "type": "structure",
      "required": [
        "approvalRule"
      ],
      "members": {
        "approvalRule": {
          "shape": "ApprovalRule",
          "documentation": "<p>Information about the created approval rule.</p>"
        }
      }
    },
    "CreatePullRequestInput": {
      "type": "structure",
      "required": [
        "title",
        "targets"
      ],
      "members": {
        "title": {
          "shape": "Title",
          "documentation": "<p>The title of the pull request. This title is used to identify the pull request to other users in the repository.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the pull request.</p>"
        },
        "targets": {
          "shape": "TargetList",
          "documentation": "<p>The targets for the pull request, including the source of the code to be reviewed (the source branch) and the destination where the creator of the pull request intends the code to be merged after the pull request is closed (the destination branch).</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.</p> <note> <p>The AWS SDKs prepopulate client request tokens. If you are using an AWS SDK, an idempotency token is created for you.</p> </note>",
          "idempotencyToken": true
        }
      }
    },
    "CreatePullRequestOutput": {
      "type": "structure",
      "required": [
        "pullRequest"
      ],
      "members": {
        "pullRequest": {
          "shape": "PullRequest",
          "documentation": "<p>Information about the newly created pull request.</p>"
        }
      }
    },
    "CreateRepositoryInput": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the new repository to be created.</p> <note> <p>The repository name must be unique across the calling AWS account. Repository names are limited to 100 alphanumeric, dash, and underscore characters, and cannot include certain characters. For more information about the limits on repository names, see <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html\">Limits</a> in the <i>AWS CodeCommit User Guide</i>. The suffix .git is prohibited.</p> </note>"
        },
        "repositoryDescription": {
          "shape": "RepositoryDescription",
          "documentation": "<p>A comment or description about the new repository.</p> <note> <p>The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a webpage can expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a webpage.</p> </note>"
        },
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p>One or more tag key-value pairs to use when tagging this repository.</p>"
        }
      },
      "documentation": "<p>Represents the input of a create repository operation.</p>"
    },
    "CreateRepositoryOutput": {
      "type": "structure",
      "members": {
        "repositoryMetadata": {
          "shape": "RepositoryMetadata",
          "documentation": "<p>Information about the newly created repository.</p>"
        }
      },
      "documentation": "<p>Represents the output of a create repository operation.</p>"
    },
    "CreateUnreferencedMergeCommitInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "sourceCommitSpecifier",
        "destinationCommitSpecifier",
        "mergeOption"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where you want to create the unreferenced merge commit.</p>"
        },
        "sourceCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "destinationCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "mergeOption": {
          "shape": "MergeOptionTypeEnum",
          "documentation": "<p>The merge option or strategy you want to use to merge the code.</p>"
        },
        "conflictDetailLevel": {
          "shape": "ConflictDetailLevelTypeEnum",
          "documentation": "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.</p>"
        },
        "conflictResolutionStrategy": {
          "shape": "ConflictResolutionStrategyTypeEnum",
          "documentation": "<p>Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.</p>"
        },
        "authorName": {
          "shape": "Name",
          "documentation": "<p>The name of the author who created the unreferenced commit. This information is used as both the author and committer for the commit.</p>"
        },
        "email": {
          "shape": "Email",
          "documentation": "<p>The email address for the person who created the unreferenced commit.</p>"
        },
        "commitMessage": {
          "shape": "Message",
          "documentation": "<p>The commit message for the unreferenced commit.</p>"
        },
        "keepEmptyFolders": {
          "shape": "KeepEmptyFolders",
          "documentation": "<p>If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If this is specified as true, a .gitkeep file is created for empty folders. The default is false.</p>"
        },
        "conflictResolution": {
          "shape": "ConflictResolution",
          "documentation": "<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.</p>"
        }
      }
    },
    "CreateUnreferencedMergeCommitOutput": {
      "type": "structure",
      "members": {
        "commitId": {
          "shape": "ObjectId",
          "documentation": "<p>The full commit ID of the commit that contains your merge results.</p>"
        },
        "treeId": {
          "shape": "ObjectId",
          "documentation": "<p>The full SHA-1 pointer of the tree information for the commit that contains the merge results.</p>"
        }
      }
    },
    "CreationDate": {
      "type": "timestamp"
    },
    "Date": {
      "type": "string"
    },
    "DeleteApprovalRuleTemplateInput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplateName"
      ],
      "members": {
        "approvalRuleTemplateName": {
          "shape": "ApprovalRuleTemplateName",
          "documentation": "<p>The name of the approval rule template to delete.</p>"
        }
      }
    },
    "DeleteApprovalRuleTemplateOutput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplateId"
      ],
      "members": {
        "approvalRuleTemplateId": {
          "shape": "ApprovalRuleTemplateId",
          "documentation": "<p>The system-generated ID of the deleted approval rule template. If the template has been previously deleted, the only response is a 200 OK.</p>"
        }
      }
    },
    "DeleteBranchInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "branchName"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the branch to be deleted.</p>"
        },
        "branchName": {
          "shape": "BranchName",
          "documentation": "<p>The name of the branch to delete.</p>"
        }
      },
      "documentation": "<p>Represents the input of a delete branch operation.</p>"
    },
    "DeleteBranchOutput": {
      "type": "structure",
      "members": {
        "deletedBranch": {
          "shape": "BranchInfo",
          "documentation": "<p>Information about the branch deleted by the operation, including the branch name and the commit ID that was the tip of the branch.</p>"
        }
      },
      "documentation": "<p>Represents the output of a delete branch operation.</p>"
    },
    "DeleteCommentContentInput": {
      "type": "structure",
      "required": [
        "commentId"
      ],
      "members": {
        "commentId": {
          "shape": "CommentId",
          "documentation": "<p>The unique, system-generated ID of the comment. To get this ID, use <a>GetCommentsForComparedCommit</a> or <a>GetCommentsForPullRequest</a>.</p>"
        }
      }
    },
    "DeleteCommentContentOutput": {
      "type": "structure",
      "members": {
        "comment": {
          "shape": "Comment",
          "documentation": "<p>Information about the comment you just deleted.</p>"
        }
      }
    },
    "DeleteFileEntries": {
      "type": "list",
      "member": {
        "shape": "DeleteFileEntry"
      }
    },
    "DeleteFileEntry": {
      "type": "structure",
      "required": [
        "filePath"
      ],
      "members": {
        "filePath": {
          "shape": "Path",
          "documentation": "<p>The full path of the file to be deleted, including the name of the file.</p>"
        }
      },
      "documentation": "<p>A file that is deleted as part of a commit.</p>"
    },
    "DeleteFileInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "branchName",
        "filePath",
        "parentCommitId"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the file to delete.</p>"
        },
        "branchName": {
          "shape": "BranchName",
          "documentation": "<p>The name of the branch where the commit that deletes the file is made.</p>"
        },
        "filePath": {
          "shape": "Path",
          "documentation": "<p>The fully qualified path to the file that to be deleted, including the full name and extension of that file. For example, /examples/file.md is a fully qualified path to a file named file.md in a folder named examples.</p>"
        },
        "parentCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The ID of the commit that is the tip of the branch where you want to create the commit that deletes the file. This must be the HEAD commit for the branch. The commit that deletes the file is created from this commit ID.</p>"
        },
        "keepEmptyFolders": {
          "shape": "KeepEmptyFolders",
          "documentation": "<p>If a file is the only object in the folder or directory, specifies whether to delete the folder or directory that contains the file. By default, empty folders are deleted. This includes empty folders that are part of the directory structure. For example, if the path to a file is dir1/dir2/dir3/dir4, and dir2 and dir3 are empty, deleting the last file in dir4 also deletes the empty folders dir4, dir3, and dir2.</p>"
        },
        "commitMessage": {
          "shape": "Message",
          "documentation": "<p>The commit message you want to include as part of deleting the file. Commit messages are limited to 256 KB. If no message is specified, a default message is used.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the author of the commit that deletes the file. If no name is specified, the user's ARN is used as the author name and committer name.</p>"
        },
        "email": {
          "shape": "Email",
          "documentation": "<p>The email address for the commit that deletes the file. If no email address is specified, the email address is left blank.</p>"
        }
      }
    },
    "DeleteFileOutput": {
      "type": "structure",
      "required": [
        "commitId",
        "blobId",
        "treeId",
        "filePath"
      ],
      "members": {
        "commitId": {
          "shape": "ObjectId",
          "documentation": "<p>The full commit ID of the commit that contains the change that deletes the file.</p>"
        },
        "blobId": {
          "shape": "ObjectId",
          "documentation": "<p>The blob ID removed from the tree as part of deleting the file.</p>"
        },
        "treeId": {
          "shape": "ObjectId",
          "documentation": "<p>The full SHA-1 pointer of the tree information for the commit that contains the delete file change.</p>"
        },
        "filePath": {
          "shape": "Path",
          "documentation": "<p>The fully qualified path to the file to be deleted, including the full name and extension of that file.</p>"
        }
      }
    },
    "DeletePullRequestApprovalRuleInput": {
      "type": "structure",
      "required": [
        "pullRequestId",
        "approvalRuleName"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request that contains the approval rule you want to delete.</p>"
        },
        "approvalRuleName": {
          "shape": "ApprovalRuleName",
          "documentation": "<p>The name of the approval rule you want to delete.</p>"
        }
      }
    },
    "DeletePullRequestApprovalRuleOutput": {
      "type": "structure",
      "required": [
        "approvalRuleId"
      ],
      "members": {
        "approvalRuleId": {
          "shape": "ApprovalRuleId",
          "documentation": "<p>The ID of the deleted approval rule. </p> <note> <p>If the approval rule was deleted in an earlier API call, the response is 200 OK without content.</p> </note>"
        }
      }
    },
    "DeleteRepositoryInput": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository to delete.</p>"
        }
      },
      "documentation": "<p>Represents the input of a delete repository operation.</p>"
    },
    "DeleteRepositoryOutput": {
      "type": "structure",
      "members": {
        "repositoryId": {
          "shape": "RepositoryId",
          "documentation": "<p>The ID of the repository that was deleted.</p>"
        }
      },
      "documentation": "<p>Represents the output of a delete repository operation.</p>"
    },
    "DescribeMergeConflictsInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "destinationCommitSpecifier",
        "sourceCommitSpecifier",
        "mergeOption",
        "filePath"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where you want to get information about a merge conflict.</p>"
        },
        "destinationCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "sourceCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "mergeOption": {
          "shape": "MergeOptionTypeEnum",
          "documentation": "<p>The merge option or strategy you want to use to merge the code.</p>"
        },
        "maxMergeHunks": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of merge hunks to include in the output.</p>"
        },
        "filePath": {
          "shape": "Path",
          "documentation": "<p>The path of the target files used to describe the conflicts. </p>"
        },
        "conflictDetailLevel": {
          "shape": "ConflictDetailLevelTypeEnum",
          "documentation": "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.</p>"
        },
        "conflictResolutionStrategy": {
          "shape": "ConflictResolutionStrategyTypeEnum",
          "documentation": "<p>Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results.</p>"
        }
      }
    },
    "DescribeMergeConflictsOutput": {
      "type": "structure",
      "required": [
        "conflictMetadata",
        "mergeHunks",
        "destinationCommitId",
        "sourceCommitId"
      ],
      "members": {
        "conflictMetadata": {
          "shape": "ConflictMetadata",
          "documentation": "<p>Contains metadata about the conflicts found in the merge.</p>"
        },
        "mergeHunks": {
          "shape": "MergeHunks",
          "documentation": "<p>A list of merge hunks of the differences between the files or lines.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
        },
        "destinationCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>"
        },
        "sourceCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>"
        },
        "baseCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the merge base.</p>"
        }
      }
    },
    "DescribePullRequestEventsInput": {
      "type": "structure",
      "required": [
        "pullRequestId"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
        },
        "pullRequestEventType": {
          "shape": "PullRequestEventType",
          "documentation": "<p>Optional. The pull request event type about which you want to return information.</p>"
        },
        "actorArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user whose actions resulted in the event. Examples include updating the pull request with more commits or changing the status of a pull request.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>A non-zero, non-negative integer used to limit the number of returned results. The default is 100 events, which is also the maximum number of events that can be returned in a result.</p>"
        }
      }
    },
    "DescribePullRequestEventsOutput": {
      "type": "structure",
      "required": [
        "pullRequestEvents"
      ],
      "members": {
        "pullRequestEvents": {
          "shape": "PullRequestEventList",
          "documentation": "<p>Information about the pull request events.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
        }
      }
    },
    "Description": {
      "type": "string",
      "max": 10240
    },
    "Difference": {
      "type": "structure",
      "members": {
        "beforeBlob": {
          "shape": "BlobMetadata",
          "documentation": "<p>Information about a <code>beforeBlob</code> data type object, including the ID, the file mode permission code, and the path.</p>"
        },
        "afterBlob": {
          "shape": "BlobMetadata",
          "documentation": "<p>Information about an <code>afterBlob</code> data type object, including the ID, the file mode permission code, and the path.</p>"
        },
        "changeType": {
          "shape": "ChangeTypeEnum",
          "documentation": "<p>Whether the change type of the difference is an addition (A), deletion (D), or modification (M).</p>"
        }
      },
      "documentation": "<p>Returns information about a set of differences for a commit specifier.</p>"
    },
    "DifferenceList": {
      "type": "list",
      "member": {
        "shape": "Difference"
      }
    },
    "DisassociateApprovalRuleTemplateFromRepositoryInput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplateName",
        "repositoryName"
      ],
      "members": {
        "approvalRuleTemplateName": {
          "shape": "ApprovalRuleTemplateName",
          "documentation": "<p>The name of the approval rule template to disassociate from a specified repository.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository you want to disassociate from the template.</p>"
        }
      }
    },
    "Email": {
      "type": "string"
    },
    "ErrorCode": {
      "type": "string"
    },
    "ErrorMessage": {
      "type": "string"
    },
    "EvaluatePullRequestApprovalRulesInput": {
      "type": "structure",
      "required": [
        "pullRequestId",
        "revisionId"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request you want to evaluate.</p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The system-generated ID for the pull request revision. To retrieve the most recent revision ID for a pull request, use <a>GetPullRequest</a>.</p>"
        }
      }
    },
    "EvaluatePullRequestApprovalRulesOutput": {
      "type": "structure",
      "required": [
        "evaluation"
      ],
      "members": {
        "evaluation": {
          "shape": "Evaluation",
          "documentation": "<p>The result of the evaluation, including the names of the rules whose conditions have been met (if any), the names of the rules whose conditions have not been met (if any), whether the pull request is in the approved state, and whether the pull request approval rule has been set aside by an override. </p>"
        }
      }
    },
    "Evaluation": {
      "type": "structure",
      "members": {
        "approved": {
          "shape": "Approved",
          "documentation": "<p>Whether the state of the pull request is approved.</p>"
        },
        "overridden": {
          "shape": "Overridden",
          "documentation": "<p>Whether the approval rule requirements for the pull request have been overridden and no longer need to be met.</p>"
        },
        "approvalRulesSatisfied": {
          "shape": "ApprovalRulesSatisfiedList",
          "documentation": "<p>The names of the approval rules that have had their conditions met.</p>"
        },
        "approvalRulesNotSatisfied": {
          "shape": "ApprovalRulesNotSatisfiedList",
          "documentation": "<p>The names of the approval rules that have not had their conditions met.</p>"
        }
      },
      "documentation": "<p>Returns information about the approval rules applied to a pull request and whether conditions have been met.</p>"
    },
    "EventDate": {
      "type": "timestamp"
    },
    "ExceptionName": {
      "type": "string"
    },
    "File": {
      "type": "structure",
      "members": {
        "blobId": {
          "shape": "ObjectId",
          "documentation": "<p>The blob ID that contains the file information.</p>"
        },
        "absolutePath": {
          "shape": "Path",
          "documentation": "<p>The fully qualified path to the file in the repository.</p>"
        },
        "relativePath": {
          "shape": "Path",
          "documentation": "<p>The relative path of the file from the folder where the query originated.</p>"
        },
        "fileMode": {
          "shape": "FileModeTypeEnum",
          "documentation": "<p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>"
        }
      },
      "documentation": "<p>Returns information about a file in a repository.</p>"
    },
    "FileContent": {
      "type": "blob",
      "max": 6291456
    },
    "FileList": {
      "type": "list",
      "member": {
        "shape": "File"
      }
    },
    "FileMetadata": {
      "type": "structure",
      "members": {
        "absolutePath": {
          "shape": "Path",
          "documentation": "<p>The full path to the file to be added or updated, including the name of the file.</p>"
        },
        "blobId": {
          "shape": "ObjectId",
          "documentation": "<p>The blob ID that contains the file information.</p>"
        },
        "fileMode": {
          "shape": "FileModeTypeEnum",
          "documentation": "<p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>"
        }
      },
      "documentation": "<p>A file to be added, updated, or deleted as part of a commit.</p>"
    },
    "FileModeTypeEnum": {
      "type": "string",
      "enum": [
        "EXECUTABLE",
        "NORMAL",
        "SYMLINK"
      ]
    },
    "FileModes": {
      "type": "structure",
      "members": {
        "source": {
          "shape": "FileModeTypeEnum",
          "documentation": "<p>The file mode of a file in the source of a merge or pull request.</p>"
        },
        "destination": {
          "shape": "FileModeTypeEnum",
          "documentation": "<p>The file mode of a file in the destination of a merge or pull request.</p>"
        },
        "base": {
          "shape": "FileModeTypeEnum",
          "documentation": "<p>The file mode of a file in the base of a merge or pull request.</p>"
        }
      },
      "documentation": "<p>Information about file modes in a merge or pull request.</p>"
    },
    "FilePaths": {
      "type": "list",
      "member": {
        "shape": "Path"
      }
    },
    "FileSize": {
      "type": "long"
    },
    "FileSizes": {
      "type": "structure",
      "members": {
        "source": {
          "shape": "FileSize",
          "documentation": "<p>The size of a file in the source of a merge or pull request.</p>"
        },
        "destination": {
          "shape": "FileSize",
          "documentation": "<p>The size of a file in the destination of a merge or pull request.</p>"
        },
        "base": {
          "shape": "FileSize",
          "documentation": "<p>The size of a file in the base of a merge or pull request.</p>"
        }
      },
      "documentation": "<p>Information about the size of files in a merge or pull request.</p>"
    },
    "FilesMetadata": {
      "type": "list",
      "member": {
        "shape": "FileMetadata"
      }
    },
    "Folder": {
      "type": "structure",
      "members": {
        "treeId": {
          "shape": "ObjectId",
          "documentation": "<p>The full SHA-1 pointer of the tree information for the commit that contains the folder.</p>"
        },
        "absolutePath": {
          "shape": "Path",
          "documentation": "<p>The fully qualified path of the folder in the repository.</p>"
        },
        "relativePath": {
          "shape": "Path",
          "documentation": "<p>The relative path of the specified folder from the folder where the query originated.</p>"
        }
      },
      "documentation": "<p>Returns information about a folder in a repository.</p>"
    },
    "FolderList": {
      "type": "list",
      "member": {
        "shape": "Folder"
      }
    },
    "GetApprovalRuleTemplateInput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplateName"
      ],
      "members": {
        "approvalRuleTemplateName": {
          "shape": "ApprovalRuleTemplateName",
          "documentation": "<p>The name of the approval rule template for which you want to get information.</p>"
        }
      }
    },
    "GetApprovalRuleTemplateOutput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplate"
      ],
      "members": {
        "approvalRuleTemplate": {
          "shape": "ApprovalRuleTemplate",
          "documentation": "<p>The content and structure of the approval rule template.</p>"
        }
      }
    },
    "GetBlobInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "blobId"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the blob.</p>"
        },
        "blobId": {
          "shape": "ObjectId",
          "documentation": "<p>The ID of the blob, which is its SHA-1 pointer.</p>"
        }
      },
      "documentation": "<p>Represents the input of a get blob operation.</p>"
    },
    "GetBlobOutput": {
      "type": "structure",
      "required": [
        "content"
      ],
      "members": {
        "content": {
          "shape": "blob",
          "documentation": "<p>The content of the blob, usually a file.</p>"
        }
      },
      "documentation": "<p>Represents the output of a get blob operation.</p>"
    },
    "GetBranchInput": {
      "type": "structure",
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the branch for which you want to retrieve information.</p>"
        },
        "branchName": {
          "shape": "BranchName",
          "documentation": "<p>The name of the branch for which you want to retrieve information.</p>"
        }
      },
      "documentation": "<p>Represents the input of a get branch operation.</p>"
    },
    "GetBranchOutput": {
      "type": "structure",
      "members": {
        "branch": {
          "shape": "BranchInfo",
          "documentation": "<p>The name of the branch.</p>"
        }
      },
      "documentation": "<p>Represents the output of a get branch operation.</p>"
    },
    "GetCommentInput": {
      "type": "structure",
      "required": [
        "commentId"
      ],
      "members": {
        "commentId": {
          "shape": "CommentId",
          "documentation": "<p>The unique, system-generated ID of the comment. To get this ID, use <a>GetCommentsForComparedCommit</a> or <a>GetCommentsForPullRequest</a>.</p>"
        }
      }
    },
    "GetCommentOutput": {
      "type": "structure",
      "members": {
        "comment": {
          "shape": "Comment",
          "documentation": "<p>The contents of the comment.</p>"
        }
      }
    },
    "GetCommentReactionsInput": {
      "type": "structure",
      "required": [
        "commentId"
      ],
      "members": {
        "commentId": {
          "shape": "CommentId",
          "documentation": "<p>The ID of the comment for which you want to get reactions information.</p>"
        },
        "reactionUserArn": {
          "shape": "Arn",
          "documentation": "<p>Optional. The Amazon Resource Name (ARN) of the user or identity for which you want to get reaction information.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>A non-zero, non-negative integer used to limit the number of returned results. The default is the same as the allowed maximum, 1,000.</p>"
        }
      }
    },
    "GetCommentReactionsOutput": {
      "type": "structure",
      "required": [
        "reactionsForComment"
      ],
      "members": {
        "reactionsForComment": {
          "shape": "ReactionsForCommentList",
          "documentation": "<p>An array of reactions to the specified comment.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
        }
      }
    },
    "GetCommentsForComparedCommitInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "afterCommitId"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where you want to compare commits.</p>"
        },
        "beforeCommitId": {
          "shape": "CommitId",
          "documentation": "<p>To establish the directionality of the comparison, the full commit ID of the before commit.</p>"
        },
        "afterCommitId": {
          "shape": "CommitId",
          "documentation": "<p>To establish the directionality of the comparison, the full commit ID of the after commit.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that when provided in a request, returns the next batch of the results. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments, but you can configure up to 500.</p>"
        }
      }
    },
    "GetCommentsForComparedCommitOutput": {
      "type": "structure",
      "members": {
        "commentsForComparedCommitData": {
          "shape": "CommentsForComparedCommitData",
          "documentation": "<p>A list of comment objects on the compared commit.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
        }
      }
    },
    "GetCommentsForPullRequestInput": {
      "type": "structure",
      "required": [
        "pullRequestId"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the pull request.</p>"
        },
        "beforeCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.</p>"
        },
        "afterCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The full commit ID of the commit in the source branch that was the tip of the branch at the time the comment was made.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments. You can return up to 500 comments with a single request.</p>"
        }
      }
    },
    "GetCommentsForPullRequestOutput": {
      "type": "structure",
      "members": {
        "commentsForPullRequestData": {
          "shape": "CommentsForPullRequestData",
          "documentation": "<p>An array of comment objects on the pull request.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
        }
      }
    },
    "GetCommitInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "commitId"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository to which the commit was made.</p>"
        },
        "commitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID. Commit IDs are the full SHA ID of the commit.</p>"
        }
      },
      "documentation": "<p>Represents the input of a get commit operation.</p>"
    },
    "GetCommitOutput": {
      "type": "structure",
      "required": [
        "commit"
      ],
      "members": {
        "commit": {
          "shape": "Commit",
          "documentation": "<p>A commit data type object that contains information about the specified commit.</p>"
        }
      },
      "documentation": "<p>Represents the output of a get commit operation.</p>"
    },
    "GetDifferencesInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "afterCommitSpecifier"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where you want to get differences.</p>"
        },
        "beforeCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, the full commit ID). Optional. If not specified, all changes before the <code>afterCommitSpecifier</code> value are shown. If you do not use <code>beforeCommitSpecifier</code> in your request, consider limiting the results with <code>maxResults</code>.</p>"
        },
        "afterCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit.</p>"
        },
        "beforePath": {
          "shape": "Path",
          "documentation": "<p>The file path in which to check for differences. Limits the results to this path. Can also be used to specify the previous name of a directory or folder. If <code>beforePath</code> and <code>afterPath</code> are not specified, differences are shown for all paths.</p>"
        },
        "afterPath": {
          "shape": "Path",
          "documentation": "<p>The file path in which to check differences. Limits the results to this path. Can also be used to specify the changed name of a directory or folder, if it has changed. If not specified, differences are shown for all paths.</p>"
        },
        "MaxResults": {
          "shape": "Limit",
          "documentation": "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results.</p>"
        }
      }
    },
    "GetDifferencesOutput": {
      "type": "structure",
      "members": {
        "differences": {
          "shape": "DifferenceList",
          "documentation": "<p>A data type object that contains information about the differences, including whether the difference is added, modified, or deleted (A, D, M).</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
        }
      }
    },
    "GetFileInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "filePath"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the file.</p>"
        },
        "commitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The fully quaified reference that identifies the commit that contains the file. For example, you can specify a full commit ID, a tag, a branch name, or a reference such as refs/heads/master. If none is provided, the head commit is used.</p>"
        },
        "filePath": {
          "shape": "Path",
          "documentation": "<p>The fully qualified path to the file, including the full name and extension of the file. For example, /examples/file.md is the fully qualified path to a file named file.md in a folder named examples.</p>"
        }
      }
    },
    "GetFileOutput": {
      "type": "structure",
      "required": [
        "commitId",
        "blobId",
        "filePath",
        "fileMode",
        "fileSize",
        "fileContent"
      ],
      "members": {
        "commitId": {
          "shape": "ObjectId",
          "documentation": "<p>The full commit ID of the commit that contains the content returned by GetFile.</p>"
        },
        "blobId": {
          "shape": "ObjectId",
          "documentation": "<p>The blob ID of the object that represents the file content.</p>"
        },
        "filePath": {
          "shape": "Path",
          "documentation": "<p>The fully qualified path to the specified file. Returns the name and extension of the file.</p>"
        },
        "fileMode": {
          "shape": "FileModeTypeEnum",
          "documentation": "<p>The extrapolated file mode permissions of the blob. Valid values include strings such as EXECUTABLE and not numeric values.</p> <note> <p>The file mode permissions returned by this API are not the standard file mode permission values, such as 100644, but rather extrapolated values. See the supported return values.</p> </note>"
        },
        "fileSize": {
          "shape": "ObjectSize",
          "documentation": "<p>The size of the contents of the file, in bytes.</p>"
        },
        "fileContent": {
          "shape": "FileContent",
          "documentation": "<p>The base-64 encoded binary data object that represents the content of the file.</p>"
        }
      }
    },
    "GetFolderInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "folderPath"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository.</p>"
        },
        "commitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>A fully qualified reference used to identify a commit that contains the version of the folder's content to return. A fully qualified reference can be a commit ID, branch name, tag, or reference such as HEAD. If no specifier is provided, the folder content is returned as it exists in the HEAD commit.</p>"
        },
        "folderPath": {
          "shape": "Path",
          "documentation": "<p>The fully qualified path to the folder whose contents are returned, including the folder name. For example, /examples is a fully-qualified path to a folder named examples that was created off of the root directory (/) of a repository. </p>"
        }
      }
    },
    "GetFolderOutput": {
      "type": "structure",
      "required": [
        "commitId",
        "folderPath"
      ],
      "members": {
        "commitId": {
          "shape": "ObjectId",
          "documentation": "<p>The full commit ID used as a reference for the returned version of the folder content.</p>"
        },
        "folderPath": {
          "shape": "Path",
          "documentation": "<p>The fully qualified path of the folder whose contents are returned.</p>"
        },
        "treeId": {
          "shape": "ObjectId",
          "documentation": "<p>The full SHA-1 pointer of the tree information for the commit that contains the folder.</p>"
        },
        "subFolders": {
          "shape": "FolderList",
          "documentation": "<p>The list of folders that exist under the specified folder, if any.</p>"
        },
        "files": {
          "shape": "FileList",
          "documentation": "<p>The list of files in the specified folder, if any.</p>"
        },
        "symbolicLinks": {
          "shape": "SymbolicLinkList",
          "documentation": "<p>The list of symbolic links to other files and folders in the specified folder, if any.</p>"
        },
        "subModules": {
          "shape": "SubModuleList",
          "documentation": "<p>The list of submodules in the specified folder, if any.</p>"
        }
      }
    },
    "GetMergeCommitInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "sourceCommitSpecifier",
        "destinationCommitSpecifier"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the merge commit about which you want to get information.</p>"
        },
        "sourceCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "destinationCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "conflictDetailLevel": {
          "shape": "ConflictDetailLevelTypeEnum",
          "documentation": "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.</p>"
        },
        "conflictResolutionStrategy": {
          "shape": "ConflictResolutionStrategyTypeEnum",
          "documentation": "<p>Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.</p>"
        }
      }
    },
    "GetMergeCommitOutput": {
      "type": "structure",
      "members": {
        "sourceCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>"
        },
        "destinationCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>"
        },
        "baseCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the merge base.</p>"
        },
        "mergedCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID for the merge commit created when the source branch was merged into the destination branch. If the fast-forward merge strategy was used, there is no merge commit.</p>"
        }
      }
    },
    "GetMergeConflictsInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "destinationCommitSpecifier",
        "sourceCommitSpecifier",
        "mergeOption"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where the pull request was created.</p>"
        },
        "destinationCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "sourceCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "mergeOption": {
          "shape": "MergeOptionTypeEnum",
          "documentation": "<p>The merge option or strategy you want to use to merge the code. </p>"
        },
        "conflictDetailLevel": {
          "shape": "ConflictDetailLevelTypeEnum",
          "documentation": "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.</p>"
        },
        "maxConflictFiles": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of files to include in the output.</p>"
        },
        "conflictResolutionStrategy": {
          "shape": "ConflictResolutionStrategyTypeEnum",
          "documentation": "<p>Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results.</p>"
        }
      }
    },
    "GetMergeConflictsOutput": {
      "type": "structure",
      "required": [
        "mergeable",
        "destinationCommitId",
        "sourceCommitId",
        "conflictMetadataList"
      ],
      "members": {
        "mergeable": {
          "shape": "IsMergeable",
          "documentation": "<p>A Boolean value that indicates whether the code is mergeable by the specified merge option.</p>"
        },
        "destinationCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>"
        },
        "sourceCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>"
        },
        "baseCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the merge base.</p>"
        },
        "conflictMetadataList": {
          "shape": "ConflictMetadataList",
          "documentation": "<p>A list of metadata for any conflicting files. If the specified merge strategy is FAST_FORWARD_MERGE, this list is always empty.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
        }
      }
    },
    "GetMergeOptionsInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "sourceCommitSpecifier",
        "destinationCommitSpecifier"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the commits about which you want to get merge options.</p>"
        },
        "sourceCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "destinationCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "conflictDetailLevel": {
          "shape": "ConflictDetailLevelTypeEnum",
          "documentation": "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.</p>"
        },
        "conflictResolutionStrategy": {
          "shape": "ConflictResolutionStrategyTypeEnum",
          "documentation": "<p>Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.</p>"
        }
      }
    },
    "GetMergeOptionsOutput": {
      "type": "structure",
      "required": [
        "mergeOptions",
        "sourceCommitId",
        "destinationCommitId",
        "baseCommitId"
      ],
      "members": {
        "mergeOptions": {
          "shape": "MergeOptions",
          "documentation": "<p>The merge option or strategy used to merge the code.</p>"
        },
        "sourceCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>"
        },
        "destinationCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>"
        },
        "baseCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the merge base.</p>"
        }
      }
    },
    "GetPullRequestApprovalStatesInput": {
      "type": "structure",
      "required": [
        "pullRequestId",
        "revisionId"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID for the pull request.</p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The system-generated ID for the pull request revision.</p>"
        }
      }
    },
    "GetPullRequestApprovalStatesOutput": {
      "type": "structure",
      "members": {
        "approvals": {
          "shape": "ApprovalList",
          "documentation": "<p>Information about users who have approved the pull request.</p>"
        }
      }
    },
    "GetPullRequestInput": {
      "type": "structure",
      "required": [
        "pullRequestId"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
        }
      }
    },
    "GetPullRequestOutput": {
      "type": "structure",
      "required": [
        "pullRequest"
      ],
      "members": {
        "pullRequest": {
          "shape": "PullRequest",
          "documentation": "<p>Information about the specified pull request.</p>"
        }
      }
    },
    "GetPullRequestOverrideStateInput": {
      "type": "structure",
      "required": [
        "pullRequestId",
        "revisionId"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The ID of the pull request for which you want to get information about whether approval rules have been set aside (overridden).</p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The system-generated ID of the revision for the pull request. To retrieve the most recent revision ID, use <a>GetPullRequest</a>.</p>"
        }
      }
    },
    "GetPullRequestOverrideStateOutput": {
      "type": "structure",
      "members": {
        "overridden": {
          "shape": "Overridden",
          "documentation": "<p>A Boolean value that indicates whether a pull request has had its rules set aside (TRUE) or whether all approval rules still apply (FALSE).</p>"
        },
        "overrider": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.</p>"
        }
      }
    },
    "GetRepositoryInput": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository to get information about.</p>"
        }
      },
      "documentation": "<p>Represents the input of a get repository operation.</p>"
    },
    "GetRepositoryOutput": {
      "type": "structure",
      "members": {
        "repositoryMetadata": {
          "shape": "RepositoryMetadata",
          "documentation": "<p>Information about the repository.</p>"
        }
      },
      "documentation": "<p>Represents the output of a get repository operation.</p>"
    },
    "GetRepositoryTriggersInput": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository for which the trigger is configured.</p>"
        }
      },
      "documentation": "<p>Represents the input of a get repository triggers operation.</p>"
    },
    "GetRepositoryTriggersOutput": {
      "type": "structure",
      "members": {
        "configurationId": {
          "shape": "RepositoryTriggersConfigurationId",
          "documentation": "<p>The system-generated unique ID for the trigger.</p>"
        },
        "triggers": {
          "shape": "RepositoryTriggersList",
          "documentation": "<p>The JSON block of configuration information for each trigger.</p>"
        }
      },
      "documentation": "<p>Represents the output of a get repository triggers operation.</p>"
    },
    "HunkContent": {
      "type": "string"
    },
    "IsBinaryFile": {
      "type": "structure",
      "members": {
        "source": {
          "shape": "CapitalBoolean",
          "documentation": "<p>The binary or non-binary status of file in the source of a merge or pull request.</p>"
        },
        "destination": {
          "shape": "CapitalBoolean",
          "documentation": "<p>The binary or non-binary status of a file in the destination of a merge or pull request.</p>"
        },
        "base": {
          "shape": "CapitalBoolean",
          "documentation": "<p>The binary or non-binary status of a file in the base of a merge or pull request.</p>"
        }
      },
      "documentation": "<p>Information about whether a file is binary or textual in a merge or pull request operation.</p>"
    },
    "IsCommentDeleted": {
      "type": "boolean"
    },
    "IsContentConflict": {
      "type": "boolean"
    },
    "IsFileModeConflict": {
      "type": "boolean"
    },
    "IsHunkConflict": {
      "type": "boolean"
    },
    "IsMergeable": {
      "type": "boolean"
    },
    "IsMerged": {
      "type": "boolean"
    },
    "IsMove": {
      "type": "boolean"
    },
    "IsObjectTypeConflict": {
      "type": "boolean"
    },
    "KeepEmptyFolders": {
      "type": "boolean"
    },
    "LastModifiedDate": {
      "type": "timestamp"
    },
    "Limit": {
      "type": "integer",
      "box": true
    },
    "LineNumber": {
      "type": "integer"
    },
    "ListApprovalRuleTemplatesInput": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"
        }
      }
    },
    "ListApprovalRuleTemplatesOutput": {
      "type": "structure",
      "members": {
        "approvalRuleTemplateNames": {
          "shape": "ApprovalRuleTemplateNameList",
          "documentation": "<p>The names of all the approval rule templates found in the AWS Region for your AWS account.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"
        }
      }
    },
    "ListAssociatedApprovalRuleTemplatesForRepositoryInput": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository for which you want to list all associated approval rule templates.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"
        }
      }
    },
    "ListAssociatedApprovalRuleTemplatesForRepositoryOutput": {
      "type": "structure",
      "members": {
        "approvalRuleTemplateNames": {
          "shape": "ApprovalRuleTemplateNameList",
          "documentation": "<p>The names of all approval rule templates associated with the repository.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"
        }
      }
    },
    "ListBranchesInput": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the branches.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that allows the operation to batch the results.</p>"
        }
      },
      "documentation": "<p>Represents the input of a list branches operation.</p>"
    },
    "ListBranchesOutput": {
      "type": "structure",
      "members": {
        "branches": {
          "shape": "BranchNameList",
          "documentation": "<p>The list of branch names.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that returns the batch of the results.</p>"
        }
      },
      "documentation": "<p>Represents the output of a list branches operation.</p>"
    },
    "ListPullRequestsInput": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository for which you want to list pull requests.</p>"
        },
        "authorArn": {
          "shape": "Arn",
          "documentation": "<p>Optional. The Amazon Resource Name (ARN) of the user who created the pull request. If used, this filters the results to pull requests created by that user.</p>"
        },
        "pullRequestStatus": {
          "shape": "PullRequestStatusEnum",
          "documentation": "<p>Optional. The status of the pull request. If used, this refines the results to the pull requests that match the specified status.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"
        }
      }
    },
    "ListPullRequestsOutput": {
      "type": "structure",
      "required": [
        "pullRequestIds"
      ],
      "members": {
        "pullRequestIds": {
          "shape": "PullRequestIdList",
          "documentation": "<p>The system-generated IDs of the pull requests.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"
        }
      }
    },
    "ListRepositoriesForApprovalRuleTemplateInput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplateName"
      ],
      "members": {
        "approvalRuleTemplateName": {
          "shape": "ApprovalRuleTemplateName",
          "documentation": "<p>The name of the approval rule template for which you want to list repositories that are associated with that template.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"
        }
      }
    },
    "ListRepositoriesForApprovalRuleTemplateOutput": {
      "type": "structure",
      "members": {
        "repositoryNames": {
          "shape": "RepositoryNameList",
          "documentation": "<p>A list of repository names that are associated with the specified approval rule template.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"
        }
      }
    },
    "ListRepositoriesInput": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that allows the operation to batch the results of the operation. Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit, another page of 1,000 records is retrieved.</p>"
        },
        "sortBy": {
          "shape": "SortByEnum",
          "documentation": "<p>The criteria used to sort the results of a list repositories operation.</p>"
        },
        "order": {
          "shape": "OrderEnum",
          "documentation": "<p>The order in which to sort the results of a list repositories operation.</p>"
        }
      },
      "documentation": "<p>Represents the input of a list repositories operation.</p>"
    },
    "ListRepositoriesOutput": {
      "type": "structure",
      "members": {
        "repositories": {
          "shape": "RepositoryNameIdPairList",
          "documentation": "<p>Lists the repositories called by the list repositories operation.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that allows the operation to batch the results of the operation. Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit, another page of 1,000 records is retrieved.</p>"
        }
      },
      "documentation": "<p>Represents the output of a list repositories operation.</p>"
    },
    "ListTagsForResourceInput": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource for which you want to get information about tags, if any.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results.</p>"
        }
      }
    },
    "ListTagsForResourceOutput": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p>A list of tag key and value pairs associated with the specified resource.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"
        }
      }
    },
    "Location": {
      "type": "structure",
      "members": {
        "filePath": {
          "shape": "Path",
          "documentation": "<p>The name of the file being compared, including its extension and subdirectory, if any.</p>"
        },
        "filePosition": {
          "shape": "Position",
          "documentation": "<p>The position of a change in a compared file, in line number format.</p>"
        },
        "relativeFileVersion": {
          "shape": "RelativeFileVersionEnum",
          "documentation": "<p>In a comparison of commits or a pull request, whether the change is in the before or after of that comparison.</p>"
        }
      },
      "documentation": "<p>Returns information about the location of a change or comment in the comparison between two commits or a pull request.</p>"
    },
    "MaxResults": {
      "type": "integer"
    },
    "MergeBranchesByFastForwardInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "sourceCommitSpecifier",
        "destinationCommitSpecifier"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where you want to merge two branches.</p>"
        },
        "sourceCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "destinationCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "targetBranch": {
          "shape": "BranchName",
          "documentation": "<p>The branch where the merge is applied.</p>"
        }
      }
    },
    "MergeBranchesByFastForwardOutput": {
      "type": "structure",
      "members": {
        "commitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the merge in the destination or target branch.</p>"
        },
        "treeId": {
          "shape": "ObjectId",
          "documentation": "<p>The tree ID of the merge in the destination or target branch.</p>"
        }
      }
    },
    "MergeBranchesBySquashInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "sourceCommitSpecifier",
        "destinationCommitSpecifier"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where you want to merge two branches.</p>"
        },
        "sourceCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "destinationCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "targetBranch": {
          "shape": "BranchName",
          "documentation": "<p>The branch where the merge is applied. </p>"
        },
        "conflictDetailLevel": {
          "shape": "ConflictDetailLevelTypeEnum",
          "documentation": "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.</p>"
        },
        "conflictResolutionStrategy": {
          "shape": "ConflictResolutionStrategyTypeEnum",
          "documentation": "<p>Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.</p>"
        },
        "authorName": {
          "shape": "Name",
          "documentation": "<p>The name of the author who created the commit. This information is used as both the author and committer for the commit.</p>"
        },
        "email": {
          "shape": "Email",
          "documentation": "<p>The email address of the person merging the branches. This information is used in the commit information for the merge.</p>"
        },
        "commitMessage": {
          "shape": "Message",
          "documentation": "<p>The commit message for the merge.</p>"
        },
        "keepEmptyFolders": {
          "shape": "KeepEmptyFolders",
          "documentation": "<p>If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If this is specified as true, a .gitkeep file is created for empty folders. The default is false.</p>"
        },
        "conflictResolution": {
          "shape": "ConflictResolution",
          "documentation": "<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.</p>"
        }
      }
    },
    "MergeBranchesBySquashOutput": {
      "type": "structure",
      "members": {
        "commitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the merge in the destination or target branch.</p>"
        },
        "treeId": {
          "shape": "ObjectId",
          "documentation": "<p>The tree ID of the merge in the destination or target branch.</p>"
        }
      }
    },
    "MergeBranchesByThreeWayInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "sourceCommitSpecifier",
        "destinationCommitSpecifier"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where you want to merge two branches.</p>"
        },
        "sourceCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "destinationCommitSpecifier": {
          "shape": "CommitName",
          "documentation": "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).</p>"
        },
        "targetBranch": {
          "shape": "BranchName",
          "documentation": "<p>The branch where the merge is applied. </p>"
        },
        "conflictDetailLevel": {
          "shape": "ConflictDetailLevelTypeEnum",
          "documentation": "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.</p>"
        },
        "conflictResolutionStrategy": {
          "shape": "ConflictResolutionStrategyTypeEnum",
          "documentation": "<p>Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.</p>"
        },
        "authorName": {
          "shape": "Name",
          "documentation": "<p>The name of the author who created the commit. This information is used as both the author and committer for the commit.</p>"
        },
        "email": {
          "shape": "Email",
          "documentation": "<p>The email address of the person merging the branches. This information is used in the commit information for the merge.</p>"
        },
        "commitMessage": {
          "shape": "Message",
          "documentation": "<p>The commit message to include in the commit information for the merge.</p>"
        },
        "keepEmptyFolders": {
          "shape": "KeepEmptyFolders",
          "documentation": "<p>If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a .gitkeep file is created for empty folders. The default is false.</p>"
        },
        "conflictResolution": {
          "shape": "ConflictResolution",
          "documentation": "<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.</p>"
        }
      }
    },
    "MergeBranchesByThreeWayOutput": {
      "type": "structure",
      "members": {
        "commitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID of the merge in the destination or target branch.</p>"
        },
        "treeId": {
          "shape": "ObjectId",
          "documentation": "<p>The tree ID of the merge in the destination or target branch.</p>"
        }
      }
    },
    "MergeHunk": {
      "type": "structure",
      "members": {
        "isConflict": {
          "shape": "IsHunkConflict",
          "documentation": "<p>A Boolean value indicating whether a combination of hunks contains a conflict. Conflicts occur when the same file or the same lines in a file were modified in both the source and destination of a merge or pull request. Valid values include true, false, and null. True when the hunk represents a conflict and one or more files contains a line conflict. File mode conflicts in a merge do not set this to true.</p>"
        },
        "source": {
          "shape": "MergeHunkDetail",
          "documentation": "<p>Information about the merge hunk in the source of a merge or pull request.</p>"
        },
        "destination": {
          "shape": "MergeHunkDetail",
          "documentation": "<p>Information about the merge hunk in the destination of a merge or pull request.</p>"
        },
        "base": {
          "shape": "MergeHunkDetail",
          "documentation": "<p>Information about the merge hunk in the base of a merge or pull request.</p>"
        }
      },
      "documentation": "<p>Information about merge hunks in a merge or pull request operation.</p>"
    },
    "MergeHunkDetail": {
      "type": "structure",
      "members": {
        "startLine": {
          "shape": "LineNumber",
          "documentation": "<p>The start position of the hunk in the merge result.</p>"
        },
        "endLine": {
          "shape": "LineNumber",
          "documentation": "<p>The end position of the hunk in the merge result.</p>"
        },
        "hunkContent": {
          "shape": "HunkContent",
          "documentation": "<p>The base-64 encoded content of the hunk merged region that might contain a conflict.</p>"
        }
      },
      "documentation": "<p>Information about the details of a merge hunk that contains a conflict in a merge or pull request operation.</p>"
    },
    "MergeHunks": {
      "type": "list",
      "member": {
        "shape": "MergeHunk"
      }
    },
    "MergeMetadata": {
      "type": "structure",
      "members": {
        "isMerged": {
          "shape": "IsMerged",
          "documentation": "<p>A Boolean value indicating whether the merge has been made.</p>"
        },
        "mergedBy": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user who merged the branches.</p>"
        },
        "mergeCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The commit ID for the merge commit, if any.</p>"
        },
        "mergeOption": {
          "shape": "MergeOptionTypeEnum",
          "documentation": "<p>The merge strategy used in the merge.</p>"
        }
      },
      "documentation": "<p>Returns information about a merge or potential merge between a source reference and a destination reference in a pull request.</p>"
    },
    "MergeOperations": {
      "type": "structure",
      "members": {
        "source": {
          "shape": "ChangeTypeEnum",
          "documentation": "<p>The operation (add, modify, or delete) on a file in the source of a merge or pull request.</p>"
        },
        "destination": {
          "shape": "ChangeTypeEnum",
          "documentation": "<p>The operation on a file in the destination of a merge or pull request.</p>"
        }
      },
      "documentation": "<p>Information about the file operation conflicts in a merge operation.</p>"
    },
    "MergeOptionTypeEnum": {
      "type": "string",
      "enum": [
        "FAST_FORWARD_MERGE",
        "SQUASH_MERGE",
        "THREE_WAY_MERGE"
      ]
    },
    "MergeOptions": {
      "type": "list",
      "member": {
        "shape": "MergeOptionTypeEnum"
      }
    },
    "MergePullRequestByFastForwardInput": {
      "type": "structure",
      "required": [
        "pullRequestId",
        "repositoryName"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where the pull request was created.</p>"
        },
        "sourceCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>"
        }
      }
    },
    "MergePullRequestByFastForwardOutput": {
      "type": "structure",
      "members": {
        "pullRequest": {
          "shape": "PullRequest",
          "documentation": "<p>Information about the specified pull request, including the merge.</p>"
        }
      }
    },
    "MergePullRequestBySquashInput": {
      "type": "structure",
      "required": [
        "pullRequestId",
        "repositoryName"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where the pull request was created.</p>"
        },
        "sourceCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>"
        },
        "conflictDetailLevel": {
          "shape": "ConflictDetailLevelTypeEnum",
          "documentation": "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.</p>"
        },
        "conflictResolutionStrategy": {
          "shape": "ConflictResolutionStrategyTypeEnum",
          "documentation": "<p>Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.</p>"
        },
        "commitMessage": {
          "shape": "Message",
          "documentation": "<p>The commit message to include in the commit information for the merge.</p>"
        },
        "authorName": {
          "shape": "Name",
          "documentation": "<p>The name of the author who created the commit. This information is used as both the author and committer for the commit.</p>"
        },
        "email": {
          "shape": "Email",
          "documentation": "<p>The email address of the person merging the branches. This information is used in the commit information for the merge.</p>"
        },
        "keepEmptyFolders": {
          "shape": "KeepEmptyFolders",
          "documentation": "<p>If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a .gitkeep file is created for empty folders. The default is false.</p>"
        },
        "conflictResolution": {
          "shape": "ConflictResolution",
          "documentation": "<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.</p>"
        }
      }
    },
    "MergePullRequestBySquashOutput": {
      "type": "structure",
      "members": {
        "pullRequest": {
          "shape": "PullRequest"
        }
      }
    },
    "MergePullRequestByThreeWayInput": {
      "type": "structure",
      "required": [
        "pullRequestId",
        "repositoryName"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where the pull request was created.</p>"
        },
        "sourceCommitId": {
          "shape": "ObjectId",
          "documentation": "<p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>"
        },
        "conflictDetailLevel": {
          "shape": "ConflictDetailLevelTypeEnum",
          "documentation": "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.</p>"
        },
        "conflictResolutionStrategy": {
          "shape": "ConflictResolutionStrategyTypeEnum",
          "documentation": "<p>Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.</p>"
        },
        "commitMessage": {
          "shape": "Message",
          "documentation": "<p>The commit message to include in the commit information for the merge.</p>"
        },
        "authorName": {
          "shape": "Name",
          "documentation": "<p>The name of the author who created the commit. This information is used as both the author and committer for the commit.</p>"
        },
        "email": {
          "shape": "Email",
          "documentation": "<p>The email address of the person merging the branches. This information is used in the commit information for the merge.</p>"
        },
        "keepEmptyFolders": {
          "shape": "KeepEmptyFolders",
          "documentation": "<p>If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a .gitkeep file is created for empty folders. The default is false.</p>"
        },
        "conflictResolution": {
          "shape": "ConflictResolution",
          "documentation": "<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.</p>"
        }
      }
    },
    "MergePullRequestByThreeWayOutput": {
      "type": "structure",
      "members": {
        "pullRequest": {
          "shape": "PullRequest"
        }
      }
    },
    "Message": {
      "type": "string"
    },
    "Mode": {
      "type": "string"
    },
    "Name": {
      "type": "string"
    },
    "NextToken": {
      "type": "string"
    },
    "NumberOfConflicts": {
      "type": "integer"
    },
    "ObjectId": {
      "type": "string"
    },
    "ObjectSize": {
      "type": "long"
    },
    "ObjectTypeEnum": {
      "type": "string",
      "enum": [
        "FILE",
        "DIRECTORY",
        "GIT_LINK",
        "SYMBOLIC_LINK"
      ]
    },
    "ObjectTypes": {
      "type": "structure",
      "members": {
        "source": {
          "shape": "ObjectTypeEnum",
          "documentation": "<p>The type of the object in the source branch.</p>"
        },
        "destination": {
          "shape": "ObjectTypeEnum",
          "documentation": "<p>The type of the object in the destination branch.</p>"
        },
        "base": {
          "shape": "ObjectTypeEnum",
          "documentation": "<p>The type of the object in the base commit of the merge.</p>"
        }
      },
      "documentation": "<p>Information about the type of an object in a merge operation.</p>"
    },
    "OrderEnum": {
      "type": "string",
      "enum": [
        "ascending",
        "descending"
      ]
    },
    "OriginApprovalRuleTemplate": {
      "type": "structure",
      "members": {
        "approvalRuleTemplateId": {
          "shape": "ApprovalRuleTemplateId",
          "documentation": "<p>The ID of the template that created the approval rule.</p>"
        },
        "approvalRuleTemplateName": {
          "shape": "ApprovalRuleTemplateName",
          "documentation": "<p>The name of the template that created the approval rule.</p>"
        }
      },
      "documentation": "<p>Returns information about the template that created the approval rule for a pull request.</p>"
    },
    "Overridden": {
      "type": "boolean"
    },
    "OverridePullRequestApprovalRulesInput": {
      "type": "structure",
      "required": [
        "pullRequestId",
        "revisionId",
        "overrideStatus"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request for which you want to override all approval rule requirements. To get this information, use <a>GetPullRequest</a>.</p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The system-generated ID of the most recent revision of the pull request. You cannot override approval rules for anything but the most recent revision of a pull request. To get the revision ID, use GetPullRequest.</p>"
        },
        "overrideStatus": {
          "shape": "OverrideStatus",
          "documentation": "<p>Whether you want to set aside approval rule requirements for the pull request (OVERRIDE) or revoke a previous override and apply approval rule requirements (REVOKE). REVOKE status is not stored.</p>"
        }
      }
    },
    "OverrideStatus": {
      "type": "string",
      "enum": [
        "OVERRIDE",
        "REVOKE"
      ]
    },
    "ParentList": {
      "type": "list",
      "member": {
        "shape": "ObjectId"
      }
    },
    "Path": {
      "type": "string"
    },
    "Position": {
      "type": "long"
    },
    "PostCommentForComparedCommitInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "afterCommitId",
        "content"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where you want to post a comment on the comparison between commits.</p>"
        },
        "beforeCommitId": {
          "shape": "CommitId",
          "documentation": "<p>To establish the directionality of the comparison, the full commit ID of the before commit. Required for commenting on any commit unless that commit is the initial commit.</p>"
        },
        "afterCommitId": {
          "shape": "CommitId",
          "documentation": "<p>To establish the directionality of the comparison, the full commit ID of the after commit.</p>"
        },
        "location": {
          "shape": "Location",
          "documentation": "<p>The location of the comparison where you want to comment.</p>"
        },
        "content": {
          "shape": "Content",
          "documentation": "<p>The content of the comment you want to make.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.</p>",
          "idempotencyToken": true
        }
      }
    },
    "PostCommentForComparedCommitOutput": {
      "type": "structure",
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where you posted a comment on the comparison between commits.</p>"
        },
        "beforeCommitId": {
          "shape": "CommitId",
          "documentation": "<p>In the directionality you established, the full commit ID of the before commit.</p>"
        },
        "afterCommitId": {
          "shape": "CommitId",
          "documentation": "<p>In the directionality you established, the full commit ID of the after commit.</p>"
        },
        "beforeBlobId": {
          "shape": "ObjectId",
          "documentation": "<p>In the directionality you established, the blob ID of the before blob.</p>"
        },
        "afterBlobId": {
          "shape": "ObjectId",
          "documentation": "<p>In the directionality you established, the blob ID of the after blob.</p>"
        },
        "location": {
          "shape": "Location",
          "documentation": "<p>The location of the comment in the comparison between the two commits.</p>"
        },
        "comment": {
          "shape": "Comment",
          "documentation": "<p>The content of the comment you posted.</p>"
        }
      }
    },
    "PostCommentForPullRequestInput": {
      "type": "structure",
      "required": [
        "pullRequestId",
        "repositoryName",
        "beforeCommitId",
        "afterCommitId",
        "content"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where you want to post a comment on a pull request.</p>"
        },
        "beforeCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.</p>"
        },
        "afterCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The full commit ID of the commit in the source branch that is the current tip of the branch for the pull request when you post the comment.</p>"
        },
        "location": {
          "shape": "Location",
          "documentation": "<p>The location of the change where you want to post your comment. If no location is provided, the comment is posted as a general comment on the pull request difference between the before commit ID and the after commit ID.</p>"
        },
        "content": {
          "shape": "Content",
          "documentation": "<p>The content of your comment on the change.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.</p>",
          "idempotencyToken": true
        }
      }
    },
    "PostCommentForPullRequestOutput": {
      "type": "structure",
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where you posted a comment on a pull request.</p>"
        },
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request. </p>"
        },
        "beforeCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The full commit ID of the commit in the source branch used to create the pull request, or in the case of an updated pull request, the full commit ID of the commit used to update the pull request.</p>"
        },
        "afterCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The full commit ID of the commit in the destination branch where the pull request is merged.</p>"
        },
        "beforeBlobId": {
          "shape": "ObjectId",
          "documentation": "<p>In the directionality of the pull request, the blob ID of the before blob.</p>"
        },
        "afterBlobId": {
          "shape": "ObjectId",
          "documentation": "<p>In the directionality of the pull request, the blob ID of the after blob.</p>"
        },
        "location": {
          "shape": "Location",
          "documentation": "<p>The location of the change where you posted your comment.</p>"
        },
        "comment": {
          "shape": "Comment",
          "documentation": "<p>The content of the comment you posted.</p>"
        }
      }
    },
    "PostCommentReplyInput": {
      "type": "structure",
      "required": [
        "inReplyTo",
        "content"
      ],
      "members": {
        "inReplyTo": {
          "shape": "CommentId",
          "documentation": "<p>The system-generated ID of the comment to which you want to reply. To get this ID, use <a>GetCommentsForComparedCommit</a> or <a>GetCommentsForPullRequest</a>.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.</p>",
          "idempotencyToken": true
        },
        "content": {
          "shape": "Content",
          "documentation": "<p>The contents of your reply to a comment.</p>"
        }
      }
    },
    "PostCommentReplyOutput": {
      "type": "structure",
      "members": {
        "comment": {
          "shape": "Comment",
          "documentation": "<p>Information about the reply to a comment.</p>"
        }
      }
    },
    "PullRequest": {
      "type": "structure",
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request. </p>"
        },
        "title": {
          "shape": "Title",
          "documentation": "<p>The user-defined title of the pull request. This title is displayed in the list of pull requests to other repository users.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The user-defined description of the pull request. This description can be used to clarify what should be reviewed and other details of the request.</p>"
        },
        "lastActivityDate": {
          "shape": "LastModifiedDate",
          "documentation": "<p>The day and time of the last user or system activity on the pull request, in timestamp format.</p>"
        },
        "creationDate": {
          "shape": "CreationDate",
          "documentation": "<p>The date and time the pull request was originally created, in timestamp format.</p>"
        },
        "pullRequestStatus": {
          "shape": "PullRequestStatusEnum",
          "documentation": "<p>The status of the pull request. Pull request status can only change from <code>OPEN</code> to <code>CLOSED</code>.</p>"
        },
        "authorArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user who created the pull request.</p>"
        },
        "pullRequestTargets": {
          "shape": "PullRequestTargetList",
          "documentation": "<p>The targets of the pull request, including the source branch and destination branch for the pull request.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.</p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The system-generated revision ID for the pull request.</p>"
        },
        "approvalRules": {
          "shape": "ApprovalRulesList",
          "documentation": "<p>The approval rules applied to the pull request.</p>"
        }
      },
      "documentation": "<p>Returns information about a pull request.</p>"
    },
    "PullRequestCreatedEventMetadata": {
      "type": "structure",
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where the pull request was created.</p>"
        },
        "sourceCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The commit ID on the source branch used when the pull request was created.</p>"
        },
        "destinationCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The commit ID of the tip of the branch specified as the destination branch when the pull request was created.</p>"
        },
        "mergeBase": {
          "shape": "CommitId",
          "documentation": "<p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>"
        }
      },
      "documentation": "<p>Metadata about the pull request that is used when comparing the pull request source with its destination.</p>"
    },
    "PullRequestEvent": {
      "type": "structure",
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request.</p>"
        },
        "eventDate": {
          "shape": "EventDate",
          "documentation": "<p>The day and time of the pull request event, in timestamp format.</p>"
        },
        "pullRequestEventType": {
          "shape": "PullRequestEventType",
          "documentation": "<p>The type of the pull request event (for example, a status change event (PULL_REQUEST_STATUS_CHANGED) or update event (PULL_REQUEST_SOURCE_REFERENCE_UPDATED)).</p>"
        },
        "actorArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user whose actions resulted in the event. Examples include updating the pull request with more commits or changing the status of a pull request.</p>"
        },
        "pullRequestCreatedEventMetadata": {
          "shape": "PullRequestCreatedEventMetadata",
          "documentation": "<p>Information about the source and destination branches for the pull request.</p>"
        },
        "pullRequestStatusChangedEventMetadata": {
          "shape": "PullRequestStatusChangedEventMetadata",
          "documentation": "<p>Information about the change in status for the pull request event.</p>"
        },
        "pullRequestSourceReferenceUpdatedEventMetadata": {
          "shape": "PullRequestSourceReferenceUpdatedEventMetadata",
          "documentation": "<p>Information about the updated source branch for the pull request event. </p>"
        },
        "pullRequestMergedStateChangedEventMetadata": {
          "shape": "PullRequestMergedStateChangedEventMetadata",
          "documentation": "<p>Information about the change in mergability state for the pull request event.</p>"
        },
        "approvalRuleEventMetadata": {
          "shape": "ApprovalRuleEventMetadata",
          "documentation": "<p>Information about a pull request event.</p>"
        },
        "approvalStateChangedEventMetadata": {
          "shape": "ApprovalStateChangedEventMetadata",
          "documentation": "<p>Information about an approval state change for a pull request.</p>"
        },
        "approvalRuleOverriddenEventMetadata": {
          "shape": "ApprovalRuleOverriddenEventMetadata",
          "documentation": "<p>Information about an approval rule override event for a pull request.</p>"
        }
      },
      "documentation": "<p>Returns information about a pull request event.</p>"
    },
    "PullRequestEventList": {
      "type": "list",
      "member": {
        "shape": "PullRequestEvent"
      }
    },
    "PullRequestEventType": {
      "type": "string",
      "enum": [
        "PULL_REQUEST_CREATED",
        "PULL_REQUEST_STATUS_CHANGED",
        "PULL_REQUEST_SOURCE_REFERENCE_UPDATED",
        "PULL_REQUEST_MERGE_STATE_CHANGED",
        "PULL_REQUEST_APPROVAL_RULE_CREATED",
        "PULL_REQUEST_APPROVAL_RULE_UPDATED",
        "PULL_REQUEST_APPROVAL_RULE_DELETED",
        "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN",
        "PULL_REQUEST_APPROVAL_STATE_CHANGED"
      ]
    },
    "PullRequestId": {
      "type": "string"
    },
    "PullRequestIdList": {
      "type": "list",
      "member": {
        "shape": "PullRequestId"
      }
    },
    "PullRequestMergedStateChangedEventMetadata": {
      "type": "structure",
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where the pull request was created.</p>"
        },
        "destinationReference": {
          "shape": "ReferenceName",
          "documentation": "<p>The name of the branch that the pull request is merged into.</p>"
        },
        "mergeMetadata": {
          "shape": "MergeMetadata",
          "documentation": "<p>Information about the merge state change event.</p>"
        }
      },
      "documentation": "<p>Returns information about the change in the merge state for a pull request event. </p>"
    },
    "PullRequestSourceReferenceUpdatedEventMetadata": {
      "type": "structure",
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where the pull request was updated.</p>"
        },
        "beforeCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was updated.</p>"
        },
        "afterCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The full commit ID of the commit in the source branch that was the tip of the branch at the time the pull request was updated.</p>"
        },
        "mergeBase": {
          "shape": "CommitId",
          "documentation": "<p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>"
        }
      },
      "documentation": "<p>Information about an update to the source branch of a pull request.</p>"
    },
    "PullRequestStatusChangedEventMetadata": {
      "type": "structure",
      "members": {
        "pullRequestStatus": {
          "shape": "PullRequestStatusEnum",
          "documentation": "<p>The changed status of the pull request.</p>"
        }
      },
      "documentation": "<p>Information about a change to the status of a pull request.</p>"
    },
    "PullRequestStatusEnum": {
      "type": "string",
      "enum": [
        "OPEN",
        "CLOSED"
      ]
    },
    "PullRequestTarget": {
      "type": "structure",
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the pull request source and destination branches.</p>"
        },
        "sourceReference": {
          "shape": "ReferenceName",
          "documentation": "<p>The branch of the repository that contains the changes for the pull request. Also known as the source branch.</p>"
        },
        "destinationReference": {
          "shape": "ReferenceName",
          "documentation": "<p>The branch of the repository where the pull request changes are merged. Also known as the destination branch. </p>"
        },
        "destinationCommit": {
          "shape": "CommitId",
          "documentation": "<p>The full commit ID that is the tip of the destination branch. This is the commit where the pull request was or will be merged.</p>"
        },
        "sourceCommit": {
          "shape": "CommitId",
          "documentation": "<p>The full commit ID of the tip of the source branch used to create the pull request. If the pull request branch is updated by a push while the pull request is open, the commit ID changes to reflect the new tip of the branch.</p>"
        },
        "mergeBase": {
          "shape": "CommitId",
          "documentation": "<p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>"
        },
        "mergeMetadata": {
          "shape": "MergeMetadata",
          "documentation": "<p>Returns metadata about the state of the merge, including whether the merge has been made.</p>"
        }
      },
      "documentation": "<p>Returns information about a pull request target.</p>"
    },
    "PullRequestTargetList": {
      "type": "list",
      "member": {
        "shape": "PullRequestTarget"
      }
    },
    "PutCommentReactionInput": {
      "type": "structure",
      "required": [
        "commentId",
        "reactionValue"
      ],
      "members": {
        "commentId": {
          "shape": "CommentId",
          "documentation": "<p>The ID of the comment to which you want to add or update a reaction.</p>"
        },
        "reactionValue": {
          "shape": "ReactionValue",
          "documentation": "<p>The emoji reaction you want to add or update. To remove a reaction, provide a value of blank or null. You can also provide the value of none. For information about emoji reaction values supported in AWS CodeCommit, see the <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/how-to-commit-comment.html#emoji-reaction-table\">AWS CodeCommit User Guide</a>.</p>"
        }
      }
    },
    "PutFileEntries": {
      "type": "list",
      "member": {
        "shape": "PutFileEntry"
      }
    },
    "PutFileEntry": {
      "type": "structure",
      "required": [
        "filePath"
      ],
      "members": {
        "filePath": {
          "shape": "Path",
          "documentation": "<p>The full path to the file in the repository, including the name of the file.</p>"
        },
        "fileMode": {
          "shape": "FileModeTypeEnum",
          "documentation": "<p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>"
        },
        "fileContent": {
          "shape": "FileContent",
          "documentation": "<p>The content of the file, if a source file is not specified.</p>"
        },
        "sourceFile": {
          "shape": "SourceFileSpecifier",
          "documentation": "<p>The name and full path of the file that contains the changes you want to make as part of the commit, if you are not providing the file content directly.</p>"
        }
      },
      "documentation": "<p>Information about a file added or updated as part of a commit.</p>"
    },
    "PutFileInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "branchName",
        "fileContent",
        "filePath"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where you want to add or update the file.</p>"
        },
        "branchName": {
          "shape": "BranchName",
          "documentation": "<p>The name of the branch where you want to add or update the file. If this is an empty repository, this branch is created.</p>"
        },
        "fileContent": {
          "shape": "FileContent",
          "documentation": "<p>The content of the file, in binary object format. </p>"
        },
        "filePath": {
          "shape": "Path",
          "documentation": "<p>The name of the file you want to add or update, including the relative path to the file in the repository.</p> <note> <p>If the path does not currently exist in the repository, the path is created as part of adding the file.</p> </note>"
        },
        "fileMode": {
          "shape": "FileModeTypeEnum",
          "documentation": "<p>The file mode permissions of the blob. Valid file mode permissions are listed here.</p>"
        },
        "parentCommitId": {
          "shape": "CommitId",
          "documentation": "<p>The full commit ID of the head commit in the branch where you want to add or update the file. If this is an empty repository, no commit ID is required. If this is not an empty repository, a commit ID is required. </p> <p>The commit ID must match the ID of the head commit at the time of the operation. Otherwise, an error occurs, and the file is not added or updated.</p>"
        },
        "commitMessage": {
          "shape": "Message",
          "documentation": "<p>A message about why this file was added or updated. Although it is optional, a message makes the commit history for your repository more useful.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the person adding or updating the file. Although it is optional, a name makes the commit history for your repository more useful.</p>"
        },
        "email": {
          "shape": "Email",
          "documentation": "<p>An email address for the person adding or updating the file.</p>"
        }
      }
    },
    "PutFileOutput": {
      "type": "structure",
      "required": [
        "commitId",
        "blobId",
        "treeId"
      ],
      "members": {
        "commitId": {
          "shape": "ObjectId",
          "documentation": "<p>The full SHA ID of the commit that contains this file change.</p>"
        },
        "blobId": {
          "shape": "ObjectId",
          "documentation": "<p>The ID of the blob, which is its SHA-1 pointer.</p>"
        },
        "treeId": {
          "shape": "ObjectId",
          "documentation": "<p>The full SHA-1 pointer of the tree information for the commit that contains this file change.</p>"
        }
      }
    },
    "PutRepositoryTriggersInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "triggers"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository where you want to create or update the trigger.</p>"
        },
        "triggers": {
          "shape": "RepositoryTriggersList",
          "documentation": "<p>The JSON block of configuration information for each trigger.</p>"
        }
      },
      "documentation": "<p>Represents the input of a put repository triggers operation.</p>"
    },
    "PutRepositoryTriggersOutput": {
      "type": "structure",
      "members": {
        "configurationId": {
          "shape": "RepositoryTriggersConfigurationId",
          "documentation": "<p>The system-generated unique ID for the create or update operation.</p>"
        }
      },
      "documentation": "<p>Represents the output of a put repository triggers operation.</p>"
    },
    "ReactionCountsMap": {
      "type": "map",
      "key": {
        "shape": "ReactionValue"
      },
      "value": {
        "shape": "Count"
      }
    },
    "ReactionEmoji": {
      "type": "string"
    },
    "ReactionForComment": {
      "type": "structure",
      "members": {
        "reaction": {
          "shape": "ReactionValueFormats",
          "documentation": "<p>The reaction for a specified comment.</p>"
        },
        "reactionUsers": {
          "shape": "ReactionUsersList",
          "documentation": "<p>The Amazon Resource Names (ARNs) of users who have provided reactions to the comment.</p>"
        },
        "reactionsFromDeletedUsersCount": {
          "shape": "Count",
          "documentation": "<p>A numerical count of users who reacted with the specified emoji whose identities have been subsequently deleted from IAM. While these IAM users or roles no longer exist, the reactions might still appear in total reaction counts.</p>"
        }
      },
      "documentation": "<p>Information about the reaction values provided by users on a comment.</p>"
    },
    "ReactionShortCode": {
      "type": "string"
    },
    "ReactionUnicode": {
      "type": "string"
    },
    "ReactionUsersList": {
      "type": "list",
      "member": {
        "shape": "Arn"
      }
    },
    "ReactionValue": {
      "type": "string"
    },
    "ReactionValueFormats": {
      "type": "structure",
      "members": {
        "emoji": {
          "shape": "ReactionEmoji",
          "documentation": "<p>The Emoji Version 1.0 graphic of the reaction. These graphics are interpreted slightly differently on different operating systems.</p>"
        },
        "shortCode": {
          "shape": "ReactionShortCode",
          "documentation": "<p>The emoji short code for the reaction. Short codes are interpreted slightly differently on different operating systems. </p>"
        },
        "unicode": {
          "shape": "ReactionUnicode",
          "documentation": "<p>The Unicode codepoint for the reaction.</p>"
        }
      },
      "documentation": "<p>Information about the values for reactions to a comment. AWS CodeCommit supports a limited set of reactions.</p>"
    },
    "ReactionsForCommentList": {
      "type": "list",
      "member": {
        "shape": "ReactionForComment"
      }
    },
    "ReferenceName": {
      "type": "string"
    },
    "RelativeFileVersionEnum": {
      "type": "string",
      "enum": [
        "BEFORE",
        "AFTER"
      ]
    },
    "ReplaceContentEntries": {
      "type": "list",
      "member": {
        "shape": "ReplaceContentEntry"
      }
    },
    "ReplaceContentEntry": {
      "type": "structure",
      "required": [
        "filePath",
        "replacementType"
      ],
      "members": {
        "filePath": {
          "shape": "Path",
          "documentation": "<p>The path of the conflicting file.</p>"
        },
        "replacementType": {
          "shape": "ReplacementTypeEnum",
          "documentation": "<p>The replacement type to use when determining how to resolve the conflict.</p>"
        },
        "content": {
          "shape": "FileContent",
          "documentation": "<p>The base-64 encoded content to use when the replacement type is USE_NEW_CONTENT.</p>"
        },
        "fileMode": {
          "shape": "FileModeTypeEnum",
          "documentation": "<p>The file mode to apply during conflict resoltion.</p>"
        }
      },
      "documentation": "<p>Information about a replacement content entry in the conflict of a merge or pull request operation.</p>"
    },
    "ReplacementTypeEnum": {
      "type": "string",
      "enum": [
        "KEEP_BASE",
        "KEEP_SOURCE",
        "KEEP_DESTINATION",
        "USE_NEW_CONTENT"
      ]
    },
    "RepositoryDescription": {
      "type": "string",
      "max": 1000
    },
    "RepositoryId": {
      "type": "string"
    },
    "RepositoryMetadata": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "AccountId",
          "documentation": "<p>The ID of the AWS account associated with the repository.</p>"
        },
        "repositoryId": {
          "shape": "RepositoryId",
          "documentation": "<p>The ID of the repository.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository's name.</p>"
        },
        "repositoryDescription": {
          "shape": "RepositoryDescription",
          "documentation": "<p>A comment or description about the repository.</p>"
        },
        "defaultBranch": {
          "shape": "BranchName",
          "documentation": "<p>The repository's default branch name.</p>"
        },
        "lastModifiedDate": {
          "shape": "LastModifiedDate",
          "documentation": "<p>The date and time the repository was last modified, in timestamp format.</p>"
        },
        "creationDate": {
          "shape": "CreationDate",
          "documentation": "<p>The date and time the repository was created, in timestamp format.</p>"
        },
        "cloneUrlHttp": {
          "shape": "CloneUrlHttp",
          "documentation": "<p>The URL to use for cloning the repository over HTTPS.</p>"
        },
        "cloneUrlSsh": {
          "shape": "CloneUrlSsh",
          "documentation": "<p>The URL to use for cloning the repository over SSH.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the repository.</p>"
        }
      },
      "documentation": "<p>Information about a repository.</p>"
    },
    "RepositoryMetadataList": {
      "type": "list",
      "member": {
        "shape": "RepositoryMetadata"
      }
    },
    "RepositoryName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[\\w\\.-]+"
    },
    "RepositoryNameIdPair": {
      "type": "structure",
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name associated with the repository.</p>"
        },
        "repositoryId": {
          "shape": "RepositoryId",
          "documentation": "<p>The ID associated with the repository.</p>"
        }
      },
      "documentation": "<p>Information about a repository name and ID.</p>"
    },
    "RepositoryNameIdPairList": {
      "type": "list",
      "member": {
        "shape": "RepositoryNameIdPair"
      }
    },
    "RepositoryNameList": {
      "type": "list",
      "member": {
        "shape": "RepositoryName"
      }
    },
    "RepositoryNotFoundList": {
      "type": "list",
      "member": {
        "shape": "RepositoryName"
      }
    },
    "RepositoryTrigger": {
      "type": "structure",
      "required": [
        "name",
        "destinationArn",
        "events"
      ],
      "members": {
        "name": {
          "shape": "RepositoryTriggerName",
          "documentation": "<p>The name of the trigger.</p>"
        },
        "destinationArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the resource that is the target for a trigger (for example, the ARN of a topic in Amazon SNS).</p>"
        },
        "customData": {
          "shape": "RepositoryTriggerCustomData",
          "documentation": "<p>Any custom data associated with the trigger to be included in the information sent to the target of the trigger.</p>"
        },
        "branches": {
          "shape": "BranchNameList",
          "documentation": "<p>The branches to be included in the trigger configuration. If you specify an empty array, the trigger applies to all branches.</p> <note> <p>Although no content is required in the array, you must include the array itself.</p> </note>"
        },
        "events": {
          "shape": "RepositoryTriggerEventList",
          "documentation": "<p>The repository events that cause the trigger to run actions in another service, such as sending a notification through Amazon SNS. </p> <note> <p>The valid value \"all\" cannot be used with any other values.</p> </note>"
        }
      },
      "documentation": "<p>Information about a trigger for a repository.</p>"
    },
    "RepositoryTriggerCustomData": {
      "type": "string"
    },
    "RepositoryTriggerEventEnum": {
      "type": "string",
      "enum": [
        "all",
        "updateReference",
        "createReference",
        "deleteReference"
      ]
    },
    "RepositoryTriggerEventList": {
      "type": "list",
      "member": {
        "shape": "RepositoryTriggerEventEnum"
      }
    },
    "RepositoryTriggerExecutionFailure": {
      "type": "structure",
      "members": {
        "trigger": {
          "shape": "RepositoryTriggerName",
          "documentation": "<p>The name of the trigger that did not run.</p>"
        },
        "failureMessage": {
          "shape": "RepositoryTriggerExecutionFailureMessage",
          "documentation": "<p>Message information about the trigger that did not run.</p>"
        }
      },
      "documentation": "<p>A trigger failed to run.</p>"
    },
    "RepositoryTriggerExecutionFailureList": {
      "type": "list",
      "member": {
        "shape": "RepositoryTriggerExecutionFailure"
      }
    },
    "RepositoryTriggerExecutionFailureMessage": {
      "type": "string"
    },
    "RepositoryTriggerName": {
      "type": "string"
    },
    "RepositoryTriggerNameList": {
      "type": "list",
      "member": {
        "shape": "RepositoryTriggerName"
      }
    },
    "RepositoryTriggersConfigurationId": {
      "type": "string"
    },
    "RepositoryTriggersList": {
      "type": "list",
      "member": {
        "shape": "RepositoryTrigger"
      }
    },
    "ResourceArn": {
      "type": "string"
    },
    "RevisionId": {
      "type": "string"
    },
    "RuleContentSha256": {
      "type": "string"
    },
    "SetFileModeEntries": {
      "type": "list",
      "member": {
        "shape": "SetFileModeEntry"
      }
    },
    "SetFileModeEntry": {
      "type": "structure",
      "required": [
        "filePath",
        "fileMode"
      ],
      "members": {
        "filePath": {
          "shape": "Path",
          "documentation": "<p>The full path to the file, including the name of the file.</p>"
        },
        "fileMode": {
          "shape": "FileModeTypeEnum",
          "documentation": "<p>The file mode for the file.</p>"
        }
      },
      "documentation": "<p>Information about the file mode changes.</p>"
    },
    "SortByEnum": {
      "type": "string",
      "enum": [
        "repositoryName",
        "lastModifiedDate"
      ]
    },
    "SourceFileSpecifier": {
      "type": "structure",
      "required": [
        "filePath"
      ],
      "members": {
        "filePath": {
          "shape": "Path",
          "documentation": "<p>The full path to the file, including the name of the file.</p>"
        },
        "isMove": {
          "shape": "IsMove",
          "documentation": "<p>Whether to remove the source file from the parent commit.</p>"
        }
      },
      "documentation": "<p>Information about a source file that is part of changes made in a commit.</p>"
    },
    "SubModule": {
      "type": "structure",
      "members": {
        "commitId": {
          "shape": "ObjectId",
          "documentation": "<p>The commit ID that contains the reference to the submodule.</p>"
        },
        "absolutePath": {
          "shape": "Path",
          "documentation": "<p>The fully qualified path to the folder that contains the reference to the submodule.</p>"
        },
        "relativePath": {
          "shape": "Path",
          "documentation": "<p>The relative path of the submodule from the folder where the query originated.</p>"
        }
      },
      "documentation": "<p>Returns information about a submodule reference in a repository folder.</p>"
    },
    "SubModuleList": {
      "type": "list",
      "member": {
        "shape": "SubModule"
      }
    },
    "SymbolicLink": {
      "type": "structure",
      "members": {
        "blobId": {
          "shape": "ObjectId",
          "documentation": "<p>The blob ID that contains the information about the symbolic link.</p>"
        },
        "absolutePath": {
          "shape": "Path",
          "documentation": "<p>The fully qualified path to the folder that contains the symbolic link.</p>"
        },
        "relativePath": {
          "shape": "Path",
          "documentation": "<p>The relative path of the symbolic link from the folder where the query originated.</p>"
        },
        "fileMode": {
          "shape": "FileModeTypeEnum",
          "documentation": "<p>The file mode permissions of the blob that cotains information about the symbolic link.</p>"
        }
      },
      "documentation": "<p>Returns information about a symbolic link in a repository folder.</p>"
    },
    "SymbolicLinkList": {
      "type": "list",
      "member": {
        "shape": "SymbolicLink"
      }
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "TagKeysList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      }
    },
    "TagResourceInput": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.</p>"
        },
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p>The key-value pair to use when tagging this repository.</p>"
        }
      }
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "TagsMap": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      }
    },
    "Target": {
      "type": "structure",
      "required": [
        "repositoryName",
        "sourceReference"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the pull request.</p>"
        },
        "sourceReference": {
          "shape": "ReferenceName",
          "documentation": "<p>The branch of the repository that contains the changes for the pull request. Also known as the source branch.</p>"
        },
        "destinationReference": {
          "shape": "ReferenceName",
          "documentation": "<p>The branch of the repository where the pull request changes are merged. Also known as the destination branch.</p>"
        }
      },
      "documentation": "<p>Returns information about a target for a pull request.</p>"
    },
    "TargetList": {
      "type": "list",
      "member": {
        "shape": "Target"
      }
    },
    "TestRepositoryTriggersInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "triggers"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository in which to test the triggers.</p>"
        },
        "triggers": {
          "shape": "RepositoryTriggersList",
          "documentation": "<p>The list of triggers to test.</p>"
        }
      },
      "documentation": "<p>Represents the input of a test repository triggers operation.</p>"
    },
    "TestRepositoryTriggersOutput": {
      "type": "structure",
      "members": {
        "successfulExecutions": {
          "shape": "RepositoryTriggerNameList",
          "documentation": "<p>The list of triggers that were successfully tested. This list provides the names of the triggers that were successfully tested, separated by commas.</p>"
        },
        "failedExecutions": {
          "shape": "RepositoryTriggerExecutionFailureList",
          "documentation": "<p>The list of triggers that were not tested. This list provides the names of the triggers that could not be tested, separated by commas.</p>"
        }
      },
      "documentation": "<p>Represents the output of a test repository triggers operation.</p>"
    },
    "Title": {
      "type": "string",
      "max": 150
    },
    "UntagResourceInput": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to which you want to remove tags.</p>"
        },
        "tagKeys": {
          "shape": "TagKeysList",
          "documentation": "<p>The tag key for each tag that you want to remove from the resource.</p>"
        }
      }
    },
    "UpdateApprovalRuleTemplateContentInput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplateName",
        "newRuleContent"
      ],
      "members": {
        "approvalRuleTemplateName": {
          "shape": "ApprovalRuleTemplateName",
          "documentation": "<p>The name of the approval rule template where you want to update the content of the rule. </p>"
        },
        "newRuleContent": {
          "shape": "ApprovalRuleTemplateContent",
          "documentation": "<p>The content that replaces the existing content of the rule. Content statements must be complete. You cannot provide only the changes.</p>"
        },
        "existingRuleContentSha256": {
          "shape": "RuleContentSha256",
          "documentation": "<p>The SHA-256 hash signature for the content of the approval rule. You can retrieve this information by using <a>GetPullRequest</a>.</p>"
        }
      }
    },
    "UpdateApprovalRuleTemplateContentOutput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplate"
      ],
      "members": {
        "approvalRuleTemplate": {
          "shape": "ApprovalRuleTemplate"
        }
      }
    },
    "UpdateApprovalRuleTemplateDescriptionInput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplateName",
        "approvalRuleTemplateDescription"
      ],
      "members": {
        "approvalRuleTemplateName": {
          "shape": "ApprovalRuleTemplateName",
          "documentation": "<p>The name of the template for which you want to update the description.</p>"
        },
        "approvalRuleTemplateDescription": {
          "shape": "ApprovalRuleTemplateDescription",
          "documentation": "<p>The updated description of the approval rule template.</p>"
        }
      }
    },
    "UpdateApprovalRuleTemplateDescriptionOutput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplate"
      ],
      "members": {
        "approvalRuleTemplate": {
          "shape": "ApprovalRuleTemplate",
          "documentation": "<p>The structure and content of the updated approval rule template.</p>"
        }
      }
    },
    "UpdateApprovalRuleTemplateNameInput": {
      "type": "structure",
      "required": [
        "oldApprovalRuleTemplateName",
        "newApprovalRuleTemplateName"
      ],
      "members": {
        "oldApprovalRuleTemplateName": {
          "shape": "ApprovalRuleTemplateName",
          "documentation": "<p>The current name of the approval rule template.</p>"
        },
        "newApprovalRuleTemplateName": {
          "shape": "ApprovalRuleTemplateName",
          "documentation": "<p>The new name you want to apply to the approval rule template.</p>"
        }
      }
    },
    "UpdateApprovalRuleTemplateNameOutput": {
      "type": "structure",
      "required": [
        "approvalRuleTemplate"
      ],
      "members": {
        "approvalRuleTemplate": {
          "shape": "ApprovalRuleTemplate",
          "documentation": "<p>The structure and content of the updated approval rule template.</p>"
        }
      }
    },
    "UpdateCommentInput": {
      "type": "structure",
      "required": [
        "commentId",
        "content"
      ],
      "members": {
        "commentId": {
          "shape": "CommentId",
          "documentation": "<p>The system-generated ID of the comment you want to update. To get this ID, use <a>GetCommentsForComparedCommit</a> or <a>GetCommentsForPullRequest</a>.</p>"
        },
        "content": {
          "shape": "Content",
          "documentation": "<p>The updated content to replace the existing content of the comment.</p>"
        }
      }
    },
    "UpdateCommentOutput": {
      "type": "structure",
      "members": {
        "comment": {
          "shape": "Comment",
          "documentation": "<p>Information about the updated comment.</p>"
        }
      }
    },
    "UpdateDefaultBranchInput": {
      "type": "structure",
      "required": [
        "repositoryName",
        "defaultBranchName"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository to set or change the default branch for.</p>"
        },
        "defaultBranchName": {
          "shape": "BranchName",
          "documentation": "<p>The name of the branch to set as the default.</p>"
        }
      },
      "documentation": "<p>Represents the input of an update default branch operation.</p>"
    },
    "UpdatePullRequestApprovalRuleContentInput": {
      "type": "structure",
      "required": [
        "pullRequestId",
        "approvalRuleName",
        "newRuleContent"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request.</p>"
        },
        "approvalRuleName": {
          "shape": "ApprovalRuleName",
          "documentation": "<p>The name of the approval rule you want to update.</p>"
        },
        "existingRuleContentSha256": {
          "shape": "RuleContentSha256",
          "documentation": "<p>The SHA-256 hash signature for the content of the approval rule. You can retrieve this information by using <a>GetPullRequest</a>.</p>"
        },
        "newRuleContent": {
          "shape": "ApprovalRuleContent",
          "documentation": "<p>The updated content for the approval rule.</p> <note> <p>When you update the content of the approval rule, you can specify approvers in an approval pool in one of two ways:</p> <ul> <li> <p> <b>CodeCommitApprovers</b>: This option only requires an AWS account and a resource. It can be used for both IAM users and federated access users whose name matches the provided resource name. This is a very powerful option that offers a great deal of flexibility. For example, if you specify the AWS account <i>123456789012</i> and <i>Mary_Major</i>, all of the following are counted as approvals coming from that user:</p> <ul> <li> <p>An IAM user in the account (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p> </li> <li> <p>A federated user identified in IAM as Mary_Major (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p> </li> </ul> <p>This option does not recognize an active session of someone assuming the role of CodeCommitReview with a role session name of <i>Mary_Major</i> (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>) unless you include a wildcard (*Mary_Major).</p> </li> <li> <p> <b>Fully qualified ARN</b>: This option allows you to specify the fully qualified Amazon Resource Name (ARN) of the IAM user or role. </p> </li> </ul> <p>For more information about IAM ARNs, wildcards, and formats, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> </note>"
        }
      }
    },
    "UpdatePullRequestApprovalRuleContentOutput": {
      "type": "structure",
      "required": [
        "approvalRule"
      ],
      "members": {
        "approvalRule": {
          "shape": "ApprovalRule",
          "documentation": "<p>Information about the updated approval rule.</p>"
        }
      }
    },
    "UpdatePullRequestApprovalStateInput": {
      "type": "structure",
      "required": [
        "pullRequestId",
        "revisionId",
        "approvalState"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request.</p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The system-generated ID of the revision.</p>"
        },
        "approvalState": {
          "shape": "ApprovalState",
          "documentation": "<p>The approval state to associate with the user on the pull request.</p>"
        }
      }
    },
    "UpdatePullRequestDescriptionInput": {
      "type": "structure",
      "required": [
        "pullRequestId",
        "description"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The updated content of the description for the pull request. This content replaces the existing description.</p>"
        }
      }
    },
    "UpdatePullRequestDescriptionOutput": {
      "type": "structure",
      "required": [
        "pullRequest"
      ],
      "members": {
        "pullRequest": {
          "shape": "PullRequest",
          "documentation": "<p>Information about the updated pull request.</p>"
        }
      }
    },
    "UpdatePullRequestStatusInput": {
      "type": "structure",
      "required": [
        "pullRequestId",
        "pullRequestStatus"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
        },
        "pullRequestStatus": {
          "shape": "PullRequestStatusEnum",
          "documentation": "<p>The status of the pull request. The only valid operations are to update the status from <code>OPEN</code> to <code>OPEN</code>, <code>OPEN</code> to <code>CLOSED</code> or from <code>CLOSED</code> to <code>CLOSED</code>.</p>"
        }
      }
    },
    "UpdatePullRequestStatusOutput": {
      "type": "structure",
      "required": [
        "pullRequest"
      ],
      "members": {
        "pullRequest": {
          "shape": "PullRequest",
          "documentation": "<p>Information about the pull request.</p>"
        }
      }
    },
    "UpdatePullRequestTitleInput": {
      "type": "structure",
      "required": [
        "pullRequestId",
        "title"
      ],
      "members": {
        "pullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
        },
        "title": {
          "shape": "Title",
          "documentation": "<p>The updated title of the pull request. This replaces the existing title.</p>"
        }
      }
    },
    "UpdatePullRequestTitleOutput": {
      "type": "structure",
      "required": [
        "pullRequest"
      ],
      "members": {
        "pullRequest": {
          "shape": "PullRequest",
          "documentation": "<p>Information about the updated pull request.</p>"
        }
      }
    },
    "UpdateRepositoryDescriptionInput": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository to set or change the comment or description for.</p>"
        },
        "repositoryDescription": {
          "shape": "RepositoryDescription",
          "documentation": "<p>The new comment or description for the specified repository. Repository descriptions are limited to 1,000 characters.</p>"
        }
      },
      "documentation": "<p>Represents the input of an update repository description operation.</p>"
    },
    "UpdateRepositoryNameInput": {
      "type": "structure",
      "required": [
        "oldName",
        "newName"
      ],
      "members": {
        "oldName": {
          "shape": "RepositoryName",
          "documentation": "<p>The current name of the repository.</p>"
        },
        "newName": {
          "shape": "RepositoryName",
          "documentation": "<p>The new name for the repository.</p>"
        }
      },
      "documentation": "<p>Represents the input of an update repository description operation.</p>"
    },
    "UserInfo": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the user who made the specified commit.</p>"
        },
        "email": {
          "shape": "Email",
          "documentation": "<p>The email address associated with the user who made the commit, if any.</p>"
        },
        "date": {
          "shape": "Date",
          "documentation": "<p>The date when the specified commit was commited, in timestamp format with GMT offset.</p>"
        }
      },
      "documentation": "<p>Information about the user who made a specified commit.</p>"
    },
    "blob": {
      "type": "blob"
    }
  },
  "documentation": "<fullname>AWS CodeCommit</fullname> <p>This is the <i>AWS CodeCommit API Reference</i>. This reference provides descriptions of the operations and data types for AWS CodeCommit API along with usage examples.</p> <p>You can use the AWS CodeCommit API to work with the following objects:</p> <p>Repositories, by calling the following:</p> <ul> <li> <p> <a>BatchGetRepositories</a>, which returns information about one or more repositories associated with your AWS account.</p> </li> <li> <p> <a>CreateRepository</a>, which creates an AWS CodeCommit repository.</p> </li> <li> <p> <a>DeleteRepository</a>, which deletes an AWS CodeCommit repository.</p> </li> <li> <p> <a>GetRepository</a>, which returns information about a specified repository.</p> </li> <li> <p> <a>ListRepositories</a>, which lists all AWS CodeCommit repositories associated with your AWS account.</p> </li> <li> <p> <a>UpdateRepositoryDescription</a>, which sets or updates the description of the repository.</p> </li> <li> <p> <a>UpdateRepositoryName</a>, which changes the name of the repository. If you change the name of a repository, no other users of that repository can access it until you send them the new HTTPS or SSH URL to use.</p> </li> </ul> <p>Branches, by calling the following:</p> <ul> <li> <p> <a>CreateBranch</a>, which creates a branch in a specified repository.</p> </li> <li> <p> <a>DeleteBranch</a>, which deletes the specified branch in a repository unless it is the default branch.</p> </li> <li> <p> <a>GetBranch</a>, which returns information about a specified branch.</p> </li> <li> <p> <a>ListBranches</a>, which lists all branches for a specified repository.</p> </li> <li> <p> <a>UpdateDefaultBranch</a>, which changes the default branch for a repository.</p> </li> </ul> <p>Files, by calling the following:</p> <ul> <li> <p> <a>DeleteFile</a>, which deletes the content of a specified file from a specified branch.</p> </li> <li> <p> <a>GetBlob</a>, which returns the base-64 encoded content of an individual Git blob object in a repository.</p> </li> <li> <p> <a>GetFile</a>, which returns the base-64 encoded content of a specified file.</p> </li> <li> <p> <a>GetFolder</a>, which returns the contents of a specified folder or directory.</p> </li> <li> <p> <a>PutFile</a>, which adds or modifies a single file in a specified repository and branch.</p> </li> </ul> <p>Commits, by calling the following:</p> <ul> <li> <p> <a>BatchGetCommits</a>, which returns information about one or more commits in a repository.</p> </li> <li> <p> <a>CreateCommit</a>, which creates a commit for changes to a repository.</p> </li> <li> <p> <a>GetCommit</a>, which returns information about a commit, including commit messages and author and committer information.</p> </li> <li> <p> <a>GetDifferences</a>, which returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID, or other fully qualified reference).</p> </li> </ul> <p>Merges, by calling the following:</p> <ul> <li> <p> <a>BatchDescribeMergeConflicts</a>, which returns information about conflicts in a merge between commits in a repository.</p> </li> <li> <p> <a>CreateUnreferencedMergeCommit</a>, which creates an unreferenced commit between two branches or commits for the purpose of comparing them and identifying any potential conflicts.</p> </li> <li> <p> <a>DescribeMergeConflicts</a>, which returns information about merge conflicts between the base, source, and destination versions of a file in a potential merge.</p> </li> <li> <p> <a>GetMergeCommit</a>, which returns information about the merge between a source and destination commit. </p> </li> <li> <p> <a>GetMergeConflicts</a>, which returns information about merge conflicts between the source and destination branch in a pull request.</p> </li> <li> <p> <a>GetMergeOptions</a>, which returns information about the available merge options between two branches or commit specifiers.</p> </li> <li> <p> <a>MergeBranchesByFastForward</a>, which merges two branches using the fast-forward merge option.</p> </li> <li> <p> <a>MergeBranchesBySquash</a>, which merges two branches using the squash merge option.</p> </li> <li> <p> <a>MergeBranchesByThreeWay</a>, which merges two branches using the three-way merge option.</p> </li> </ul> <p>Pull requests, by calling the following:</p> <ul> <li> <p> <a>CreatePullRequest</a>, which creates a pull request in a specified repository.</p> </li> <li> <p> <a>CreatePullRequestApprovalRule</a>, which creates an approval rule for a specified pull request.</p> </li> <li> <p> <a>DeletePullRequestApprovalRule</a>, which deletes an approval rule for a specified pull request.</p> </li> <li> <p> <a>DescribePullRequestEvents</a>, which returns information about one or more pull request events.</p> </li> <li> <p> <a>EvaluatePullRequestApprovalRules</a>, which evaluates whether a pull request has met all the conditions specified in its associated approval rules.</p> </li> <li> <p> <a>GetCommentsForPullRequest</a>, which returns information about comments on a specified pull request.</p> </li> <li> <p> <a>GetPullRequest</a>, which returns information about a specified pull request.</p> </li> <li> <p> <a>GetPullRequestApprovalStates</a>, which returns information about the approval states for a specified pull request.</p> </li> <li> <p> <a>GetPullRequestOverrideState</a>, which returns information about whether approval rules have been set aside (overriden) for a pull request, and if so, the Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.</p> </li> <li> <p> <a>ListPullRequests</a>, which lists all pull requests for a repository.</p> </li> <li> <p> <a>MergePullRequestByFastForward</a>, which merges the source destination branch of a pull request into the specified destination branch for that pull request using the fast-forward merge option.</p> </li> <li> <p> <a>MergePullRequestBySquash</a>, which merges the source destination branch of a pull request into the specified destination branch for that pull request using the squash merge option.</p> </li> <li> <p> <a>MergePullRequestByThreeWay</a>. which merges the source destination branch of a pull request into the specified destination branch for that pull request using the three-way merge option.</p> </li> <li> <p> <a>OverridePullRequestApprovalRules</a>, which sets aside all approval rule requirements for a pull request.</p> </li> <li> <p> <a>PostCommentForPullRequest</a>, which posts a comment to a pull request at the specified line, file, or request.</p> </li> <li> <p> <a>UpdatePullRequestApprovalRuleContent</a>, which updates the structure of an approval rule for a pull request.</p> </li> <li> <p> <a>UpdatePullRequestApprovalState</a>, which updates the state of an approval on a pull request.</p> </li> <li> <p> <a>UpdatePullRequestDescription</a>, which updates the description of a pull request.</p> </li> <li> <p> <a>UpdatePullRequestStatus</a>, which updates the status of a pull request.</p> </li> <li> <p> <a>UpdatePullRequestTitle</a>, which updates the title of a pull request.</p> </li> </ul> <p>Approval rule templates, by calling the following:</p> <ul> <li> <p> <a>AssociateApprovalRuleTemplateWithRepository</a>, which associates a template with a specified repository. After the template is associated with a repository, AWS CodeCommit creates approval rules that match the template conditions on every pull request created in the specified repository.</p> </li> <li> <p> <a>BatchAssociateApprovalRuleTemplateWithRepositories</a>, which associates a template with one or more specified repositories. After the template is associated with a repository, AWS CodeCommit creates approval rules that match the template conditions on every pull request created in the specified repositories.</p> </li> <li> <p> <a>BatchDisassociateApprovalRuleTemplateFromRepositories</a>, which removes the association between a template and specified repositories so that approval rules based on the template are not automatically created when pull requests are created in those repositories.</p> </li> <li> <p> <a>CreateApprovalRuleTemplate</a>, which creates a template for approval rules that can then be associated with one or more repositories in your AWS account.</p> </li> <li> <p> <a>DeleteApprovalRuleTemplate</a>, which deletes the specified template. It does not remove approval rules on pull requests already created with the template.</p> </li> <li> <p> <a>DisassociateApprovalRuleTemplateFromRepository</a>, which removes the association between a template and a repository so that approval rules based on the template are not automatically created when pull requests are created in the specified repository.</p> </li> <li> <p> <a>GetApprovalRuleTemplate</a>, which returns information about an approval rule template.</p> </li> <li> <p> <a>ListApprovalRuleTemplates</a>, which lists all approval rule templates in the AWS Region in your AWS account.</p> </li> <li> <p> <a>ListAssociatedApprovalRuleTemplatesForRepository</a>, which lists all approval rule templates that are associated with a specified repository.</p> </li> <li> <p> <a>ListRepositoriesForApprovalRuleTemplate</a>, which lists all repositories associated with the specified approval rule template.</p> </li> <li> <p> <a>UpdateApprovalRuleTemplateDescription</a>, which updates the description of an approval rule template.</p> </li> <li> <p> <a>UpdateApprovalRuleTemplateName</a>, which updates the name of an approval rule template.</p> </li> <li> <p> <a>UpdateApprovalRuleTemplateContent</a>, which updates the content of an approval rule template.</p> </li> </ul> <p>Comments in a repository, by calling the following:</p> <ul> <li> <p> <a>DeleteCommentContent</a>, which deletes the content of a comment on a commit in a repository.</p> </li> <li> <p> <a>GetComment</a>, which returns information about a comment on a commit.</p> </li> <li> <p> <a>GetCommentReactions</a>, which returns information about emoji reactions to comments.</p> </li> <li> <p> <a>GetCommentsForComparedCommit</a>, which returns information about comments on the comparison between two commit specifiers in a repository.</p> </li> <li> <p> <a>PostCommentForComparedCommit</a>, which creates a comment on the comparison between two commit specifiers in a repository.</p> </li> <li> <p> <a>PostCommentReply</a>, which creates a reply to a comment.</p> </li> <li> <p> <a>PutCommentReaction</a>, which creates or updates an emoji reaction to a comment.</p> </li> <li> <p> <a>UpdateComment</a>, which updates the content of a comment on a commit in a repository.</p> </li> </ul> <p>Tags used to tag resources in AWS CodeCommit (not Git tags), by calling the following:</p> <ul> <li> <p> <a>ListTagsForResource</a>, which gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS CodeCommit.</p> </li> <li> <p> <a>TagResource</a>, which adds or updates tags for a resource in AWS CodeCommit.</p> </li> <li> <p> <a>UntagResource</a>, which removes tags for a resource in AWS CodeCommit.</p> </li> </ul> <p>Triggers, by calling the following:</p> <ul> <li> <p> <a>GetRepositoryTriggers</a>, which returns information about triggers configured for a repository.</p> </li> <li> <p> <a>PutRepositoryTriggers</a>, which replaces all triggers for a repository and can be used to create or delete triggers.</p> </li> <li> <p> <a>TestRepositoryTriggers</a>, which tests the functionality of a repository trigger by sending data to the trigger target.</p> </li> </ul> <p>For information about how to use AWS CodeCommit, see the <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html\">AWS CodeCommit User Guide</a>.</p>"
}
]===]))
