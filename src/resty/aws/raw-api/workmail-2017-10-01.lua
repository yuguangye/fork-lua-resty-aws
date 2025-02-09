local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-10-01",
    "endpointPrefix": "workmail",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "Amazon WorkMail",
    "serviceId": "WorkMail",
    "signatureVersion": "v4",
    "targetPrefix": "WorkMailService",
    "uid": "workmail-2017-10-01"
  },
  "operations": {
    "AssociateDelegateToResource": {
      "name": "AssociateDelegateToResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateDelegateToResourceRequest"
      },
      "output": {
        "shape": "AssociateDelegateToResourceResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Adds a member (user or group) to the resource's set of delegates.</p>",
      "idempotent": true
    },
    "AssociateMemberToGroup": {
      "name": "AssociateMemberToGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateMemberToGroupRequest"
      },
      "output": {
        "shape": "AssociateMemberToGroupResponse"
      },
      "errors": [
        {
          "shape": "DirectoryServiceAuthenticationFailedException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>Adds a member (user or group) to the group's set.</p>",
      "idempotent": true
    },
    "CreateAlias": {
      "name": "CreateAlias",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateAliasRequest"
      },
      "output": {
        "shape": "CreateAliasResponse"
      },
      "errors": [
        {
          "shape": "EmailAddressInUseException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MailDomainNotFoundException"
        },
        {
          "shape": "MailDomainStateException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Adds an alias to the set of a given member (user or group) of Amazon WorkMail.</p>",
      "idempotent": true
    },
    "CreateGroup": {
      "name": "CreateGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateGroupRequest"
      },
      "output": {
        "shape": "CreateGroupResponse"
      },
      "errors": [
        {
          "shape": "DirectoryServiceAuthenticationFailedException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "NameAvailabilityException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        },
        {
          "shape": "ReservedNameException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>Creates a group that can be used in Amazon WorkMail by calling the <a>RegisterToWorkMail</a> operation.</p>",
      "idempotent": true
    },
    "CreateResource": {
      "name": "CreateResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateResourceRequest"
      },
      "output": {
        "shape": "CreateResourceResponse"
      },
      "errors": [
        {
          "shape": "DirectoryServiceAuthenticationFailedException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "NameAvailabilityException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        },
        {
          "shape": "ReservedNameException"
        }
      ],
      "documentation": "<p>Creates a new Amazon WorkMail resource. </p>",
      "idempotent": true
    },
    "CreateUser": {
      "name": "CreateUser",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateUserRequest"
      },
      "output": {
        "shape": "CreateUserResponse"
      },
      "errors": [
        {
          "shape": "DirectoryServiceAuthenticationFailedException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidPasswordException"
        },
        {
          "shape": "NameAvailabilityException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        },
        {
          "shape": "ReservedNameException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>Creates a user who can be used in Amazon WorkMail by calling the <a>RegisterToWorkMail</a> operation.</p>",
      "idempotent": true
    },
    "DeleteAccessControlRule": {
      "name": "DeleteAccessControlRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAccessControlRuleRequest"
      },
      "output": {
        "shape": "DeleteAccessControlRuleResponse"
      },
      "errors": [
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Deletes an access control rule for the specified WorkMail organization.</p>"
    },
    "DeleteAlias": {
      "name": "DeleteAlias",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAliasRequest"
      },
      "output": {
        "shape": "DeleteAliasResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Remove one or more specified aliases from a set of aliases for a given user.</p>",
      "idempotent": true
    },
    "DeleteGroup": {
      "name": "DeleteGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteGroupRequest"
      },
      "output": {
        "shape": "DeleteGroupResponse"
      },
      "errors": [
        {
          "shape": "DirectoryServiceAuthenticationFailedException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>Deletes a group from Amazon WorkMail.</p>",
      "idempotent": true
    },
    "DeleteMailboxPermissions": {
      "name": "DeleteMailboxPermissions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteMailboxPermissionsRequest"
      },
      "output": {
        "shape": "DeleteMailboxPermissionsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Deletes permissions granted to a member (user or group).</p>",
      "idempotent": true
    },
    "DeleteResource": {
      "name": "DeleteResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteResourceRequest"
      },
      "output": {
        "shape": "DeleteResourceResponse"
      },
      "errors": [
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Deletes the specified resource. </p>",
      "idempotent": true
    },
    "DeleteRetentionPolicy": {
      "name": "DeleteRetentionPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRetentionPolicyRequest"
      },
      "output": {
        "shape": "DeleteRetentionPolicyResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Deletes the specified retention policy from the specified organization.</p>",
      "idempotent": true
    },
    "DeleteUser": {
      "name": "DeleteUser",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteUserRequest"
      },
      "output": {
        "shape": "DeleteUserResponse"
      },
      "errors": [
        {
          "shape": "DirectoryServiceAuthenticationFailedException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>Deletes a user from Amazon WorkMail and all subsequent systems. Before you can delete a user, the user state must be <code>DISABLED</code>. Use the <a>DescribeUser</a> action to confirm the user state.</p> <p>Deleting a user is permanent and cannot be undone. WorkMail archives user mailboxes for 30 days before they are permanently removed.</p>",
      "idempotent": true
    },
    "DeregisterFromWorkMail": {
      "name": "DeregisterFromWorkMail",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterFromWorkMailRequest"
      },
      "output": {
        "shape": "DeregisterFromWorkMailResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Mark a user, group, or resource as no longer used in Amazon WorkMail. This action disassociates the mailbox and schedules it for clean-up. WorkMail keeps mailboxes for 30 days before they are permanently removed. The functionality in the console is <i>Disable</i>.</p>",
      "idempotent": true
    },
    "DescribeGroup": {
      "name": "DescribeGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeGroupRequest"
      },
      "output": {
        "shape": "DescribeGroupResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Returns the data available for the group.</p>",
      "idempotent": true
    },
    "DescribeOrganization": {
      "name": "DescribeOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeOrganizationRequest"
      },
      "output": {
        "shape": "DescribeOrganizationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        }
      ],
      "documentation": "<p>Provides more information regarding a given organization based on its identifier.</p>",
      "idempotent": true
    },
    "DescribeResource": {
      "name": "DescribeResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeResourceRequest"
      },
      "output": {
        "shape": "DescribeResourceResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Returns the data available for the resource.</p>",
      "idempotent": true
    },
    "DescribeUser": {
      "name": "DescribeUser",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeUserRequest"
      },
      "output": {
        "shape": "DescribeUserResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Provides information regarding the user.</p>",
      "idempotent": true
    },
    "DisassociateDelegateFromResource": {
      "name": "DisassociateDelegateFromResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateDelegateFromResourceRequest"
      },
      "output": {
        "shape": "DisassociateDelegateFromResourceResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Removes a member from the resource's set of delegates.</p>",
      "idempotent": true
    },
    "DisassociateMemberFromGroup": {
      "name": "DisassociateMemberFromGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateMemberFromGroupRequest"
      },
      "output": {
        "shape": "DisassociateMemberFromGroupResponse"
      },
      "errors": [
        {
          "shape": "DirectoryServiceAuthenticationFailedException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>Removes a member from a group.</p>",
      "idempotent": true
    },
    "GetAccessControlEffect": {
      "name": "GetAccessControlEffect",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAccessControlEffectRequest"
      },
      "output": {
        "shape": "GetAccessControlEffectResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Gets the effects of an organization's access control rules as they apply to a specified IPv4 address, access protocol action, or user ID. </p>"
    },
    "GetDefaultRetentionPolicy": {
      "name": "GetDefaultRetentionPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDefaultRetentionPolicyRequest"
      },
      "output": {
        "shape": "GetDefaultRetentionPolicyResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        },
        {
          "shape": "EntityNotFoundException"
        }
      ],
      "documentation": "<p>Gets the default retention policy details for the specified organization.</p>",
      "idempotent": true
    },
    "GetMailboxDetails": {
      "name": "GetMailboxDetails",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMailboxDetailsRequest"
      },
      "output": {
        "shape": "GetMailboxDetailsResponse"
      },
      "errors": [
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        },
        {
          "shape": "EntityNotFoundException"
        }
      ],
      "documentation": "<p>Requests a user's mailbox details for a specified organization and user.</p>",
      "idempotent": true
    },
    "ListAccessControlRules": {
      "name": "ListAccessControlRules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAccessControlRulesRequest"
      },
      "output": {
        "shape": "ListAccessControlRulesResponse"
      },
      "errors": [
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Lists the access control rules for the specified organization.</p>"
    },
    "ListAliases": {
      "name": "ListAliases",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAliasesRequest"
      },
      "output": {
        "shape": "ListAliasesResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Creates a paginated call to list the aliases associated with a given entity.</p>",
      "idempotent": true
    },
    "ListGroupMembers": {
      "name": "ListGroupMembers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListGroupMembersRequest"
      },
      "output": {
        "shape": "ListGroupMembersResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Returns an overview of the members of a group. Users and groups can be members of a group.</p>",
      "idempotent": true
    },
    "ListGroups": {
      "name": "ListGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListGroupsRequest"
      },
      "output": {
        "shape": "ListGroupsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Returns summaries of the organization's groups.</p>",
      "idempotent": true
    },
    "ListMailboxPermissions": {
      "name": "ListMailboxPermissions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListMailboxPermissionsRequest"
      },
      "output": {
        "shape": "ListMailboxPermissionsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Lists the mailbox permissions associated with a user, group, or resource mailbox.</p>",
      "idempotent": true
    },
    "ListOrganizations": {
      "name": "ListOrganizations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListOrganizationsRequest"
      },
      "output": {
        "shape": "ListOrganizationsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Returns summaries of the customer's organizations.</p>",
      "idempotent": true
    },
    "ListResourceDelegates": {
      "name": "ListResourceDelegates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListResourceDelegatesRequest"
      },
      "output": {
        "shape": "ListResourceDelegatesResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Lists the delegates associated with a resource. Users and groups can be resource delegates and answer requests on behalf of the resource.</p>",
      "idempotent": true
    },
    "ListResources": {
      "name": "ListResources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListResourcesRequest"
      },
      "output": {
        "shape": "ListResourcesResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Returns summaries of the organization's resources.</p>",
      "idempotent": true
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
        }
      ],
      "documentation": "<p>Lists the tags applied to an Amazon WorkMail organization resource.</p>"
    },
    "ListUsers": {
      "name": "ListUsers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListUsersRequest"
      },
      "output": {
        "shape": "ListUsersResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Returns summaries of the organization's users.</p>",
      "idempotent": true
    },
    "PutAccessControlRule": {
      "name": "PutAccessControlRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutAccessControlRuleRequest"
      },
      "output": {
        "shape": "PutAccessControlRuleResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Adds a new access control rule for the specified organization. The rule allows or denies access to the organization for the specified IPv4 addresses, access protocol actions, and user IDs. Adding a new rule with the same name as an existing rule replaces the older rule.</p>"
    },
    "PutMailboxPermissions": {
      "name": "PutMailboxPermissions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutMailboxPermissionsRequest"
      },
      "output": {
        "shape": "PutMailboxPermissionsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Sets permissions for a user, group, or resource. This replaces any pre-existing permissions.</p>",
      "idempotent": true
    },
    "PutRetentionPolicy": {
      "name": "PutRetentionPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutRetentionPolicyRequest"
      },
      "output": {
        "shape": "PutRetentionPolicyResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Puts a retention policy to the specified organization.</p>",
      "idempotent": true
    },
    "RegisterToWorkMail": {
      "name": "RegisterToWorkMail",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterToWorkMailRequest"
      },
      "output": {
        "shape": "RegisterToWorkMailResponse"
      },
      "errors": [
        {
          "shape": "DirectoryServiceAuthenticationFailedException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "EmailAddressInUseException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "EntityAlreadyRegisteredException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MailDomainNotFoundException"
        },
        {
          "shape": "MailDomainStateException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Registers an existing and disabled user, group, or resource for Amazon WorkMail use by associating a mailbox and calendaring capabilities. It performs no change if the user, group, or resource is enabled and fails if the user, group, or resource is deleted. This operation results in the accumulation of costs. For more information, see <a href=\"https://aws.amazon.com/workmail/pricing\">Pricing</a>. The equivalent console functionality for this operation is <i>Enable</i>. </p> <p>Users can either be created by calling the <a>CreateUser</a> API operation or they can be synchronized from your directory. For more information, see <a>DeregisterFromWorkMail</a>.</p>",
      "idempotent": true
    },
    "ResetPassword": {
      "name": "ResetPassword",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResetPasswordRequest"
      },
      "output": {
        "shape": "ResetPasswordResponse"
      },
      "errors": [
        {
          "shape": "DirectoryServiceAuthenticationFailedException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidPasswordException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>Allows the administrator to reset the password for a user.</p>",
      "idempotent": true
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
          "shape": "TooManyTagsException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Applies the specified tags to the specified Amazon WorkMail organization resource.</p>"
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
        }
      ],
      "documentation": "<p>Untags the specified tags from the specified Amazon WorkMail organization resource.</p>"
    },
    "UpdateMailboxQuota": {
      "name": "UpdateMailboxQuota",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateMailboxQuotaRequest"
      },
      "output": {
        "shape": "UpdateMailboxQuotaResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        }
      ],
      "documentation": "<p>Updates a user's current mailbox quota for a specified organization and user.</p>",
      "idempotent": true
    },
    "UpdatePrimaryEmailAddress": {
      "name": "UpdatePrimaryEmailAddress",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdatePrimaryEmailAddressRequest"
      },
      "output": {
        "shape": "UpdatePrimaryEmailAddressResponse"
      },
      "errors": [
        {
          "shape": "DirectoryServiceAuthenticationFailedException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "EmailAddressInUseException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MailDomainNotFoundException"
        },
        {
          "shape": "MailDomainStateException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>Updates the primary email for a user, group, or resource. The current email is moved into the list of aliases (or swapped between an existing alias and the current primary email), and the email provided in the input is promoted as the primary.</p>",
      "idempotent": true
    },
    "UpdateResource": {
      "name": "UpdateResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateResourceRequest"
      },
      "output": {
        "shape": "UpdateResourceResponse"
      },
      "errors": [
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "EntityStateException"
        },
        {
          "shape": "InvalidConfigurationException"
        },
        {
          "shape": "EmailAddressInUseException"
        },
        {
          "shape": "MailDomainNotFoundException"
        },
        {
          "shape": "MailDomainStateException"
        },
        {
          "shape": "NameAvailabilityException"
        },
        {
          "shape": "OrganizationNotFoundException"
        },
        {
          "shape": "OrganizationStateException"
        }
      ],
      "documentation": "<p>Updates data for the resource. To have the latest information, it must be preceded by a <a>DescribeResource</a> call. The dataset in the request should be the one expected when performing another <code>DescribeResource</code> call.</p>",
      "idempotent": true
    }
  },
  "shapes": {
    "AccessControlRule": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "AccessControlRuleName",
          "documentation": "<p>The rule name.</p>"
        },
        "Effect": {
          "shape": "AccessControlRuleEffect",
          "documentation": "<p>The rule effect.</p>"
        },
        "Description": {
          "shape": "AccessControlRuleDescription",
          "documentation": "<p>The rule description.</p>"
        },
        "IpRanges": {
          "shape": "IpRangeList",
          "documentation": "<p>IPv4 CIDR ranges to include in the rule.</p>"
        },
        "NotIpRanges": {
          "shape": "IpRangeList",
          "documentation": "<p>IPv4 CIDR ranges to exclude from the rule.</p>"
        },
        "Actions": {
          "shape": "ActionsList",
          "documentation": "<p>Access protocol actions to include in the rule. Valid values include <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>, <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>"
        },
        "NotActions": {
          "shape": "ActionsList",
          "documentation": "<p>Access protocol actions to exclude from the rule. Valid values include <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>, <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>"
        },
        "UserIds": {
          "shape": "UserIdList",
          "documentation": "<p>User IDs to include in the rule.</p>"
        },
        "NotUserIds": {
          "shape": "UserIdList",
          "documentation": "<p>User IDs to exclude from the rule.</p>"
        },
        "DateCreated": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the rule was created.</p>"
        },
        "DateModified": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the rule was modified.</p>"
        }
      },
      "documentation": "<p>A rule that controls access to an Amazon WorkMail organization.</p>"
    },
    "AccessControlRuleAction": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[a-zA-Z]+"
    },
    "AccessControlRuleDescription": {
      "type": "string",
      "max": 255,
      "min": 0,
      "pattern": "[\\u0020-\\u00FF]+"
    },
    "AccessControlRuleEffect": {
      "type": "string",
      "enum": [
        "ALLOW",
        "DENY"
      ]
    },
    "AccessControlRuleName": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[a-zA-Z0-9_-]+"
    },
    "AccessControlRuleNameList": {
      "type": "list",
      "member": {
        "shape": "AccessControlRuleName"
      },
      "max": 10,
      "min": 0
    },
    "AccessControlRulesList": {
      "type": "list",
      "member": {
        "shape": "AccessControlRule"
      },
      "max": 10,
      "min": 0
    },
    "ActionsList": {
      "type": "list",
      "member": {
        "shape": "AccessControlRuleAction"
      },
      "max": 10,
      "min": 0
    },
    "Aliases": {
      "type": "list",
      "member": {
        "shape": "EmailAddress"
      }
    },
    "AmazonResourceName": {
      "type": "string",
      "max": 1011,
      "min": 1
    },
    "AssociateDelegateToResourceRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "ResourceId",
        "EntityId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The organization under which the resource exists.</p>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The resource for which members (users or groups) are associated.</p>"
        },
        "EntityId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The member (user or group) to associate to the resource.</p>"
        }
      }
    },
    "AssociateDelegateToResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "AssociateMemberToGroupRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "GroupId",
        "MemberId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The organization under which the group exists.</p>"
        },
        "GroupId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The group to which the member (user or group) is associated.</p>"
        },
        "MemberId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The member (user or group) to associate to the group.</p>"
        }
      }
    },
    "AssociateMemberToGroupResponse": {
      "type": "structure",
      "members": {}
    },
    "BookingOptions": {
      "type": "structure",
      "members": {
        "AutoAcceptRequests": {
          "shape": "Boolean",
          "documentation": "<p>The resource's ability to automatically reply to requests. If disabled, delegates must be associated to the resource.</p>"
        },
        "AutoDeclineRecurringRequests": {
          "shape": "Boolean",
          "documentation": "<p>The resource's ability to automatically decline any recurring requests.</p>"
        },
        "AutoDeclineConflictingRequests": {
          "shape": "Boolean",
          "documentation": "<p>The resource's ability to automatically decline any conflicting requests.</p>"
        }
      },
      "documentation": "<p>At least one delegate must be associated to the resource to disable automatic replies from the resource.</p>"
    },
    "Boolean": {
      "type": "boolean"
    },
    "CreateAliasRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "EntityId",
        "Alias"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The organization under which the member (user or group) exists.</p>"
        },
        "EntityId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The member (user or group) to which this alias is added.</p>"
        },
        "Alias": {
          "shape": "EmailAddress",
          "documentation": "<p>The alias to add to the member set.</p>"
        }
      }
    },
    "CreateAliasResponse": {
      "type": "structure",
      "members": {}
    },
    "CreateGroupRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "Name"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The organization under which the group is to be created.</p>"
        },
        "Name": {
          "shape": "GroupName",
          "documentation": "<p>The name of the group.</p>"
        }
      }
    },
    "CreateGroupResponse": {
      "type": "structure",
      "members": {
        "GroupId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier of the group.</p>"
        }
      }
    },
    "CreateResourceRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "Name",
        "Type"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier associated with the organization for which the resource is created.</p>"
        },
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the new resource.</p>"
        },
        "Type": {
          "shape": "ResourceType",
          "documentation": "<p>The type of the new resource. The available types are <code>equipment</code> and <code>room</code>.</p>"
        }
      }
    },
    "CreateResourceResponse": {
      "type": "structure",
      "members": {
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The identifier of the new resource.</p>"
        }
      }
    },
    "CreateUserRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "Name",
        "DisplayName",
        "Password"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier of the organization for which the user is created.</p>"
        },
        "Name": {
          "shape": "UserName",
          "documentation": "<p>The name for the new user. Simple AD or AD Connector user names have a maximum length of 20. All others have a maximum length of 64.</p>"
        },
        "DisplayName": {
          "shape": "String",
          "documentation": "<p>The display name for the new user.</p>"
        },
        "Password": {
          "shape": "Password",
          "documentation": "<p>The password for the new user.</p>"
        }
      }
    },
    "CreateUserResponse": {
      "type": "structure",
      "members": {
        "UserId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier for the new user.</p>"
        }
      }
    },
    "Delegate": {
      "type": "structure",
      "required": [
        "Id",
        "Type"
      ],
      "members": {
        "Id": {
          "shape": "String",
          "documentation": "<p>The identifier for the user or group associated as the resource's delegate.</p>"
        },
        "Type": {
          "shape": "MemberType",
          "documentation": "<p>The type of the delegate: user or group.</p>"
        }
      },
      "documentation": "<p>The name of the attribute, which is one of the values defined in the UserAttribute enumeration.</p>"
    },
    "DeleteAccessControlRuleRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "Name"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization.</p>"
        },
        "Name": {
          "shape": "AccessControlRuleName",
          "documentation": "<p>The name of the access control rule.</p>"
        }
      }
    },
    "DeleteAccessControlRuleResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteAliasRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "EntityId",
        "Alias"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization under which the user exists.</p>"
        },
        "EntityId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier for the member (user or group) from which to have the aliases removed.</p>"
        },
        "Alias": {
          "shape": "EmailAddress",
          "documentation": "<p>The aliases to be removed from the user's set of aliases. Duplicate entries in the list are collapsed into single entries (the list is transformed into a set).</p>"
        }
      }
    },
    "DeleteAliasResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteGroupRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "GroupId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The organization that contains the group.</p>"
        },
        "GroupId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier of the group to be deleted.</p>"
        }
      }
    },
    "DeleteGroupResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteMailboxPermissionsRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "EntityId",
        "GranteeId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier of the organization under which the member (user or group) exists.</p>"
        },
        "EntityId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier of the member (user or group)that owns the mailbox.</p>"
        },
        "GranteeId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier of the member (user or group) for which to delete granted permissions.</p>"
        }
      }
    },
    "DeleteMailboxPermissionsResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteResourceRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "ResourceId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier associated with the organization from which the resource is deleted.</p>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The identifier of the resource to be deleted.</p>"
        }
      }
    },
    "DeleteResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteRetentionPolicyRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "Id"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The organization ID.</p>"
        },
        "Id": {
          "shape": "ShortString",
          "documentation": "<p>The retention policy ID.</p>"
        }
      }
    },
    "DeleteRetentionPolicyResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteUserRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "UserId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The organization that contains the user to be deleted.</p>"
        },
        "UserId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier of the user to be deleted.</p>"
        }
      }
    },
    "DeleteUserResponse": {
      "type": "structure",
      "members": {}
    },
    "DeregisterFromWorkMailRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "EntityId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization under which the Amazon WorkMail entity exists.</p>"
        },
        "EntityId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier for the member (user or group) to be updated.</p>"
        }
      }
    },
    "DeregisterFromWorkMailResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeGroupRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "GroupId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization under which the group exists.</p>"
        },
        "GroupId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier for the group to be described.</p>"
        }
      }
    },
    "DescribeGroupResponse": {
      "type": "structure",
      "members": {
        "GroupId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier of the described group.</p>"
        },
        "Name": {
          "shape": "GroupName",
          "documentation": "<p>The name of the described group.</p>"
        },
        "Email": {
          "shape": "EmailAddress",
          "documentation": "<p>The email of the described group.</p>"
        },
        "State": {
          "shape": "EntityState",
          "documentation": "<p>The state of the user: enabled (registered to Amazon WorkMail) or disabled (deregistered or never registered to WorkMail).</p>"
        },
        "EnabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when a user was registered to WorkMail, in UNIX epoch time format.</p>"
        },
        "DisabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when a user was deregistered from WorkMail, in UNIX epoch time format.</p>"
        }
      }
    },
    "DescribeOrganizationRequest": {
      "type": "structure",
      "required": [
        "OrganizationId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization to be described.</p>"
        }
      }
    },
    "DescribeOrganizationResponse": {
      "type": "structure",
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier of an organization.</p>"
        },
        "Alias": {
          "shape": "OrganizationName",
          "documentation": "<p>The alias for an organization.</p>"
        },
        "State": {
          "shape": "String",
          "documentation": "<p>The state of an organization.</p>"
        },
        "DirectoryId": {
          "shape": "String",
          "documentation": "<p>The identifier for the directory associated with an Amazon WorkMail organization.</p>"
        },
        "DirectoryType": {
          "shape": "String",
          "documentation": "<p>The type of directory associated with the WorkMail organization.</p>"
        },
        "DefaultMailDomain": {
          "shape": "String",
          "documentation": "<p>The default mail domain associated with the organization.</p>"
        },
        "CompletedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date at which the organization became usable in the WorkMail context, in UNIX epoch time format.</p>"
        },
        "ErrorMessage": {
          "shape": "String",
          "documentation": "<p>(Optional) The error message indicating if unexpected behavior was encountered with regards to the organization.</p>"
        },
        "ARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the organization.</p>"
        }
      }
    },
    "DescribeResourceRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "ResourceId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier associated with the organization for which the resource is described.</p>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The identifier of the resource to be described.</p>"
        }
      }
    },
    "DescribeResourceResponse": {
      "type": "structure",
      "members": {
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The identifier of the described resource.</p>"
        },
        "Email": {
          "shape": "EmailAddress",
          "documentation": "<p>The email of the described resource.</p>"
        },
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the described resource.</p>"
        },
        "Type": {
          "shape": "ResourceType",
          "documentation": "<p>The type of the described resource.</p>"
        },
        "BookingOptions": {
          "shape": "BookingOptions",
          "documentation": "<p>The booking options for the described resource.</p>"
        },
        "State": {
          "shape": "EntityState",
          "documentation": "<p>The state of the resource: enabled (registered to Amazon WorkMail), disabled (deregistered or never registered to WorkMail), or deleted.</p>"
        },
        "EnabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when a resource was enabled for WorkMail, in UNIX epoch time format.</p>"
        },
        "DisabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when a resource was disabled from WorkMail, in UNIX epoch time format.</p>"
        }
      }
    },
    "DescribeUserRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "UserId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization under which the user exists.</p>"
        },
        "UserId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier for the user to be described.</p>"
        }
      }
    },
    "DescribeUserResponse": {
      "type": "structure",
      "members": {
        "UserId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier for the described user.</p>"
        },
        "Name": {
          "shape": "UserName",
          "documentation": "<p>The name for the user.</p>"
        },
        "Email": {
          "shape": "EmailAddress",
          "documentation": "<p>The email of the user.</p>"
        },
        "DisplayName": {
          "shape": "String",
          "documentation": "<p>The display name of the user.</p>"
        },
        "State": {
          "shape": "EntityState",
          "documentation": "<p>The state of a user: enabled (registered to Amazon WorkMail) or disabled (deregistered or never registered to WorkMail).</p>"
        },
        "UserRole": {
          "shape": "UserRole",
          "documentation": "<p>In certain cases, other entities are modeled as users. If interoperability is enabled, resources are imported into Amazon WorkMail as users. Because different WorkMail organizations rely on different directory types, administrators can distinguish between an unregistered user (account is disabled and has a user role) and the directory administrators. The values are USER, RESOURCE, and SYSTEM_USER.</p>"
        },
        "EnabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time at which the user was enabled for Amazon WorkMail usage, in UNIX epoch time format.</p>"
        },
        "DisabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time at which the user was disabled for Amazon WorkMail usage, in UNIX epoch time format.</p>"
        }
      }
    },
    "DisassociateDelegateFromResourceRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "ResourceId",
        "EntityId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization under which the resource exists.</p>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The identifier of the resource from which delegates' set members are removed. </p>"
        },
        "EntityId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier for the member (user, group) to be removed from the resource's delegates.</p>"
        }
      }
    },
    "DisassociateDelegateFromResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociateMemberFromGroupRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "GroupId",
        "MemberId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization under which the group exists.</p>"
        },
        "GroupId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier for the group from which members are removed.</p>"
        },
        "MemberId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier for the member to be removed to the group.</p>"
        }
      }
    },
    "DisassociateMemberFromGroupResponse": {
      "type": "structure",
      "members": {}
    },
    "EmailAddress": {
      "type": "string",
      "max": 254,
      "min": 1,
      "pattern": "[a-zA-Z0-9._%+-]{1,64}@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"
    },
    "EntityState": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED",
        "DELETED"
      ]
    },
    "FolderConfiguration": {
      "type": "structure",
      "required": [
        "Name",
        "Action"
      ],
      "members": {
        "Name": {
          "shape": "FolderName",
          "documentation": "<p>The folder name.</p>"
        },
        "Action": {
          "shape": "RetentionAction",
          "documentation": "<p>The action to take on the folder contents at the end of the folder configuration period.</p>"
        },
        "Period": {
          "shape": "RetentionPeriod",
          "documentation": "<p>The period of time at which the folder configuration action is applied.</p>"
        }
      },
      "documentation": "<p>The configuration applied to an organization's folders by its retention policy.</p>"
    },
    "FolderConfigurations": {
      "type": "list",
      "member": {
        "shape": "FolderConfiguration"
      }
    },
    "FolderName": {
      "type": "string",
      "enum": [
        "INBOX",
        "DELETED_ITEMS",
        "SENT_ITEMS",
        "DRAFTS",
        "JUNK_EMAIL"
      ]
    },
    "GetAccessControlEffectRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "IpAddress",
        "Action",
        "UserId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization.</p>"
        },
        "IpAddress": {
          "shape": "IpAddress",
          "documentation": "<p>The IPv4 address.</p>"
        },
        "Action": {
          "shape": "AccessControlRuleAction",
          "documentation": "<p>The access protocol action. Valid values include <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>, <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>"
        },
        "UserId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The user ID.</p>"
        }
      }
    },
    "GetAccessControlEffectResponse": {
      "type": "structure",
      "members": {
        "Effect": {
          "shape": "AccessControlRuleEffect",
          "documentation": "<p>The rule effect.</p>"
        },
        "MatchedRules": {
          "shape": "AccessControlRuleNameList",
          "documentation": "<p>The rules that match the given parameters, resulting in an effect.</p>"
        }
      }
    },
    "GetDefaultRetentionPolicyRequest": {
      "type": "structure",
      "required": [
        "OrganizationId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The organization ID.</p>"
        }
      }
    },
    "GetDefaultRetentionPolicyResponse": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ShortString",
          "documentation": "<p>The retention policy ID.</p>"
        },
        "Name": {
          "shape": "ShortString",
          "documentation": "<p>The retention policy name.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The retention policy description.</p>"
        },
        "FolderConfigurations": {
          "shape": "FolderConfigurations",
          "documentation": "<p>The retention policy folder configurations.</p>"
        }
      }
    },
    "GetMailboxDetailsRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "UserId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization that contains the user whose mailbox details are being requested.</p>"
        },
        "UserId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier for the user whose mailbox details are being requested.</p>"
        }
      }
    },
    "GetMailboxDetailsResponse": {
      "type": "structure",
      "members": {
        "MailboxQuota": {
          "shape": "MailboxQuota",
          "documentation": "<p>The maximum allowed mailbox size, in MB, for the specified user.</p>"
        },
        "MailboxSize": {
          "shape": "MailboxSize",
          "documentation": "<p>The current mailbox size, in MB, for the specified user.</p>"
        }
      }
    },
    "Group": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier of the group.</p>"
        },
        "Email": {
          "shape": "EmailAddress",
          "documentation": "<p>The email of the group.</p>"
        },
        "Name": {
          "shape": "GroupName",
          "documentation": "<p>The name of the group.</p>"
        },
        "State": {
          "shape": "EntityState",
          "documentation": "<p>The state of the group, which can be ENABLED, DISABLED, or DELETED.</p>"
        },
        "EnabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date indicating when the group was enabled for Amazon WorkMail use.</p>"
        },
        "DisabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date indicating when the group was disabled from Amazon WorkMail use.</p>"
        }
      },
      "documentation": "<p>The representation of an Amazon WorkMail group.</p>"
    },
    "GroupName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[\\u0020-\\u00FF]+"
    },
    "Groups": {
      "type": "list",
      "member": {
        "shape": "Group"
      }
    },
    "IpAddress": {
      "type": "string",
      "max": 15,
      "min": 1,
      "pattern": "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"
    },
    "IpRange": {
      "type": "string",
      "max": 18,
      "min": 1,
      "pattern": "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])/([0-9]|[12][0-9]|3[0-2])$"
    },
    "IpRangeList": {
      "type": "list",
      "member": {
        "shape": "IpRange"
      },
      "max": 10,
      "min": 0
    },
    "ListAccessControlRulesRequest": {
      "type": "structure",
      "required": [
        "OrganizationId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization.</p>"
        }
      }
    },
    "ListAccessControlRulesResponse": {
      "type": "structure",
      "members": {
        "Rules": {
          "shape": "AccessControlRulesList",
          "documentation": "<p>The access control rules.</p>"
        }
      }
    },
    "ListAliasesRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "EntityId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization under which the entity exists.</p>"
        },
        "EntityId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier for the entity for which to list the aliases.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single call.</p>"
        }
      }
    },
    "ListAliasesResponse": {
      "type": "structure",
      "members": {
        "Aliases": {
          "shape": "Aliases",
          "documentation": "<p>The entity's paginated aliases.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to retrieve the next page of results. The value is \"null\" when there are no more results to return.</p>"
        }
      }
    },
    "ListGroupMembersRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "GroupId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization under which the group exists.</p>"
        },
        "GroupId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier for the group to which the members (users or groups) are associated.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p> The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single call.</p>"
        }
      }
    },
    "ListGroupMembersResponse": {
      "type": "structure",
      "members": {
        "Members": {
          "shape": "Members",
          "documentation": "<p>The members associated to the group.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>"
        }
      }
    },
    "ListGroupsRequest": {
      "type": "structure",
      "required": [
        "OrganizationId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization under which the groups exist.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single call.</p>"
        }
      }
    },
    "ListGroupsResponse": {
      "type": "structure",
      "members": {
        "Groups": {
          "shape": "Groups",
          "documentation": "<p>The overview of groups for an organization.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to retrieve the next page of results. The value is \"null\" when there are no more results to return.</p>"
        }
      }
    },
    "ListMailboxPermissionsRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "EntityId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier of the organization under which the user, group, or resource exists.</p>"
        },
        "EntityId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier of the user, group, or resource for which to list mailbox permissions.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single call.</p>"
        }
      }
    },
    "ListMailboxPermissionsResponse": {
      "type": "structure",
      "members": {
        "Permissions": {
          "shape": "Permissions",
          "documentation": "<p>One page of the user, group, or resource mailbox permissions.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to retrieve the next page of results. The value is \"null\" when there are no more results to return.</p>"
        }
      }
    },
    "ListOrganizationsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single call.</p>"
        }
      }
    },
    "ListOrganizationsResponse": {
      "type": "structure",
      "members": {
        "OrganizationSummaries": {
          "shape": "OrganizationSummaries",
          "documentation": "<p>The overview of owned organizations presented as a list of organization summaries.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to retrieve the next page of results. The value is \"null\" when there are no more results to return.</p>"
        }
      }
    },
    "ListResourceDelegatesRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "ResourceId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization that contains the resource for which delegates are listed.</p>"
        },
        "ResourceId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier for the resource whose delegates are listed.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token used to paginate through the delegates associated with a resource.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The number of maximum results in a page.</p>"
        }
      }
    },
    "ListResourceDelegatesResponse": {
      "type": "structure",
      "members": {
        "Delegates": {
          "shape": "ResourceDelegates",
          "documentation": "<p>One page of the resource's delegates.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token used to paginate through the delegates associated with a resource. While results are still available, it has an associated value. When the last page is reached, the token is empty. </p>"
        }
      }
    },
    "ListResourcesRequest": {
      "type": "structure",
      "required": [
        "OrganizationId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization under which the resources exist.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single call.</p>"
        }
      }
    },
    "ListResourcesResponse": {
      "type": "structure",
      "members": {
        "Resources": {
          "shape": "Resources",
          "documentation": "<p>One page of the organization's resource representation.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p> The token used to paginate through all the organization's resources. While results are still available, it has an associated value. When the last page is reached, the token is empty.</p>"
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
          "documentation": "<p>The resource ARN.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag key-value pairs.</p>"
        }
      }
    },
    "ListUsersRequest": {
      "type": "structure",
      "required": [
        "OrganizationId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization under which the users exist.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single call.</p>"
        }
      }
    },
    "ListUsersResponse": {
      "type": "structure",
      "members": {
        "Users": {
          "shape": "Users",
          "documentation": "<p>The overview of users for an organization.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p> The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.</p>"
        }
      }
    },
    "MailboxQuota": {
      "type": "integer",
      "box": true,
      "min": 1
    },
    "MailboxSize": {
      "type": "double",
      "min": 0
    },
    "MaxResults": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 1
    },
    "Member": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "String",
          "documentation": "<p>The identifier of the member.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the member.</p>"
        },
        "Type": {
          "shape": "MemberType",
          "documentation": "<p>A member can be a user or group.</p>"
        },
        "State": {
          "shape": "EntityState",
          "documentation": "<p>The state of the member, which can be ENABLED, DISABLED, or DELETED.</p>"
        },
        "EnabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date indicating when the member was enabled for Amazon WorkMail use.</p>"
        },
        "DisabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date indicating when the member was disabled from Amazon WorkMail use.</p>"
        }
      },
      "documentation": "<p>The representation of a user or group.</p>"
    },
    "MemberType": {
      "type": "string",
      "enum": [
        "GROUP",
        "USER"
      ]
    },
    "Members": {
      "type": "list",
      "member": {
        "shape": "Member"
      }
    },
    "NextToken": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "OrganizationId": {
      "type": "string",
      "pattern": "^m-[0-9a-f]{32}$"
    },
    "OrganizationName": {
      "type": "string",
      "max": 62,
      "min": 1,
      "pattern": "^(?!d-)([\\da-zA-Z]+)([-]*[\\da-zA-Z])*"
    },
    "OrganizationSummaries": {
      "type": "list",
      "member": {
        "shape": "OrganizationSummary"
      }
    },
    "OrganizationSummary": {
      "type": "structure",
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier associated with the organization.</p>"
        },
        "Alias": {
          "shape": "OrganizationName",
          "documentation": "<p>The alias associated with the organization.</p>"
        },
        "ErrorMessage": {
          "shape": "String",
          "documentation": "<p>The error message associated with the organization. It is only present if unexpected behavior has occurred with regards to the organization. It provides insight or solutions regarding unexpected behavior.</p>"
        },
        "State": {
          "shape": "String",
          "documentation": "<p>The state associated with the organization.</p>"
        }
      },
      "documentation": "<p>The representation of an organization.</p>"
    },
    "Password": {
      "type": "string",
      "max": 256,
      "pattern": "[\\u0020-\\u00FF]+",
      "sensitive": true
    },
    "Permission": {
      "type": "structure",
      "required": [
        "GranteeId",
        "GranteeType",
        "PermissionValues"
      ],
      "members": {
        "GranteeId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier of the user, group, or resource to which the permissions are granted.</p>"
        },
        "GranteeType": {
          "shape": "MemberType",
          "documentation": "<p>The type of user, group, or resource referred to in GranteeId.</p>"
        },
        "PermissionValues": {
          "shape": "PermissionValues",
          "documentation": "<p>The permissions granted to the grantee. SEND_AS allows the grantee to send email as the owner of the mailbox (the grantee is not mentioned on these emails). SEND_ON_BEHALF allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not mentioned as the physical sender of these emails). FULL_ACCESS allows the grantee full access to the mailbox, irrespective of other folder-level permissions set on the mailbox.</p>"
        }
      },
      "documentation": "<p>Permission granted to a user, group, or resource to access a certain aspect of another user, group, or resource mailbox.</p>"
    },
    "PermissionType": {
      "type": "string",
      "enum": [
        "FULL_ACCESS",
        "SEND_AS",
        "SEND_ON_BEHALF"
      ]
    },
    "PermissionValues": {
      "type": "list",
      "member": {
        "shape": "PermissionType"
      }
    },
    "Permissions": {
      "type": "list",
      "member": {
        "shape": "Permission"
      }
    },
    "PolicyDescription": {
      "type": "string",
      "max": 256,
      "pattern": "[\\w\\d\\s\\S\\-!?=,.;:'_]+"
    },
    "PutAccessControlRuleRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Effect",
        "Description",
        "OrganizationId"
      ],
      "members": {
        "Name": {
          "shape": "AccessControlRuleName",
          "documentation": "<p>The rule name.</p>"
        },
        "Effect": {
          "shape": "AccessControlRuleEffect",
          "documentation": "<p>The rule effect.</p>"
        },
        "Description": {
          "shape": "AccessControlRuleDescription",
          "documentation": "<p>The rule description.</p>"
        },
        "IpRanges": {
          "shape": "IpRangeList",
          "documentation": "<p>IPv4 CIDR ranges to include in the rule.</p>"
        },
        "NotIpRanges": {
          "shape": "IpRangeList",
          "documentation": "<p>IPv4 CIDR ranges to exclude from the rule.</p>"
        },
        "Actions": {
          "shape": "ActionsList",
          "documentation": "<p>Access protocol actions to include in the rule. Valid values include <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>, <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>"
        },
        "NotActions": {
          "shape": "ActionsList",
          "documentation": "<p>Access protocol actions to exclude from the rule. Valid values include <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>, <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>"
        },
        "UserIds": {
          "shape": "UserIdList",
          "documentation": "<p>User IDs to include in the rule.</p>"
        },
        "NotUserIds": {
          "shape": "UserIdList",
          "documentation": "<p>User IDs to exclude from the rule.</p>"
        },
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier of the organization.</p>"
        }
      }
    },
    "PutAccessControlRuleResponse": {
      "type": "structure",
      "members": {}
    },
    "PutMailboxPermissionsRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "EntityId",
        "GranteeId",
        "PermissionValues"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier of the organization under which the user, group, or resource exists.</p>"
        },
        "EntityId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier of the user, group, or resource for which to update mailbox permissions.</p>"
        },
        "GranteeId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier of the user, group, or resource to which to grant the permissions.</p>"
        },
        "PermissionValues": {
          "shape": "PermissionValues",
          "documentation": "<p>The permissions granted to the grantee. SEND_AS allows the grantee to send email as the owner of the mailbox (the grantee is not mentioned on these emails). SEND_ON_BEHALF allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not mentioned as the physical sender of these emails). FULL_ACCESS allows the grantee full access to the mailbox, irrespective of other folder-level permissions set on the mailbox.</p>"
        }
      }
    },
    "PutMailboxPermissionsResponse": {
      "type": "structure",
      "members": {}
    },
    "PutRetentionPolicyRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "Name",
        "FolderConfigurations"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The organization ID.</p>"
        },
        "Id": {
          "shape": "ShortString",
          "documentation": "<p>The retention policy ID.</p>"
        },
        "Name": {
          "shape": "ShortString",
          "documentation": "<p>The retention policy name.</p>"
        },
        "Description": {
          "shape": "PolicyDescription",
          "documentation": "<p>The retention policy description.</p>"
        },
        "FolderConfigurations": {
          "shape": "FolderConfigurations",
          "documentation": "<p>The retention policy folder configurations.</p>"
        }
      }
    },
    "PutRetentionPolicyResponse": {
      "type": "structure",
      "members": {}
    },
    "RegisterToWorkMailRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "EntityId",
        "Email"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization under which the user, group, or resource exists.</p>"
        },
        "EntityId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier for the user, group, or resource to be updated.</p>"
        },
        "Email": {
          "shape": "EmailAddress",
          "documentation": "<p>The email for the user, group, or resource to be updated.</p>"
        }
      }
    },
    "RegisterToWorkMailResponse": {
      "type": "structure",
      "members": {}
    },
    "ResetPasswordRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "UserId",
        "Password"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier of the organization that contains the user for which the password is reset.</p>"
        },
        "UserId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier of the user for whom the password is reset.</p>"
        },
        "Password": {
          "shape": "Password",
          "documentation": "<p>The new password for the user.</p>"
        }
      }
    },
    "ResetPasswordResponse": {
      "type": "structure",
      "members": {}
    },
    "Resource": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier of the resource.</p>"
        },
        "Email": {
          "shape": "EmailAddress",
          "documentation": "<p>The email of the resource.</p>"
        },
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the resource.</p>"
        },
        "Type": {
          "shape": "ResourceType",
          "documentation": "<p>The type of the resource: equipment or room.</p>"
        },
        "State": {
          "shape": "EntityState",
          "documentation": "<p>The state of the resource, which can be ENABLED, DISABLED, or DELETED.</p>"
        },
        "EnabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date indicating when the resource was enabled for Amazon WorkMail use.</p>"
        },
        "DisabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date indicating when the resource was disabled from Amazon WorkMail use.</p>"
        }
      },
      "documentation": "<p>The representation of a resource.</p>"
    },
    "ResourceDelegates": {
      "type": "list",
      "member": {
        "shape": "Delegate"
      }
    },
    "ResourceId": {
      "type": "string",
      "pattern": "^r-[0-9a-f]{32}$"
    },
    "ResourceName": {
      "type": "string",
      "max": 20,
      "min": 1,
      "pattern": "[\\w\\-.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z0-9]{2,})?"
    },
    "ResourceType": {
      "type": "string",
      "enum": [
        "ROOM",
        "EQUIPMENT"
      ]
    },
    "Resources": {
      "type": "list",
      "member": {
        "shape": "Resource"
      }
    },
    "RetentionAction": {
      "type": "string",
      "enum": [
        "NONE",
        "DELETE",
        "PERMANENTLY_DELETE"
      ]
    },
    "RetentionPeriod": {
      "type": "integer",
      "box": true,
      "max": 730,
      "min": 1
    },
    "ShortString": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[a-zA-Z0-9_-]+"
    },
    "String": {
      "type": "string",
      "max": 256
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
          "documentation": "<p>The key of the tag.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value of the tag.</p>"
        }
      },
      "documentation": "<p>Describes a tag applied to a resource.</p>"
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
      "max": 50,
      "min": 0
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 50,
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
          "documentation": "<p>The resource ARN.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tag key-value pairs.</p>"
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
    "Timestamp": {
      "type": "timestamp"
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
          "documentation": "<p>The resource ARN.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The tag keys.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateMailboxQuotaRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "UserId",
        "MailboxQuota"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier for the organization that contains the user for whom to update the mailbox quota.</p>"
        },
        "UserId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifer for the user for whom to update the mailbox quota.</p>"
        },
        "MailboxQuota": {
          "shape": "MailboxQuota",
          "documentation": "<p>The updated mailbox quota, in MB, for the specified user.</p>"
        }
      }
    },
    "UpdateMailboxQuotaResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdatePrimaryEmailAddressRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "EntityId",
        "Email"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The organization that contains the user, group, or resource to update.</p>"
        },
        "EntityId": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The user, group, or resource to update.</p>"
        },
        "Email": {
          "shape": "EmailAddress",
          "documentation": "<p>The value of the email to be updated as primary.</p>"
        }
      }
    },
    "UpdatePrimaryEmailAddressResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateResourceRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "ResourceId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "OrganizationId",
          "documentation": "<p>The identifier associated with the organization for which the resource is updated.</p>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The identifier of the resource to be updated.</p>"
        },
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the resource to be updated.</p>"
        },
        "BookingOptions": {
          "shape": "BookingOptions",
          "documentation": "<p>The resource's booking options to be updated.</p>"
        }
      }
    },
    "UpdateResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "User": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "WorkMailIdentifier",
          "documentation": "<p>The identifier of the user.</p>"
        },
        "Email": {
          "shape": "EmailAddress",
          "documentation": "<p>The email of the user.</p>"
        },
        "Name": {
          "shape": "UserName",
          "documentation": "<p>The name of the user.</p>"
        },
        "DisplayName": {
          "shape": "String",
          "documentation": "<p>The display name of the user.</p>"
        },
        "State": {
          "shape": "EntityState",
          "documentation": "<p>The state of the user, which can be ENABLED, DISABLED, or DELETED.</p>"
        },
        "UserRole": {
          "shape": "UserRole",
          "documentation": "<p>The role of the user.</p>"
        },
        "EnabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date indicating when the user was enabled for Amazon WorkMail use.</p>"
        },
        "DisabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date indicating when the user was disabled from Amazon WorkMail use.</p>"
        }
      },
      "documentation": "<p>The representation of an Amazon WorkMail user.</p>"
    },
    "UserIdList": {
      "type": "list",
      "member": {
        "shape": "WorkMailIdentifier"
      },
      "max": 10,
      "min": 0
    },
    "UserName": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[\\w\\-.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z0-9]{2,})?"
    },
    "UserRole": {
      "type": "string",
      "enum": [
        "USER",
        "RESOURCE",
        "SYSTEM_USER"
      ]
    },
    "Users": {
      "type": "list",
      "member": {
        "shape": "User"
      }
    },
    "WorkMailIdentifier": {
      "type": "string",
      "max": 256,
      "min": 12
    }
  },
  "documentation": "<p>Amazon WorkMail is a secure, managed business email and calendaring service with support for existing desktop and mobile email clients. You can access your email, contacts, and calendars using Microsoft Outlook, your browser, or other native iOS and Android email applications. You can integrate WorkMail with your existing corporate directory and control both the keys that encrypt your data and the location in which your data is stored.</p> <p>The WorkMail API is designed for the following scenarios:</p> <ul> <li> <p>Listing and describing organizations</p> </li> </ul> <ul> <li> <p>Managing users</p> </li> </ul> <ul> <li> <p>Managing groups</p> </li> </ul> <ul> <li> <p>Managing resources</p> </li> </ul> <p>All WorkMail API operations are Amazon-authenticated and certificate-signed. They not only require the use of the AWS SDK, but also allow for the exclusive use of AWS Identity and Access Management users and roles to help facilitate access, trust, and permission policies. By creating a role and allowing an IAM user to access the WorkMail site, the IAM user gains full administrative visibility into the entire WorkMail organization (or as set in the IAM policy). This includes, but is not limited to, the ability to create, update, and delete users, groups, and resources. This allows developers to perform the scenarios listed above, as well as give users the ability to grant access on a selective basis using the IAM model.</p>"
}
]===]))
