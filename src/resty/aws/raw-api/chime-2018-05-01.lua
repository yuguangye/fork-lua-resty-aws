local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-05-01",
    "endpointPrefix": "chime",
    "protocol": "rest-json",
    "serviceFullName": "Amazon Chime",
    "serviceId": "Chime",
    "signatureVersion": "v4",
    "uid": "chime-2018-05-01"
  },
  "operations": {
    "AssociatePhoneNumberWithUser": {
      "name": "AssociatePhoneNumberWithUser",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/users/{userId}?operation=associate-phone-number",
        "responseCode": 200
      },
      "input": {
        "shape": "AssociatePhoneNumberWithUserRequest"
      },
      "output": {
        "shape": "AssociatePhoneNumberWithUserResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Associates a phone number with the specified Amazon Chime user.</p>"
    },
    "AssociatePhoneNumbersWithVoiceConnector": {
      "name": "AssociatePhoneNumbersWithVoiceConnector",
      "http": {
        "method": "POST",
        "requestUri": "/voice-connectors/{voiceConnectorId}?operation=associate-phone-numbers",
        "responseCode": 200
      },
      "input": {
        "shape": "AssociatePhoneNumbersWithVoiceConnectorRequest"
      },
      "output": {
        "shape": "AssociatePhoneNumbersWithVoiceConnectorResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Associates phone numbers with the specified Amazon Chime Voice Connector.</p>"
    },
    "AssociatePhoneNumbersWithVoiceConnectorGroup": {
      "name": "AssociatePhoneNumbersWithVoiceConnectorGroup",
      "http": {
        "method": "POST",
        "requestUri": "/voice-connector-groups/{voiceConnectorGroupId}?operation=associate-phone-numbers",
        "responseCode": 200
      },
      "input": {
        "shape": "AssociatePhoneNumbersWithVoiceConnectorGroupRequest"
      },
      "output": {
        "shape": "AssociatePhoneNumbersWithVoiceConnectorGroupResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Associates phone numbers with the specified Amazon Chime Voice Connector group.</p>"
    },
    "AssociateSigninDelegateGroupsWithAccount": {
      "name": "AssociateSigninDelegateGroupsWithAccount",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}?operation=associate-signin-delegate-groups",
        "responseCode": 200
      },
      "input": {
        "shape": "AssociateSigninDelegateGroupsWithAccountRequest"
      },
      "output": {
        "shape": "AssociateSigninDelegateGroupsWithAccountResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Associates the specified sign-in delegate groups with the specified Amazon Chime account.</p>"
    },
    "BatchCreateAttendee": {
      "name": "BatchCreateAttendee",
      "http": {
        "method": "POST",
        "requestUri": "/meetings/{meetingId}/attendees?operation=batch-create",
        "responseCode": 201
      },
      "input": {
        "shape": "BatchCreateAttendeeRequest"
      },
      "output": {
        "shape": "BatchCreateAttendeeResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates up to 100 new attendees for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see <a href=\"https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html\">Using the Amazon Chime SDK</a> in the <i>Amazon Chime Developer Guide</i>. </p>"
    },
    "BatchCreateRoomMembership": {
      "name": "BatchCreateRoomMembership",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/rooms/{roomId}/memberships?operation=batch-create",
        "responseCode": 201
      },
      "input": {
        "shape": "BatchCreateRoomMembershipRequest"
      },
      "output": {
        "shape": "BatchCreateRoomMembershipResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds up to 50 members to a chat room in an Amazon Chime Enterprise account. Members can be either users or bots. The member role designates whether the member is a chat room administrator or a general chat room member.</p>"
    },
    "BatchDeletePhoneNumber": {
      "name": "BatchDeletePhoneNumber",
      "http": {
        "method": "POST",
        "requestUri": "/phone-numbers?operation=batch-delete",
        "responseCode": 200
      },
      "input": {
        "shape": "BatchDeletePhoneNumberRequest"
      },
      "output": {
        "shape": "BatchDeletePhoneNumberResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Moves phone numbers into the <b>Deletion queue</b>. Phone numbers must be disassociated from any users or Amazon Chime Voice Connectors before they can be deleted.</p> <p>Phone numbers remain in the <b>Deletion queue</b> for 7 days before they are deleted permanently.</p>"
    },
    "BatchSuspendUser": {
      "name": "BatchSuspendUser",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/users?operation=suspend",
        "responseCode": 200
      },
      "input": {
        "shape": "BatchSuspendUserRequest"
      },
      "output": {
        "shape": "BatchSuspendUserResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Suspends up to 50 users from a <code>Team</code> or <code>EnterpriseLWA</code> Amazon Chime account. For more information about different account types, see <a href=\"https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html\">Managing Your Amazon Chime Accounts</a> in the <i>Amazon Chime Administration Guide</i>.</p> <p>Users suspended from a <code>Team</code> account are disassociated from the account, but they can continue to use Amazon Chime as free users. To remove the suspension from suspended <code>Team</code> account users, invite them to the <code>Team</code> account again. You can use the <a>InviteUsers</a> action to do so.</p> <p>Users suspended from an <code>EnterpriseLWA</code> account are immediately signed out of Amazon Chime and can no longer sign in. To remove the suspension from suspended <code>EnterpriseLWA</code> account users, use the <a>BatchUnsuspendUser</a> action. </p> <p>To sign out users without suspending them, use the <a>LogoutUser</a> action.</p>"
    },
    "BatchUnsuspendUser": {
      "name": "BatchUnsuspendUser",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/users?operation=unsuspend",
        "responseCode": 200
      },
      "input": {
        "shape": "BatchUnsuspendUserRequest"
      },
      "output": {
        "shape": "BatchUnsuspendUserResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Removes the suspension from up to 50 previously suspended users for the specified Amazon Chime <code>EnterpriseLWA</code> account. Only users on <code>EnterpriseLWA</code> accounts can be unsuspended using this action. For more information about different account types, see <a href=\"https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html\">Managing Your Amazon Chime Accounts</a> in the <i>Amazon Chime Administration Guide</i>.</p> <p>Previously suspended users who are unsuspended using this action are returned to <code>Registered</code> status. Users who are not previously suspended are ignored.</p>"
    },
    "BatchUpdatePhoneNumber": {
      "name": "BatchUpdatePhoneNumber",
      "http": {
        "method": "POST",
        "requestUri": "/phone-numbers?operation=batch-update",
        "responseCode": 200
      },
      "input": {
        "shape": "BatchUpdatePhoneNumberRequest"
      },
      "output": {
        "shape": "BatchUpdatePhoneNumberResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates phone number product types or calling names. You can update one attribute at a time for each <code>UpdatePhoneNumberRequestItem</code>. For example, you can update either the product type or the calling name.</p> <p>For product types, choose from Amazon Chime Business Calling and Amazon Chime Voice Connector. For toll-free numbers, you must use the Amazon Chime Voice Connector product type.</p> <p>Updates to outbound calling names can take up to 72 hours to complete. Pending updates to outbound calling names must be complete before you can request another update.</p>"
    },
    "BatchUpdateUser": {
      "name": "BatchUpdateUser",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/users",
        "responseCode": 200
      },
      "input": {
        "shape": "BatchUpdateUserRequest"
      },
      "output": {
        "shape": "BatchUpdateUserResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates user details within the <a>UpdateUserRequestItem</a> object for up to 20 users for the specified Amazon Chime account. Currently, only <code>LicenseType</code> updates are supported for this action.</p>"
    },
    "CreateAccount": {
      "name": "CreateAccount",
      "http": {
        "method": "POST",
        "requestUri": "/accounts",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateAccountRequest"
      },
      "output": {
        "shape": "CreateAccountResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates an Amazon Chime account under the administrator's AWS account. Only <code>Team</code> account types are currently supported for this action. For more information about different account types, see <a href=\"https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html\">Managing Your Amazon Chime Accounts</a> in the <i>Amazon Chime Administration Guide</i>.</p>"
    },
    "CreateAttendee": {
      "name": "CreateAttendee",
      "http": {
        "method": "POST",
        "requestUri": "/meetings/{meetingId}/attendees",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateAttendeeRequest"
      },
      "output": {
        "shape": "CreateAttendeeResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates a new attendee for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see <a href=\"https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html\">Using the Amazon Chime SDK</a> in the <i>Amazon Chime Developer Guide</i>.</p>"
    },
    "CreateBot": {
      "name": "CreateBot",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/bots",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateBotRequest"
      },
      "output": {
        "shape": "CreateBotResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ThrottledClientException"
        }
      ],
      "documentation": "<p>Creates a bot for an Amazon Chime Enterprise account.</p>"
    },
    "CreateMeeting": {
      "name": "CreateMeeting",
      "http": {
        "method": "POST",
        "requestUri": "/meetings",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateMeetingRequest"
      },
      "output": {
        "shape": "CreateMeetingResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates a new Amazon Chime SDK meeting in the specified media Region with no initial attendees. For more information about specifying media Regions, see <a href=\"https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html\">Amazon Chime SDK Media Regions</a> in the <i>Amazon Chime Developer Guide</i>. For more information about the Amazon Chime SDK, see <a href=\"https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html\">Using the Amazon Chime SDK</a> in the <i>Amazon Chime Developer Guide</i>.</p>"
    },
    "CreateMeetingWithAttendees": {
      "name": "CreateMeetingWithAttendees",
      "http": {
        "method": "POST",
        "requestUri": "/meetings?operation=create-attendees",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateMeetingWithAttendeesRequest"
      },
      "output": {
        "shape": "CreateMeetingWithAttendeesResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates a new Amazon Chime SDK meeting in the specified media Region, with attendees. For more information about specifying media Regions, see <a href=\"https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html\">Amazon Chime SDK Media Regions</a> in the <i>Amazon Chime Developer Guide</i>. For more information about the Amazon Chime SDK, see <a href=\"https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html\">Using the Amazon Chime SDK</a> in the <i>Amazon Chime Developer Guide</i>.</p>"
    },
    "CreatePhoneNumberOrder": {
      "name": "CreatePhoneNumberOrder",
      "http": {
        "method": "POST",
        "requestUri": "/phone-number-orders",
        "responseCode": 201
      },
      "input": {
        "shape": "CreatePhoneNumberOrderRequest"
      },
      "output": {
        "shape": "CreatePhoneNumberOrderResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates an order for phone numbers to be provisioned. Choose from Amazon Chime Business Calling and Amazon Chime Voice Connector product types. For toll-free numbers, you must use the Amazon Chime Voice Connector product type.</p>"
    },
    "CreateProxySession": {
      "name": "CreateProxySession",
      "http": {
        "method": "POST",
        "requestUri": "/voice-connectors/{voiceConnectorId}/proxy-sessions",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateProxySessionRequest"
      },
      "output": {
        "shape": "CreateProxySessionResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates a proxy session on the specified Amazon Chime Voice Connector for the specified participant phone numbers.</p>"
    },
    "CreateRoom": {
      "name": "CreateRoom",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/rooms",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateRoomRequest"
      },
      "output": {
        "shape": "CreateRoomResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates a chat room for the specified Amazon Chime Enterprise account.</p>"
    },
    "CreateRoomMembership": {
      "name": "CreateRoomMembership",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/rooms/{roomId}/memberships",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateRoomMembershipRequest"
      },
      "output": {
        "shape": "CreateRoomMembershipResponse"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds a member to a chat room in an Amazon Chime Enterprise account. A member can be either a user or a bot. The member role designates whether the member is a chat room administrator or a general chat room member.</p>"
    },
    "CreateUser": {
      "name": "CreateUser",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/users?operation=create",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateUserRequest"
      },
      "output": {
        "shape": "CreateUserResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates a user under the specified Amazon Chime account.</p>"
    },
    "CreateVoiceConnector": {
      "name": "CreateVoiceConnector",
      "http": {
        "method": "POST",
        "requestUri": "/voice-connectors",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateVoiceConnectorRequest"
      },
      "output": {
        "shape": "CreateVoiceConnectorResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates an Amazon Chime Voice Connector under the administrator's AWS account. You can choose to create an Amazon Chime Voice Connector in a specific AWS Region.</p> <p>Enabling <a>CreateVoiceConnectorRequest$RequireEncryption</a> configures your Amazon Chime Voice Connector to use TLS transport for SIP signaling and Secure RTP (SRTP) for media. Inbound calls use TLS transport, and unencrypted outbound calls are blocked.</p>"
    },
    "CreateVoiceConnectorGroup": {
      "name": "CreateVoiceConnectorGroup",
      "http": {
        "method": "POST",
        "requestUri": "/voice-connector-groups",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateVoiceConnectorGroupRequest"
      },
      "output": {
        "shape": "CreateVoiceConnectorGroupResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates an Amazon Chime Voice Connector group under the administrator's AWS account. You can associate Amazon Chime Voice Connectors with the Amazon Chime Voice Connector group by including <code>VoiceConnectorItems</code> in the request.</p> <p>You can include Amazon Chime Voice Connectors from different AWS Regions in your group. This creates a fault tolerant mechanism for fallback in case of availability events.</p>"
    },
    "DeleteAccount": {
      "name": "DeleteAccount",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{accountId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteAccountRequest"
      },
      "output": {
        "shape": "DeleteAccountResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "UnprocessableEntityException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified Amazon Chime account. You must suspend all users before deleting a <code>Team</code> account. You can use the <a>BatchSuspendUser</a> action to do so.</p> <p>For <code>EnterpriseLWA</code> and <code>EnterpriseAD</code> accounts, you must release the claimed domains for your Amazon Chime account before deletion. As soon as you release the domain, all users under that account are suspended.</p> <p>Deleted accounts appear in your <code>Disabled</code> accounts list for 90 days. To restore a deleted account from your <code>Disabled</code> accounts list, you must contact AWS Support.</p> <p>After 90 days, deleted accounts are permanently removed from your <code>Disabled</code> accounts list.</p>"
    },
    "DeleteAttendee": {
      "name": "DeleteAttendee",
      "http": {
        "method": "DELETE",
        "requestUri": "/meetings/{meetingId}/attendees/{attendeeId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteAttendeeRequest"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes an attendee from the specified Amazon Chime SDK meeting and deletes their <code>JoinToken</code>. Attendees are automatically deleted when a Amazon Chime SDK meeting is deleted. For more information about the Amazon Chime SDK, see <a href=\"https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html\">Using the Amazon Chime SDK</a> in the <i>Amazon Chime Developer Guide</i>.</p>"
    },
    "DeleteEventsConfiguration": {
      "name": "DeleteEventsConfiguration",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{accountId}/bots/{botId}/events-configuration",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteEventsConfigurationRequest"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ResourceLimitExceededException"
        }
      ],
      "documentation": "<p>Deletes the events configuration that allows a bot to receive outgoing events.</p>"
    },
    "DeleteMeeting": {
      "name": "DeleteMeeting",
      "http": {
        "method": "DELETE",
        "requestUri": "/meetings/{meetingId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteMeetingRequest"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified Amazon Chime SDK meeting. When a meeting is deleted, its attendees are also deleted and clients can no longer join it. For more information about the Amazon Chime SDK, see <a href=\"https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html\">Using the Amazon Chime SDK</a> in the <i>Amazon Chime Developer Guide</i>.</p>"
    },
    "DeletePhoneNumber": {
      "name": "DeletePhoneNumber",
      "http": {
        "method": "DELETE",
        "requestUri": "/phone-numbers/{phoneNumberId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeletePhoneNumberRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Moves the specified phone number into the <b>Deletion queue</b>. A phone number must be disassociated from any users or Amazon Chime Voice Connectors before it can be deleted.</p> <p>Deleted phone numbers remain in the <b>Deletion queue</b> for 7 days before they are deleted permanently.</p>"
    },
    "DeleteProxySession": {
      "name": "DeleteProxySession",
      "http": {
        "method": "DELETE",
        "requestUri": "/voice-connectors/{voiceConnectorId}/proxy-sessions/{proxySessionId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteProxySessionRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified proxy session from the specified Amazon Chime Voice Connector.</p>"
    },
    "DeleteRoom": {
      "name": "DeleteRoom",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{accountId}/rooms/{roomId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteRoomRequest"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes a chat room in an Amazon Chime Enterprise account.</p>"
    },
    "DeleteRoomMembership": {
      "name": "DeleteRoomMembership",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{accountId}/rooms/{roomId}/memberships/{memberId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteRoomMembershipRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Removes a member from a chat room in an Amazon Chime Enterprise account.</p>"
    },
    "DeleteVoiceConnector": {
      "name": "DeleteVoiceConnector",
      "http": {
        "method": "DELETE",
        "requestUri": "/voice-connectors/{voiceConnectorId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteVoiceConnectorRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified Amazon Chime Voice Connector. Any phone numbers associated with the Amazon Chime Voice Connector must be disassociated from it before it can be deleted.</p>"
    },
    "DeleteVoiceConnectorEmergencyCallingConfiguration": {
      "name": "DeleteVoiceConnectorEmergencyCallingConfiguration",
      "http": {
        "method": "DELETE",
        "requestUri": "/voice-connectors/{voiceConnectorId}/emergency-calling-configuration",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteVoiceConnectorEmergencyCallingConfigurationRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the emergency calling configuration details from the specified Amazon Chime Voice Connector.</p>"
    },
    "DeleteVoiceConnectorGroup": {
      "name": "DeleteVoiceConnectorGroup",
      "http": {
        "method": "DELETE",
        "requestUri": "/voice-connector-groups/{voiceConnectorGroupId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteVoiceConnectorGroupRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified Amazon Chime Voice Connector group. Any <code>VoiceConnectorItems</code> and phone numbers associated with the group must be removed before it can be deleted.</p>"
    },
    "DeleteVoiceConnectorOrigination": {
      "name": "DeleteVoiceConnectorOrigination",
      "http": {
        "method": "DELETE",
        "requestUri": "/voice-connectors/{voiceConnectorId}/origination",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteVoiceConnectorOriginationRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the origination settings for the specified Amazon Chime Voice Connector.</p> <note> <p>If emergency calling is configured for the Amazon Chime Voice Connector, it must be deleted prior to deleting the origination settings.</p> </note>"
    },
    "DeleteVoiceConnectorProxy": {
      "name": "DeleteVoiceConnectorProxy",
      "http": {
        "method": "DELETE",
        "requestUri": "/voice-connectors/{voiceConnectorId}/programmable-numbers/proxy",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteVoiceConnectorProxyRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the proxy configuration from the specified Amazon Chime Voice Connector.</p>"
    },
    "DeleteVoiceConnectorStreamingConfiguration": {
      "name": "DeleteVoiceConnectorStreamingConfiguration",
      "http": {
        "method": "DELETE",
        "requestUri": "/voice-connectors/{voiceConnectorId}/streaming-configuration",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteVoiceConnectorStreamingConfigurationRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the streaming configuration for the specified Amazon Chime Voice Connector.</p>"
    },
    "DeleteVoiceConnectorTermination": {
      "name": "DeleteVoiceConnectorTermination",
      "http": {
        "method": "DELETE",
        "requestUri": "/voice-connectors/{voiceConnectorId}/termination",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteVoiceConnectorTerminationRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the termination settings for the specified Amazon Chime Voice Connector.</p> <note> <p>If emergency calling is configured for the Amazon Chime Voice Connector, it must be deleted prior to deleting the termination settings.</p> </note>"
    },
    "DeleteVoiceConnectorTerminationCredentials": {
      "name": "DeleteVoiceConnectorTerminationCredentials",
      "http": {
        "method": "POST",
        "requestUri": "/voice-connectors/{voiceConnectorId}/termination/credentials?operation=delete",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteVoiceConnectorTerminationCredentialsRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified SIP credentials used by your equipment to authenticate during call termination.</p>"
    },
    "DisassociatePhoneNumberFromUser": {
      "name": "DisassociatePhoneNumberFromUser",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/users/{userId}?operation=disassociate-phone-number",
        "responseCode": 200
      },
      "input": {
        "shape": "DisassociatePhoneNumberFromUserRequest"
      },
      "output": {
        "shape": "DisassociatePhoneNumberFromUserResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Disassociates the primary provisioned phone number from the specified Amazon Chime user.</p>"
    },
    "DisassociatePhoneNumbersFromVoiceConnector": {
      "name": "DisassociatePhoneNumbersFromVoiceConnector",
      "http": {
        "method": "POST",
        "requestUri": "/voice-connectors/{voiceConnectorId}?operation=disassociate-phone-numbers",
        "responseCode": 200
      },
      "input": {
        "shape": "DisassociatePhoneNumbersFromVoiceConnectorRequest"
      },
      "output": {
        "shape": "DisassociatePhoneNumbersFromVoiceConnectorResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Disassociates the specified phone numbers from the specified Amazon Chime Voice Connector.</p>"
    },
    "DisassociatePhoneNumbersFromVoiceConnectorGroup": {
      "name": "DisassociatePhoneNumbersFromVoiceConnectorGroup",
      "http": {
        "method": "POST",
        "requestUri": "/voice-connector-groups/{voiceConnectorGroupId}?operation=disassociate-phone-numbers",
        "responseCode": 200
      },
      "input": {
        "shape": "DisassociatePhoneNumbersFromVoiceConnectorGroupRequest"
      },
      "output": {
        "shape": "DisassociatePhoneNumbersFromVoiceConnectorGroupResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Disassociates the specified phone numbers from the specified Amazon Chime Voice Connector group.</p>"
    },
    "DisassociateSigninDelegateGroupsFromAccount": {
      "name": "DisassociateSigninDelegateGroupsFromAccount",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}?operation=disassociate-signin-delegate-groups",
        "responseCode": 200
      },
      "input": {
        "shape": "DisassociateSigninDelegateGroupsFromAccountRequest"
      },
      "output": {
        "shape": "DisassociateSigninDelegateGroupsFromAccountResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Disassociates the specified sign-in delegate groups from the specified Amazon Chime account.</p>"
    },
    "GetAccount": {
      "name": "GetAccount",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{accountId}"
      },
      "input": {
        "shape": "GetAccountRequest"
      },
      "output": {
        "shape": "GetAccountResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves details for the specified Amazon Chime account, such as account type and supported licenses.</p>"
    },
    "GetAccountSettings": {
      "name": "GetAccountSettings",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{accountId}/settings"
      },
      "input": {
        "shape": "GetAccountSettingsRequest"
      },
      "output": {
        "shape": "GetAccountSettingsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves account settings for the specified Amazon Chime account ID, such as remote control and dial out settings. For more information about these settings, see <a href=\"https://docs.aws.amazon.com/chime/latest/ag/policies.html\">Use the Policies Page</a> in the <i>Amazon Chime Administration Guide</i>.</p>"
    },
    "GetAttendee": {
      "name": "GetAttendee",
      "http": {
        "method": "GET",
        "requestUri": "/meetings/{meetingId}/attendees/{attendeeId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetAttendeeRequest"
      },
      "output": {
        "shape": "GetAttendeeResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Gets the Amazon Chime SDK attendee details for a specified meeting ID and attendee ID. For more information about the Amazon Chime SDK, see <a href=\"https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html\">Using the Amazon Chime SDK</a> in the <i>Amazon Chime Developer Guide</i>.</p>"
    },
    "GetBot": {
      "name": "GetBot",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{accountId}/bots/{botId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetBotRequest"
      },
      "output": {
        "shape": "GetBotResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        }
      ],
      "documentation": "<p>Retrieves details for the specified bot, such as bot email address, bot type, status, and display name.</p>"
    },
    "GetEventsConfiguration": {
      "name": "GetEventsConfiguration",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{accountId}/bots/{botId}/events-configuration",
        "responseCode": 200
      },
      "input": {
        "shape": "GetEventsConfigurationRequest"
      },
      "output": {
        "shape": "GetEventsConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Gets details for an events configuration that allows a bot to receive outgoing events, such as an HTTPS endpoint or Lambda function ARN. </p>"
    },
    "GetGlobalSettings": {
      "name": "GetGlobalSettings",
      "http": {
        "method": "GET",
        "requestUri": "/settings",
        "responseCode": 200
      },
      "output": {
        "shape": "GetGlobalSettingsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves global settings for the administrator's AWS account, such as Amazon Chime Business Calling and Amazon Chime Voice Connector settings.</p>"
    },
    "GetMeeting": {
      "name": "GetMeeting",
      "http": {
        "method": "GET",
        "requestUri": "/meetings/{meetingId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetMeetingRequest"
      },
      "output": {
        "shape": "GetMeetingResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Gets the Amazon Chime SDK meeting details for the specified meeting ID. For more information about the Amazon Chime SDK, see <a href=\"https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html\">Using the Amazon Chime SDK</a> in the <i>Amazon Chime Developer Guide</i>.</p>"
    },
    "GetPhoneNumber": {
      "name": "GetPhoneNumber",
      "http": {
        "method": "GET",
        "requestUri": "/phone-numbers/{phoneNumberId}"
      },
      "input": {
        "shape": "GetPhoneNumberRequest"
      },
      "output": {
        "shape": "GetPhoneNumberResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves details for the specified phone number ID, such as associations, capabilities, and product type.</p>"
    },
    "GetPhoneNumberOrder": {
      "name": "GetPhoneNumberOrder",
      "http": {
        "method": "GET",
        "requestUri": "/phone-number-orders/{phoneNumberOrderId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetPhoneNumberOrderRequest"
      },
      "output": {
        "shape": "GetPhoneNumberOrderResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves details for the specified phone number order, such as order creation timestamp, phone numbers in E.164 format, product type, and order status.</p>"
    },
    "GetPhoneNumberSettings": {
      "name": "GetPhoneNumberSettings",
      "http": {
        "method": "GET",
        "requestUri": "/settings/phone-number",
        "responseCode": 200
      },
      "output": {
        "shape": "GetPhoneNumberSettingsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves the phone number settings for the administrator's AWS account, such as the default outbound calling name.</p>"
    },
    "GetProxySession": {
      "name": "GetProxySession",
      "http": {
        "method": "GET",
        "requestUri": "/voice-connectors/{voiceConnectorId}/proxy-sessions/{proxySessionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetProxySessionRequest"
      },
      "output": {
        "shape": "GetProxySessionResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Gets the specified proxy session details for the specified Amazon Chime Voice Connector.</p>"
    },
    "GetRetentionSettings": {
      "name": "GetRetentionSettings",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{accountId}/retention-settings"
      },
      "input": {
        "shape": "GetRetentionSettingsRequest"
      },
      "output": {
        "shape": "GetRetentionSettingsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Gets the retention settings for the specified Amazon Chime Enterprise account. For more information about retention settings, see <a href=\"https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html\">Managing Chat Retention Policies</a> in the <i>Amazon Chime Administration Guide</i>.</p>"
    },
    "GetRoom": {
      "name": "GetRoom",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{accountId}/rooms/{roomId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetRoomRequest"
      },
      "output": {
        "shape": "GetRoomResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves room details, such as the room name, for a room in an Amazon Chime Enterprise account.</p>"
    },
    "GetUser": {
      "name": "GetUser",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{accountId}/users/{userId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetUserRequest"
      },
      "output": {
        "shape": "GetUserResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves details for the specified user ID, such as primary email address, license type, and personal meeting PIN.</p> <p>To retrieve user details with an email address instead of a user ID, use the <a>ListUsers</a> action, and then filter by email address.</p>"
    },
    "GetUserSettings": {
      "name": "GetUserSettings",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{accountId}/users/{userId}/settings",
        "responseCode": 200
      },
      "input": {
        "shape": "GetUserSettingsRequest"
      },
      "output": {
        "shape": "GetUserSettingsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves settings for the specified user ID, such as any associated phone number settings.</p>"
    },
    "GetVoiceConnector": {
      "name": "GetVoiceConnector",
      "http": {
        "method": "GET",
        "requestUri": "/voice-connectors/{voiceConnectorId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetVoiceConnectorRequest"
      },
      "output": {
        "shape": "GetVoiceConnectorResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves details for the specified Amazon Chime Voice Connector, such as timestamps, name, outbound host, and encryption requirements.</p>"
    },
    "GetVoiceConnectorEmergencyCallingConfiguration": {
      "name": "GetVoiceConnectorEmergencyCallingConfiguration",
      "http": {
        "method": "GET",
        "requestUri": "/voice-connectors/{voiceConnectorId}/emergency-calling-configuration",
        "responseCode": 200
      },
      "input": {
        "shape": "GetVoiceConnectorEmergencyCallingConfigurationRequest"
      },
      "output": {
        "shape": "GetVoiceConnectorEmergencyCallingConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Gets the emergency calling configuration details for the specified Amazon Chime Voice Connector.</p>"
    },
    "GetVoiceConnectorGroup": {
      "name": "GetVoiceConnectorGroup",
      "http": {
        "method": "GET",
        "requestUri": "/voice-connector-groups/{voiceConnectorGroupId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetVoiceConnectorGroupRequest"
      },
      "output": {
        "shape": "GetVoiceConnectorGroupResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves details for the specified Amazon Chime Voice Connector group, such as timestamps, name, and associated <code>VoiceConnectorItems</code>.</p>"
    },
    "GetVoiceConnectorLoggingConfiguration": {
      "name": "GetVoiceConnectorLoggingConfiguration",
      "http": {
        "method": "GET",
        "requestUri": "/voice-connectors/{voiceConnectorId}/logging-configuration",
        "responseCode": 200
      },
      "input": {
        "shape": "GetVoiceConnectorLoggingConfigurationRequest"
      },
      "output": {
        "shape": "GetVoiceConnectorLoggingConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves the logging configuration details for the specified Amazon Chime Voice Connector. Shows whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.</p>"
    },
    "GetVoiceConnectorOrigination": {
      "name": "GetVoiceConnectorOrigination",
      "http": {
        "method": "GET",
        "requestUri": "/voice-connectors/{voiceConnectorId}/origination",
        "responseCode": 200
      },
      "input": {
        "shape": "GetVoiceConnectorOriginationRequest"
      },
      "output": {
        "shape": "GetVoiceConnectorOriginationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves origination setting details for the specified Amazon Chime Voice Connector.</p>"
    },
    "GetVoiceConnectorProxy": {
      "name": "GetVoiceConnectorProxy",
      "http": {
        "method": "GET",
        "requestUri": "/voice-connectors/{voiceConnectorId}/programmable-numbers/proxy",
        "responseCode": 200
      },
      "input": {
        "shape": "GetVoiceConnectorProxyRequest"
      },
      "output": {
        "shape": "GetVoiceConnectorProxyResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Gets the proxy configuration details for the specified Amazon Chime Voice Connector.</p>"
    },
    "GetVoiceConnectorStreamingConfiguration": {
      "name": "GetVoiceConnectorStreamingConfiguration",
      "http": {
        "method": "GET",
        "requestUri": "/voice-connectors/{voiceConnectorId}/streaming-configuration",
        "responseCode": 200
      },
      "input": {
        "shape": "GetVoiceConnectorStreamingConfigurationRequest"
      },
      "output": {
        "shape": "GetVoiceConnectorStreamingConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves the streaming configuration details for the specified Amazon Chime Voice Connector. Shows whether media streaming is enabled for sending to Amazon Kinesis. It also shows the retention period, in hours, for the Amazon Kinesis data.</p>"
    },
    "GetVoiceConnectorTermination": {
      "name": "GetVoiceConnectorTermination",
      "http": {
        "method": "GET",
        "requestUri": "/voice-connectors/{voiceConnectorId}/termination",
        "responseCode": 200
      },
      "input": {
        "shape": "GetVoiceConnectorTerminationRequest"
      },
      "output": {
        "shape": "GetVoiceConnectorTerminationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves termination setting details for the specified Amazon Chime Voice Connector.</p>"
    },
    "GetVoiceConnectorTerminationHealth": {
      "name": "GetVoiceConnectorTerminationHealth",
      "http": {
        "method": "GET",
        "requestUri": "/voice-connectors/{voiceConnectorId}/termination/health",
        "responseCode": 200
      },
      "input": {
        "shape": "GetVoiceConnectorTerminationHealthRequest"
      },
      "output": {
        "shape": "GetVoiceConnectorTerminationHealthResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves information about the last time a SIP <code>OPTIONS</code> ping was received from your SIP infrastructure for the specified Amazon Chime Voice Connector.</p>"
    },
    "InviteUsers": {
      "name": "InviteUsers",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/users?operation=add",
        "responseCode": 201
      },
      "input": {
        "shape": "InviteUsersRequest"
      },
      "output": {
        "shape": "InviteUsersResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Sends email to a maximum of 50 users, inviting them to the specified Amazon Chime <code>Team</code> account. Only <code>Team</code> account types are currently supported for this action. </p>"
    },
    "ListAccounts": {
      "name": "ListAccounts",
      "http": {
        "method": "GET",
        "requestUri": "/accounts"
      },
      "input": {
        "shape": "ListAccountsRequest"
      },
      "output": {
        "shape": "ListAccountsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the Amazon Chime accounts under the administrator's AWS account. You can filter accounts by account name prefix. To find out which Amazon Chime account a user belongs to, you can filter by the user's email address, which returns one account result.</p>"
    },
    "ListAttendeeTags": {
      "name": "ListAttendeeTags",
      "http": {
        "method": "GET",
        "requestUri": "/meetings/{meetingId}/attendees/{attendeeId}/tags",
        "responseCode": 200
      },
      "input": {
        "shape": "ListAttendeeTagsRequest"
      },
      "output": {
        "shape": "ListAttendeeTagsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the tags applied to an Amazon Chime SDK attendee resource.</p>"
    },
    "ListAttendees": {
      "name": "ListAttendees",
      "http": {
        "method": "GET",
        "requestUri": "/meetings/{meetingId}/attendees",
        "responseCode": 200
      },
      "input": {
        "shape": "ListAttendeesRequest"
      },
      "output": {
        "shape": "ListAttendeesResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the attendees for the specified Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see <a href=\"https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html\">Using the Amazon Chime SDK</a> in the <i>Amazon Chime Developer Guide</i>.</p>"
    },
    "ListBots": {
      "name": "ListBots",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{accountId}/bots",
        "responseCode": 200
      },
      "input": {
        "shape": "ListBotsRequest"
      },
      "output": {
        "shape": "ListBotsResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ThrottledClientException"
        }
      ],
      "documentation": "<p>Lists the bots associated with the administrator's Amazon Chime Enterprise account ID.</p>"
    },
    "ListMeetingTags": {
      "name": "ListMeetingTags",
      "http": {
        "method": "GET",
        "requestUri": "/meetings/{meetingId}/tags",
        "responseCode": 200
      },
      "input": {
        "shape": "ListMeetingTagsRequest"
      },
      "output": {
        "shape": "ListMeetingTagsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the tags applied to an Amazon Chime SDK meeting resource.</p>"
    },
    "ListMeetings": {
      "name": "ListMeetings",
      "http": {
        "method": "GET",
        "requestUri": "/meetings",
        "responseCode": 200
      },
      "input": {
        "shape": "ListMeetingsRequest"
      },
      "output": {
        "shape": "ListMeetingsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists up to 100 active Amazon Chime SDK meetings. For more information about the Amazon Chime SDK, see <a href=\"https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html\">Using the Amazon Chime SDK</a> in the <i>Amazon Chime Developer Guide</i>.</p>"
    },
    "ListPhoneNumberOrders": {
      "name": "ListPhoneNumberOrders",
      "http": {
        "method": "GET",
        "requestUri": "/phone-number-orders",
        "responseCode": 200
      },
      "input": {
        "shape": "ListPhoneNumberOrdersRequest"
      },
      "output": {
        "shape": "ListPhoneNumberOrdersResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the phone number orders for the administrator's Amazon Chime account.</p>"
    },
    "ListPhoneNumbers": {
      "name": "ListPhoneNumbers",
      "http": {
        "method": "GET",
        "requestUri": "/phone-numbers"
      },
      "input": {
        "shape": "ListPhoneNumbersRequest"
      },
      "output": {
        "shape": "ListPhoneNumbersResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the phone numbers for the specified Amazon Chime account, Amazon Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice Connector group.</p>"
    },
    "ListProxySessions": {
      "name": "ListProxySessions",
      "http": {
        "method": "GET",
        "requestUri": "/voice-connectors/{voiceConnectorId}/proxy-sessions",
        "responseCode": 200
      },
      "input": {
        "shape": "ListProxySessionsRequest"
      },
      "output": {
        "shape": "ListProxySessionsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the proxy sessions for the specified Amazon Chime Voice Connector.</p>"
    },
    "ListRoomMemberships": {
      "name": "ListRoomMemberships",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{accountId}/rooms/{roomId}/memberships",
        "responseCode": 200
      },
      "input": {
        "shape": "ListRoomMembershipsRequest"
      },
      "output": {
        "shape": "ListRoomMembershipsResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the membership details for the specified room in an Amazon Chime Enterprise account, such as the members' IDs, email addresses, and names.</p>"
    },
    "ListRooms": {
      "name": "ListRooms",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{accountId}/rooms",
        "responseCode": 200
      },
      "input": {
        "shape": "ListRoomsRequest"
      },
      "output": {
        "shape": "ListRoomsResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the room details for the specified Amazon Chime Enterprise account. Optionally, filter the results by a member ID (user ID or bot ID) to see a list of rooms that the member belongs to.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/tags"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the tags applied to an Amazon Chime SDK meeting resource.</p>"
    },
    "ListUsers": {
      "name": "ListUsers",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{accountId}/users",
        "responseCode": 200
      },
      "input": {
        "shape": "ListUsersRequest"
      },
      "output": {
        "shape": "ListUsersResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the users that belong to the specified Amazon Chime account. You can specify an email address to list only the user that the email address belongs to.</p>"
    },
    "ListVoiceConnectorGroups": {
      "name": "ListVoiceConnectorGroups",
      "http": {
        "method": "GET",
        "requestUri": "/voice-connector-groups",
        "responseCode": 200
      },
      "input": {
        "shape": "ListVoiceConnectorGroupsRequest"
      },
      "output": {
        "shape": "ListVoiceConnectorGroupsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the Amazon Chime Voice Connector groups for the administrator's AWS account.</p>"
    },
    "ListVoiceConnectorTerminationCredentials": {
      "name": "ListVoiceConnectorTerminationCredentials",
      "http": {
        "method": "GET",
        "requestUri": "/voice-connectors/{voiceConnectorId}/termination/credentials",
        "responseCode": 200
      },
      "input": {
        "shape": "ListVoiceConnectorTerminationCredentialsRequest"
      },
      "output": {
        "shape": "ListVoiceConnectorTerminationCredentialsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the SIP credentials for the specified Amazon Chime Voice Connector.</p>"
    },
    "ListVoiceConnectors": {
      "name": "ListVoiceConnectors",
      "http": {
        "method": "GET",
        "requestUri": "/voice-connectors",
        "responseCode": 200
      },
      "input": {
        "shape": "ListVoiceConnectorsRequest"
      },
      "output": {
        "shape": "ListVoiceConnectorsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the Amazon Chime Voice Connectors for the administrator's AWS account.</p>"
    },
    "LogoutUser": {
      "name": "LogoutUser",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/users/{userId}?operation=logout",
        "responseCode": 204
      },
      "input": {
        "shape": "LogoutUserRequest"
      },
      "output": {
        "shape": "LogoutUserResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Logs out the specified user from all of the devices they are currently logged into.</p>"
    },
    "PutEventsConfiguration": {
      "name": "PutEventsConfiguration",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{accountId}/bots/{botId}/events-configuration",
        "responseCode": 201
      },
      "input": {
        "shape": "PutEventsConfigurationRequest"
      },
      "output": {
        "shape": "PutEventsConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Creates an events configuration that allows a bot to receive outgoing events sent by Amazon Chime. Choose either an HTTPS endpoint or a Lambda function ARN. For more information, see <a>Bot</a>.</p>"
    },
    "PutRetentionSettings": {
      "name": "PutRetentionSettings",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{accountId}/retention-settings",
        "responseCode": 204
      },
      "input": {
        "shape": "PutRetentionSettingsRequest"
      },
      "output": {
        "shape": "PutRetentionSettingsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Puts retention settings for the specified Amazon Chime Enterprise account. We recommend using AWS CloudTrail to monitor usage of this API for your account. For more information, see <a href=\"https://docs.aws.amazon.com/chime/latest/ag/cloudtrail.html\">Logging Amazon Chime API Calls with AWS CloudTrail</a> in the <i>Amazon Chime Administration Guide</i>.</p> <p>To turn off existing retention settings, remove the number of days from the corresponding <b>RetentionDays</b> field in the <b>RetentionSettings</b> object. For more information about retention settings, see <a href=\"https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html\">Managing Chat Retention Policies</a> in the <i>Amazon Chime Administration Guide</i>.</p>"
    },
    "PutVoiceConnectorEmergencyCallingConfiguration": {
      "name": "PutVoiceConnectorEmergencyCallingConfiguration",
      "http": {
        "method": "PUT",
        "requestUri": "/voice-connectors/{voiceConnectorId}/emergency-calling-configuration",
        "responseCode": 200
      },
      "input": {
        "shape": "PutVoiceConnectorEmergencyCallingConfigurationRequest"
      },
      "output": {
        "shape": "PutVoiceConnectorEmergencyCallingConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Puts emergency calling configuration details to the specified Amazon Chime Voice Connector, such as emergency phone numbers and calling countries. Origination and termination settings must be enabled for the Amazon Chime Voice Connector before emergency calling can be configured.</p>"
    },
    "PutVoiceConnectorLoggingConfiguration": {
      "name": "PutVoiceConnectorLoggingConfiguration",
      "http": {
        "method": "PUT",
        "requestUri": "/voice-connectors/{voiceConnectorId}/logging-configuration",
        "responseCode": 200
      },
      "input": {
        "shape": "PutVoiceConnectorLoggingConfigurationRequest"
      },
      "output": {
        "shape": "PutVoiceConnectorLoggingConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds a logging configuration for the specified Amazon Chime Voice Connector. The logging configuration specifies whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.</p>"
    },
    "PutVoiceConnectorOrigination": {
      "name": "PutVoiceConnectorOrigination",
      "http": {
        "method": "PUT",
        "requestUri": "/voice-connectors/{voiceConnectorId}/origination",
        "responseCode": 200
      },
      "input": {
        "shape": "PutVoiceConnectorOriginationRequest"
      },
      "output": {
        "shape": "PutVoiceConnectorOriginationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds origination settings for the specified Amazon Chime Voice Connector.</p> <note> <p>If emergency calling is configured for the Amazon Chime Voice Connector, it must be deleted prior to turning off origination settings.</p> </note>"
    },
    "PutVoiceConnectorProxy": {
      "name": "PutVoiceConnectorProxy",
      "http": {
        "method": "PUT",
        "requestUri": "/voice-connectors/{voiceConnectorId}/programmable-numbers/proxy"
      },
      "input": {
        "shape": "PutVoiceConnectorProxyRequest"
      },
      "output": {
        "shape": "PutVoiceConnectorProxyResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Puts the specified proxy configuration to the specified Amazon Chime Voice Connector.</p>"
    },
    "PutVoiceConnectorStreamingConfiguration": {
      "name": "PutVoiceConnectorStreamingConfiguration",
      "http": {
        "method": "PUT",
        "requestUri": "/voice-connectors/{voiceConnectorId}/streaming-configuration",
        "responseCode": 200
      },
      "input": {
        "shape": "PutVoiceConnectorStreamingConfigurationRequest"
      },
      "output": {
        "shape": "PutVoiceConnectorStreamingConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds a streaming configuration for the specified Amazon Chime Voice Connector. The streaming configuration specifies whether media streaming is enabled for sending to Amazon Kinesis. It also sets the retention period, in hours, for the Amazon Kinesis data.</p>"
    },
    "PutVoiceConnectorTermination": {
      "name": "PutVoiceConnectorTermination",
      "http": {
        "method": "PUT",
        "requestUri": "/voice-connectors/{voiceConnectorId}/termination",
        "responseCode": 200
      },
      "input": {
        "shape": "PutVoiceConnectorTerminationRequest"
      },
      "output": {
        "shape": "PutVoiceConnectorTerminationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds termination settings for the specified Amazon Chime Voice Connector.</p> <note> <p>If emergency calling is configured for the Amazon Chime Voice Connector, it must be deleted prior to turning off termination settings.</p> </note>"
    },
    "PutVoiceConnectorTerminationCredentials": {
      "name": "PutVoiceConnectorTerminationCredentials",
      "http": {
        "method": "POST",
        "requestUri": "/voice-connectors/{voiceConnectorId}/termination/credentials?operation=put",
        "responseCode": 204
      },
      "input": {
        "shape": "PutVoiceConnectorTerminationCredentialsRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds termination SIP credentials for the specified Amazon Chime Voice Connector.</p>"
    },
    "RedactConversationMessage": {
      "name": "RedactConversationMessage",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/conversations/{conversationId}/messages/{messageId}?operation=redact",
        "responseCode": 200
      },
      "input": {
        "shape": "RedactConversationMessageRequest"
      },
      "output": {
        "shape": "RedactConversationMessageResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Redacts the specified message from the specified Amazon Chime conversation.</p>"
    },
    "RedactRoomMessage": {
      "name": "RedactRoomMessage",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/rooms/{roomId}/messages/{messageId}?operation=redact",
        "responseCode": 200
      },
      "input": {
        "shape": "RedactRoomMessageRequest"
      },
      "output": {
        "shape": "RedactRoomMessageResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Redacts the specified message from the specified Amazon Chime chat room.</p>"
    },
    "RegenerateSecurityToken": {
      "name": "RegenerateSecurityToken",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/bots/{botId}?operation=regenerate-security-token",
        "responseCode": 200
      },
      "input": {
        "shape": "RegenerateSecurityTokenRequest"
      },
      "output": {
        "shape": "RegenerateSecurityTokenResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ThrottledClientException"
        }
      ],
      "documentation": "<p>Regenerates the security token for a bot.</p>"
    },
    "ResetPersonalPIN": {
      "name": "ResetPersonalPIN",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/users/{userId}?operation=reset-personal-pin",
        "responseCode": 200
      },
      "input": {
        "shape": "ResetPersonalPINRequest"
      },
      "output": {
        "shape": "ResetPersonalPINResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Resets the personal meeting PIN for the specified user on an Amazon Chime account. Returns the <a>User</a> object with the updated personal meeting PIN.</p>"
    },
    "RestorePhoneNumber": {
      "name": "RestorePhoneNumber",
      "http": {
        "method": "POST",
        "requestUri": "/phone-numbers/{phoneNumberId}?operation=restore",
        "responseCode": 200
      },
      "input": {
        "shape": "RestorePhoneNumberRequest"
      },
      "output": {
        "shape": "RestorePhoneNumberResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Moves a phone number from the <b>Deletion queue</b> back into the phone number <b>Inventory</b>.</p>"
    },
    "SearchAvailablePhoneNumbers": {
      "name": "SearchAvailablePhoneNumbers",
      "http": {
        "method": "GET",
        "requestUri": "/search?type=phone-numbers"
      },
      "input": {
        "shape": "SearchAvailablePhoneNumbersRequest"
      },
      "output": {
        "shape": "SearchAvailablePhoneNumbersResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Searches phone numbers that can be ordered.</p>"
    },
    "TagAttendee": {
      "name": "TagAttendee",
      "http": {
        "method": "POST",
        "requestUri": "/meetings/{meetingId}/attendees/{attendeeId}/tags?operation=add",
        "responseCode": 204
      },
      "input": {
        "shape": "TagAttendeeRequest"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Applies the specified tags to the specified Amazon Chime SDK attendee.</p>"
    },
    "TagMeeting": {
      "name": "TagMeeting",
      "http": {
        "method": "POST",
        "requestUri": "/meetings/{meetingId}/tags?operation=add",
        "responseCode": 204
      },
      "input": {
        "shape": "TagMeetingRequest"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Applies the specified tags to the specified Amazon Chime SDK meeting.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags?operation=tag-resource",
        "responseCode": 204
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Applies the specified tags to the specified Amazon Chime SDK meeting resource.</p>"
    },
    "UntagAttendee": {
      "name": "UntagAttendee",
      "http": {
        "method": "POST",
        "requestUri": "/meetings/{meetingId}/attendees/{attendeeId}/tags?operation=delete",
        "responseCode": 204
      },
      "input": {
        "shape": "UntagAttendeeRequest"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Untags the specified tags from the specified Amazon Chime SDK attendee.</p>"
    },
    "UntagMeeting": {
      "name": "UntagMeeting",
      "http": {
        "method": "POST",
        "requestUri": "/meetings/{meetingId}/tags?operation=delete",
        "responseCode": 204
      },
      "input": {
        "shape": "UntagMeetingRequest"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Untags the specified tags from the specified Amazon Chime SDK meeting.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags?operation=untag-resource",
        "responseCode": 204
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Untags the specified tags from the specified Amazon Chime SDK meeting resource.</p>"
    },
    "UpdateAccount": {
      "name": "UpdateAccount",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateAccountRequest"
      },
      "output": {
        "shape": "UpdateAccountResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates account details for the specified Amazon Chime account. Currently, only account name updates are supported for this action.</p>"
    },
    "UpdateAccountSettings": {
      "name": "UpdateAccountSettings",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{accountId}/settings",
        "responseCode": 204
      },
      "input": {
        "shape": "UpdateAccountSettingsRequest"
      },
      "output": {
        "shape": "UpdateAccountSettingsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates the settings for the specified Amazon Chime account. You can update settings for remote control of shared screens, or for the dial-out option. For more information about these settings, see <a href=\"https://docs.aws.amazon.com/chime/latest/ag/policies.html\">Use the Policies Page</a> in the <i>Amazon Chime Administration Guide</i>.</p>"
    },
    "UpdateBot": {
      "name": "UpdateBot",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/bots/{botId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateBotRequest"
      },
      "output": {
        "shape": "UpdateBotResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ThrottledClientException"
        }
      ],
      "documentation": "<p>Updates the status of the specified bot, such as starting or stopping the bot from running in your Amazon Chime Enterprise account.</p>"
    },
    "UpdateGlobalSettings": {
      "name": "UpdateGlobalSettings",
      "http": {
        "method": "PUT",
        "requestUri": "/settings",
        "responseCode": 204
      },
      "input": {
        "shape": "UpdateGlobalSettingsRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates global settings for the administrator's AWS account, such as Amazon Chime Business Calling and Amazon Chime Voice Connector settings.</p>"
    },
    "UpdatePhoneNumber": {
      "name": "UpdatePhoneNumber",
      "http": {
        "method": "POST",
        "requestUri": "/phone-numbers/{phoneNumberId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdatePhoneNumberRequest"
      },
      "output": {
        "shape": "UpdatePhoneNumberResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates phone number details, such as product type or calling name, for the specified phone number ID. You can update one phone number detail at a time. For example, you can update either the product type or the calling name in one action.</p> <p>For toll-free numbers, you must use the Amazon Chime Voice Connector product type.</p> <p>Updates to outbound calling names can take up to 72 hours to complete. Pending updates to outbound calling names must be complete before you can request another update.</p>"
    },
    "UpdatePhoneNumberSettings": {
      "name": "UpdatePhoneNumberSettings",
      "http": {
        "method": "PUT",
        "requestUri": "/settings/phone-number",
        "responseCode": 204
      },
      "input": {
        "shape": "UpdatePhoneNumberSettingsRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates the phone number settings for the administrator's AWS account, such as the default outbound calling name. You can update the default outbound calling name once every seven days. Outbound calling names can take up to 72 hours to update.</p>"
    },
    "UpdateProxySession": {
      "name": "UpdateProxySession",
      "http": {
        "method": "POST",
        "requestUri": "/voice-connectors/{voiceConnectorId}/proxy-sessions/{proxySessionId}",
        "responseCode": 201
      },
      "input": {
        "shape": "UpdateProxySessionRequest"
      },
      "output": {
        "shape": "UpdateProxySessionResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates the specified proxy session details, such as voice or SMS capabilities.</p>"
    },
    "UpdateRoom": {
      "name": "UpdateRoom",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/rooms/{roomId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateRoomRequest"
      },
      "output": {
        "shape": "UpdateRoomResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates room details, such as the room name, for a room in an Amazon Chime Enterprise account.</p>"
    },
    "UpdateRoomMembership": {
      "name": "UpdateRoomMembership",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/rooms/{roomId}/memberships/{memberId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateRoomMembershipRequest"
      },
      "output": {
        "shape": "UpdateRoomMembershipResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates room membership details, such as the member role, for a room in an Amazon Chime Enterprise account. The member role designates whether the member is a chat room administrator or a general chat room member. The member role can be updated only for user IDs.</p>"
    },
    "UpdateUser": {
      "name": "UpdateUser",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{accountId}/users/{userId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateUserRequest"
      },
      "output": {
        "shape": "UpdateUserResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates user details for a specified user ID. Currently, only <code>LicenseType</code> updates are supported for this action.</p>"
    },
    "UpdateUserSettings": {
      "name": "UpdateUserSettings",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{accountId}/users/{userId}/settings",
        "responseCode": 204
      },
      "input": {
        "shape": "UpdateUserSettingsRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates the settings for the specified user, such as phone number settings.</p>"
    },
    "UpdateVoiceConnector": {
      "name": "UpdateVoiceConnector",
      "http": {
        "method": "PUT",
        "requestUri": "/voice-connectors/{voiceConnectorId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateVoiceConnectorRequest"
      },
      "output": {
        "shape": "UpdateVoiceConnectorResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates details for the specified Amazon Chime Voice Connector.</p>"
    },
    "UpdateVoiceConnectorGroup": {
      "name": "UpdateVoiceConnectorGroup",
      "http": {
        "method": "PUT",
        "requestUri": "/voice-connector-groups/{voiceConnectorGroupId}",
        "responseCode": 202
      },
      "input": {
        "shape": "UpdateVoiceConnectorGroupRequest"
      },
      "output": {
        "shape": "UpdateVoiceConnectorGroupResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottledClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates details for the specified Amazon Chime Voice Connector group, such as the name and Amazon Chime Voice Connector priority ranking.</p>"
    }
  },
  "shapes": {
    "Account": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "AccountId",
        "Name"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "String",
          "documentation": "<p>The AWS account ID.</p>"
        },
        "AccountId": {
          "shape": "String",
          "documentation": "<p>The Amazon Chime account ID.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The Amazon Chime account name.</p>"
        },
        "AccountType": {
          "shape": "AccountType",
          "documentation": "<p>The Amazon Chime account type. For more information about different account types, see <a href=\"https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html\">Managing Your Amazon Chime Accounts</a> in the <i>Amazon Chime Administration Guide</i>.</p>"
        },
        "CreatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The Amazon Chime account creation timestamp, in ISO 8601 format.</p>"
        },
        "DefaultLicense": {
          "shape": "License",
          "documentation": "<p>The default license for the Amazon Chime account.</p>"
        },
        "SupportedLicenses": {
          "shape": "LicenseList",
          "documentation": "<p>Supported licenses for the Amazon Chime account.</p>"
        },
        "SigninDelegateGroups": {
          "shape": "SigninDelegateGroupList",
          "documentation": "<p>The sign-in delegate groups associated with the account.</p>"
        }
      },
      "documentation": "<p>The Amazon Chime account details. An AWS account can have multiple Amazon Chime accounts.</p>"
    },
    "AccountList": {
      "type": "list",
      "member": {
        "shape": "Account"
      }
    },
    "AccountName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": ".*\\S.*"
    },
    "AccountSettings": {
      "type": "structure",
      "members": {
        "DisableRemoteControl": {
          "shape": "Boolean",
          "documentation": "<p>Setting that stops or starts remote control of shared screens during meetings.</p>"
        },
        "EnableDialOut": {
          "shape": "Boolean",
          "documentation": "<p>Setting that allows meeting participants to choose the <b>Call me at a phone number</b> option. For more information, see <a href=\"https://docs.aws.amazon.com/chime/latest/ug/chime-join-meeting.html\">Join a Meeting without the Amazon Chime App</a>.</p>"
        }
      },
      "documentation": "<p>Settings related to the Amazon Chime account. This includes settings that start or stop remote control of shared screens, or start or stop the dial-out option in the Amazon Chime web application. For more information about these settings, see <a href=\"https://docs.aws.amazon.com/chime/latest/ag/policies.html\">Use the Policies Page</a> in the <i>Amazon Chime Administration Guide</i>.</p>"
    },
    "AccountType": {
      "type": "string",
      "enum": [
        "Team",
        "EnterpriseDirectory",
        "EnterpriseLWA",
        "EnterpriseOIDC"
      ]
    },
    "AlexaForBusinessMetadata": {
      "type": "structure",
      "members": {
        "IsAlexaForBusinessEnabled": {
          "shape": "Boolean",
          "documentation": "<p>Starts or stops Alexa for Business.</p>"
        },
        "AlexaForBusinessRoomArn": {
          "shape": "SensitiveString",
          "documentation": "<p>The ARN of the room resource.</p>"
        }
      },
      "documentation": "<p>The Alexa for Business metadata associated with an Amazon Chime user, used to integrate Alexa for Business with a device.</p>"
    },
    "Alpha2CountryCode": {
      "type": "string",
      "pattern": "[A-Z]{2}"
    },
    "AreaCode": {
      "type": "string",
      "pattern": "^$|^[0-9]{3,3}$"
    },
    "Arn": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "^arn[\\/\\:\\-\\_\\.a-zA-Z0-9]+$",
      "sensitive": true
    },
    "AssociatePhoneNumberWithUserRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "UserId",
        "E164PhoneNumber"
      ],
      "members": {
        "AccountId": {
          "shape": "String",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "UserId": {
          "shape": "String",
          "documentation": "<p>The user ID.</p>",
          "location": "uri",
          "locationName": "userId"
        },
        "E164PhoneNumber": {
          "shape": "E164PhoneNumber",
          "documentation": "<p>The phone number, in E.164 format.</p>"
        }
      }
    },
    "AssociatePhoneNumberWithUserResponse": {
      "type": "structure",
      "members": {}
    },
    "AssociatePhoneNumbersWithVoiceConnectorGroupRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorGroupId",
        "E164PhoneNumbers"
      ],
      "members": {
        "VoiceConnectorGroupId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector group ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorGroupId"
        },
        "E164PhoneNumbers": {
          "shape": "E164PhoneNumberList",
          "documentation": "<p>List of phone numbers, in E.164 format.</p>"
        },
        "ForceAssociate": {
          "shape": "NullableBoolean",
          "documentation": "<p>If true, associates the provided phone numbers with the provided Amazon Chime Voice Connector Group and removes any previously existing associations. If false, does not associate any phone numbers that have previously existing associations.</p>"
        }
      }
    },
    "AssociatePhoneNumbersWithVoiceConnectorGroupResponse": {
      "type": "structure",
      "members": {
        "PhoneNumberErrors": {
          "shape": "PhoneNumberErrorList",
          "documentation": "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"
        }
      }
    },
    "AssociatePhoneNumbersWithVoiceConnectorRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId",
        "E164PhoneNumbers"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "E164PhoneNumbers": {
          "shape": "E164PhoneNumberList",
          "documentation": "<p>List of phone numbers, in E.164 format.</p>"
        },
        "ForceAssociate": {
          "shape": "NullableBoolean",
          "documentation": "<p>If true, associates the provided phone numbers with the provided Amazon Chime Voice Connector and removes any previously existing associations. If false, does not associate any phone numbers that have previously existing associations.</p>"
        }
      }
    },
    "AssociatePhoneNumbersWithVoiceConnectorResponse": {
      "type": "structure",
      "members": {
        "PhoneNumberErrors": {
          "shape": "PhoneNumberErrorList",
          "documentation": "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"
        }
      }
    },
    "AssociateSigninDelegateGroupsWithAccountRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "SigninDelegateGroups"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "SigninDelegateGroups": {
          "shape": "SigninDelegateGroupList",
          "documentation": "<p>The sign-in delegate groups.</p>"
        }
      }
    },
    "AssociateSigninDelegateGroupsWithAccountResponse": {
      "type": "structure",
      "members": {}
    },
    "Attendee": {
      "type": "structure",
      "members": {
        "ExternalUserId": {
          "shape": "ExternalUserIdType",
          "documentation": "<p>The Amazon Chime SDK external user ID. Links the attendee to an identity managed by a builder application.</p>"
        },
        "AttendeeId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK attendee ID.</p>"
        },
        "JoinToken": {
          "shape": "JoinTokenString",
          "documentation": "<p>The join token used by the Amazon Chime SDK attendee.</p>"
        }
      },
      "documentation": "<p>An Amazon Chime SDK meeting attendee. Includes a unique <code>AttendeeId</code> and <code>JoinToken</code>. The <code>JoinToken</code> allows a client to authenticate and join as the specified attendee. The <code>JoinToken</code> expires when the meeting ends or when <a>DeleteAttendee</a> is called. After that, the attendee is unable to join the meeting.</p> <p>We recommend securely transferring each <code>JoinToken</code> from your server application to the client so that no other client has access to the token except for the one authorized to represent the attendee.</p>"
    },
    "AttendeeList": {
      "type": "list",
      "member": {
        "shape": "Attendee"
      }
    },
    "AttendeeTagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 10,
      "min": 1
    },
    "AttendeeTagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 10,
      "min": 1
    },
    "BatchCreateAttendeeErrorList": {
      "type": "list",
      "member": {
        "shape": "CreateAttendeeError"
      }
    },
    "BatchCreateAttendeeRequest": {
      "type": "structure",
      "required": [
        "MeetingId",
        "Attendees"
      ],
      "members": {
        "MeetingId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK meeting ID.</p>",
          "location": "uri",
          "locationName": "meetingId"
        },
        "Attendees": {
          "shape": "CreateAttendeeRequestItemList",
          "documentation": "<p>The request containing the attendees to create.</p>"
        }
      }
    },
    "BatchCreateAttendeeResponse": {
      "type": "structure",
      "members": {
        "Attendees": {
          "shape": "AttendeeList",
          "documentation": "<p>The attendee information, including attendees IDs and join tokens.</p>"
        },
        "Errors": {
          "shape": "BatchCreateAttendeeErrorList",
          "documentation": "<p>If the action fails for one or more of the attendees in the request, a list of the attendees is returned, along with error codes and error messages.</p>"
        }
      }
    },
    "BatchCreateRoomMembershipRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "RoomId",
        "MembershipItemList"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "RoomId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The room ID.</p>",
          "location": "uri",
          "locationName": "roomId"
        },
        "MembershipItemList": {
          "shape": "MembershipItemList",
          "documentation": "<p>The list of membership items.</p>"
        }
      }
    },
    "BatchCreateRoomMembershipResponse": {
      "type": "structure",
      "members": {
        "Errors": {
          "shape": "MemberErrorList",
          "documentation": "<p>If the action fails for one or more of the member IDs in the request, a list of the member IDs is returned, along with error codes and error messages.</p>"
        }
      }
    },
    "BatchDeletePhoneNumberRequest": {
      "type": "structure",
      "required": [
        "PhoneNumberIds"
      ],
      "members": {
        "PhoneNumberIds": {
          "shape": "NonEmptyStringList",
          "documentation": "<p>List of phone number IDs.</p>"
        }
      }
    },
    "BatchDeletePhoneNumberResponse": {
      "type": "structure",
      "members": {
        "PhoneNumberErrors": {
          "shape": "PhoneNumberErrorList",
          "documentation": "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"
        }
      }
    },
    "BatchSuspendUserRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "UserIdList"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "UserIdList": {
          "shape": "UserIdList",
          "documentation": "<p>The request containing the user IDs to suspend.</p>"
        }
      }
    },
    "BatchSuspendUserResponse": {
      "type": "structure",
      "members": {
        "UserErrors": {
          "shape": "UserErrorList",
          "documentation": "<p>If the <a>BatchSuspendUser</a> action fails for one or more of the user IDs in the request, a list of the user IDs is returned, along with error codes and error messages.</p>"
        }
      }
    },
    "BatchUnsuspendUserRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "UserIdList"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "UserIdList": {
          "shape": "UserIdList",
          "documentation": "<p>The request containing the user IDs to unsuspend.</p>"
        }
      }
    },
    "BatchUnsuspendUserResponse": {
      "type": "structure",
      "members": {
        "UserErrors": {
          "shape": "UserErrorList",
          "documentation": "<p>If the <a>BatchUnsuspendUser</a> action fails for one or more of the user IDs in the request, a list of the user IDs is returned, along with error codes and error messages.</p>"
        }
      }
    },
    "BatchUpdatePhoneNumberRequest": {
      "type": "structure",
      "required": [
        "UpdatePhoneNumberRequestItems"
      ],
      "members": {
        "UpdatePhoneNumberRequestItems": {
          "shape": "UpdatePhoneNumberRequestItemList",
          "documentation": "<p>The request containing the phone number IDs and product types or calling names to update.</p>"
        }
      }
    },
    "BatchUpdatePhoneNumberResponse": {
      "type": "structure",
      "members": {
        "PhoneNumberErrors": {
          "shape": "PhoneNumberErrorList",
          "documentation": "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"
        }
      }
    },
    "BatchUpdateUserRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "UpdateUserRequestItems"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "UpdateUserRequestItems": {
          "shape": "UpdateUserRequestItemList",
          "documentation": "<p>The request containing the user IDs and details to update.</p>"
        }
      }
    },
    "BatchUpdateUserResponse": {
      "type": "structure",
      "members": {
        "UserErrors": {
          "shape": "UserErrorList",
          "documentation": "<p>If the <a>BatchUpdateUser</a> action fails for one or more of the user IDs in the request, a list of the user IDs is returned, along with error codes and error messages.</p>"
        }
      }
    },
    "Boolean": {
      "type": "boolean"
    },
    "Bot": {
      "type": "structure",
      "members": {
        "BotId": {
          "shape": "String",
          "documentation": "<p>The bot ID.</p>"
        },
        "UserId": {
          "shape": "String",
          "documentation": "<p>The unique ID for the bot user.</p>"
        },
        "DisplayName": {
          "shape": "SensitiveString",
          "documentation": "<p>The bot display name.</p>"
        },
        "BotType": {
          "shape": "BotType",
          "documentation": "<p>The bot type.</p>"
        },
        "Disabled": {
          "shape": "NullableBoolean",
          "documentation": "<p>When true, the bot is stopped from running in your account.</p>"
        },
        "CreatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The bot creation timestamp, in ISO 8601 format.</p>"
        },
        "UpdatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The updated bot timestamp, in ISO 8601 format.</p>"
        },
        "BotEmail": {
          "shape": "SensitiveString",
          "documentation": "<p>The bot email address.</p>"
        },
        "SecurityToken": {
          "shape": "SensitiveString",
          "documentation": "<p>The security token used to authenticate Amazon Chime with the outgoing event endpoint.</p>"
        }
      },
      "documentation": "<p>A resource that allows Enterprise account administrators to configure an interface to receive events from Amazon Chime.</p>"
    },
    "BotList": {
      "type": "list",
      "member": {
        "shape": "Bot"
      }
    },
    "BotType": {
      "type": "string",
      "enum": [
        "ChatBot"
      ]
    },
    "BusinessCallingSettings": {
      "type": "structure",
      "members": {
        "CdrBucket": {
          "shape": "String",
          "documentation": "<p>The Amazon S3 bucket designated for call detail record storage.</p>",
          "box": true
        }
      },
      "documentation": "<p>The Amazon Chime Business Calling settings for the administrator's AWS account. Includes any Amazon S3 buckets designated for storing call detail records.</p>"
    },
    "CallingName": {
      "type": "string",
      "pattern": "^$|^[a-zA-Z0-9 ]{2,15}$",
      "sensitive": true
    },
    "CallingNameStatus": {
      "type": "string",
      "enum": [
        "Unassigned",
        "UpdateInProgress",
        "UpdateSucceeded",
        "UpdateFailed"
      ]
    },
    "CallingRegion": {
      "type": "string"
    },
    "CallingRegionList": {
      "type": "list",
      "member": {
        "shape": "CallingRegion"
      }
    },
    "Capability": {
      "type": "string",
      "enum": [
        "Voice",
        "SMS"
      ]
    },
    "CapabilityList": {
      "type": "list",
      "member": {
        "shape": "Capability"
      }
    },
    "ClientRequestToken": {
      "type": "string",
      "max": 64,
      "min": 2,
      "pattern": "[-_a-zA-Z0-9]*",
      "sensitive": true
    },
    "ConversationRetentionSettings": {
      "type": "structure",
      "members": {
        "RetentionDays": {
          "shape": "RetentionDays",
          "documentation": "<p>The number of days for which to retain chat conversation messages.</p>"
        }
      },
      "documentation": "<p>The retention settings that determine how long to retain chat conversation messages for an Amazon Chime Enterprise account.</p>"
    },
    "Country": {
      "type": "string",
      "pattern": "^$|^[A-Z]{2,2}$"
    },
    "CountryList": {
      "type": "list",
      "member": {
        "shape": "Country"
      },
      "max": 100,
      "min": 1
    },
    "CpsLimit": {
      "type": "integer",
      "min": 1
    },
    "CreateAccountRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "AccountName",
          "documentation": "<p>The name of the Amazon Chime account.</p>"
        }
      }
    },
    "CreateAccountResponse": {
      "type": "structure",
      "members": {
        "Account": {
          "shape": "Account",
          "documentation": "<p>The Amazon Chime account details.</p>"
        }
      }
    },
    "CreateAttendeeError": {
      "type": "structure",
      "members": {
        "ExternalUserId": {
          "shape": "ExternalUserIdType",
          "documentation": "<p>The Amazon Chime SDK external user ID. Links the attendee to an identity managed by a builder application.</p>"
        },
        "ErrorCode": {
          "shape": "String",
          "documentation": "<p>The error code.</p>"
        },
        "ErrorMessage": {
          "shape": "String",
          "documentation": "<p>The error message.</p>"
        }
      },
      "documentation": "<p>The list of errors returned when errors are encountered during the BatchCreateAttendee and CreateAttendee actions. This includes external user IDs, error codes, and error messages.</p>"
    },
    "CreateAttendeeRequest": {
      "type": "structure",
      "required": [
        "MeetingId",
        "ExternalUserId"
      ],
      "members": {
        "MeetingId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK meeting ID.</p>",
          "location": "uri",
          "locationName": "meetingId"
        },
        "ExternalUserId": {
          "shape": "ExternalUserIdType",
          "documentation": "<p>The Amazon Chime SDK external user ID. Links the attendee to an identity managed by a builder application.</p>"
        },
        "Tags": {
          "shape": "AttendeeTagList",
          "documentation": "<p>The tag key-value pairs.</p>"
        }
      }
    },
    "CreateAttendeeRequestItem": {
      "type": "structure",
      "required": [
        "ExternalUserId"
      ],
      "members": {
        "ExternalUserId": {
          "shape": "ExternalUserIdType",
          "documentation": "<p>The Amazon Chime SDK external user ID. Links the attendee to an identity managed by a builder application.</p>"
        },
        "Tags": {
          "shape": "AttendeeTagList",
          "documentation": "<p>The tag key-value pairs.</p>"
        }
      },
      "documentation": "<p>The Amazon Chime SDK attendee fields to create, used with the BatchCreateAttendee action.</p>"
    },
    "CreateAttendeeRequestItemList": {
      "type": "list",
      "member": {
        "shape": "CreateAttendeeRequestItem"
      }
    },
    "CreateAttendeeResponse": {
      "type": "structure",
      "members": {
        "Attendee": {
          "shape": "Attendee",
          "documentation": "<p>The attendee information, including attendee ID and join token.</p>"
        }
      }
    },
    "CreateBotRequest": {
      "type": "structure",
      "required": [
        "DisplayName",
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "DisplayName": {
          "shape": "SensitiveString",
          "documentation": "<p>The bot display name.</p>"
        },
        "Domain": {
          "shape": "NonEmptyString",
          "documentation": "<p>The domain of the Amazon Chime Enterprise account.</p>"
        }
      }
    },
    "CreateBotResponse": {
      "type": "structure",
      "members": {
        "Bot": {
          "shape": "Bot",
          "documentation": "<p>The bot details.</p>"
        }
      }
    },
    "CreateMeetingRequest": {
      "type": "structure",
      "required": [
        "ClientRequestToken"
      ],
      "members": {
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>The unique identifier for the client request. Use a different token for different meetings.</p>",
          "idempotencyToken": true
        },
        "ExternalMeetingId": {
          "shape": "ExternalMeetingIdType",
          "documentation": "<p>The external meeting ID.</p>"
        },
        "MeetingHostId": {
          "shape": "ExternalUserIdType",
          "documentation": "<p>Reserved.</p>"
        },
        "MediaRegion": {
          "shape": "String",
          "documentation": "<p>The Region in which to create the meeting. Default: <code>us-east-1</code>.</p> <p>Available values: <code>af-south-1</code>, <code>ap-northeast-1</code>, <code>ap-northeast-2</code>, <code>ap-south-1</code>, <code>ap-southeast-1</code>, <code>ap-southeast-2</code>, <code>ca-central-1</code>, <code>eu-central-1</code>, <code>eu-north-1</code>, <code>eu-south-1</code>, <code>eu-west-1</code>, <code>eu-west-2</code>, <code>eu-west-3</code>, <code>sa-east-1</code>, <code>us-east-1</code>, <code>us-east-2</code>, <code>us-west-1</code>, <code>us-west-2</code>.</p>"
        },
        "Tags": {
          "shape": "MeetingTagList",
          "documentation": "<p>The tag key-value pairs.</p>"
        },
        "NotificationsConfiguration": {
          "shape": "MeetingNotificationConfiguration",
          "documentation": "<p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>"
        }
      }
    },
    "CreateMeetingResponse": {
      "type": "structure",
      "members": {
        "Meeting": {
          "shape": "Meeting",
          "documentation": "<p>The meeting information, including the meeting ID and <code>MediaPlacement</code>.</p>"
        }
      }
    },
    "CreateMeetingWithAttendeesRequest": {
      "type": "structure",
      "required": [
        "ClientRequestToken"
      ],
      "members": {
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>The unique identifier for the client request. Use a different token for different meetings.</p>",
          "idempotencyToken": true
        },
        "ExternalMeetingId": {
          "shape": "ExternalMeetingIdType",
          "documentation": "<p>The external meeting ID.</p>"
        },
        "MeetingHostId": {
          "shape": "ExternalUserIdType",
          "documentation": "<p>Reserved.</p>"
        },
        "MediaRegion": {
          "shape": "String",
          "documentation": "<p>The Region in which to create the meeting. Default: <code>us-east-1</code>.</p> <p>Available values: <code>af-south-1</code>, <code>ap-northeast-1</code>, <code>ap-northeast-2</code>, <code>ap-south-1</code>, <code>ap-southeast-1</code>, <code>ap-southeast-2</code>, <code>ca-central-1</code>, <code>eu-central-1</code>, <code>eu-north-1</code>, <code>eu-south-1</code>, <code>eu-west-1</code>, <code>eu-west-2</code>, <code>eu-west-3</code>, <code>sa-east-1</code>, <code>us-east-1</code>, <code>us-east-2</code>, <code>us-west-1</code>, <code>us-west-2</code>.</p>"
        },
        "Tags": {
          "shape": "MeetingTagList",
          "documentation": "<p>The tag key-value pairs.</p>"
        },
        "NotificationsConfiguration": {
          "shape": "MeetingNotificationConfiguration"
        },
        "Attendees": {
          "shape": "CreateMeetingWithAttendeesRequestItemList",
          "documentation": "<p>The request containing the attendees to create.</p>"
        }
      }
    },
    "CreateMeetingWithAttendeesRequestItemList": {
      "type": "list",
      "member": {
        "shape": "CreateAttendeeRequestItem"
      },
      "max": 10,
      "min": 1
    },
    "CreateMeetingWithAttendeesResponse": {
      "type": "structure",
      "members": {
        "Meeting": {
          "shape": "Meeting"
        },
        "Attendees": {
          "shape": "AttendeeList",
          "documentation": "<p>The attendee information, including attendees IDs and join tokens.</p>"
        },
        "Errors": {
          "shape": "BatchCreateAttendeeErrorList",
          "documentation": "<p>If the action fails for one or more of the attendees in the request, a list of the attendees is returned, along with error codes and error messages.</p>"
        }
      }
    },
    "CreatePhoneNumberOrderRequest": {
      "type": "structure",
      "required": [
        "ProductType",
        "E164PhoneNumbers"
      ],
      "members": {
        "ProductType": {
          "shape": "PhoneNumberProductType",
          "documentation": "<p>The phone number product type.</p>"
        },
        "E164PhoneNumbers": {
          "shape": "E164PhoneNumberList",
          "documentation": "<p>List of phone numbers, in E.164 format.</p>"
        }
      }
    },
    "CreatePhoneNumberOrderResponse": {
      "type": "structure",
      "members": {
        "PhoneNumberOrder": {
          "shape": "PhoneNumberOrder",
          "documentation": "<p>The phone number order details.</p>"
        }
      }
    },
    "CreateProxySessionRequest": {
      "type": "structure",
      "required": [
        "ParticipantPhoneNumbers",
        "Capabilities",
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString128",
          "documentation": "<p>The Amazon Chime voice connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "ParticipantPhoneNumbers": {
          "shape": "ParticipantPhoneNumberList",
          "documentation": "<p>The participant phone numbers.</p>"
        },
        "Name": {
          "shape": "ProxySessionNameString",
          "documentation": "<p>The name of the proxy session.</p>"
        },
        "ExpiryMinutes": {
          "shape": "PositiveInteger",
          "documentation": "<p>The number of minutes allowed for the proxy session.</p>"
        },
        "Capabilities": {
          "shape": "CapabilityList",
          "documentation": "<p>The proxy session capabilities.</p>"
        },
        "NumberSelectionBehavior": {
          "shape": "NumberSelectionBehavior",
          "documentation": "<p>The preference for proxy phone number reuse, or stickiness, between the same participants across sessions.</p>"
        },
        "GeoMatchLevel": {
          "shape": "GeoMatchLevel",
          "documentation": "<p>The preference for matching the country or area code of the proxy phone number with that of the first participant.</p>"
        },
        "GeoMatchParams": {
          "shape": "GeoMatchParams",
          "documentation": "<p>The country and area code for the proxy phone number.</p>"
        }
      }
    },
    "CreateProxySessionResponse": {
      "type": "structure",
      "members": {
        "ProxySession": {
          "shape": "ProxySession",
          "documentation": "<p>The proxy session details.</p>"
        }
      }
    },
    "CreateRoomMembershipRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "RoomId",
        "MemberId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "RoomId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The room ID.</p>",
          "location": "uri",
          "locationName": "roomId"
        },
        "MemberId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime member ID (user ID or bot ID).</p>"
        },
        "Role": {
          "shape": "RoomMembershipRole",
          "documentation": "<p>The role of the member.</p>"
        }
      }
    },
    "CreateRoomMembershipResponse": {
      "type": "structure",
      "members": {
        "RoomMembership": {
          "shape": "RoomMembership",
          "documentation": "<p>The room membership details.</p>"
        }
      }
    },
    "CreateRoomRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "Name"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "Name": {
          "shape": "SensitiveString",
          "documentation": "<p>The room name.</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>The idempotency token for the request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateRoomResponse": {
      "type": "structure",
      "members": {
        "Room": {
          "shape": "Room",
          "documentation": "<p>The room details.</p>"
        }
      }
    },
    "CreateUserRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "Username": {
          "shape": "String",
          "documentation": "<p>The user name.</p>"
        },
        "Email": {
          "shape": "EmailAddress",
          "documentation": "<p>The user's email address.</p>"
        },
        "UserType": {
          "shape": "UserType",
          "documentation": "<p>The user type.</p>"
        }
      }
    },
    "CreateUserResponse": {
      "type": "structure",
      "members": {
        "User": {
          "shape": "User"
        }
      }
    },
    "CreateVoiceConnectorGroupRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "VoiceConnectorGroupName",
          "documentation": "<p>The name of the Amazon Chime Voice Connector group.</p>"
        },
        "VoiceConnectorItems": {
          "shape": "VoiceConnectorItemList",
          "documentation": "<p>The Amazon Chime Voice Connectors to route inbound calls to.</p>"
        }
      }
    },
    "CreateVoiceConnectorGroupResponse": {
      "type": "structure",
      "members": {
        "VoiceConnectorGroup": {
          "shape": "VoiceConnectorGroup",
          "documentation": "<p>The Amazon Chime Voice Connector group details.</p>"
        }
      }
    },
    "CreateVoiceConnectorRequest": {
      "type": "structure",
      "required": [
        "Name",
        "RequireEncryption"
      ],
      "members": {
        "Name": {
          "shape": "VoiceConnectorName",
          "documentation": "<p>The name of the Amazon Chime Voice Connector.</p>"
        },
        "AwsRegion": {
          "shape": "VoiceConnectorAwsRegion",
          "documentation": "<p>The AWS Region in which the Amazon Chime Voice Connector is created. Default value: <code>us-east-1</code>.</p>"
        },
        "RequireEncryption": {
          "shape": "Boolean",
          "documentation": "<p>When enabled, requires encryption for the Amazon Chime Voice Connector.</p>"
        }
      }
    },
    "CreateVoiceConnectorResponse": {
      "type": "structure",
      "members": {
        "VoiceConnector": {
          "shape": "VoiceConnector",
          "documentation": "<p>The Amazon Chime Voice Connector details.</p>"
        }
      }
    },
    "Credential": {
      "type": "structure",
      "members": {
        "Username": {
          "shape": "SensitiveString",
          "documentation": "<p>The RFC2617 compliant user name associated with the SIP credentials, in US-ASCII format.</p>"
        },
        "Password": {
          "shape": "SensitiveString",
          "documentation": "<p>The RFC2617 compliant password associated with the SIP credentials, in US-ASCII format.</p>"
        }
      },
      "documentation": "<p>The SIP credentials used to authenticate requests to your Amazon Chime Voice Connector.</p>"
    },
    "CredentialList": {
      "type": "list",
      "member": {
        "shape": "Credential"
      }
    },
    "DNISEmergencyCallingConfiguration": {
      "type": "structure",
      "required": [
        "EmergencyPhoneNumber",
        "CallingCountry"
      ],
      "members": {
        "EmergencyPhoneNumber": {
          "shape": "E164PhoneNumber",
          "documentation": "<p>The DNIS phone number to route emergency calls to, in E.164 format.</p>"
        },
        "TestPhoneNumber": {
          "shape": "E164PhoneNumber",
          "documentation": "<p>The DNIS phone number to route test emergency calls to, in E.164 format.</p>"
        },
        "CallingCountry": {
          "shape": "Alpha2CountryCode",
          "documentation": "<p>The country from which emergency calls are allowed, in ISO 3166-1 alpha-2 format.</p>"
        }
      },
      "documentation": "<p>The Dialed Number Identification Service (DNIS) emergency calling configuration details associated with an Amazon Chime Voice Connector's emergency calling configuration.</p>"
    },
    "DNISEmergencyCallingConfigurationList": {
      "type": "list",
      "member": {
        "shape": "DNISEmergencyCallingConfiguration"
      }
    },
    "DataRetentionInHours": {
      "type": "integer",
      "min": 0
    },
    "DeleteAccountRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        }
      }
    },
    "DeleteAccountResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteAttendeeRequest": {
      "type": "structure",
      "required": [
        "MeetingId",
        "AttendeeId"
      ],
      "members": {
        "MeetingId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK meeting ID.</p>",
          "location": "uri",
          "locationName": "meetingId"
        },
        "AttendeeId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK attendee ID.</p>",
          "location": "uri",
          "locationName": "attendeeId"
        }
      }
    },
    "DeleteEventsConfigurationRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BotId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "BotId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The bot ID.</p>",
          "location": "uri",
          "locationName": "botId"
        }
      }
    },
    "DeleteMeetingRequest": {
      "type": "structure",
      "required": [
        "MeetingId"
      ],
      "members": {
        "MeetingId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK meeting ID.</p>",
          "location": "uri",
          "locationName": "meetingId"
        }
      }
    },
    "DeletePhoneNumberRequest": {
      "type": "structure",
      "required": [
        "PhoneNumberId"
      ],
      "members": {
        "PhoneNumberId": {
          "shape": "String",
          "documentation": "<p>The phone number ID.</p>",
          "location": "uri",
          "locationName": "phoneNumberId"
        }
      }
    },
    "DeleteProxySessionRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId",
        "ProxySessionId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString128",
          "documentation": "<p>The Amazon Chime voice connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "ProxySessionId": {
          "shape": "NonEmptyString128",
          "documentation": "<p>The proxy session ID.</p>",
          "location": "uri",
          "locationName": "proxySessionId"
        }
      }
    },
    "DeleteRoomMembershipRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "RoomId",
        "MemberId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "RoomId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The room ID.</p>",
          "location": "uri",
          "locationName": "roomId"
        },
        "MemberId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The member ID (user ID or bot ID).</p>",
          "location": "uri",
          "locationName": "memberId"
        }
      }
    },
    "DeleteRoomRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "RoomId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "RoomId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The chat room ID.</p>",
          "location": "uri",
          "locationName": "roomId"
        }
      }
    },
    "DeleteVoiceConnectorEmergencyCallingConfigurationRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        }
      }
    },
    "DeleteVoiceConnectorGroupRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorGroupId"
      ],
      "members": {
        "VoiceConnectorGroupId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector group ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorGroupId"
        }
      }
    },
    "DeleteVoiceConnectorOriginationRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        }
      }
    },
    "DeleteVoiceConnectorProxyRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString128",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        }
      }
    },
    "DeleteVoiceConnectorRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        }
      }
    },
    "DeleteVoiceConnectorStreamingConfigurationRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        }
      }
    },
    "DeleteVoiceConnectorTerminationCredentialsRequest": {
      "type": "structure",
      "required": [
        "Usernames",
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "Usernames": {
          "shape": "SensitiveStringList",
          "documentation": "<p>The RFC2617 compliant username associated with the SIP credentials, in US-ASCII format.</p>"
        }
      }
    },
    "DeleteVoiceConnectorTerminationRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        }
      }
    },
    "DisassociatePhoneNumberFromUserRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "UserId"
      ],
      "members": {
        "AccountId": {
          "shape": "String",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "UserId": {
          "shape": "String",
          "documentation": "<p>The user ID.</p>",
          "location": "uri",
          "locationName": "userId"
        }
      }
    },
    "DisassociatePhoneNumberFromUserResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociatePhoneNumbersFromVoiceConnectorGroupRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorGroupId",
        "E164PhoneNumbers"
      ],
      "members": {
        "VoiceConnectorGroupId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector group ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorGroupId"
        },
        "E164PhoneNumbers": {
          "shape": "E164PhoneNumberList",
          "documentation": "<p>List of phone numbers, in E.164 format.</p>"
        }
      }
    },
    "DisassociatePhoneNumbersFromVoiceConnectorGroupResponse": {
      "type": "structure",
      "members": {
        "PhoneNumberErrors": {
          "shape": "PhoneNumberErrorList",
          "documentation": "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"
        }
      }
    },
    "DisassociatePhoneNumbersFromVoiceConnectorRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId",
        "E164PhoneNumbers"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "E164PhoneNumbers": {
          "shape": "E164PhoneNumberList",
          "documentation": "<p>List of phone numbers, in E.164 format.</p>"
        }
      }
    },
    "DisassociatePhoneNumbersFromVoiceConnectorResponse": {
      "type": "structure",
      "members": {
        "PhoneNumberErrors": {
          "shape": "PhoneNumberErrorList",
          "documentation": "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"
        }
      }
    },
    "DisassociateSigninDelegateGroupsFromAccountRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "GroupNames"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "GroupNames": {
          "shape": "NonEmptyStringList",
          "documentation": "<p>The sign-in delegate group names.</p>"
        }
      }
    },
    "DisassociateSigninDelegateGroupsFromAccountResponse": {
      "type": "structure",
      "members": {}
    },
    "E164PhoneNumber": {
      "type": "string",
      "pattern": "^\\+?[1-9]\\d{1,14}$",
      "sensitive": true
    },
    "E164PhoneNumberList": {
      "type": "list",
      "member": {
        "shape": "E164PhoneNumber"
      }
    },
    "EmailAddress": {
      "type": "string",
      "pattern": ".+@.+\\..+",
      "sensitive": true
    },
    "EmailStatus": {
      "type": "string",
      "enum": [
        "NotSent",
        "Sent",
        "Failed"
      ]
    },
    "EmergencyCallingConfiguration": {
      "type": "structure",
      "members": {
        "DNIS": {
          "shape": "DNISEmergencyCallingConfigurationList",
          "documentation": "<p>The Dialed Number Identification Service (DNIS) emergency calling configuration details.</p>"
        }
      },
      "documentation": "<p>The emergency calling configuration details associated with an Amazon Chime Voice Connector.</p>"
    },
    "ErrorCode": {
      "type": "string",
      "enum": [
        "BadRequest",
        "Conflict",
        "Forbidden",
        "NotFound",
        "PreconditionFailed",
        "ResourceLimitExceeded",
        "ServiceFailure",
        "AccessDenied",
        "ServiceUnavailable",
        "Throttled",
        "Throttling",
        "Unauthorized",
        "Unprocessable",
        "VoiceConnectorGroupAssociationsExist",
        "PhoneNumberAssociationsExist"
      ]
    },
    "EventsConfiguration": {
      "type": "structure",
      "members": {
        "BotId": {
          "shape": "String",
          "documentation": "<p>The bot ID.</p>"
        },
        "OutboundEventsHTTPSEndpoint": {
          "shape": "SensitiveString",
          "documentation": "<p>HTTPS endpoint that allows a bot to receive outgoing events.</p>"
        },
        "LambdaFunctionArn": {
          "shape": "SensitiveString",
          "documentation": "<p>Lambda function ARN that allows a bot to receive outgoing events.</p>"
        }
      },
      "documentation": "<p>The configuration that allows a bot to receive outgoing events. Can be either an HTTPS endpoint or a Lambda function ARN.</p>"
    },
    "ExternalMeetingIdType": {
      "type": "string",
      "max": 64,
      "min": 2,
      "sensitive": true
    },
    "ExternalUserIdType": {
      "type": "string",
      "max": 64,
      "min": 2,
      "sensitive": true
    },
    "GeoMatchLevel": {
      "type": "string",
      "enum": [
        "Country",
        "AreaCode"
      ]
    },
    "GeoMatchParams": {
      "type": "structure",
      "required": [
        "Country",
        "AreaCode"
      ],
      "members": {
        "Country": {
          "shape": "Country",
          "documentation": "<p>The country.</p>"
        },
        "AreaCode": {
          "shape": "AreaCode",
          "documentation": "<p>The area code.</p>"
        }
      },
      "documentation": "<p>The country and area code for a proxy phone number in a proxy phone session.</p>"
    },
    "GetAccountRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        }
      }
    },
    "GetAccountResponse": {
      "type": "structure",
      "members": {
        "Account": {
          "shape": "Account",
          "documentation": "<p>The Amazon Chime account details.</p>"
        }
      }
    },
    "GetAccountSettingsRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        }
      }
    },
    "GetAccountSettingsResponse": {
      "type": "structure",
      "members": {
        "AccountSettings": {
          "shape": "AccountSettings",
          "documentation": "<p>The Amazon Chime account settings.</p>"
        }
      }
    },
    "GetAttendeeRequest": {
      "type": "structure",
      "required": [
        "MeetingId",
        "AttendeeId"
      ],
      "members": {
        "MeetingId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK meeting ID.</p>",
          "location": "uri",
          "locationName": "meetingId"
        },
        "AttendeeId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK attendee ID.</p>",
          "location": "uri",
          "locationName": "attendeeId"
        }
      }
    },
    "GetAttendeeResponse": {
      "type": "structure",
      "members": {
        "Attendee": {
          "shape": "Attendee",
          "documentation": "<p>The Amazon Chime SDK attendee information.</p>"
        }
      }
    },
    "GetBotRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BotId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "BotId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The bot ID.</p>",
          "location": "uri",
          "locationName": "botId"
        }
      }
    },
    "GetBotResponse": {
      "type": "structure",
      "members": {
        "Bot": {
          "shape": "Bot",
          "documentation": "<p>The chat bot details.</p>"
        }
      }
    },
    "GetEventsConfigurationRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BotId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "BotId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The bot ID.</p>",
          "location": "uri",
          "locationName": "botId"
        }
      }
    },
    "GetEventsConfigurationResponse": {
      "type": "structure",
      "members": {
        "EventsConfiguration": {
          "shape": "EventsConfiguration",
          "documentation": "<p>The events configuration details.</p>"
        }
      }
    },
    "GetGlobalSettingsResponse": {
      "type": "structure",
      "members": {
        "BusinessCalling": {
          "shape": "BusinessCallingSettings",
          "documentation": "<p>The Amazon Chime Business Calling settings.</p>"
        },
        "VoiceConnector": {
          "shape": "VoiceConnectorSettings",
          "documentation": "<p>The Amazon Chime Voice Connector settings.</p>"
        }
      }
    },
    "GetMeetingRequest": {
      "type": "structure",
      "required": [
        "MeetingId"
      ],
      "members": {
        "MeetingId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK meeting ID.</p>",
          "location": "uri",
          "locationName": "meetingId"
        }
      }
    },
    "GetMeetingResponse": {
      "type": "structure",
      "members": {
        "Meeting": {
          "shape": "Meeting",
          "documentation": "<p>The Amazon Chime SDK meeting information.</p>"
        }
      }
    },
    "GetPhoneNumberOrderRequest": {
      "type": "structure",
      "required": [
        "PhoneNumberOrderId"
      ],
      "members": {
        "PhoneNumberOrderId": {
          "shape": "GuidString",
          "documentation": "<p>The ID for the phone number order.</p>",
          "location": "uri",
          "locationName": "phoneNumberOrderId"
        }
      }
    },
    "GetPhoneNumberOrderResponse": {
      "type": "structure",
      "members": {
        "PhoneNumberOrder": {
          "shape": "PhoneNumberOrder",
          "documentation": "<p>The phone number order details.</p>"
        }
      }
    },
    "GetPhoneNumberRequest": {
      "type": "structure",
      "required": [
        "PhoneNumberId"
      ],
      "members": {
        "PhoneNumberId": {
          "shape": "String",
          "documentation": "<p>The phone number ID.</p>",
          "location": "uri",
          "locationName": "phoneNumberId"
        }
      }
    },
    "GetPhoneNumberResponse": {
      "type": "structure",
      "members": {
        "PhoneNumber": {
          "shape": "PhoneNumber",
          "documentation": "<p>The phone number details.</p>"
        }
      }
    },
    "GetPhoneNumberSettingsResponse": {
      "type": "structure",
      "members": {
        "CallingName": {
          "shape": "CallingName",
          "documentation": "<p>The default outbound calling name for the account.</p>"
        },
        "CallingNameUpdatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The updated outbound calling name timestamp, in ISO 8601 format.</p>"
        }
      }
    },
    "GetProxySessionRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId",
        "ProxySessionId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString128",
          "documentation": "<p>The Amazon Chime voice connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "ProxySessionId": {
          "shape": "NonEmptyString128",
          "documentation": "<p>The proxy session ID.</p>",
          "location": "uri",
          "locationName": "proxySessionId"
        }
      }
    },
    "GetProxySessionResponse": {
      "type": "structure",
      "members": {
        "ProxySession": {
          "shape": "ProxySession",
          "documentation": "<p>The proxy session details.</p>"
        }
      }
    },
    "GetRetentionSettingsRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        }
      }
    },
    "GetRetentionSettingsResponse": {
      "type": "structure",
      "members": {
        "RetentionSettings": {
          "shape": "RetentionSettings",
          "documentation": "<p>The retention settings.</p>"
        },
        "InitiateDeletionTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The timestamp representing the time at which the specified items are permanently deleted, in ISO 8601 format.</p>"
        }
      }
    },
    "GetRoomRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "RoomId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "RoomId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The room ID.</p>",
          "location": "uri",
          "locationName": "roomId"
        }
      }
    },
    "GetRoomResponse": {
      "type": "structure",
      "members": {
        "Room": {
          "shape": "Room",
          "documentation": "<p>The room details.</p>"
        }
      }
    },
    "GetUserRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "UserId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "UserId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The user ID.</p>",
          "location": "uri",
          "locationName": "userId"
        }
      }
    },
    "GetUserResponse": {
      "type": "structure",
      "members": {
        "User": {
          "shape": "User",
          "documentation": "<p>The user details.</p>"
        }
      }
    },
    "GetUserSettingsRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "UserId"
      ],
      "members": {
        "AccountId": {
          "shape": "String",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "UserId": {
          "shape": "String",
          "documentation": "<p>The user ID.</p>",
          "location": "uri",
          "locationName": "userId"
        }
      }
    },
    "GetUserSettingsResponse": {
      "type": "structure",
      "members": {
        "UserSettings": {
          "shape": "UserSettings",
          "documentation": "<p>The user settings.</p>"
        }
      }
    },
    "GetVoiceConnectorEmergencyCallingConfigurationRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        }
      }
    },
    "GetVoiceConnectorEmergencyCallingConfigurationResponse": {
      "type": "structure",
      "members": {
        "EmergencyCallingConfiguration": {
          "shape": "EmergencyCallingConfiguration",
          "documentation": "<p>The emergency calling configuration details.</p>"
        }
      }
    },
    "GetVoiceConnectorGroupRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorGroupId"
      ],
      "members": {
        "VoiceConnectorGroupId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector group ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorGroupId"
        }
      }
    },
    "GetVoiceConnectorGroupResponse": {
      "type": "structure",
      "members": {
        "VoiceConnectorGroup": {
          "shape": "VoiceConnectorGroup",
          "documentation": "<p>The Amazon Chime Voice Connector group details.</p>"
        }
      }
    },
    "GetVoiceConnectorLoggingConfigurationRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        }
      }
    },
    "GetVoiceConnectorLoggingConfigurationResponse": {
      "type": "structure",
      "members": {
        "LoggingConfiguration": {
          "shape": "LoggingConfiguration",
          "documentation": "<p>The logging configuration details.</p>"
        }
      }
    },
    "GetVoiceConnectorOriginationRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        }
      }
    },
    "GetVoiceConnectorOriginationResponse": {
      "type": "structure",
      "members": {
        "Origination": {
          "shape": "Origination",
          "documentation": "<p>The origination setting details.</p>"
        }
      }
    },
    "GetVoiceConnectorProxyRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString128",
          "documentation": "<p>The Amazon Chime voice connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        }
      }
    },
    "GetVoiceConnectorProxyResponse": {
      "type": "structure",
      "members": {
        "Proxy": {
          "shape": "Proxy",
          "documentation": "<p>The proxy configuration details.</p>"
        }
      }
    },
    "GetVoiceConnectorRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        }
      }
    },
    "GetVoiceConnectorResponse": {
      "type": "structure",
      "members": {
        "VoiceConnector": {
          "shape": "VoiceConnector",
          "documentation": "<p>The Amazon Chime Voice Connector details.</p>"
        }
      }
    },
    "GetVoiceConnectorStreamingConfigurationRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        }
      }
    },
    "GetVoiceConnectorStreamingConfigurationResponse": {
      "type": "structure",
      "members": {
        "StreamingConfiguration": {
          "shape": "StreamingConfiguration",
          "documentation": "<p>The streaming configuration details.</p>"
        }
      }
    },
    "GetVoiceConnectorTerminationHealthRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        }
      }
    },
    "GetVoiceConnectorTerminationHealthResponse": {
      "type": "structure",
      "members": {
        "TerminationHealth": {
          "shape": "TerminationHealth",
          "documentation": "<p>The termination health details.</p>"
        }
      }
    },
    "GetVoiceConnectorTerminationRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        }
      }
    },
    "GetVoiceConnectorTerminationResponse": {
      "type": "structure",
      "members": {
        "Termination": {
          "shape": "Termination",
          "documentation": "<p>The termination setting details.</p>"
        }
      }
    },
    "GuidString": {
      "type": "string",
      "pattern": "[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}"
    },
    "Integer": {
      "type": "integer"
    },
    "Invite": {
      "type": "structure",
      "members": {
        "InviteId": {
          "shape": "String",
          "documentation": "<p>The invite ID.</p>"
        },
        "Status": {
          "shape": "InviteStatus",
          "documentation": "<p>The status of the invite.</p>"
        },
        "EmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The email address to which the invite is sent.</p>"
        },
        "EmailStatus": {
          "shape": "EmailStatus",
          "documentation": "<p>The status of the invite email.</p>"
        }
      },
      "documentation": "<p>Invitation object returned after emailing users to invite them to join the Amazon Chime <code>Team</code> account.</p>"
    },
    "InviteList": {
      "type": "list",
      "member": {
        "shape": "Invite"
      }
    },
    "InviteStatus": {
      "type": "string",
      "enum": [
        "Pending",
        "Accepted",
        "Failed"
      ]
    },
    "InviteUsersRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "UserEmailList"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "UserEmailList": {
          "shape": "UserEmailList",
          "documentation": "<p>The user email addresses to which to send the email invitation.</p>"
        },
        "UserType": {
          "shape": "UserType",
          "documentation": "<p>The user type.</p>"
        }
      }
    },
    "InviteUsersResponse": {
      "type": "structure",
      "members": {
        "Invites": {
          "shape": "InviteList",
          "documentation": "<p>The email invitation details.</p>"
        }
      }
    },
    "Iso8601Timestamp": {
      "type": "timestamp",
      "timestampFormat": "iso8601"
    },
    "JoinTokenString": {
      "type": "string",
      "max": 2048,
      "min": 2,
      "sensitive": true
    },
    "License": {
      "type": "string",
      "enum": [
        "Basic",
        "Plus",
        "Pro",
        "ProTrial"
      ]
    },
    "LicenseList": {
      "type": "list",
      "member": {
        "shape": "License"
      }
    },
    "ListAccountsRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "AccountName",
          "documentation": "<p>Amazon Chime account name prefix with which to filter results.</p>",
          "location": "querystring",
          "locationName": "name"
        },
        "UserEmail": {
          "shape": "EmailAddress",
          "documentation": "<p>User email address with which to filter results.</p>",
          "location": "querystring",
          "locationName": "user-email"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "ProfileServiceMaxResults",
          "documentation": "<p>The maximum number of results to return in a single call. Defaults to 100.</p>",
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListAccountsResponse": {
      "type": "structure",
      "members": {
        "Accounts": {
          "shape": "AccountList",
          "documentation": "<p>List of Amazon Chime accounts and account details.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>"
        }
      }
    },
    "ListAttendeeTagsRequest": {
      "type": "structure",
      "required": [
        "MeetingId",
        "AttendeeId"
      ],
      "members": {
        "MeetingId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK meeting ID.</p>",
          "location": "uri",
          "locationName": "meetingId"
        },
        "AttendeeId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK attendee ID.</p>",
          "location": "uri",
          "locationName": "attendeeId"
        }
      }
    },
    "ListAttendeeTagsResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag key-value pairs.</p>"
        }
      }
    },
    "ListAttendeesRequest": {
      "type": "structure",
      "required": [
        "MeetingId"
      ],
      "members": {
        "MeetingId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK meeting ID.</p>",
          "location": "uri",
          "locationName": "meetingId"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "ResultMax",
          "documentation": "<p>The maximum number of results to return in a single call.</p>",
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListAttendeesResponse": {
      "type": "structure",
      "members": {
        "Attendees": {
          "shape": "AttendeeList",
          "documentation": "<p>The Amazon Chime SDK attendee information.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>"
        }
      }
    },
    "ListBotsRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "MaxResults": {
          "shape": "ResultMax",
          "documentation": "<p>The maximum number of results to return in a single call. The default is 10.</p>",
          "location": "querystring",
          "locationName": "max-results"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        }
      }
    },
    "ListBotsResponse": {
      "type": "structure",
      "members": {
        "Bots": {
          "shape": "BotList",
          "documentation": "<p>List of bots and bot details.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>"
        }
      }
    },
    "ListMeetingTagsRequest": {
      "type": "structure",
      "required": [
        "MeetingId"
      ],
      "members": {
        "MeetingId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK meeting ID.</p>",
          "location": "uri",
          "locationName": "meetingId"
        }
      }
    },
    "ListMeetingTagsResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag key-value pairs.</p>"
        }
      }
    },
    "ListMeetingsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "ResultMax",
          "documentation": "<p>The maximum number of results to return in a single call.</p>",
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListMeetingsResponse": {
      "type": "structure",
      "members": {
        "Meetings": {
          "shape": "MeetingList",
          "documentation": "<p>The Amazon Chime SDK meeting information.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>"
        }
      }
    },
    "ListPhoneNumberOrdersRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "ResultMax",
          "documentation": "<p>The maximum number of results to return in a single call.</p>",
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListPhoneNumberOrdersResponse": {
      "type": "structure",
      "members": {
        "PhoneNumberOrders": {
          "shape": "PhoneNumberOrderList",
          "documentation": "<p>The phone number order details.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>"
        }
      }
    },
    "ListPhoneNumbersRequest": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "PhoneNumberStatus",
          "documentation": "<p>The phone number status.</p>",
          "location": "querystring",
          "locationName": "status"
        },
        "ProductType": {
          "shape": "PhoneNumberProductType",
          "documentation": "<p>The phone number product type.</p>",
          "location": "querystring",
          "locationName": "product-type"
        },
        "FilterName": {
          "shape": "PhoneNumberAssociationName",
          "documentation": "<p>The filter to use to limit the number of results.</p>",
          "location": "querystring",
          "locationName": "filter-name"
        },
        "FilterValue": {
          "shape": "String",
          "documentation": "<p>The value to use for the filter.</p>",
          "location": "querystring",
          "locationName": "filter-value"
        },
        "MaxResults": {
          "shape": "ResultMax",
          "documentation": "<p>The maximum number of results to return in a single call.</p>",
          "location": "querystring",
          "locationName": "max-results"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        }
      }
    },
    "ListPhoneNumbersResponse": {
      "type": "structure",
      "members": {
        "PhoneNumbers": {
          "shape": "PhoneNumberList",
          "documentation": "<p>The phone number details.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>"
        }
      }
    },
    "ListProxySessionsRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString128",
          "documentation": "<p>The Amazon Chime voice connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "Status": {
          "shape": "ProxySessionStatus",
          "documentation": "<p>The proxy session status.</p>",
          "location": "querystring",
          "locationName": "status"
        },
        "NextToken": {
          "shape": "NextTokenString",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "ResultMax",
          "documentation": "<p>The maximum number of results to return in a single call.</p>",
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListProxySessionsResponse": {
      "type": "structure",
      "members": {
        "ProxySessions": {
          "shape": "ProxySessions",
          "documentation": "<p>The proxy session details.</p>"
        },
        "NextToken": {
          "shape": "NextTokenString",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>"
        }
      }
    },
    "ListRoomMembershipsRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "RoomId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "RoomId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The room ID.</p>",
          "location": "uri",
          "locationName": "roomId"
        },
        "MaxResults": {
          "shape": "ResultMax",
          "documentation": "<p>The maximum number of results to return in a single call.</p>",
          "location": "querystring",
          "locationName": "max-results"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        }
      }
    },
    "ListRoomMembershipsResponse": {
      "type": "structure",
      "members": {
        "RoomMemberships": {
          "shape": "RoomMembershipList",
          "documentation": "<p>The room membership details.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>"
        }
      }
    },
    "ListRoomsRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "MemberId": {
          "shape": "String",
          "documentation": "<p>The member ID (user ID or bot ID).</p>",
          "location": "querystring",
          "locationName": "member-id"
        },
        "MaxResults": {
          "shape": "ResultMax",
          "documentation": "<p>The maximum number of results to return in a single call.</p>",
          "location": "querystring",
          "locationName": "max-results"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        }
      }
    },
    "ListRoomsResponse": {
      "type": "structure",
      "members": {
        "Rooms": {
          "shape": "RoomList",
          "documentation": "<p>The room details.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>"
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
          "shape": "Arn",
          "documentation": "<p>The resource ARN.</p>",
          "location": "querystring",
          "locationName": "arn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag-key value pairs.</p>"
        }
      }
    },
    "ListUsersRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "UserEmail": {
          "shape": "EmailAddress",
          "documentation": "<p>Optional. The user email address used to filter results. Maximum 1.</p>",
          "location": "querystring",
          "locationName": "user-email"
        },
        "UserType": {
          "shape": "UserType",
          "documentation": "<p>The user type.</p>",
          "location": "querystring",
          "locationName": "user-type"
        },
        "MaxResults": {
          "shape": "ProfileServiceMaxResults",
          "documentation": "<p>The maximum number of results to return in a single call. Defaults to 100.</p>",
          "location": "querystring",
          "locationName": "max-results"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        }
      }
    },
    "ListUsersResponse": {
      "type": "structure",
      "members": {
        "Users": {
          "shape": "UserList",
          "documentation": "<p>List of users and user details.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>"
        }
      }
    },
    "ListVoiceConnectorGroupsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "ResultMax",
          "documentation": "<p>The maximum number of results to return in a single call.</p>",
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListVoiceConnectorGroupsResponse": {
      "type": "structure",
      "members": {
        "VoiceConnectorGroups": {
          "shape": "VoiceConnectorGroupList",
          "documentation": "<p>The details of the Amazon Chime Voice Connector groups.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>"
        }
      }
    },
    "ListVoiceConnectorTerminationCredentialsRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        }
      }
    },
    "ListVoiceConnectorTerminationCredentialsResponse": {
      "type": "structure",
      "members": {
        "Usernames": {
          "shape": "SensitiveStringList",
          "documentation": "<p>A list of user names.</p>"
        }
      }
    },
    "ListVoiceConnectorsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "ResultMax",
          "documentation": "<p>The maximum number of results to return in a single call.</p>",
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListVoiceConnectorsResponse": {
      "type": "structure",
      "members": {
        "VoiceConnectors": {
          "shape": "VoiceConnectorList",
          "documentation": "<p>The details of the Amazon Chime Voice Connectors.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>"
        }
      }
    },
    "LoggingConfiguration": {
      "type": "structure",
      "members": {
        "EnableSIPLogs": {
          "shape": "Boolean",
          "documentation": "<p>When true, enables SIP message logs for sending to Amazon CloudWatch Logs.</p>"
        }
      },
      "documentation": "<p>The logging configuration associated with an Amazon Chime Voice Connector. Specifies whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.</p>"
    },
    "LogoutUserRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "UserId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "UserId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The user ID.</p>",
          "location": "uri",
          "locationName": "userId"
        }
      }
    },
    "LogoutUserResponse": {
      "type": "structure",
      "members": {}
    },
    "MediaPlacement": {
      "type": "structure",
      "members": {
        "AudioHostUrl": {
          "shape": "UriType",
          "documentation": "<p>The audio host URL.</p>"
        },
        "AudioFallbackUrl": {
          "shape": "UriType",
          "documentation": "<p>The audio fallback URL.</p>"
        },
        "ScreenDataUrl": {
          "shape": "UriType",
          "documentation": "<p>The screen data URL.</p>"
        },
        "ScreenSharingUrl": {
          "shape": "UriType",
          "documentation": "<p>The screen sharing URL.</p>"
        },
        "ScreenViewingUrl": {
          "shape": "UriType",
          "documentation": "<p>The screen viewing URL.</p>"
        },
        "SignalingUrl": {
          "shape": "UriType",
          "documentation": "<p>The signaling URL.</p>"
        },
        "TurnControlUrl": {
          "shape": "UriType",
          "documentation": "<p>The turn control URL.</p>"
        }
      },
      "documentation": "<p>A set of endpoints used by clients to connect to the media service group for a Amazon Chime SDK meeting.</p>"
    },
    "Meeting": {
      "type": "structure",
      "members": {
        "MeetingId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK meeting ID.</p>"
        },
        "ExternalMeetingId": {
          "shape": "ExternalMeetingIdType",
          "documentation": "<p>The external meeting ID.</p>"
        },
        "MediaPlacement": {
          "shape": "MediaPlacement",
          "documentation": "<p>The media placement for the meeting.</p>"
        },
        "MediaRegion": {
          "shape": "String",
          "documentation": "<p>The Region in which to create the meeting. Available values: <code>af-south-1</code>, <code>ap-northeast-1</code>, <code>ap-northeast-2</code>, <code>ap-south-1</code>, <code>ap-southeast-1</code>, <code>ap-southeast-2</code>, <code>ca-central-1</code>, <code>eu-central-1</code>, <code>eu-north-1</code>, <code>eu-south-1</code>, <code>eu-west-1</code>, <code>eu-west-2</code>, <code>eu-west-3</code>, <code>sa-east-1</code>, <code>us-east-1</code>, <code>us-east-2</code>, <code>us-west-1</code>, <code>us-west-2</code>.</p>"
        }
      },
      "documentation": "<p>A meeting created using the Amazon Chime SDK.</p>"
    },
    "MeetingList": {
      "type": "list",
      "member": {
        "shape": "Meeting"
      }
    },
    "MeetingNotificationConfiguration": {
      "type": "structure",
      "members": {
        "SnsTopicArn": {
          "shape": "Arn",
          "documentation": "<p>The SNS topic ARN.</p>"
        },
        "SqsQueueArn": {
          "shape": "Arn",
          "documentation": "<p>The SQS queue ARN.</p>"
        }
      },
      "documentation": "<p>The configuration for resource targets to receive notifications when Amazon Chime SDK meeting and attendee events occur. The Amazon Chime SDK supports resource targets located in the US East (N. Virginia) AWS Region (<code>us-east-1</code>).</p>"
    },
    "MeetingTagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 50,
      "min": 1
    },
    "MeetingTagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 50,
      "min": 1
    },
    "Member": {
      "type": "structure",
      "members": {
        "MemberId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The member ID (user ID or bot ID).</p>"
        },
        "MemberType": {
          "shape": "MemberType",
          "documentation": "<p>The member type.</p>"
        },
        "Email": {
          "shape": "SensitiveString",
          "documentation": "<p>The member email address.</p>"
        },
        "FullName": {
          "shape": "SensitiveString",
          "documentation": "<p>The member name.</p>"
        },
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>"
        }
      },
      "documentation": "<p>The member details, such as email address, name, member ID, and member type.</p>"
    },
    "MemberError": {
      "type": "structure",
      "members": {
        "MemberId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The member ID.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The error code.</p>"
        },
        "ErrorMessage": {
          "shape": "String",
          "documentation": "<p>The error message.</p>"
        }
      },
      "documentation": "<p>The list of errors returned when a member action results in an error.</p>"
    },
    "MemberErrorList": {
      "type": "list",
      "member": {
        "shape": "MemberError"
      }
    },
    "MemberType": {
      "type": "string",
      "enum": [
        "User",
        "Bot",
        "Webhook"
      ]
    },
    "MembershipItem": {
      "type": "structure",
      "members": {
        "MemberId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The member ID.</p>"
        },
        "Role": {
          "shape": "RoomMembershipRole",
          "documentation": "<p>The member role.</p>"
        }
      },
      "documentation": "<p>Membership details, such as member ID and member role.</p>"
    },
    "MembershipItemList": {
      "type": "list",
      "member": {
        "shape": "MembershipItem"
      },
      "max": 50
    },
    "NextTokenString": {
      "type": "string",
      "max": 65535
    },
    "NonEmptyString": {
      "type": "string",
      "pattern": ".*\\S.*"
    },
    "NonEmptyString128": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": ".*\\S.*"
    },
    "NonEmptyStringList": {
      "type": "list",
      "member": {
        "shape": "String"
      },
      "min": 1
    },
    "NotificationTarget": {
      "type": "string",
      "enum": [
        "EventBridge",
        "SNS",
        "SQS"
      ]
    },
    "NullableBoolean": {
      "type": "boolean"
    },
    "NumberSelectionBehavior": {
      "type": "string",
      "enum": [
        "PreferSticky",
        "AvoidSticky"
      ]
    },
    "OrderedPhoneNumber": {
      "type": "structure",
      "members": {
        "E164PhoneNumber": {
          "shape": "E164PhoneNumber",
          "documentation": "<p>The phone number, in E.164 format.</p>"
        },
        "Status": {
          "shape": "OrderedPhoneNumberStatus",
          "documentation": "<p>The phone number status.</p>"
        }
      },
      "documentation": "<p>A phone number for which an order has been placed.</p>"
    },
    "OrderedPhoneNumberList": {
      "type": "list",
      "member": {
        "shape": "OrderedPhoneNumber"
      }
    },
    "OrderedPhoneNumberStatus": {
      "type": "string",
      "enum": [
        "Processing",
        "Acquired",
        "Failed"
      ]
    },
    "Origination": {
      "type": "structure",
      "members": {
        "Routes": {
          "shape": "OriginationRouteList",
          "documentation": "<p>The call distribution properties defined for your SIP hosts. Valid range: Minimum value of 1. Maximum value of 20.</p>"
        },
        "Disabled": {
          "shape": "Boolean",
          "documentation": "<p>When origination settings are disabled, inbound calls are not enabled for your Amazon Chime Voice Connector.</p>"
        }
      },
      "documentation": "<p>Origination settings enable your SIP hosts to receive inbound calls using your Amazon Chime Voice Connector.</p>"
    },
    "OriginationRoute": {
      "type": "structure",
      "members": {
        "Host": {
          "shape": "String",
          "documentation": "<p>The FQDN or IP address to contact for origination traffic.</p>"
        },
        "Port": {
          "shape": "Port",
          "documentation": "<p>The designated origination route port. Defaults to 5060.</p>"
        },
        "Protocol": {
          "shape": "OriginationRouteProtocol",
          "documentation": "<p>The protocol to use for the origination route. Encryption-enabled Amazon Chime Voice Connectors use TCP protocol by default.</p>"
        },
        "Priority": {
          "shape": "OriginationRoutePriority",
          "documentation": "<p>The priority associated with the host, with 1 being the highest priority. Higher priority hosts are attempted first.</p>"
        },
        "Weight": {
          "shape": "OriginationRouteWeight",
          "documentation": "<p>The weight associated with the host. If hosts are equal in priority, calls are distributed among them based on their relative weight.</p>"
        }
      },
      "documentation": "<p>Origination routes define call distribution properties for your SIP hosts to receive inbound calls using your Amazon Chime Voice Connector. Limit: Ten origination routes for each Amazon Chime Voice Connector.</p>"
    },
    "OriginationRouteList": {
      "type": "list",
      "member": {
        "shape": "OriginationRoute"
      }
    },
    "OriginationRoutePriority": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "OriginationRouteProtocol": {
      "type": "string",
      "enum": [
        "TCP",
        "UDP"
      ]
    },
    "OriginationRouteWeight": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "Participant": {
      "type": "structure",
      "members": {
        "PhoneNumber": {
          "shape": "E164PhoneNumber",
          "documentation": "<p>The participant's phone number.</p>"
        },
        "ProxyPhoneNumber": {
          "shape": "E164PhoneNumber",
          "documentation": "<p>The participant's proxy phone number.</p>"
        }
      },
      "documentation": "<p>The phone number and proxy phone number for a participant in an Amazon Chime Voice Connector proxy session.</p>"
    },
    "ParticipantPhoneNumberList": {
      "type": "list",
      "member": {
        "shape": "E164PhoneNumber"
      },
      "max": 2,
      "min": 2
    },
    "Participants": {
      "type": "list",
      "member": {
        "shape": "Participant"
      }
    },
    "PhoneNumber": {
      "type": "structure",
      "members": {
        "PhoneNumberId": {
          "shape": "String",
          "documentation": "<p>The phone number ID.</p>"
        },
        "E164PhoneNumber": {
          "shape": "E164PhoneNumber",
          "documentation": "<p>The phone number, in E.164 format.</p>"
        },
        "Type": {
          "shape": "PhoneNumberType",
          "documentation": "<p>The phone number type.</p>"
        },
        "ProductType": {
          "shape": "PhoneNumberProductType",
          "documentation": "<p>The phone number product type.</p>"
        },
        "Status": {
          "shape": "PhoneNumberStatus",
          "documentation": "<p>The phone number status.</p>"
        },
        "Capabilities": {
          "shape": "PhoneNumberCapabilities",
          "documentation": "<p>The phone number capabilities.</p>"
        },
        "Associations": {
          "shape": "PhoneNumberAssociationList",
          "documentation": "<p>The phone number associations.</p>"
        },
        "CallingName": {
          "shape": "CallingName",
          "documentation": "<p>The outbound calling name associated with the phone number.</p>"
        },
        "CallingNameStatus": {
          "shape": "CallingNameStatus",
          "documentation": "<p>The outbound calling name status.</p>"
        },
        "CreatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The phone number creation timestamp, in ISO 8601 format.</p>"
        },
        "UpdatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The updated phone number timestamp, in ISO 8601 format.</p>"
        },
        "DeletionTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The deleted phone number timestamp, in ISO 8601 format.</p>"
        }
      },
      "documentation": "<p>A phone number used for Amazon Chime Business Calling or an Amazon Chime Voice Connector.</p>"
    },
    "PhoneNumberAssociation": {
      "type": "structure",
      "members": {
        "Value": {
          "shape": "String",
          "documentation": "<p>Contains the ID for the entity specified in Name.</p>"
        },
        "Name": {
          "shape": "PhoneNumberAssociationName",
          "documentation": "<p>Defines the association with an Amazon Chime account ID, user ID, Amazon Chime Voice Connector ID, or Amazon Chime Voice Connector group ID.</p>"
        },
        "AssociatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The timestamp of the phone number association, in ISO 8601 format.</p>"
        }
      },
      "documentation": "<p>The phone number associations, such as Amazon Chime account ID, Amazon Chime user ID, Amazon Chime Voice Connector ID, or Amazon Chime Voice Connector group ID.</p>"
    },
    "PhoneNumberAssociationList": {
      "type": "list",
      "member": {
        "shape": "PhoneNumberAssociation"
      }
    },
    "PhoneNumberAssociationName": {
      "type": "string",
      "enum": [
        "AccountId",
        "UserId",
        "VoiceConnectorId",
        "VoiceConnectorGroupId"
      ]
    },
    "PhoneNumberCapabilities": {
      "type": "structure",
      "members": {
        "InboundCall": {
          "shape": "NullableBoolean",
          "documentation": "<p>Allows or denies inbound calling for the specified phone number.</p>"
        },
        "OutboundCall": {
          "shape": "NullableBoolean",
          "documentation": "<p>Allows or denies outbound calling for the specified phone number.</p>"
        },
        "InboundSMS": {
          "shape": "NullableBoolean",
          "documentation": "<p>Allows or denies inbound SMS messaging for the specified phone number.</p>"
        },
        "OutboundSMS": {
          "shape": "NullableBoolean",
          "documentation": "<p>Allows or denies outbound SMS messaging for the specified phone number.</p>"
        },
        "InboundMMS": {
          "shape": "NullableBoolean",
          "documentation": "<p>Allows or denies inbound MMS messaging for the specified phone number.</p>"
        },
        "OutboundMMS": {
          "shape": "NullableBoolean",
          "documentation": "<p>Allows or denies outbound MMS messaging for the specified phone number.</p>"
        }
      },
      "documentation": "<p>The phone number capabilities for Amazon Chime Business Calling phone numbers, such as enabled inbound and outbound calling and text messaging.</p>"
    },
    "PhoneNumberError": {
      "type": "structure",
      "members": {
        "PhoneNumberId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The phone number ID for which the action failed.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The error code.</p>"
        },
        "ErrorMessage": {
          "shape": "String",
          "documentation": "<p>The error message.</p>"
        }
      },
      "documentation": "<p>If the phone number action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"
    },
    "PhoneNumberErrorList": {
      "type": "list",
      "member": {
        "shape": "PhoneNumberError"
      }
    },
    "PhoneNumberList": {
      "type": "list",
      "member": {
        "shape": "PhoneNumber"
      }
    },
    "PhoneNumberMaxResults": {
      "type": "integer",
      "max": 500,
      "min": 1
    },
    "PhoneNumberOrder": {
      "type": "structure",
      "members": {
        "PhoneNumberOrderId": {
          "shape": "GuidString",
          "documentation": "<p>The phone number order ID.</p>"
        },
        "ProductType": {
          "shape": "PhoneNumberProductType",
          "documentation": "<p>The phone number order product type.</p>"
        },
        "Status": {
          "shape": "PhoneNumberOrderStatus",
          "documentation": "<p>The status of the phone number order.</p>"
        },
        "OrderedPhoneNumbers": {
          "shape": "OrderedPhoneNumberList",
          "documentation": "<p>The ordered phone number details, such as the phone number in E.164 format and the phone number status.</p>"
        },
        "CreatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The phone number order creation timestamp, in ISO 8601 format.</p>"
        },
        "UpdatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The updated phone number order timestamp, in ISO 8601 format.</p>"
        }
      },
      "documentation": "<p>The details of a phone number order created for Amazon Chime.</p>"
    },
    "PhoneNumberOrderList": {
      "type": "list",
      "member": {
        "shape": "PhoneNumberOrder"
      }
    },
    "PhoneNumberOrderStatus": {
      "type": "string",
      "enum": [
        "Processing",
        "Successful",
        "Failed",
        "Partial"
      ]
    },
    "PhoneNumberProductType": {
      "type": "string",
      "enum": [
        "BusinessCalling",
        "VoiceConnector"
      ]
    },
    "PhoneNumberStatus": {
      "type": "string",
      "enum": [
        "AcquireInProgress",
        "AcquireFailed",
        "Unassigned",
        "Assigned",
        "ReleaseInProgress",
        "DeleteInProgress",
        "ReleaseFailed",
        "DeleteFailed"
      ]
    },
    "PhoneNumberType": {
      "type": "string",
      "enum": [
        "Local",
        "TollFree"
      ]
    },
    "Port": {
      "type": "integer",
      "max": 65535,
      "min": 0
    },
    "PositiveInteger": {
      "type": "integer",
      "min": 1
    },
    "ProfileServiceMaxResults": {
      "type": "integer",
      "max": 200,
      "min": 1
    },
    "Proxy": {
      "type": "structure",
      "members": {
        "DefaultSessionExpiryMinutes": {
          "shape": "Integer",
          "documentation": "<p>The default number of minutes allowed for proxy sessions.</p>"
        },
        "Disabled": {
          "shape": "Boolean",
          "documentation": "<p>When true, stops proxy sessions from being created on the specified Amazon Chime Voice Connector.</p>"
        },
        "FallBackPhoneNumber": {
          "shape": "E164PhoneNumber",
          "documentation": "<p>The phone number to route calls to after a proxy session expires.</p>"
        },
        "PhoneNumberCountries": {
          "shape": "StringList",
          "documentation": "<p>The countries for proxy phone numbers to be selected from.</p>"
        }
      },
      "documentation": "<p>The proxy configuration for an Amazon Chime Voice Connector.</p>"
    },
    "ProxySession": {
      "type": "structure",
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString128",
          "documentation": "<p>The Amazon Chime voice connector ID.</p>"
        },
        "ProxySessionId": {
          "shape": "NonEmptyString128",
          "documentation": "<p>The proxy session ID.</p>"
        },
        "Name": {
          "shape": "String128",
          "documentation": "<p>The name of the proxy session.</p>"
        },
        "Status": {
          "shape": "ProxySessionStatus",
          "documentation": "<p>The status of the proxy session.</p>"
        },
        "ExpiryMinutes": {
          "shape": "PositiveInteger",
          "documentation": "<p>The number of minutes allowed for the proxy session.</p>"
        },
        "Capabilities": {
          "shape": "CapabilityList",
          "documentation": "<p>The proxy session capabilities.</p>"
        },
        "CreatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The created timestamp, in ISO 8601 format.</p>"
        },
        "UpdatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The updated timestamp, in ISO 8601 format.</p>"
        },
        "EndedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The ended timestamp, in ISO 8601 format.</p>"
        },
        "Participants": {
          "shape": "Participants",
          "documentation": "<p>The proxy session participants.</p>"
        },
        "NumberSelectionBehavior": {
          "shape": "NumberSelectionBehavior",
          "documentation": "<p>The preference for proxy phone number reuse, or stickiness, between the same participants across sessions.</p>"
        },
        "GeoMatchLevel": {
          "shape": "GeoMatchLevel",
          "documentation": "<p>The preference for matching the country or area code of the proxy phone number with that of the first participant.</p>"
        },
        "GeoMatchParams": {
          "shape": "GeoMatchParams",
          "documentation": "<p>The country and area code for the proxy phone number.</p>"
        }
      },
      "documentation": "<p>The proxy session for an Amazon Chime Voice Connector.</p>"
    },
    "ProxySessionNameString": {
      "type": "string",
      "pattern": "^$|^[a-zA-Z0-9 ]{0,30}$",
      "sensitive": true
    },
    "ProxySessionStatus": {
      "type": "string",
      "enum": [
        "Open",
        "InProgress",
        "Closed"
      ]
    },
    "ProxySessions": {
      "type": "list",
      "member": {
        "shape": "ProxySession"
      }
    },
    "PutEventsConfigurationRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BotId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "BotId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The bot ID.</p>",
          "location": "uri",
          "locationName": "botId"
        },
        "OutboundEventsHTTPSEndpoint": {
          "shape": "SensitiveString",
          "documentation": "<p>HTTPS endpoint that allows the bot to receive outgoing events.</p>"
        },
        "LambdaFunctionArn": {
          "shape": "SensitiveString",
          "documentation": "<p>Lambda function ARN that allows the bot to receive outgoing events.</p>"
        }
      }
    },
    "PutEventsConfigurationResponse": {
      "type": "structure",
      "members": {
        "EventsConfiguration": {
          "shape": "EventsConfiguration"
        }
      }
    },
    "PutRetentionSettingsRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "RetentionSettings"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "RetentionSettings": {
          "shape": "RetentionSettings",
          "documentation": "<p>The retention settings.</p>"
        }
      }
    },
    "PutRetentionSettingsResponse": {
      "type": "structure",
      "members": {
        "RetentionSettings": {
          "shape": "RetentionSettings",
          "documentation": "<p>The retention settings.</p>"
        },
        "InitiateDeletionTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The timestamp representing the time at which the specified items are permanently deleted, in ISO 8601 format.</p>"
        }
      }
    },
    "PutVoiceConnectorEmergencyCallingConfigurationRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId",
        "EmergencyCallingConfiguration"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "EmergencyCallingConfiguration": {
          "shape": "EmergencyCallingConfiguration",
          "documentation": "<p>The emergency calling configuration details.</p>"
        }
      }
    },
    "PutVoiceConnectorEmergencyCallingConfigurationResponse": {
      "type": "structure",
      "members": {
        "EmergencyCallingConfiguration": {
          "shape": "EmergencyCallingConfiguration",
          "documentation": "<p>The emergency calling configuration details.</p>"
        }
      }
    },
    "PutVoiceConnectorLoggingConfigurationRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId",
        "LoggingConfiguration"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "LoggingConfiguration": {
          "shape": "LoggingConfiguration",
          "documentation": "<p>The logging configuration details to add.</p>"
        }
      }
    },
    "PutVoiceConnectorLoggingConfigurationResponse": {
      "type": "structure",
      "members": {
        "LoggingConfiguration": {
          "shape": "LoggingConfiguration",
          "documentation": "<p>The updated logging configuration details.</p>"
        }
      }
    },
    "PutVoiceConnectorOriginationRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId",
        "Origination"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "Origination": {
          "shape": "Origination",
          "documentation": "<p>The origination setting details to add.</p>"
        }
      }
    },
    "PutVoiceConnectorOriginationResponse": {
      "type": "structure",
      "members": {
        "Origination": {
          "shape": "Origination",
          "documentation": "<p>The updated origination setting details.</p>"
        }
      }
    },
    "PutVoiceConnectorProxyRequest": {
      "type": "structure",
      "required": [
        "DefaultSessionExpiryMinutes",
        "PhoneNumberPoolCountries",
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString128",
          "documentation": "<p>The Amazon Chime voice connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "DefaultSessionExpiryMinutes": {
          "shape": "Integer",
          "documentation": "<p>The default number of minutes allowed for proxy sessions.</p>"
        },
        "PhoneNumberPoolCountries": {
          "shape": "CountryList",
          "documentation": "<p>The countries for proxy phone numbers to be selected from.</p>"
        },
        "FallBackPhoneNumber": {
          "shape": "E164PhoneNumber",
          "documentation": "<p>The phone number to route calls to after a proxy session expires.</p>"
        },
        "Disabled": {
          "shape": "Boolean",
          "documentation": "<p>When true, stops proxy sessions from being created on the specified Amazon Chime Voice Connector.</p>"
        }
      }
    },
    "PutVoiceConnectorProxyResponse": {
      "type": "structure",
      "members": {
        "Proxy": {
          "shape": "Proxy",
          "documentation": "<p>The proxy configuration details.</p>"
        }
      }
    },
    "PutVoiceConnectorStreamingConfigurationRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId",
        "StreamingConfiguration"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "StreamingConfiguration": {
          "shape": "StreamingConfiguration",
          "documentation": "<p>The streaming configuration details to add.</p>"
        }
      }
    },
    "PutVoiceConnectorStreamingConfigurationResponse": {
      "type": "structure",
      "members": {
        "StreamingConfiguration": {
          "shape": "StreamingConfiguration",
          "documentation": "<p>The updated streaming configuration details.</p>"
        }
      }
    },
    "PutVoiceConnectorTerminationCredentialsRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "Credentials": {
          "shape": "CredentialList",
          "documentation": "<p>The termination SIP credentials.</p>"
        }
      }
    },
    "PutVoiceConnectorTerminationRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId",
        "Termination"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "Termination": {
          "shape": "Termination",
          "documentation": "<p>The termination setting details to add.</p>"
        }
      }
    },
    "PutVoiceConnectorTerminationResponse": {
      "type": "structure",
      "members": {
        "Termination": {
          "shape": "Termination",
          "documentation": "<p>The updated termination setting details.</p>"
        }
      }
    },
    "RedactConversationMessageRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "ConversationId",
        "MessageId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "ConversationId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The conversation ID.</p>",
          "location": "uri",
          "locationName": "conversationId"
        },
        "MessageId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The message ID.</p>",
          "location": "uri",
          "locationName": "messageId"
        }
      }
    },
    "RedactConversationMessageResponse": {
      "type": "structure",
      "members": {}
    },
    "RedactRoomMessageRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "RoomId",
        "MessageId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "RoomId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The room ID.</p>",
          "location": "uri",
          "locationName": "roomId"
        },
        "MessageId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The message ID.</p>",
          "location": "uri",
          "locationName": "messageId"
        }
      }
    },
    "RedactRoomMessageResponse": {
      "type": "structure",
      "members": {}
    },
    "RegenerateSecurityTokenRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BotId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "BotId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The bot ID.</p>",
          "location": "uri",
          "locationName": "botId"
        }
      }
    },
    "RegenerateSecurityTokenResponse": {
      "type": "structure",
      "members": {
        "Bot": {
          "shape": "Bot"
        }
      }
    },
    "RegistrationStatus": {
      "type": "string",
      "enum": [
        "Unregistered",
        "Registered",
        "Suspended"
      ]
    },
    "ResetPersonalPINRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "UserId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "UserId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The user ID.</p>",
          "location": "uri",
          "locationName": "userId"
        }
      }
    },
    "ResetPersonalPINResponse": {
      "type": "structure",
      "members": {
        "User": {
          "shape": "User",
          "documentation": "<p>The user details and new personal meeting PIN.</p>"
        }
      }
    },
    "RestorePhoneNumberRequest": {
      "type": "structure",
      "required": [
        "PhoneNumberId"
      ],
      "members": {
        "PhoneNumberId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The phone number.</p>",
          "location": "uri",
          "locationName": "phoneNumberId"
        }
      }
    },
    "RestorePhoneNumberResponse": {
      "type": "structure",
      "members": {
        "PhoneNumber": {
          "shape": "PhoneNumber",
          "documentation": "<p>The phone number details.</p>"
        }
      }
    },
    "ResultMax": {
      "type": "integer",
      "max": 99,
      "min": 1
    },
    "RetentionDays": {
      "type": "integer",
      "max": 5475,
      "min": 1
    },
    "RetentionSettings": {
      "type": "structure",
      "members": {
        "RoomRetentionSettings": {
          "shape": "RoomRetentionSettings",
          "documentation": "<p>The chat room retention settings.</p>"
        },
        "ConversationRetentionSettings": {
          "shape": "ConversationRetentionSettings",
          "documentation": "<p>The chat conversation retention settings.</p>"
        }
      },
      "documentation": "<p>The retention settings for an Amazon Chime Enterprise account that determine how long to retain items such as chat room messages and chat conversation messages.</p>"
    },
    "Room": {
      "type": "structure",
      "members": {
        "RoomId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The room ID.</p>"
        },
        "Name": {
          "shape": "SensitiveString",
          "documentation": "<p>The room name.</p>"
        },
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>"
        },
        "CreatedBy": {
          "shape": "NonEmptyString",
          "documentation": "<p>The identifier of the room creator.</p>"
        },
        "CreatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The room creation timestamp, in ISO 8601 format.</p>"
        },
        "UpdatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The room update timestamp, in ISO 8601 format.</p>"
        }
      },
      "documentation": "<p>The Amazon Chime chat room details.</p>"
    },
    "RoomList": {
      "type": "list",
      "member": {
        "shape": "Room"
      }
    },
    "RoomMembership": {
      "type": "structure",
      "members": {
        "RoomId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The room ID.</p>"
        },
        "Member": {
          "shape": "Member"
        },
        "Role": {
          "shape": "RoomMembershipRole",
          "documentation": "<p>The membership role.</p>"
        },
        "InvitedBy": {
          "shape": "NonEmptyString",
          "documentation": "<p>The identifier of the user that invited the room member.</p>"
        },
        "UpdatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The room membership update timestamp, in ISO 8601 format.</p>"
        }
      },
      "documentation": "<p>The room membership details.</p>"
    },
    "RoomMembershipList": {
      "type": "list",
      "member": {
        "shape": "RoomMembership"
      }
    },
    "RoomMembershipRole": {
      "type": "string",
      "enum": [
        "Administrator",
        "Member"
      ]
    },
    "RoomRetentionSettings": {
      "type": "structure",
      "members": {
        "RetentionDays": {
          "shape": "RetentionDays",
          "documentation": "<p>The number of days for which to retain chat room messages.</p>"
        }
      },
      "documentation": "<p>The retention settings that determine how long to retain chat room messages for an Amazon Chime Enterprise account.</p>"
    },
    "SearchAvailablePhoneNumbersRequest": {
      "type": "structure",
      "members": {
        "AreaCode": {
          "shape": "String",
          "documentation": "<p>The area code used to filter results.</p>",
          "location": "querystring",
          "locationName": "area-code"
        },
        "City": {
          "shape": "String",
          "documentation": "<p>The city used to filter results.</p>",
          "location": "querystring",
          "locationName": "city"
        },
        "Country": {
          "shape": "String",
          "documentation": "<p>The country used to filter results.</p>",
          "location": "querystring",
          "locationName": "country"
        },
        "State": {
          "shape": "String",
          "documentation": "<p>The state used to filter results.</p>",
          "location": "querystring",
          "locationName": "state"
        },
        "TollFreePrefix": {
          "shape": "TollFreePrefix",
          "documentation": "<p>The toll-free prefix that you use to filter results.</p>",
          "location": "querystring",
          "locationName": "toll-free-prefix"
        },
        "MaxResults": {
          "shape": "PhoneNumberMaxResults",
          "documentation": "<p>The maximum number of results to return in a single call.</p>",
          "location": "querystring",
          "locationName": "max-results"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to retrieve the next page of results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        }
      }
    },
    "SearchAvailablePhoneNumbersResponse": {
      "type": "structure",
      "members": {
        "E164PhoneNumbers": {
          "shape": "E164PhoneNumberList",
          "documentation": "<p>List of phone numbers, in E.164 format.</p>"
        }
      }
    },
    "SensitiveString": {
      "type": "string",
      "sensitive": true
    },
    "SensitiveStringList": {
      "type": "list",
      "member": {
        "shape": "SensitiveString"
      }
    },
    "SigninDelegateGroup": {
      "type": "structure",
      "members": {
        "GroupName": {
          "shape": "NonEmptyString",
          "documentation": "<p>The group name.</p>"
        }
      },
      "documentation": "<p>An Active Directory (AD) group whose members are granted permission to act as delegates.</p>"
    },
    "SigninDelegateGroupList": {
      "type": "list",
      "member": {
        "shape": "SigninDelegateGroup"
      }
    },
    "StreamingConfiguration": {
      "type": "structure",
      "required": [
        "DataRetentionInHours"
      ],
      "members": {
        "DataRetentionInHours": {
          "shape": "DataRetentionInHours",
          "documentation": "<p>The retention period, in hours, for the Amazon Kinesis data.</p>"
        },
        "Disabled": {
          "shape": "Boolean",
          "documentation": "<p>When true, media streaming to Amazon Kinesis is turned off.</p>"
        },
        "StreamingNotificationTargets": {
          "shape": "StreamingNotificationTargetList",
          "documentation": "<p>The streaming notification targets.</p>"
        }
      },
      "documentation": "<p>The streaming configuration associated with an Amazon Chime Voice Connector. Specifies whether media streaming is enabled for sending to Amazon Kinesis, and shows the retention period for the Amazon Kinesis data, in hours.</p>"
    },
    "StreamingNotificationTarget": {
      "type": "structure",
      "required": [
        "NotificationTarget"
      ],
      "members": {
        "NotificationTarget": {
          "shape": "NotificationTarget",
          "documentation": "<p>The streaming notification target.</p>"
        }
      },
      "documentation": "<p>The targeted recipient for a streaming configuration notification.</p>"
    },
    "StreamingNotificationTargetList": {
      "type": "list",
      "member": {
        "shape": "StreamingNotificationTarget"
      },
      "max": 3,
      "min": 1
    },
    "String": {
      "type": "string"
    },
    "String128": {
      "type": "string",
      "max": 128
    },
    "StringList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
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
    "TagAttendeeRequest": {
      "type": "structure",
      "required": [
        "MeetingId",
        "AttendeeId",
        "Tags"
      ],
      "members": {
        "MeetingId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK meeting ID.</p>",
          "location": "uri",
          "locationName": "meetingId"
        },
        "AttendeeId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK attendee ID.</p>",
          "location": "uri",
          "locationName": "attendeeId"
        },
        "Tags": {
          "shape": "AttendeeTagList",
          "documentation": "<p>The tag key-value pairs.</p>"
        }
      }
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "sensitive": true
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 50,
      "min": 1
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 50,
      "min": 1
    },
    "TagMeetingRequest": {
      "type": "structure",
      "required": [
        "MeetingId",
        "Tags"
      ],
      "members": {
        "MeetingId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK meeting ID.</p>",
          "location": "uri",
          "locationName": "meetingId"
        },
        "Tags": {
          "shape": "MeetingTagList",
          "documentation": "<p>The tag key-value pairs.</p>"
        }
      }
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "Tags"
      ],
      "members": {
        "ResourceARN": {
          "shape": "Arn",
          "documentation": "<p>The resource ARN.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tag key-value pairs.</p>"
        }
      }
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 1,
      "sensitive": true
    },
    "TelephonySettings": {
      "type": "structure",
      "required": [
        "InboundCalling",
        "OutboundCalling",
        "SMS"
      ],
      "members": {
        "InboundCalling": {
          "shape": "Boolean",
          "documentation": "<p>Allows or denies inbound calling.</p>"
        },
        "OutboundCalling": {
          "shape": "Boolean",
          "documentation": "<p>Allows or denies outbound calling.</p>"
        },
        "SMS": {
          "shape": "Boolean",
          "documentation": "<p>Allows or denies SMS messaging.</p>"
        }
      },
      "documentation": "<p>Settings that allow management of telephony permissions for an Amazon Chime user, such as inbound and outbound calling and text messaging.</p>"
    },
    "Termination": {
      "type": "structure",
      "members": {
        "CpsLimit": {
          "shape": "CpsLimit",
          "documentation": "<p>The limit on calls per second. Max value based on account service quota. Default value of 1.</p>"
        },
        "DefaultPhoneNumber": {
          "shape": "E164PhoneNumber",
          "documentation": "<p>The default caller ID phone number.</p>"
        },
        "CallingRegions": {
          "shape": "CallingRegionList",
          "documentation": "<p>The countries to which calls are allowed, in ISO 3166-1 alpha-2 format. Required.</p>"
        },
        "CidrAllowedList": {
          "shape": "StringList",
          "documentation": "<p>The IP addresses allowed to make calls, in CIDR format. Required.</p>"
        },
        "Disabled": {
          "shape": "Boolean",
          "documentation": "<p>When termination settings are disabled, outbound calls can not be made.</p>"
        }
      },
      "documentation": "<p>Termination settings enable your SIP hosts to make outbound calls using your Amazon Chime Voice Connector.</p>"
    },
    "TerminationHealth": {
      "type": "structure",
      "members": {
        "Timestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The timestamp, in ISO 8601 format.</p>"
        },
        "Source": {
          "shape": "String",
          "documentation": "<p>The source IP address.</p>"
        }
      },
      "documentation": "<p>The termination health details, including the source IP address and timestamp of the last successful SIP <code>OPTIONS</code> message from your SIP infrastructure.</p>"
    },
    "TollFreePrefix": {
      "type": "string",
      "max": 3,
      "min": 3,
      "pattern": "^8(00|33|44|55|66|77|88)$"
    },
    "UntagAttendeeRequest": {
      "type": "structure",
      "required": [
        "MeetingId",
        "TagKeys",
        "AttendeeId"
      ],
      "members": {
        "MeetingId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK meeting ID.</p>",
          "location": "uri",
          "locationName": "meetingId"
        },
        "AttendeeId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK attendee ID.</p>",
          "location": "uri",
          "locationName": "attendeeId"
        },
        "TagKeys": {
          "shape": "AttendeeTagKeyList",
          "documentation": "<p>The tag keys.</p>"
        }
      }
    },
    "UntagMeetingRequest": {
      "type": "structure",
      "required": [
        "MeetingId",
        "TagKeys"
      ],
      "members": {
        "MeetingId": {
          "shape": "GuidString",
          "documentation": "<p>The Amazon Chime SDK meeting ID.</p>",
          "location": "uri",
          "locationName": "meetingId"
        },
        "TagKeys": {
          "shape": "MeetingTagKeyList",
          "documentation": "<p>The tag keys.</p>"
        }
      }
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "TagKeys"
      ],
      "members": {
        "ResourceARN": {
          "shape": "Arn",
          "documentation": "<p>The resource ARN.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The tag keys.</p>"
        }
      }
    },
    "UpdateAccountRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "Name": {
          "shape": "AccountName",
          "documentation": "<p>The new name for the specified Amazon Chime account.</p>"
        }
      }
    },
    "UpdateAccountResponse": {
      "type": "structure",
      "members": {
        "Account": {
          "shape": "Account",
          "documentation": "<p>The updated Amazon Chime account details.</p>"
        }
      }
    },
    "UpdateAccountSettingsRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "AccountSettings"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "AccountSettings": {
          "shape": "AccountSettings",
          "documentation": "<p>The Amazon Chime account settings to update.</p>"
        }
      }
    },
    "UpdateAccountSettingsResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateBotRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BotId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "BotId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The bot ID.</p>",
          "location": "uri",
          "locationName": "botId"
        },
        "Disabled": {
          "shape": "NullableBoolean",
          "documentation": "<p>When true, stops the specified bot from running in your account.</p>"
        }
      }
    },
    "UpdateBotResponse": {
      "type": "structure",
      "members": {
        "Bot": {
          "shape": "Bot",
          "documentation": "<p>The updated bot details.</p>"
        }
      }
    },
    "UpdateGlobalSettingsRequest": {
      "type": "structure",
      "required": [
        "BusinessCalling",
        "VoiceConnector"
      ],
      "members": {
        "BusinessCalling": {
          "shape": "BusinessCallingSettings",
          "documentation": "<p>The Amazon Chime Business Calling settings.</p>"
        },
        "VoiceConnector": {
          "shape": "VoiceConnectorSettings",
          "documentation": "<p>The Amazon Chime Voice Connector settings.</p>"
        }
      }
    },
    "UpdatePhoneNumberRequest": {
      "type": "structure",
      "required": [
        "PhoneNumberId"
      ],
      "members": {
        "PhoneNumberId": {
          "shape": "String",
          "documentation": "<p>The phone number ID.</p>",
          "location": "uri",
          "locationName": "phoneNumberId"
        },
        "ProductType": {
          "shape": "PhoneNumberProductType",
          "documentation": "<p>The product type.</p>"
        },
        "CallingName": {
          "shape": "CallingName",
          "documentation": "<p>The outbound calling name associated with the phone number.</p>"
        }
      }
    },
    "UpdatePhoneNumberRequestItem": {
      "type": "structure",
      "required": [
        "PhoneNumberId"
      ],
      "members": {
        "PhoneNumberId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The phone number ID to update.</p>"
        },
        "ProductType": {
          "shape": "PhoneNumberProductType",
          "documentation": "<p>The product type to update.</p>"
        },
        "CallingName": {
          "shape": "CallingName",
          "documentation": "<p>The outbound calling name to update.</p>"
        }
      },
      "documentation": "<p>The phone number ID, product type, or calling name fields to update, used with the <a>BatchUpdatePhoneNumber</a> and <a>UpdatePhoneNumber</a> actions.</p>"
    },
    "UpdatePhoneNumberRequestItemList": {
      "type": "list",
      "member": {
        "shape": "UpdatePhoneNumberRequestItem"
      }
    },
    "UpdatePhoneNumberResponse": {
      "type": "structure",
      "members": {
        "PhoneNumber": {
          "shape": "PhoneNumber",
          "documentation": "<p>The updated phone number details.</p>"
        }
      }
    },
    "UpdatePhoneNumberSettingsRequest": {
      "type": "structure",
      "required": [
        "CallingName"
      ],
      "members": {
        "CallingName": {
          "shape": "CallingName",
          "documentation": "<p>The default outbound calling name for the account.</p>"
        }
      }
    },
    "UpdateProxySessionRequest": {
      "type": "structure",
      "required": [
        "Capabilities",
        "VoiceConnectorId",
        "ProxySessionId"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString128",
          "documentation": "<p>The Amazon Chime voice connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "ProxySessionId": {
          "shape": "NonEmptyString128",
          "documentation": "<p>The proxy session ID.</p>",
          "location": "uri",
          "locationName": "proxySessionId"
        },
        "Capabilities": {
          "shape": "CapabilityList",
          "documentation": "<p>The proxy session capabilities.</p>"
        },
        "ExpiryMinutes": {
          "shape": "PositiveInteger",
          "documentation": "<p>The number of minutes allowed for the proxy session.</p>"
        }
      }
    },
    "UpdateProxySessionResponse": {
      "type": "structure",
      "members": {
        "ProxySession": {
          "shape": "ProxySession",
          "documentation": "<p>The proxy session details.</p>"
        }
      }
    },
    "UpdateRoomMembershipRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "RoomId",
        "MemberId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "RoomId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The room ID.</p>",
          "location": "uri",
          "locationName": "roomId"
        },
        "MemberId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The member ID.</p>",
          "location": "uri",
          "locationName": "memberId"
        },
        "Role": {
          "shape": "RoomMembershipRole",
          "documentation": "<p>The role of the member.</p>"
        }
      }
    },
    "UpdateRoomMembershipResponse": {
      "type": "structure",
      "members": {
        "RoomMembership": {
          "shape": "RoomMembership",
          "documentation": "<p>The room membership details.</p>"
        }
      }
    },
    "UpdateRoomRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "RoomId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "RoomId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The room ID.</p>",
          "location": "uri",
          "locationName": "roomId"
        },
        "Name": {
          "shape": "SensitiveString",
          "documentation": "<p>The room name.</p>"
        }
      }
    },
    "UpdateRoomResponse": {
      "type": "structure",
      "members": {
        "Room": {
          "shape": "Room",
          "documentation": "<p>The room details.</p>"
        }
      }
    },
    "UpdateUserRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "UserId"
      ],
      "members": {
        "AccountId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "UserId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The user ID.</p>",
          "location": "uri",
          "locationName": "userId"
        },
        "LicenseType": {
          "shape": "License",
          "documentation": "<p>The user license type to update. This must be a supported license type for the Amazon Chime account that the user belongs to.</p>"
        },
        "UserType": {
          "shape": "UserType",
          "documentation": "<p>The user type.</p>"
        },
        "AlexaForBusinessMetadata": {
          "shape": "AlexaForBusinessMetadata",
          "documentation": "<p>The Alexa for Business metadata.</p>"
        }
      }
    },
    "UpdateUserRequestItem": {
      "type": "structure",
      "required": [
        "UserId"
      ],
      "members": {
        "UserId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The user ID.</p>"
        },
        "LicenseType": {
          "shape": "License",
          "documentation": "<p>The user license type.</p>"
        },
        "UserType": {
          "shape": "UserType",
          "documentation": "<p>The user type.</p>"
        },
        "AlexaForBusinessMetadata": {
          "shape": "AlexaForBusinessMetadata",
          "documentation": "<p>The Alexa for Business metadata.</p>"
        }
      },
      "documentation": "<p>The user ID and user fields to update, used with the <a>BatchUpdateUser</a> action.</p>"
    },
    "UpdateUserRequestItemList": {
      "type": "list",
      "member": {
        "shape": "UpdateUserRequestItem"
      },
      "max": 20
    },
    "UpdateUserResponse": {
      "type": "structure",
      "members": {
        "User": {
          "shape": "User",
          "documentation": "<p>The updated user details.</p>"
        }
      }
    },
    "UpdateUserSettingsRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "UserId",
        "UserSettings"
      ],
      "members": {
        "AccountId": {
          "shape": "String",
          "documentation": "<p>The Amazon Chime account ID.</p>",
          "location": "uri",
          "locationName": "accountId"
        },
        "UserId": {
          "shape": "String",
          "documentation": "<p>The user ID.</p>",
          "location": "uri",
          "locationName": "userId"
        },
        "UserSettings": {
          "shape": "UserSettings",
          "documentation": "<p>The user settings to update.</p>"
        }
      }
    },
    "UpdateVoiceConnectorGroupRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorGroupId",
        "Name",
        "VoiceConnectorItems"
      ],
      "members": {
        "VoiceConnectorGroupId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector group ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorGroupId"
        },
        "Name": {
          "shape": "VoiceConnectorGroupName",
          "documentation": "<p>The name of the Amazon Chime Voice Connector group.</p>"
        },
        "VoiceConnectorItems": {
          "shape": "VoiceConnectorItemList",
          "documentation": "<p>The <code>VoiceConnectorItems</code> to associate with the group.</p>"
        }
      }
    },
    "UpdateVoiceConnectorGroupResponse": {
      "type": "structure",
      "members": {
        "VoiceConnectorGroup": {
          "shape": "VoiceConnectorGroup",
          "documentation": "<p>The updated Amazon Chime Voice Connector group details.</p>"
        }
      }
    },
    "UpdateVoiceConnectorRequest": {
      "type": "structure",
      "required": [
        "VoiceConnectorId",
        "Name",
        "RequireEncryption"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>",
          "location": "uri",
          "locationName": "voiceConnectorId"
        },
        "Name": {
          "shape": "VoiceConnectorName",
          "documentation": "<p>The name of the Amazon Chime Voice Connector.</p>"
        },
        "RequireEncryption": {
          "shape": "Boolean",
          "documentation": "<p>When enabled, requires encryption for the Amazon Chime Voice Connector.</p>"
        }
      }
    },
    "UpdateVoiceConnectorResponse": {
      "type": "structure",
      "members": {
        "VoiceConnector": {
          "shape": "VoiceConnector",
          "documentation": "<p>The updated Amazon Chime Voice Connector details.</p>"
        }
      }
    },
    "UriType": {
      "type": "string",
      "max": 4096
    },
    "User": {
      "type": "structure",
      "required": [
        "UserId"
      ],
      "members": {
        "UserId": {
          "shape": "String",
          "documentation": "<p>The user ID.</p>"
        },
        "AccountId": {
          "shape": "String",
          "documentation": "<p>The Amazon Chime account ID.</p>"
        },
        "PrimaryEmail": {
          "shape": "EmailAddress",
          "documentation": "<p>The primary email address of the user.</p>"
        },
        "PrimaryProvisionedNumber": {
          "shape": "SensitiveString",
          "documentation": "<p>The primary phone number associated with the user.</p>"
        },
        "DisplayName": {
          "shape": "SensitiveString",
          "documentation": "<p>The display name of the user.</p>"
        },
        "LicenseType": {
          "shape": "License",
          "documentation": "<p>The license type for the user.</p>"
        },
        "UserType": {
          "shape": "UserType",
          "documentation": "<p>The user type.</p>"
        },
        "UserRegistrationStatus": {
          "shape": "RegistrationStatus",
          "documentation": "<p>The user registration status.</p>"
        },
        "UserInvitationStatus": {
          "shape": "InviteStatus",
          "documentation": "<p>The user invite status.</p>"
        },
        "RegisteredOn": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>Date and time when the user is registered, in ISO 8601 format.</p>"
        },
        "InvitedOn": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>Date and time when the user is invited to the Amazon Chime account, in ISO 8601 format.</p>"
        },
        "AlexaForBusinessMetadata": {
          "shape": "AlexaForBusinessMetadata",
          "documentation": "<p>The Alexa for Business metadata.</p>"
        },
        "PersonalPIN": {
          "shape": "String",
          "documentation": "<p>The user's personal meeting PIN.</p>"
        }
      },
      "documentation": "<p>The user on the Amazon Chime account.</p>"
    },
    "UserEmailList": {
      "type": "list",
      "member": {
        "shape": "EmailAddress"
      },
      "max": 50
    },
    "UserError": {
      "type": "structure",
      "members": {
        "UserId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The user ID for which the action failed.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The error code.</p>"
        },
        "ErrorMessage": {
          "shape": "String",
          "documentation": "<p>The error message.</p>"
        }
      },
      "documentation": "<p>The list of errors returned when errors are encountered during the <a>BatchSuspendUser</a>, <a>BatchUnsuspendUser</a>, or <a>BatchUpdateUser</a> actions. This includes user IDs, error codes, and error messages.</p>"
    },
    "UserErrorList": {
      "type": "list",
      "member": {
        "shape": "UserError"
      }
    },
    "UserIdList": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      },
      "max": 50
    },
    "UserList": {
      "type": "list",
      "member": {
        "shape": "User"
      }
    },
    "UserSettings": {
      "type": "structure",
      "required": [
        "Telephony"
      ],
      "members": {
        "Telephony": {
          "shape": "TelephonySettings",
          "documentation": "<p>The telephony settings associated with the user.</p>"
        }
      },
      "documentation": "<p>Settings associated with an Amazon Chime user, including inbound and outbound calling and text messaging.</p>"
    },
    "UserType": {
      "type": "string",
      "enum": [
        "PrivateUser",
        "SharedDevice"
      ]
    },
    "VoiceConnector": {
      "type": "structure",
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>"
        },
        "AwsRegion": {
          "shape": "VoiceConnectorAwsRegion",
          "documentation": "<p>The AWS Region in which the Amazon Chime Voice Connector is created. Default: <code>us-east-1</code>.</p>"
        },
        "Name": {
          "shape": "VoiceConnectorName",
          "documentation": "<p>The name of the Amazon Chime Voice Connector.</p>"
        },
        "OutboundHostName": {
          "shape": "String",
          "documentation": "<p>The outbound host name for the Amazon Chime Voice Connector.</p>"
        },
        "RequireEncryption": {
          "shape": "Boolean",
          "documentation": "<p>Designates whether encryption is required for the Amazon Chime Voice Connector.</p>"
        },
        "CreatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The Amazon Chime Voice Connector creation timestamp, in ISO 8601 format.</p>"
        },
        "UpdatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The updated Amazon Chime Voice Connector timestamp, in ISO 8601 format.</p>"
        }
      },
      "documentation": "<p>The Amazon Chime Voice Connector configuration, including outbound host name and encryption settings.</p>"
    },
    "VoiceConnectorAwsRegion": {
      "type": "string",
      "enum": [
        "us-east-1",
        "us-west-2"
      ]
    },
    "VoiceConnectorGroup": {
      "type": "structure",
      "members": {
        "VoiceConnectorGroupId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector group ID.</p>"
        },
        "Name": {
          "shape": "VoiceConnectorGroupName",
          "documentation": "<p>The name of the Amazon Chime Voice Connector group.</p>"
        },
        "VoiceConnectorItems": {
          "shape": "VoiceConnectorItemList",
          "documentation": "<p>The Amazon Chime Voice Connectors to which to route inbound calls.</p>"
        },
        "CreatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The Amazon Chime Voice Connector group creation timestamp, in ISO 8601 format.</p>"
        },
        "UpdatedTimestamp": {
          "shape": "Iso8601Timestamp",
          "documentation": "<p>The updated Amazon Chime Voice Connector group timestamp, in ISO 8601 format.</p>"
        }
      },
      "documentation": "<p>The Amazon Chime Voice Connector group configuration, including associated Amazon Chime Voice Connectors. You can include Amazon Chime Voice Connectors from different AWS Regions in your group. This creates a fault tolerant mechanism for fallback in case of availability events.</p>"
    },
    "VoiceConnectorGroupList": {
      "type": "list",
      "member": {
        "shape": "VoiceConnectorGroup"
      }
    },
    "VoiceConnectorGroupName": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "VoiceConnectorItem": {
      "type": "structure",
      "required": [
        "VoiceConnectorId",
        "Priority"
      ],
      "members": {
        "VoiceConnectorId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Chime Voice Connector ID.</p>"
        },
        "Priority": {
          "shape": "VoiceConnectorItemPriority",
          "documentation": "<p>The priority associated with the Amazon Chime Voice Connector, with 1 being the highest priority. Higher priority Amazon Chime Voice Connectors are attempted first. </p>"
        }
      },
      "documentation": "<p>For Amazon Chime Voice Connector groups, the Amazon Chime Voice Connectors to which to route inbound calls. Includes priority configuration settings. Limit: 3 <code>VoiceConnectorItems</code> per Amazon Chime Voice Connector group.</p>"
    },
    "VoiceConnectorItemList": {
      "type": "list",
      "member": {
        "shape": "VoiceConnectorItem"
      }
    },
    "VoiceConnectorItemPriority": {
      "type": "integer",
      "max": 99,
      "min": 1
    },
    "VoiceConnectorList": {
      "type": "list",
      "member": {
        "shape": "VoiceConnector"
      }
    },
    "VoiceConnectorName": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "VoiceConnectorSettings": {
      "type": "structure",
      "members": {
        "CdrBucket": {
          "shape": "String",
          "documentation": "<p>The Amazon S3 bucket designated for call detail record storage.</p>",
          "box": true
        }
      },
      "documentation": "<p>The Amazon Chime Voice Connector settings. Includes any Amazon S3 buckets designated for storing call detail records.</p>"
    }
  },
  "documentation": "<p>The Amazon Chime API (application programming interface) is designed for developers to perform key tasks, such as creating and managing Amazon Chime accounts, users, and Voice Connectors. This guide provides detailed information about the Amazon Chime API, including operations, types, inputs and outputs, and error codes. It also includes some server-side API actions to use with the Amazon Chime SDK. For more information about the Amazon Chime SDK, see <a href=\"https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html\">Using the Amazon Chime SDK</a> in the <i>Amazon Chime Developer Guide</i>.</p> <p>You can use an AWS SDK, the AWS Command Line Interface (AWS CLI), or the REST API to make API calls. We recommend using an AWS SDK or the AWS CLI. Each API operation includes links to information about using it with a language-specific AWS SDK or the AWS CLI.</p> <dl> <dt>Using an AWS SDK</dt> <dd> <p>You don't need to write code to calculate a signature for request authentication. The SDK clients authenticate your requests by using access keys that you provide. For more information about AWS SDKs, see the <a href=\"http://aws.amazon.com/developer/\">AWS Developer Center</a>.</p> </dd> <dt>Using the AWS CLI</dt> <dd> <p>Use your access keys with the AWS CLI to make API calls. For information about setting up the AWS CLI, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/installing.html\">Installing the AWS Command Line Interface</a> in the <i>AWS Command Line Interface User Guide</i>. For a list of available Amazon Chime commands, see the <a href=\"https://docs.aws.amazon.com/cli/latest/reference/chime/index.html\">Amazon Chime commands</a> in the <i>AWS CLI Command Reference</i>.</p> </dd> <dt>Using REST API</dt> <dd> <p>If you use REST to make API calls, you must authenticate your request by providing a signature. Amazon Chime supports signature version 4. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4 Signing Process</a> in the <i>Amazon Web Services General Reference</i>.</p> <p>When making REST API calls, use the service name <code>chime</code> and REST endpoint <code>https://service.chime.aws.amazon.com</code>.</p> </dd> </dl> <p>Administrative permissions are controlled using AWS Identity and Access Management (IAM). For more information, see <a href=\"https://docs.aws.amazon.com/chime/latest/ag/security-iam.html\">Identity and Access Management for Amazon Chime</a> in the <i>Amazon Chime Administration Guide</i>.</p>"
}
]===]))
