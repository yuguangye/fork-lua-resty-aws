local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2012-12-01",
    "endpointPrefix": "redshift",
    "protocol": "query",
    "serviceFullName": "Amazon Redshift",
    "serviceId": "Redshift",
    "signatureVersion": "v4",
    "uid": "redshift-2012-12-01",
    "xmlNamespace": "http://redshift.amazonaws.com/doc/2012-12-01/"
  },
  "operations": {
    "AcceptReservedNodeExchange": {
      "name": "AcceptReservedNodeExchange",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AcceptReservedNodeExchangeInputMessage"
      },
      "output": {
        "shape": "AcceptReservedNodeExchangeOutputMessage",
        "resultWrapper": "AcceptReservedNodeExchangeResult"
      },
      "errors": [
        {
          "shape": "ReservedNodeNotFoundFault"
        },
        {
          "shape": "InvalidReservedNodeStateFault"
        },
        {
          "shape": "ReservedNodeAlreadyMigratedFault"
        },
        {
          "shape": "ReservedNodeOfferingNotFoundFault"
        },
        {
          "shape": "UnsupportedOperationFault"
        },
        {
          "shape": "DependentServiceUnavailableFault"
        },
        {
          "shape": "ReservedNodeAlreadyExistsFault"
        }
      ],
      "documentation": "<p>Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes to the configuration (term, payment type, or number of nodes) and no additional costs. </p>"
    },
    "AuthorizeClusterSecurityGroupIngress": {
      "name": "AuthorizeClusterSecurityGroupIngress",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AuthorizeClusterSecurityGroupIngressMessage"
      },
      "output": {
        "shape": "AuthorizeClusterSecurityGroupIngressResult",
        "resultWrapper": "AuthorizeClusterSecurityGroupIngressResult"
      },
      "errors": [
        {
          "shape": "ClusterSecurityGroupNotFoundFault"
        },
        {
          "shape": "InvalidClusterSecurityGroupStateFault"
        },
        {
          "shape": "AuthorizationAlreadyExistsFault"
        },
        {
          "shape": "AuthorizationQuotaExceededFault"
        }
      ],
      "documentation": "<p>Adds an inbound (ingress) rule to an Amazon Redshift security group. Depending on whether the application accessing your cluster is running on the Internet or an Amazon EC2 instance, you can authorize inbound access to either a Classless Interdomain Routing (CIDR)/Internet Protocol (IP) range or to an Amazon EC2 security group. You can add as many as 20 ingress rules to an Amazon Redshift security group.</p> <p>If you authorize access to an Amazon EC2 security group, specify <i>EC2SecurityGroupName</i> and <i>EC2SecurityGroupOwnerId</i>. The Amazon EC2 security group and Amazon Redshift cluster must be in the same AWS Region. </p> <p>If you authorize access to a CIDR/IP address range, specify <i>CIDRIP</i>. For an overview of CIDR blocks, see the Wikipedia article on <a href=\"http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Classless Inter-Domain Routing</a>. </p> <p>You must also associate the security group with a cluster so that clients running on these IP addresses or the EC2 instance are authorized to connect to the cluster. For information about managing security groups, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html\">Working with Security Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "AuthorizeSnapshotAccess": {
      "name": "AuthorizeSnapshotAccess",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AuthorizeSnapshotAccessMessage"
      },
      "output": {
        "shape": "AuthorizeSnapshotAccessResult",
        "resultWrapper": "AuthorizeSnapshotAccessResult"
      },
      "errors": [
        {
          "shape": "ClusterSnapshotNotFoundFault"
        },
        {
          "shape": "AuthorizationAlreadyExistsFault"
        },
        {
          "shape": "AuthorizationQuotaExceededFault"
        },
        {
          "shape": "DependentServiceRequestThrottlingFault"
        },
        {
          "shape": "InvalidClusterSnapshotStateFault"
        },
        {
          "shape": "LimitExceededFault"
        }
      ],
      "documentation": "<p>Authorizes the specified AWS customer account to restore the specified snapshot.</p> <p> For more information about working with snapshots, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html\">Amazon Redshift Snapshots</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "BatchDeleteClusterSnapshots": {
      "name": "BatchDeleteClusterSnapshots",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchDeleteClusterSnapshotsRequest"
      },
      "output": {
        "shape": "BatchDeleteClusterSnapshotsResult",
        "resultWrapper": "BatchDeleteClusterSnapshotsResult"
      },
      "errors": [
        {
          "shape": "BatchDeleteRequestSizeExceededFault"
        }
      ],
      "documentation": "<p>Deletes a set of cluster snapshots.</p>"
    },
    "BatchModifyClusterSnapshots": {
      "name": "BatchModifyClusterSnapshots",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchModifyClusterSnapshotsMessage"
      },
      "output": {
        "shape": "BatchModifyClusterSnapshotsOutputMessage",
        "resultWrapper": "BatchModifyClusterSnapshotsResult"
      },
      "errors": [
        {
          "shape": "InvalidRetentionPeriodFault"
        },
        {
          "shape": "BatchModifyClusterSnapshotsLimitExceededFault"
        }
      ],
      "documentation": "<p>Modifies the settings for a set of cluster snapshots.</p>"
    },
    "CancelResize": {
      "name": "CancelResize",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CancelResizeMessage"
      },
      "output": {
        "shape": "ResizeProgressMessage",
        "resultWrapper": "CancelResizeResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "ResizeNotFoundFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "UnsupportedOperationFault"
        }
      ],
      "documentation": "<p>Cancels a resize operation for a cluster.</p>"
    },
    "CopyClusterSnapshot": {
      "name": "CopyClusterSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CopyClusterSnapshotMessage"
      },
      "output": {
        "shape": "CopyClusterSnapshotResult",
        "resultWrapper": "CopyClusterSnapshotResult"
      },
      "errors": [
        {
          "shape": "ClusterSnapshotAlreadyExistsFault"
        },
        {
          "shape": "ClusterSnapshotNotFoundFault"
        },
        {
          "shape": "InvalidClusterSnapshotStateFault"
        },
        {
          "shape": "ClusterSnapshotQuotaExceededFault"
        },
        {
          "shape": "InvalidRetentionPeriodFault"
        }
      ],
      "documentation": "<p>Copies the specified automated cluster snapshot to a new manual cluster snapshot. The source must be an automated snapshot and it must be in the available state.</p> <p>When you delete a cluster, Amazon Redshift deletes any automated snapshots of the cluster. Also, when the retention period of the snapshot expires, Amazon Redshift automatically deletes it. If you want to keep an automated snapshot for a longer period, you can make a manual copy of the snapshot. Manual snapshots are retained until you delete them.</p> <p> For more information about working with snapshots, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html\">Amazon Redshift Snapshots</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "CreateCluster": {
      "name": "CreateCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateClusterMessage"
      },
      "output": {
        "shape": "CreateClusterResult",
        "resultWrapper": "CreateClusterResult"
      },
      "errors": [
        {
          "shape": "ClusterAlreadyExistsFault"
        },
        {
          "shape": "InsufficientClusterCapacityFault"
        },
        {
          "shape": "ClusterParameterGroupNotFoundFault"
        },
        {
          "shape": "ClusterSecurityGroupNotFoundFault"
        },
        {
          "shape": "ClusterQuotaExceededFault"
        },
        {
          "shape": "NumberOfNodesQuotaExceededFault"
        },
        {
          "shape": "NumberOfNodesPerClusterLimitExceededFault"
        },
        {
          "shape": "ClusterSubnetGroupNotFoundFault"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "InvalidClusterSubnetGroupStateFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "UnauthorizedOperation"
        },
        {
          "shape": "HsmClientCertificateNotFoundFault"
        },
        {
          "shape": "HsmConfigurationNotFoundFault"
        },
        {
          "shape": "InvalidElasticIpFault"
        },
        {
          "shape": "TagLimitExceededFault"
        },
        {
          "shape": "InvalidTagFault"
        },
        {
          "shape": "LimitExceededFault"
        },
        {
          "shape": "DependentServiceRequestThrottlingFault"
        },
        {
          "shape": "InvalidClusterTrackFault"
        },
        {
          "shape": "SnapshotScheduleNotFoundFault"
        },
        {
          "shape": "InvalidRetentionPeriodFault"
        }
      ],
      "documentation": "<p>Creates a new cluster with the specified parameters.</p> <p>To create a cluster in Virtual Private Cloud (VPC), you must provide a cluster subnet group name. The cluster subnet group identifies the subnets of your VPC that Amazon Redshift uses when creating the cluster. For more information about managing clusters, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html\">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "CreateClusterParameterGroup": {
      "name": "CreateClusterParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateClusterParameterGroupMessage"
      },
      "output": {
        "shape": "CreateClusterParameterGroupResult",
        "resultWrapper": "CreateClusterParameterGroupResult"
      },
      "errors": [
        {
          "shape": "ClusterParameterGroupQuotaExceededFault"
        },
        {
          "shape": "ClusterParameterGroupAlreadyExistsFault"
        },
        {
          "shape": "TagLimitExceededFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Creates an Amazon Redshift parameter group.</p> <p>Creating parameter groups is independent of creating clusters. You can associate a cluster with a parameter group when you create the cluster. You can also associate an existing cluster with a parameter group after the cluster is created by using <a>ModifyCluster</a>. </p> <p>Parameters in the parameter group define specific behavior that applies to the databases you create on the cluster. For more information about parameters and parameter groups, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "CreateClusterSecurityGroup": {
      "name": "CreateClusterSecurityGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateClusterSecurityGroupMessage"
      },
      "output": {
        "shape": "CreateClusterSecurityGroupResult",
        "resultWrapper": "CreateClusterSecurityGroupResult"
      },
      "errors": [
        {
          "shape": "ClusterSecurityGroupAlreadyExistsFault"
        },
        {
          "shape": "ClusterSecurityGroupQuotaExceededFault"
        },
        {
          "shape": "TagLimitExceededFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Creates a new Amazon Redshift security group. You use security groups to control access to non-VPC clusters.</p> <p> For information about managing security groups, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html\">Amazon Redshift Cluster Security Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "CreateClusterSnapshot": {
      "name": "CreateClusterSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateClusterSnapshotMessage"
      },
      "output": {
        "shape": "CreateClusterSnapshotResult",
        "resultWrapper": "CreateClusterSnapshotResult"
      },
      "errors": [
        {
          "shape": "ClusterSnapshotAlreadyExistsFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "ClusterSnapshotQuotaExceededFault"
        },
        {
          "shape": "TagLimitExceededFault"
        },
        {
          "shape": "InvalidTagFault"
        },
        {
          "shape": "InvalidRetentionPeriodFault"
        }
      ],
      "documentation": "<p>Creates a manual snapshot of the specified cluster. The cluster must be in the <code>available</code> state. </p> <p> For more information about working with snapshots, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html\">Amazon Redshift Snapshots</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "CreateClusterSubnetGroup": {
      "name": "CreateClusterSubnetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateClusterSubnetGroupMessage"
      },
      "output": {
        "shape": "CreateClusterSubnetGroupResult",
        "resultWrapper": "CreateClusterSubnetGroupResult"
      },
      "errors": [
        {
          "shape": "ClusterSubnetGroupAlreadyExistsFault"
        },
        {
          "shape": "ClusterSubnetGroupQuotaExceededFault"
        },
        {
          "shape": "ClusterSubnetQuotaExceededFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "UnauthorizedOperation"
        },
        {
          "shape": "TagLimitExceededFault"
        },
        {
          "shape": "InvalidTagFault"
        },
        {
          "shape": "DependentServiceRequestThrottlingFault"
        }
      ],
      "documentation": "<p>Creates a new Amazon Redshift subnet group. You must provide a list of one or more subnets in your existing Amazon Virtual Private Cloud (Amazon VPC) when creating Amazon Redshift subnet group.</p> <p> For information about subnet groups, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-cluster-subnet-groups.html\">Amazon Redshift Cluster Subnet Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "CreateEventSubscription": {
      "name": "CreateEventSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateEventSubscriptionMessage"
      },
      "output": {
        "shape": "CreateEventSubscriptionResult",
        "resultWrapper": "CreateEventSubscriptionResult"
      },
      "errors": [
        {
          "shape": "EventSubscriptionQuotaExceededFault"
        },
        {
          "shape": "SubscriptionAlreadyExistFault"
        },
        {
          "shape": "SNSInvalidTopicFault"
        },
        {
          "shape": "SNSNoAuthorizationFault"
        },
        {
          "shape": "SNSTopicArnNotFoundFault"
        },
        {
          "shape": "SubscriptionEventIdNotFoundFault"
        },
        {
          "shape": "SubscriptionCategoryNotFoundFault"
        },
        {
          "shape": "SubscriptionSeverityNotFoundFault"
        },
        {
          "shape": "SourceNotFoundFault"
        },
        {
          "shape": "TagLimitExceededFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Creates an Amazon Redshift event notification subscription. This action requires an ARN (Amazon Resource Name) of an Amazon SNS topic created by either the Amazon Redshift console, the Amazon SNS console, or the Amazon SNS API. To obtain an ARN with Amazon SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console.</p> <p>You can specify the source type, and lists of Amazon Redshift source IDs, event categories, and event severities. Notifications will be sent for all events you want that match those criteria. For example, you can specify source type = cluster, source ID = my-cluster-1 and mycluster2, event categories = Availability, Backup, and severity = ERROR. The subscription will only send notifications for those ERROR events in the Availability and Backup categories for the specified clusters.</p> <p>If you specify both the source type and source IDs, such as source type = cluster and source identifier = my-cluster-1, notifications will be sent for all the cluster events for my-cluster-1. If you specify a source type but do not specify a source identifier, you will receive notice of the events for the objects of that type in your AWS account. If you do not specify either the SourceType nor the SourceIdentifier, you will be notified of events generated from all Amazon Redshift sources belonging to your AWS account. You must specify a source type if you specify a source ID.</p>"
    },
    "CreateHsmClientCertificate": {
      "name": "CreateHsmClientCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateHsmClientCertificateMessage"
      },
      "output": {
        "shape": "CreateHsmClientCertificateResult",
        "resultWrapper": "CreateHsmClientCertificateResult"
      },
      "errors": [
        {
          "shape": "HsmClientCertificateAlreadyExistsFault"
        },
        {
          "shape": "HsmClientCertificateQuotaExceededFault"
        },
        {
          "shape": "TagLimitExceededFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Creates an HSM client certificate that an Amazon Redshift cluster will use to connect to the client's HSM in order to store and retrieve the keys used to encrypt the cluster databases.</p> <p>The command returns a public key, which you must store in the HSM. In addition to creating the HSM certificate, you must create an Amazon Redshift HSM configuration that provides a cluster the information needed to store and use encryption keys in the HSM. For more information, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html\">Hardware Security Modules</a> in the Amazon Redshift Cluster Management Guide.</p>"
    },
    "CreateHsmConfiguration": {
      "name": "CreateHsmConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateHsmConfigurationMessage"
      },
      "output": {
        "shape": "CreateHsmConfigurationResult",
        "resultWrapper": "CreateHsmConfigurationResult"
      },
      "errors": [
        {
          "shape": "HsmConfigurationAlreadyExistsFault"
        },
        {
          "shape": "HsmConfigurationQuotaExceededFault"
        },
        {
          "shape": "TagLimitExceededFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Creates an HSM configuration that contains the information required by an Amazon Redshift cluster to store and use database encryption keys in a Hardware Security Module (HSM). After creating the HSM configuration, you can specify it as a parameter when creating a cluster. The cluster will then store its encryption keys in the HSM.</p> <p>In addition to creating an HSM configuration, you must also create an HSM client certificate. For more information, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html\">Hardware Security Modules</a> in the Amazon Redshift Cluster Management Guide.</p>"
    },
    "CreateScheduledAction": {
      "name": "CreateScheduledAction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateScheduledActionMessage"
      },
      "output": {
        "shape": "ScheduledAction",
        "resultWrapper": "CreateScheduledActionResult"
      },
      "errors": [
        {
          "shape": "ScheduledActionAlreadyExistsFault"
        },
        {
          "shape": "ScheduledActionQuotaExceededFault"
        },
        {
          "shape": "ScheduledActionTypeUnsupportedFault"
        },
        {
          "shape": "InvalidScheduleFault"
        },
        {
          "shape": "InvalidScheduledActionFault"
        },
        {
          "shape": "UnauthorizedOperation"
        }
      ],
      "documentation": "<p>Creates a scheduled action. A scheduled action contains a schedule and an Amazon Redshift API action. For example, you can create a schedule of when to run the <code>ResizeCluster</code> API operation. </p>"
    },
    "CreateSnapshotCopyGrant": {
      "name": "CreateSnapshotCopyGrant",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateSnapshotCopyGrantMessage"
      },
      "output": {
        "shape": "CreateSnapshotCopyGrantResult",
        "resultWrapper": "CreateSnapshotCopyGrantResult"
      },
      "errors": [
        {
          "shape": "SnapshotCopyGrantAlreadyExistsFault"
        },
        {
          "shape": "SnapshotCopyGrantQuotaExceededFault"
        },
        {
          "shape": "LimitExceededFault"
        },
        {
          "shape": "TagLimitExceededFault"
        },
        {
          "shape": "InvalidTagFault"
        },
        {
          "shape": "DependentServiceRequestThrottlingFault"
        }
      ],
      "documentation": "<p>Creates a snapshot copy grant that permits Amazon Redshift to use a customer master key (CMK) from AWS Key Management Service (AWS KMS) to encrypt copied snapshots in a destination region.</p> <p> For more information about managing snapshot copy grants, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html\">Amazon Redshift Database Encryption</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>"
    },
    "CreateSnapshotSchedule": {
      "name": "CreateSnapshotSchedule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateSnapshotScheduleMessage"
      },
      "output": {
        "shape": "SnapshotSchedule",
        "resultWrapper": "CreateSnapshotScheduleResult"
      },
      "errors": [
        {
          "shape": "SnapshotScheduleAlreadyExistsFault"
        },
        {
          "shape": "InvalidScheduleFault"
        },
        {
          "shape": "SnapshotScheduleQuotaExceededFault"
        },
        {
          "shape": "TagLimitExceededFault"
        },
        {
          "shape": "ScheduleDefinitionTypeUnsupportedFault"
        }
      ],
      "documentation": "<p>Create a snapshot schedule that can be associated to a cluster and which overrides the default system backup schedule. </p>"
    },
    "CreateTags": {
      "name": "CreateTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateTagsMessage"
      },
      "errors": [
        {
          "shape": "TagLimitExceededFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Adds tags to a cluster.</p> <p>A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, you will receive an error and the attempt will fail.</p> <p>If you specify a key that already exists for the resource, the value for that key will be updated with the new value.</p>"
    },
    "CreateUsageLimit": {
      "name": "CreateUsageLimit",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateUsageLimitMessage"
      },
      "output": {
        "shape": "UsageLimit",
        "resultWrapper": "CreateUsageLimitResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "LimitExceededFault"
        },
        {
          "shape": "UsageLimitAlreadyExistsFault"
        },
        {
          "shape": "InvalidUsageLimitFault"
        },
        {
          "shape": "TagLimitExceededFault"
        },
        {
          "shape": "UnsupportedOperationFault"
        }
      ],
      "documentation": "<p>Creates a usage limit for a specified Amazon Redshift feature on a cluster. The usage limit is identified by the returned usage limit identifier.</p>"
    },
    "DeleteCluster": {
      "name": "DeleteCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteClusterMessage"
      },
      "output": {
        "shape": "DeleteClusterResult",
        "resultWrapper": "DeleteClusterResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "ClusterSnapshotAlreadyExistsFault"
        },
        {
          "shape": "ClusterSnapshotQuotaExceededFault"
        },
        {
          "shape": "InvalidRetentionPeriodFault"
        }
      ],
      "documentation": "<p>Deletes a previously provisioned cluster without its final snapshot being created. A successful response from the web service indicates that the request was received correctly. Use <a>DescribeClusters</a> to monitor the status of the deletion. The delete operation cannot be canceled or reverted once submitted. For more information about managing clusters, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html\">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>If you want to shut down the cluster and retain it for future use, set <i>SkipFinalClusterSnapshot</i> to <code>false</code> and specify a name for <i>FinalClusterSnapshotIdentifier</i>. You can later restore this snapshot to resume using the cluster. If a final cluster snapshot is requested, the status of the cluster will be \"final-snapshot\" while the snapshot is being taken, then it's \"deleting\" once Amazon Redshift begins deleting the cluster. </p> <p> For more information about managing clusters, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html\">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "DeleteClusterParameterGroup": {
      "name": "DeleteClusterParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteClusterParameterGroupMessage"
      },
      "errors": [
        {
          "shape": "InvalidClusterParameterGroupStateFault"
        },
        {
          "shape": "ClusterParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes a specified Amazon Redshift parameter group.</p> <note> <p>You cannot delete a parameter group if it is associated with a cluster.</p> </note>"
    },
    "DeleteClusterSecurityGroup": {
      "name": "DeleteClusterSecurityGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteClusterSecurityGroupMessage"
      },
      "errors": [
        {
          "shape": "InvalidClusterSecurityGroupStateFault"
        },
        {
          "shape": "ClusterSecurityGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes an Amazon Redshift security group.</p> <note> <p>You cannot delete a security group that is associated with any clusters. You cannot delete the default security group.</p> </note> <p> For information about managing security groups, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html\">Amazon Redshift Cluster Security Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "DeleteClusterSnapshot": {
      "name": "DeleteClusterSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteClusterSnapshotMessage"
      },
      "output": {
        "shape": "DeleteClusterSnapshotResult",
        "resultWrapper": "DeleteClusterSnapshotResult"
      },
      "errors": [
        {
          "shape": "InvalidClusterSnapshotStateFault"
        },
        {
          "shape": "ClusterSnapshotNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes the specified manual snapshot. The snapshot must be in the <code>available</code> state, with no other users authorized to access the snapshot. </p> <p>Unlike automated snapshots, manual snapshots are retained even after you delete your cluster. Amazon Redshift does not delete your manual snapshots. You must delete manual snapshot explicitly to avoid getting charged. If other accounts are authorized to access the snapshot, you must revoke all of the authorizations before you can delete the snapshot.</p>"
    },
    "DeleteClusterSubnetGroup": {
      "name": "DeleteClusterSubnetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteClusterSubnetGroupMessage"
      },
      "errors": [
        {
          "shape": "InvalidClusterSubnetGroupStateFault"
        },
        {
          "shape": "InvalidClusterSubnetStateFault"
        },
        {
          "shape": "ClusterSubnetGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes the specified cluster subnet group.</p>"
    },
    "DeleteEventSubscription": {
      "name": "DeleteEventSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteEventSubscriptionMessage"
      },
      "errors": [
        {
          "shape": "SubscriptionNotFoundFault"
        },
        {
          "shape": "InvalidSubscriptionStateFault"
        }
      ],
      "documentation": "<p>Deletes an Amazon Redshift event notification subscription.</p>"
    },
    "DeleteHsmClientCertificate": {
      "name": "DeleteHsmClientCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteHsmClientCertificateMessage"
      },
      "errors": [
        {
          "shape": "InvalidHsmClientCertificateStateFault"
        },
        {
          "shape": "HsmClientCertificateNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes the specified HSM client certificate.</p>"
    },
    "DeleteHsmConfiguration": {
      "name": "DeleteHsmConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteHsmConfigurationMessage"
      },
      "errors": [
        {
          "shape": "InvalidHsmConfigurationStateFault"
        },
        {
          "shape": "HsmConfigurationNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes the specified Amazon Redshift HSM configuration.</p>"
    },
    "DeleteScheduledAction": {
      "name": "DeleteScheduledAction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteScheduledActionMessage"
      },
      "errors": [
        {
          "shape": "ScheduledActionNotFoundFault"
        },
        {
          "shape": "UnauthorizedOperation"
        }
      ],
      "documentation": "<p>Deletes a scheduled action. </p>"
    },
    "DeleteSnapshotCopyGrant": {
      "name": "DeleteSnapshotCopyGrant",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSnapshotCopyGrantMessage"
      },
      "errors": [
        {
          "shape": "InvalidSnapshotCopyGrantStateFault"
        },
        {
          "shape": "SnapshotCopyGrantNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes the specified snapshot copy grant.</p>"
    },
    "DeleteSnapshotSchedule": {
      "name": "DeleteSnapshotSchedule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSnapshotScheduleMessage"
      },
      "errors": [
        {
          "shape": "InvalidClusterSnapshotScheduleStateFault"
        },
        {
          "shape": "SnapshotScheduleNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes a snapshot schedule.</p>"
    },
    "DeleteTags": {
      "name": "DeleteTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteTagsMessage"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Deletes tags from a resource. You must provide the ARN of the resource from which you want to delete the tag or tags.</p>"
    },
    "DeleteUsageLimit": {
      "name": "DeleteUsageLimit",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteUsageLimitMessage"
      },
      "errors": [
        {
          "shape": "UsageLimitNotFoundFault"
        },
        {
          "shape": "UnsupportedOperationFault"
        }
      ],
      "documentation": "<p>Deletes a usage limit from a cluster.</p>"
    },
    "DescribeAccountAttributes": {
      "name": "DescribeAccountAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAccountAttributesMessage"
      },
      "output": {
        "shape": "AccountAttributeList",
        "resultWrapper": "DescribeAccountAttributesResult"
      },
      "documentation": "<p>Returns a list of attributes attached to an account</p>"
    },
    "DescribeClusterDbRevisions": {
      "name": "DescribeClusterDbRevisions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeClusterDbRevisionsMessage"
      },
      "output": {
        "shape": "ClusterDbRevisionsMessage",
        "resultWrapper": "DescribeClusterDbRevisionsResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        }
      ],
      "documentation": "<p>Returns an array of <code>ClusterDbRevision</code> objects.</p>"
    },
    "DescribeClusterParameterGroups": {
      "name": "DescribeClusterParameterGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeClusterParameterGroupsMessage"
      },
      "output": {
        "shape": "ClusterParameterGroupsMessage",
        "resultWrapper": "DescribeClusterParameterGroupsResult"
      },
      "errors": [
        {
          "shape": "ClusterParameterGroupNotFoundFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Returns a list of Amazon Redshift parameter groups, including parameter groups you created and the default parameter group. For each parameter group, the response includes the parameter group name, description, and parameter group family name. You can optionally specify a name to retrieve the description of a specific parameter group.</p> <p> For more information about parameters and parameter groups, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all parameter groups that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all parameter groups that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, parameter groups are returned regardless of whether they have tag keys or values associated with them.</p>"
    },
    "DescribeClusterParameters": {
      "name": "DescribeClusterParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeClusterParametersMessage"
      },
      "output": {
        "shape": "ClusterParameterGroupDetails",
        "resultWrapper": "DescribeClusterParametersResult"
      },
      "errors": [
        {
          "shape": "ClusterParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Returns a detailed list of parameters contained within the specified Amazon Redshift parameter group. For each parameter the response includes information such as parameter name, description, data type, value, whether the parameter value is modifiable, and so on.</p> <p>You can specify <i>source</i> filter to retrieve parameters of only specific type. For example, to retrieve parameters that were modified by a user action such as from <a>ModifyClusterParameterGroup</a>, you can specify <i>source</i> equal to <i>user</i>.</p> <p> For more information about parameters and parameter groups, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "DescribeClusterSecurityGroups": {
      "name": "DescribeClusterSecurityGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeClusterSecurityGroupsMessage"
      },
      "output": {
        "shape": "ClusterSecurityGroupMessage",
        "resultWrapper": "DescribeClusterSecurityGroupsResult"
      },
      "errors": [
        {
          "shape": "ClusterSecurityGroupNotFoundFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Returns information about Amazon Redshift security groups. If the name of a security group is specified, the response will contain only information about only that security group.</p> <p> For information about managing security groups, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html\">Amazon Redshift Cluster Security Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all security groups that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all security groups that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, security groups are returned regardless of whether they have tag keys or values associated with them.</p>"
    },
    "DescribeClusterSnapshots": {
      "name": "DescribeClusterSnapshots",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeClusterSnapshotsMessage"
      },
      "output": {
        "shape": "SnapshotMessage",
        "resultWrapper": "DescribeClusterSnapshotsResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "ClusterSnapshotNotFoundFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Returns one or more snapshot objects, which contain metadata about your cluster snapshots. By default, this operation returns information about all snapshots of all clusters that are owned by you AWS customer account. No information is returned for snapshots owned by inactive AWS customer accounts.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all snapshots that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all snapshots that have any combination of those values are returned. Only snapshots that you own are returned in the response; shared snapshots are not returned with the tag key and tag value request parameters.</p> <p>If both tag keys and values are omitted from the request, snapshots are returned regardless of whether they have tag keys or values associated with them.</p>"
    },
    "DescribeClusterSubnetGroups": {
      "name": "DescribeClusterSubnetGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeClusterSubnetGroupsMessage"
      },
      "output": {
        "shape": "ClusterSubnetGroupMessage",
        "resultWrapper": "DescribeClusterSubnetGroupsResult"
      },
      "errors": [
        {
          "shape": "ClusterSubnetGroupNotFoundFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Returns one or more cluster subnet group objects, which contain metadata about your cluster subnet groups. By default, this operation returns information about all cluster subnet groups that are defined in you AWS account.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all subnet groups that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all subnet groups that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, subnet groups are returned regardless of whether they have tag keys or values associated with them.</p>"
    },
    "DescribeClusterTracks": {
      "name": "DescribeClusterTracks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeClusterTracksMessage"
      },
      "output": {
        "shape": "TrackListMessage",
        "resultWrapper": "DescribeClusterTracksResult"
      },
      "errors": [
        {
          "shape": "InvalidClusterTrackFault"
        },
        {
          "shape": "UnauthorizedOperation"
        }
      ],
      "documentation": "<p>Returns a list of all the available maintenance tracks.</p>"
    },
    "DescribeClusterVersions": {
      "name": "DescribeClusterVersions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeClusterVersionsMessage"
      },
      "output": {
        "shape": "ClusterVersionsMessage",
        "resultWrapper": "DescribeClusterVersionsResult"
      },
      "documentation": "<p>Returns descriptions of the available Amazon Redshift cluster versions. You can call this operation even before creating any clusters to learn more about the Amazon Redshift versions. For more information about managing clusters, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html\">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "DescribeClusters": {
      "name": "DescribeClusters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeClustersMessage"
      },
      "output": {
        "shape": "ClustersMessage",
        "resultWrapper": "DescribeClustersResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Returns properties of provisioned clusters including general cluster properties, cluster database properties, maintenance and backup properties, and security and access properties. This operation supports pagination. For more information about managing clusters, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html\">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all clusters that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all clusters that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, clusters are returned regardless of whether they have tag keys or values associated with them.</p>"
    },
    "DescribeDefaultClusterParameters": {
      "name": "DescribeDefaultClusterParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDefaultClusterParametersMessage"
      },
      "output": {
        "shape": "DescribeDefaultClusterParametersResult",
        "resultWrapper": "DescribeDefaultClusterParametersResult"
      },
      "documentation": "<p>Returns a list of parameter settings for the specified parameter group family.</p> <p> For more information about parameters and parameter groups, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "DescribeEventCategories": {
      "name": "DescribeEventCategories",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventCategoriesMessage"
      },
      "output": {
        "shape": "EventCategoriesMessage",
        "resultWrapper": "DescribeEventCategoriesResult"
      },
      "documentation": "<p>Displays a list of event categories for all event source types, or for a specified source type. For a list of the event categories and source types, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html\">Amazon Redshift Event Notifications</a>.</p>"
    },
    "DescribeEventSubscriptions": {
      "name": "DescribeEventSubscriptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventSubscriptionsMessage"
      },
      "output": {
        "shape": "EventSubscriptionsMessage",
        "resultWrapper": "DescribeEventSubscriptionsResult"
      },
      "errors": [
        {
          "shape": "SubscriptionNotFoundFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Lists descriptions of all the Amazon Redshift event notification subscriptions for a customer account. If you specify a subscription name, lists the description for that subscription.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all event notification subscriptions that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all subscriptions that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, subscriptions are returned regardless of whether they have tag keys or values associated with them.</p>"
    },
    "DescribeEvents": {
      "name": "DescribeEvents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventsMessage"
      },
      "output": {
        "shape": "EventsMessage",
        "resultWrapper": "DescribeEventsResult"
      },
      "documentation": "<p>Returns events related to clusters, security groups, snapshots, and parameter groups for the past 14 days. Events specific to a particular cluster, security group, snapshot or parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.</p>"
    },
    "DescribeHsmClientCertificates": {
      "name": "DescribeHsmClientCertificates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeHsmClientCertificatesMessage"
      },
      "output": {
        "shape": "HsmClientCertificateMessage",
        "resultWrapper": "DescribeHsmClientCertificatesResult"
      },
      "errors": [
        {
          "shape": "HsmClientCertificateNotFoundFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Returns information about the specified HSM client certificate. If no certificate ID is specified, returns information about all the HSM certificates owned by your AWS customer account.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM client certificates that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all HSM client certificates that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, HSM client certificates are returned regardless of whether they have tag keys or values associated with them.</p>"
    },
    "DescribeHsmConfigurations": {
      "name": "DescribeHsmConfigurations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeHsmConfigurationsMessage"
      },
      "output": {
        "shape": "HsmConfigurationMessage",
        "resultWrapper": "DescribeHsmConfigurationsResult"
      },
      "errors": [
        {
          "shape": "HsmConfigurationNotFoundFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Returns information about the specified Amazon Redshift HSM configuration. If no configuration ID is specified, returns information about all the HSM configurations owned by your AWS customer account.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM connections that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all HSM connections that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, HSM connections are returned regardless of whether they have tag keys or values associated with them.</p>"
    },
    "DescribeLoggingStatus": {
      "name": "DescribeLoggingStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeLoggingStatusMessage"
      },
      "output": {
        "shape": "LoggingStatus",
        "resultWrapper": "DescribeLoggingStatusResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        }
      ],
      "documentation": "<p>Describes whether information, such as queries and connection attempts, is being logged for the specified Amazon Redshift cluster.</p>"
    },
    "DescribeNodeConfigurationOptions": {
      "name": "DescribeNodeConfigurationOptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeNodeConfigurationOptionsMessage"
      },
      "output": {
        "shape": "NodeConfigurationOptionsMessage",
        "resultWrapper": "DescribeNodeConfigurationOptionsResult"
      },
      "errors": [
        {
          "shape": "ClusterSnapshotNotFoundFault"
        },
        {
          "shape": "InvalidClusterSnapshotStateFault"
        },
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "AccessToSnapshotDeniedFault"
        }
      ],
      "documentation": "<p>Returns properties of possible node configurations such as node type, number of nodes, and disk usage for the specified action type.</p>"
    },
    "DescribeOrderableClusterOptions": {
      "name": "DescribeOrderableClusterOptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeOrderableClusterOptionsMessage"
      },
      "output": {
        "shape": "OrderableClusterOptionsMessage",
        "resultWrapper": "DescribeOrderableClusterOptionsResult"
      },
      "documentation": "<p>Returns a list of orderable cluster options. Before you create a new cluster you can use this operation to find what options are available, such as the EC2 Availability Zones (AZ) in the specific AWS Region that you can specify, and the node types you can request. The node types differ by available storage, memory, CPU and price. With the cost involved you might want to obtain a list of cluster options in the specific region and specify values when creating a cluster. For more information about managing clusters, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html\">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "DescribeReservedNodeOfferings": {
      "name": "DescribeReservedNodeOfferings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeReservedNodeOfferingsMessage"
      },
      "output": {
        "shape": "ReservedNodeOfferingsMessage",
        "resultWrapper": "DescribeReservedNodeOfferingsResult"
      },
      "errors": [
        {
          "shape": "ReservedNodeOfferingNotFoundFault"
        },
        {
          "shape": "UnsupportedOperationFault"
        },
        {
          "shape": "DependentServiceUnavailableFault"
        }
      ],
      "documentation": "<p>Returns a list of the available reserved node offerings by Amazon Redshift with their descriptions including the node type, the fixed and recurring costs of reserving the node and duration the node will be reserved for you. These descriptions help you determine which reserve node offering you want to purchase. You then use the unique offering ID in you call to <a>PurchaseReservedNodeOffering</a> to reserve one or more nodes for your Amazon Redshift cluster. </p> <p> For more information about reserved node offerings, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html\">Purchasing Reserved Nodes</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "DescribeReservedNodes": {
      "name": "DescribeReservedNodes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeReservedNodesMessage"
      },
      "output": {
        "shape": "ReservedNodesMessage",
        "resultWrapper": "DescribeReservedNodesResult"
      },
      "errors": [
        {
          "shape": "ReservedNodeNotFoundFault"
        },
        {
          "shape": "DependentServiceUnavailableFault"
        }
      ],
      "documentation": "<p>Returns the descriptions of the reserved nodes.</p>"
    },
    "DescribeResize": {
      "name": "DescribeResize",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeResizeMessage"
      },
      "output": {
        "shape": "ResizeProgressMessage",
        "resultWrapper": "DescribeResizeResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "ResizeNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about the last resize operation for the specified cluster. If no resize operation has ever been initiated for the specified cluster, a <code>HTTP 404</code> error is returned. If a resize operation was initiated and completed, the status of the resize remains as <code>SUCCEEDED</code> until the next resize. </p> <p>A resize operation can be requested using <a>ModifyCluster</a> and specifying a different number or type of nodes for the cluster. </p>"
    },
    "DescribeScheduledActions": {
      "name": "DescribeScheduledActions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeScheduledActionsMessage"
      },
      "output": {
        "shape": "ScheduledActionsMessage",
        "resultWrapper": "DescribeScheduledActionsResult"
      },
      "errors": [
        {
          "shape": "ScheduledActionNotFoundFault"
        },
        {
          "shape": "UnauthorizedOperation"
        }
      ],
      "documentation": "<p>Describes properties of scheduled actions. </p>"
    },
    "DescribeSnapshotCopyGrants": {
      "name": "DescribeSnapshotCopyGrants",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeSnapshotCopyGrantsMessage"
      },
      "output": {
        "shape": "SnapshotCopyGrantMessage",
        "resultWrapper": "DescribeSnapshotCopyGrantsResult"
      },
      "errors": [
        {
          "shape": "SnapshotCopyGrantNotFoundFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Returns a list of snapshot copy grants owned by the AWS account in the destination region.</p> <p> For more information about managing snapshot copy grants, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html\">Amazon Redshift Database Encryption</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>"
    },
    "DescribeSnapshotSchedules": {
      "name": "DescribeSnapshotSchedules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeSnapshotSchedulesMessage"
      },
      "output": {
        "shape": "DescribeSnapshotSchedulesOutputMessage",
        "resultWrapper": "DescribeSnapshotSchedulesResult"
      },
      "documentation": "<p>Returns a list of snapshot schedules. </p>"
    },
    "DescribeStorage": {
      "name": "DescribeStorage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "CustomerStorageMessage",
        "resultWrapper": "DescribeStorageResult"
      },
      "documentation": "<p>Returns account level backups storage size and provisional storage.</p>"
    },
    "DescribeTableRestoreStatus": {
      "name": "DescribeTableRestoreStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTableRestoreStatusMessage"
      },
      "output": {
        "shape": "TableRestoreStatusMessage",
        "resultWrapper": "DescribeTableRestoreStatusResult"
      },
      "errors": [
        {
          "shape": "TableRestoreNotFoundFault"
        },
        {
          "shape": "ClusterNotFoundFault"
        }
      ],
      "documentation": "<p>Lists the status of one or more table restore requests made using the <a>RestoreTableFromClusterSnapshot</a> API action. If you don't specify a value for the <code>TableRestoreRequestId</code> parameter, then <code>DescribeTableRestoreStatus</code> returns the status of all table restore requests ordered by the date and time of the request in ascending order. Otherwise <code>DescribeTableRestoreStatus</code> returns the status of the table specified by <code>TableRestoreRequestId</code>.</p>"
    },
    "DescribeTags": {
      "name": "DescribeTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTagsMessage"
      },
      "output": {
        "shape": "TaggedResourceListMessage",
        "resultWrapper": "DescribeTagsResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Returns a list of tags. You can return tags from a specific resource by specifying an ARN, or you can return all tags for a given type of resource, such as clusters, snapshots, and so on.</p> <p>The following are limitations for <code>DescribeTags</code>: </p> <ul> <li> <p>You cannot specify an ARN and a resource-type value together in the same request.</p> </li> <li> <p>You cannot use the <code>MaxRecords</code> and <code>Marker</code> parameters together with the ARN parameter.</p> </li> <li> <p>The <code>MaxRecords</code> parameter can be a range from 10 to 50 results to return in a request.</p> </li> </ul> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all resources that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all resources that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, resources are returned regardless of whether they have tag keys or values associated with them.</p>"
    },
    "DescribeUsageLimits": {
      "name": "DescribeUsageLimits",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeUsageLimitsMessage"
      },
      "output": {
        "shape": "UsageLimitList",
        "resultWrapper": "DescribeUsageLimitsResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "UnsupportedOperationFault"
        }
      ],
      "documentation": "<p>Shows usage limits on a cluster. Results are filtered based on the combination of input usage limit identifier, cluster identifier, and feature type parameters:</p> <ul> <li> <p>If usage limit identifier, cluster identifier, and feature type are not provided, then all usage limit objects for the current account in the current region are returned.</p> </li> <li> <p>If usage limit identifier is provided, then the corresponding usage limit object is returned.</p> </li> <li> <p>If cluster identifier is provided, then all usage limit objects for the specified cluster are returned.</p> </li> <li> <p>If cluster identifier and feature type are provided, then all usage limit objects for the combination of cluster and feature are returned.</p> </li> </ul>"
    },
    "DisableLogging": {
      "name": "DisableLogging",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisableLoggingMessage"
      },
      "output": {
        "shape": "LoggingStatus",
        "resultWrapper": "DisableLoggingResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        }
      ],
      "documentation": "<p>Stops logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.</p>"
    },
    "DisableSnapshotCopy": {
      "name": "DisableSnapshotCopy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisableSnapshotCopyMessage"
      },
      "output": {
        "shape": "DisableSnapshotCopyResult",
        "resultWrapper": "DisableSnapshotCopyResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "SnapshotCopyAlreadyDisabledFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "UnauthorizedOperation"
        }
      ],
      "documentation": "<p>Disables the automatic copying of snapshots from one region to another region for a specified cluster.</p> <p>If your cluster and its snapshots are encrypted using a customer master key (CMK) from AWS KMS, use <a>DeleteSnapshotCopyGrant</a> to delete the grant that grants Amazon Redshift permission to the CMK in the destination region. </p>"
    },
    "EnableLogging": {
      "name": "EnableLogging",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EnableLoggingMessage"
      },
      "output": {
        "shape": "LoggingStatus",
        "resultWrapper": "EnableLoggingResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "BucketNotFoundFault"
        },
        {
          "shape": "InsufficientS3BucketPolicyFault"
        },
        {
          "shape": "InvalidS3KeyPrefixFault"
        },
        {
          "shape": "InvalidS3BucketNameFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        }
      ],
      "documentation": "<p>Starts logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.</p>"
    },
    "EnableSnapshotCopy": {
      "name": "EnableSnapshotCopy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EnableSnapshotCopyMessage"
      },
      "output": {
        "shape": "EnableSnapshotCopyResult",
        "resultWrapper": "EnableSnapshotCopyResult"
      },
      "errors": [
        {
          "shape": "IncompatibleOrderableOptions"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "CopyToRegionDisabledFault"
        },
        {
          "shape": "SnapshotCopyAlreadyEnabledFault"
        },
        {
          "shape": "UnknownSnapshotCopyRegionFault"
        },
        {
          "shape": "UnauthorizedOperation"
        },
        {
          "shape": "SnapshotCopyGrantNotFoundFault"
        },
        {
          "shape": "LimitExceededFault"
        },
        {
          "shape": "DependentServiceRequestThrottlingFault"
        },
        {
          "shape": "InvalidRetentionPeriodFault"
        }
      ],
      "documentation": "<p>Enables the automatic copy of snapshots from one region to another region for a specified cluster.</p>"
    },
    "GetClusterCredentials": {
      "name": "GetClusterCredentials",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetClusterCredentialsMessage"
      },
      "output": {
        "shape": "ClusterCredentials",
        "resultWrapper": "GetClusterCredentialsResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "UnsupportedOperationFault"
        }
      ],
      "documentation": "<p>Returns a database user name and temporary password with temporary authorization to log on to an Amazon Redshift database. The action returns the database user name prefixed with <code>IAM:</code> if <code>AutoCreate</code> is <code>False</code> or <code>IAMA:</code> if <code>AutoCreate</code> is <code>True</code>. You can optionally specify one or more database user groups that the user will join at log on. By default, the temporary credentials expire in 900 seconds. You can optionally specify a duration between 900 seconds (15 minutes) and 3600 seconds (60 minutes). For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/generating-user-credentials.html\">Using IAM Authentication to Generate Database User Credentials</a> in the Amazon Redshift Cluster Management Guide.</p> <p>The AWS Identity and Access Management (IAM)user or role that executes GetClusterCredentials must have an IAM policy attached that allows access to all necessary actions and resources. For more information about permissions, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html#redshift-policy-resources.getclustercredentials-resources\">Resource Policies for GetClusterCredentials</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If the <code>DbGroups</code> parameter is specified, the IAM policy must allow the <code>redshift:JoinGroup</code> action with access to the listed <code>dbgroups</code>. </p> <p>In addition, if the <code>AutoCreate</code> parameter is set to <code>True</code>, then the policy must include the <code>redshift:CreateClusterUser</code> privilege.</p> <p>If the <code>DbName</code> parameter is specified, the IAM policy must allow access to the resource <code>dbname</code> for the specified database name. </p>"
    },
    "GetReservedNodeExchangeOfferings": {
      "name": "GetReservedNodeExchangeOfferings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetReservedNodeExchangeOfferingsInputMessage"
      },
      "output": {
        "shape": "GetReservedNodeExchangeOfferingsOutputMessage",
        "resultWrapper": "GetReservedNodeExchangeOfferingsResult"
      },
      "errors": [
        {
          "shape": "ReservedNodeNotFoundFault"
        },
        {
          "shape": "InvalidReservedNodeStateFault"
        },
        {
          "shape": "ReservedNodeAlreadyMigratedFault"
        },
        {
          "shape": "ReservedNodeOfferingNotFoundFault"
        },
        {
          "shape": "UnsupportedOperationFault"
        },
        {
          "shape": "DependentServiceUnavailableFault"
        }
      ],
      "documentation": "<p>Returns an array of DC2 ReservedNodeOfferings that matches the payment type, term, and usage price of the given DC1 reserved node.</p>"
    },
    "ModifyCluster": {
      "name": "ModifyCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyClusterMessage"
      },
      "output": {
        "shape": "ModifyClusterResult",
        "resultWrapper": "ModifyClusterResult"
      },
      "errors": [
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "InvalidClusterSecurityGroupStateFault"
        },
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "NumberOfNodesQuotaExceededFault"
        },
        {
          "shape": "NumberOfNodesPerClusterLimitExceededFault"
        },
        {
          "shape": "ClusterSecurityGroupNotFoundFault"
        },
        {
          "shape": "ClusterParameterGroupNotFoundFault"
        },
        {
          "shape": "InsufficientClusterCapacityFault"
        },
        {
          "shape": "UnsupportedOptionFault"
        },
        {
          "shape": "UnauthorizedOperation"
        },
        {
          "shape": "HsmClientCertificateNotFoundFault"
        },
        {
          "shape": "HsmConfigurationNotFoundFault"
        },
        {
          "shape": "ClusterAlreadyExistsFault"
        },
        {
          "shape": "LimitExceededFault"
        },
        {
          "shape": "DependentServiceRequestThrottlingFault"
        },
        {
          "shape": "InvalidElasticIpFault"
        },
        {
          "shape": "TableLimitExceededFault"
        },
        {
          "shape": "InvalidClusterTrackFault"
        },
        {
          "shape": "InvalidRetentionPeriodFault"
        }
      ],
      "documentation": "<p>Modifies the settings for a cluster.</p> <p>You can also change node type and the number of nodes to scale up or down the cluster. When resizing a cluster, you must specify both the number of nodes and the node type even if one of the parameters does not change.</p> <p>You can add another security or parameter group, or change the master user password. Resetting a cluster password or modifying the security groups associated with a cluster do not need a reboot. However, modifying a parameter group requires a reboot for parameters to take effect. For more information about managing clusters, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html\">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "ModifyClusterDbRevision": {
      "name": "ModifyClusterDbRevision",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyClusterDbRevisionMessage"
      },
      "output": {
        "shape": "ModifyClusterDbRevisionResult",
        "resultWrapper": "ModifyClusterDbRevisionResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "ClusterOnLatestRevisionFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        }
      ],
      "documentation": "<p>Modifies the database revision of a cluster. The database revision is a unique revision of the database running in a cluster.</p>"
    },
    "ModifyClusterIamRoles": {
      "name": "ModifyClusterIamRoles",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyClusterIamRolesMessage"
      },
      "output": {
        "shape": "ModifyClusterIamRolesResult",
        "resultWrapper": "ModifyClusterIamRolesResult"
      },
      "errors": [
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "ClusterNotFoundFault"
        }
      ],
      "documentation": "<p>Modifies the list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services.</p> <p>A cluster can have up to 10 IAM roles associated at any time.</p>"
    },
    "ModifyClusterMaintenance": {
      "name": "ModifyClusterMaintenance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyClusterMaintenanceMessage"
      },
      "output": {
        "shape": "ModifyClusterMaintenanceResult",
        "resultWrapper": "ModifyClusterMaintenanceResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        }
      ],
      "documentation": "<p>Modifies the maintenance settings of a cluster.</p>"
    },
    "ModifyClusterParameterGroup": {
      "name": "ModifyClusterParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyClusterParameterGroupMessage"
      },
      "output": {
        "shape": "ClusterParameterGroupNameMessage",
        "resultWrapper": "ModifyClusterParameterGroupResult"
      },
      "errors": [
        {
          "shape": "ClusterParameterGroupNotFoundFault"
        },
        {
          "shape": "InvalidClusterParameterGroupStateFault"
        }
      ],
      "documentation": "<p>Modifies the parameters of a parameter group.</p> <p> For more information about parameters and parameter groups, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "ModifyClusterSnapshot": {
      "name": "ModifyClusterSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyClusterSnapshotMessage"
      },
      "output": {
        "shape": "ModifyClusterSnapshotResult",
        "resultWrapper": "ModifyClusterSnapshotResult"
      },
      "errors": [
        {
          "shape": "InvalidClusterSnapshotStateFault"
        },
        {
          "shape": "ClusterSnapshotNotFoundFault"
        },
        {
          "shape": "InvalidRetentionPeriodFault"
        }
      ],
      "documentation": "<p>Modifies the settings for a snapshot.</p> <p>This exanmple modifies the manual retention period setting for a cluster snapshot.</p>"
    },
    "ModifyClusterSnapshotSchedule": {
      "name": "ModifyClusterSnapshotSchedule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyClusterSnapshotScheduleMessage"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "SnapshotScheduleNotFoundFault"
        },
        {
          "shape": "InvalidClusterSnapshotScheduleStateFault"
        }
      ],
      "documentation": "<p>Modifies a snapshot schedule for a cluster.</p>"
    },
    "ModifyClusterSubnetGroup": {
      "name": "ModifyClusterSubnetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyClusterSubnetGroupMessage"
      },
      "output": {
        "shape": "ModifyClusterSubnetGroupResult",
        "resultWrapper": "ModifyClusterSubnetGroupResult"
      },
      "errors": [
        {
          "shape": "ClusterSubnetGroupNotFoundFault"
        },
        {
          "shape": "ClusterSubnetQuotaExceededFault"
        },
        {
          "shape": "SubnetAlreadyInUse"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "UnauthorizedOperation"
        },
        {
          "shape": "DependentServiceRequestThrottlingFault"
        }
      ],
      "documentation": "<p>Modifies a cluster subnet group to include the specified list of VPC subnets. The operation replaces the existing list of subnets with the new list of subnets.</p>"
    },
    "ModifyEventSubscription": {
      "name": "ModifyEventSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyEventSubscriptionMessage"
      },
      "output": {
        "shape": "ModifyEventSubscriptionResult",
        "resultWrapper": "ModifyEventSubscriptionResult"
      },
      "errors": [
        {
          "shape": "SubscriptionNotFoundFault"
        },
        {
          "shape": "SNSInvalidTopicFault"
        },
        {
          "shape": "SNSNoAuthorizationFault"
        },
        {
          "shape": "SNSTopicArnNotFoundFault"
        },
        {
          "shape": "SubscriptionEventIdNotFoundFault"
        },
        {
          "shape": "SubscriptionCategoryNotFoundFault"
        },
        {
          "shape": "SubscriptionSeverityNotFoundFault"
        },
        {
          "shape": "SourceNotFoundFault"
        },
        {
          "shape": "InvalidSubscriptionStateFault"
        }
      ],
      "documentation": "<p>Modifies an existing Amazon Redshift event notification subscription.</p>"
    },
    "ModifyScheduledAction": {
      "name": "ModifyScheduledAction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyScheduledActionMessage"
      },
      "output": {
        "shape": "ScheduledAction",
        "resultWrapper": "ModifyScheduledActionResult"
      },
      "errors": [
        {
          "shape": "ScheduledActionNotFoundFault"
        },
        {
          "shape": "ScheduledActionTypeUnsupportedFault"
        },
        {
          "shape": "InvalidScheduleFault"
        },
        {
          "shape": "InvalidScheduledActionFault"
        },
        {
          "shape": "UnauthorizedOperation"
        }
      ],
      "documentation": "<p>Modifies a scheduled action. </p>"
    },
    "ModifySnapshotCopyRetentionPeriod": {
      "name": "ModifySnapshotCopyRetentionPeriod",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifySnapshotCopyRetentionPeriodMessage"
      },
      "output": {
        "shape": "ModifySnapshotCopyRetentionPeriodResult",
        "resultWrapper": "ModifySnapshotCopyRetentionPeriodResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "SnapshotCopyDisabledFault"
        },
        {
          "shape": "UnauthorizedOperation"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "InvalidRetentionPeriodFault"
        }
      ],
      "documentation": "<p>Modifies the number of days to retain snapshots in the destination AWS Region after they are copied from the source AWS Region. By default, this operation only changes the retention period of copied automated snapshots. The retention periods for both new and existing copied automated snapshots are updated with the new retention period. You can set the manual option to change only the retention periods of copied manual snapshots. If you set this option, only newly copied manual snapshots have the new retention period. </p>"
    },
    "ModifySnapshotSchedule": {
      "name": "ModifySnapshotSchedule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifySnapshotScheduleMessage"
      },
      "output": {
        "shape": "SnapshotSchedule",
        "resultWrapper": "ModifySnapshotScheduleResult"
      },
      "errors": [
        {
          "shape": "InvalidScheduleFault"
        },
        {
          "shape": "SnapshotScheduleNotFoundFault"
        },
        {
          "shape": "SnapshotScheduleUpdateInProgressFault"
        }
      ],
      "documentation": "<p>Modifies a snapshot schedule. Any schedule associated with a cluster is modified asynchronously.</p>"
    },
    "ModifyUsageLimit": {
      "name": "ModifyUsageLimit",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyUsageLimitMessage"
      },
      "output": {
        "shape": "UsageLimit",
        "resultWrapper": "ModifyUsageLimitResult"
      },
      "errors": [
        {
          "shape": "InvalidUsageLimitFault"
        },
        {
          "shape": "UsageLimitNotFoundFault"
        },
        {
          "shape": "UnsupportedOperationFault"
        }
      ],
      "documentation": "<p>Modifies a usage limit in a cluster. You can't modify the feature type or period of a usage limit.</p>"
    },
    "PauseCluster": {
      "name": "PauseCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PauseClusterMessage"
      },
      "output": {
        "shape": "PauseClusterResult",
        "resultWrapper": "PauseClusterResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        }
      ],
      "documentation": "<p>Pauses a cluster.</p>"
    },
    "PurchaseReservedNodeOffering": {
      "name": "PurchaseReservedNodeOffering",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PurchaseReservedNodeOfferingMessage"
      },
      "output": {
        "shape": "PurchaseReservedNodeOfferingResult",
        "resultWrapper": "PurchaseReservedNodeOfferingResult"
      },
      "errors": [
        {
          "shape": "ReservedNodeOfferingNotFoundFault"
        },
        {
          "shape": "ReservedNodeAlreadyExistsFault"
        },
        {
          "shape": "ReservedNodeQuotaExceededFault"
        },
        {
          "shape": "UnsupportedOperationFault"
        }
      ],
      "documentation": "<p>Allows you to purchase reserved nodes. Amazon Redshift offers a predefined set of reserved node offerings. You can purchase one or more of the offerings. You can call the <a>DescribeReservedNodeOfferings</a> API to obtain the available reserved node offerings. You can call this API by providing a specific reserved node offering and the number of nodes you want to reserve. </p> <p> For more information about reserved node offerings, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html\">Purchasing Reserved Nodes</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "RebootCluster": {
      "name": "RebootCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RebootClusterMessage"
      },
      "output": {
        "shape": "RebootClusterResult",
        "resultWrapper": "RebootClusterResult"
      },
      "errors": [
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "ClusterNotFoundFault"
        }
      ],
      "documentation": "<p>Reboots a cluster. This action is taken as soon as possible. It results in a momentary outage to the cluster, during which the cluster status is set to <code>rebooting</code>. A cluster event is created when the reboot is completed. Any pending cluster modifications (see <a>ModifyCluster</a>) are applied at this reboot. For more information about managing clusters, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html\">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>"
    },
    "ResetClusterParameterGroup": {
      "name": "ResetClusterParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResetClusterParameterGroupMessage"
      },
      "output": {
        "shape": "ClusterParameterGroupNameMessage",
        "resultWrapper": "ResetClusterParameterGroupResult"
      },
      "errors": [
        {
          "shape": "InvalidClusterParameterGroupStateFault"
        },
        {
          "shape": "ClusterParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Sets one or more parameters of the specified parameter group to their default values and sets the source values of the parameters to \"engine-default\". To reset the entire parameter group specify the <i>ResetAllParameters</i> parameter. For parameter changes to take effect you must reboot any associated clusters. </p>"
    },
    "ResizeCluster": {
      "name": "ResizeCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResizeClusterMessage"
      },
      "output": {
        "shape": "ResizeClusterResult",
        "resultWrapper": "ResizeClusterResult"
      },
      "errors": [
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "NumberOfNodesQuotaExceededFault"
        },
        {
          "shape": "NumberOfNodesPerClusterLimitExceededFault"
        },
        {
          "shape": "InsufficientClusterCapacityFault"
        },
        {
          "shape": "UnsupportedOptionFault"
        },
        {
          "shape": "UnsupportedOperationFault"
        },
        {
          "shape": "UnauthorizedOperation"
        },
        {
          "shape": "LimitExceededFault"
        }
      ],
      "documentation": "<p>Changes the size of the cluster. You can change the cluster's type, or change the number or type of nodes. The default behavior is to use the elastic resize method. With an elastic resize, your cluster is available for read and write operations more quickly than with the classic resize method. </p> <p>Elastic resize operations have the following restrictions:</p> <ul> <li> <p>You can only resize clusters of the following types:</p> <ul> <li> <p>dc1.large (if your cluster is in a VPC)</p> </li> <li> <p>dc1.8xlarge (if your cluster is in a VPC)</p> </li> <li> <p>dc2.large</p> </li> <li> <p>dc2.8xlarge</p> </li> <li> <p>ds2.xlarge</p> </li> <li> <p>ds2.8xlarge</p> </li> <li> <p>ra3.4xlarge</p> </li> <li> <p>ra3.16xlarge</p> </li> </ul> </li> <li> <p>The type of nodes that you add must match the node type for the cluster.</p> </li> </ul>"
    },
    "RestoreFromClusterSnapshot": {
      "name": "RestoreFromClusterSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreFromClusterSnapshotMessage"
      },
      "output": {
        "shape": "RestoreFromClusterSnapshotResult",
        "resultWrapper": "RestoreFromClusterSnapshotResult"
      },
      "errors": [
        {
          "shape": "AccessToSnapshotDeniedFault"
        },
        {
          "shape": "ClusterAlreadyExistsFault"
        },
        {
          "shape": "ClusterSnapshotNotFoundFault"
        },
        {
          "shape": "ClusterQuotaExceededFault"
        },
        {
          "shape": "InsufficientClusterCapacityFault"
        },
        {
          "shape": "InvalidClusterSnapshotStateFault"
        },
        {
          "shape": "InvalidRestoreFault"
        },
        {
          "shape": "NumberOfNodesQuotaExceededFault"
        },
        {
          "shape": "NumberOfNodesPerClusterLimitExceededFault"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "InvalidClusterSubnetGroupStateFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "ClusterSubnetGroupNotFoundFault"
        },
        {
          "shape": "UnauthorizedOperation"
        },
        {
          "shape": "HsmClientCertificateNotFoundFault"
        },
        {
          "shape": "HsmConfigurationNotFoundFault"
        },
        {
          "shape": "InvalidElasticIpFault"
        },
        {
          "shape": "ClusterParameterGroupNotFoundFault"
        },
        {
          "shape": "ClusterSecurityGroupNotFoundFault"
        },
        {
          "shape": "LimitExceededFault"
        },
        {
          "shape": "DependentServiceRequestThrottlingFault"
        },
        {
          "shape": "InvalidClusterTrackFault"
        },
        {
          "shape": "SnapshotScheduleNotFoundFault"
        },
        {
          "shape": "TagLimitExceededFault"
        },
        {
          "shape": "InvalidTagFault"
        }
      ],
      "documentation": "<p>Creates a new cluster from a snapshot. By default, Amazon Redshift creates the resulting cluster with the same configuration as the original cluster from which the snapshot was created, except that the new cluster is created with the default cluster security and parameter groups. After Amazon Redshift creates the cluster, you can use the <a>ModifyCluster</a> API to associate a different security group and different parameter group with the restored cluster. If you are using a DS node type, you can also choose to change to another DS node type of the same size during restore.</p> <p>If you restore a cluster into a VPC, you must provide a cluster subnet group where you want the cluster restored.</p> <p> For more information about working with snapshots, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html\">Amazon Redshift Snapshots</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "RestoreTableFromClusterSnapshot": {
      "name": "RestoreTableFromClusterSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreTableFromClusterSnapshotMessage"
      },
      "output": {
        "shape": "RestoreTableFromClusterSnapshotResult",
        "resultWrapper": "RestoreTableFromClusterSnapshotResult"
      },
      "errors": [
        {
          "shape": "ClusterSnapshotNotFoundFault"
        },
        {
          "shape": "InProgressTableRestoreQuotaExceededFault"
        },
        {
          "shape": "InvalidClusterSnapshotStateFault"
        },
        {
          "shape": "InvalidTableRestoreArgumentFault"
        },
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "UnsupportedOperationFault"
        }
      ],
      "documentation": "<p>Creates a new table from a table in an Amazon Redshift cluster snapshot. You must create the new table within the Amazon Redshift cluster that the snapshot was taken from.</p> <p>You cannot use <code>RestoreTableFromClusterSnapshot</code> to restore a table with the same name as an existing table in an Amazon Redshift cluster. That is, you cannot overwrite an existing table in a cluster with a restored table. If you want to replace your original table with a new, restored table, then rename or drop your original table before you call <code>RestoreTableFromClusterSnapshot</code>. When you have renamed your original table, then you can pass the original name of the table as the <code>NewTableName</code> parameter value in the call to <code>RestoreTableFromClusterSnapshot</code>. This way, you can replace the original table with the table created from the snapshot.</p>"
    },
    "ResumeCluster": {
      "name": "ResumeCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResumeClusterMessage"
      },
      "output": {
        "shape": "ResumeClusterResult",
        "resultWrapper": "ResumeClusterResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        }
      ],
      "documentation": "<p>Resumes a paused cluster.</p>"
    },
    "RevokeClusterSecurityGroupIngress": {
      "name": "RevokeClusterSecurityGroupIngress",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RevokeClusterSecurityGroupIngressMessage"
      },
      "output": {
        "shape": "RevokeClusterSecurityGroupIngressResult",
        "resultWrapper": "RevokeClusterSecurityGroupIngressResult"
      },
      "errors": [
        {
          "shape": "ClusterSecurityGroupNotFoundFault"
        },
        {
          "shape": "AuthorizationNotFoundFault"
        },
        {
          "shape": "InvalidClusterSecurityGroupStateFault"
        }
      ],
      "documentation": "<p>Revokes an ingress rule in an Amazon Redshift security group for a previously authorized IP range or Amazon EC2 security group. To add an ingress rule, see <a>AuthorizeClusterSecurityGroupIngress</a>. For information about managing security groups, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html\">Amazon Redshift Cluster Security Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>"
    },
    "RevokeSnapshotAccess": {
      "name": "RevokeSnapshotAccess",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RevokeSnapshotAccessMessage"
      },
      "output": {
        "shape": "RevokeSnapshotAccessResult",
        "resultWrapper": "RevokeSnapshotAccessResult"
      },
      "errors": [
        {
          "shape": "AccessToSnapshotDeniedFault"
        },
        {
          "shape": "AuthorizationNotFoundFault"
        },
        {
          "shape": "ClusterSnapshotNotFoundFault"
        }
      ],
      "documentation": "<p>Removes the ability of the specified AWS customer account to restore the specified snapshot. If the account is currently restoring the snapshot, the restore will run to completion.</p> <p> For more information about working with snapshots, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html\">Amazon Redshift Snapshots</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
    },
    "RotateEncryptionKey": {
      "name": "RotateEncryptionKey",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RotateEncryptionKeyMessage"
      },
      "output": {
        "shape": "RotateEncryptionKeyResult",
        "resultWrapper": "RotateEncryptionKeyResult"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "DependentServiceRequestThrottlingFault"
        }
      ],
      "documentation": "<p>Rotates the encryption keys for a cluster.</p>"
    }
  },
  "shapes": {
    "AcceptReservedNodeExchangeInputMessage": {
      "type": "structure",
      "required": [
        "ReservedNodeId",
        "TargetReservedNodeOfferingId"
      ],
      "members": {
        "ReservedNodeId": {
          "shape": "String",
          "documentation": "<p>A string representing the node identifier of the DC1 Reserved Node to be exchanged.</p>"
        },
        "TargetReservedNodeOfferingId": {
          "shape": "String",
          "documentation": "<p>The unique identifier of the DC2 Reserved Node offering to be used for the exchange. You can obtain the value for the parameter by calling <a>GetReservedNodeExchangeOfferings</a> </p>"
        }
      }
    },
    "AcceptReservedNodeExchangeOutputMessage": {
      "type": "structure",
      "members": {
        "ExchangedReservedNode": {
          "shape": "ReservedNode",
          "documentation": "<p/>"
        }
      }
    },
    "AccountAttribute": {
      "type": "structure",
      "members": {
        "AttributeName": {
          "shape": "String",
          "documentation": "<p>The name of the attribute.</p>"
        },
        "AttributeValues": {
          "shape": "AttributeValueList",
          "documentation": "<p>A list of attribute values.</p>"
        }
      },
      "documentation": "<p>A name value pair that describes an aspect of an account. </p>"
    },
    "AccountAttributeList": {
      "type": "structure",
      "members": {
        "AccountAttributes": {
          "shape": "AttributeList",
          "documentation": "<p>A list of attributes assigned to an account.</p>"
        }
      }
    },
    "AccountWithRestoreAccess": {
      "type": "structure",
      "members": {
        "AccountId": {
          "shape": "String",
          "documentation": "<p>The identifier of an AWS customer account authorized to restore a snapshot.</p>"
        },
        "AccountAlias": {
          "shape": "String",
          "documentation": "<p>The identifier of an AWS support account authorized to restore a snapshot. For AWS support, the identifier is <code>amazon-redshift-support</code>. </p>"
        }
      },
      "documentation": "<p>Describes an AWS customer account authorized to restore a snapshot.</p>"
    },
    "AccountsWithRestoreAccessList": {
      "type": "list",
      "member": {
        "shape": "AccountWithRestoreAccess",
        "locationName": "AccountWithRestoreAccess"
      }
    },
    "ActionType": {
      "type": "string",
      "enum": [
        "restore-cluster",
        "recommend-node-config",
        "resize-cluster"
      ]
    },
    "AssociatedClusterList": {
      "type": "list",
      "member": {
        "shape": "ClusterAssociatedToSchedule",
        "locationName": "ClusterAssociatedToSchedule"
      }
    },
    "AttributeList": {
      "type": "list",
      "member": {
        "shape": "AccountAttribute",
        "locationName": "AccountAttribute"
      }
    },
    "AttributeNameList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "AttributeName"
      }
    },
    "AttributeValueList": {
      "type": "list",
      "member": {
        "shape": "AttributeValueTarget",
        "locationName": "AttributeValueTarget"
      }
    },
    "AttributeValueTarget": {
      "type": "structure",
      "members": {
        "AttributeValue": {
          "shape": "String",
          "documentation": "<p>The value of the attribute.</p>"
        }
      },
      "documentation": "<p>Describes an attribute value.</p>"
    },
    "AuthorizeClusterSecurityGroupIngressMessage": {
      "type": "structure",
      "required": [
        "ClusterSecurityGroupName"
      ],
      "members": {
        "ClusterSecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the security group to which the ingress rule is added.</p>"
        },
        "CIDRIP": {
          "shape": "String",
          "documentation": "<p>The IP range to be added the Amazon Redshift security group.</p>"
        },
        "EC2SecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The EC2 security group to be added the Amazon Redshift security group.</p>"
        },
        "EC2SecurityGroupOwnerId": {
          "shape": "String",
          "documentation": "<p>The AWS account number of the owner of the security group specified by the <i>EC2SecurityGroupName</i> parameter. The AWS Access Key ID is not an acceptable value. </p> <p>Example: <code>111122223333</code> </p>"
        }
      },
      "documentation": "<p/>"
    },
    "AuthorizeClusterSecurityGroupIngressResult": {
      "type": "structure",
      "members": {
        "ClusterSecurityGroup": {
          "shape": "ClusterSecurityGroup"
        }
      }
    },
    "AuthorizeSnapshotAccessMessage": {
      "type": "structure",
      "required": [
        "SnapshotIdentifier",
        "AccountWithRestoreAccess"
      ],
      "members": {
        "SnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the snapshot the account is authorized to restore.</p>"
        },
        "SnapshotClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.</p>"
        },
        "AccountWithRestoreAccess": {
          "shape": "String",
          "documentation": "<p>The identifier of the AWS customer account authorized to restore the specified snapshot.</p> <p>To share a snapshot with AWS support, specify amazon-redshift-support.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "AuthorizeSnapshotAccessResult": {
      "type": "structure",
      "members": {
        "Snapshot": {
          "shape": "Snapshot"
        }
      }
    },
    "AvailabilityZone": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the availability zone.</p>"
        },
        "SupportedPlatforms": {
          "shape": "SupportedPlatformsList",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p>Describes an availability zone.</p>",
      "wrapper": true
    },
    "AvailabilityZoneList": {
      "type": "list",
      "member": {
        "shape": "AvailabilityZone",
        "locationName": "AvailabilityZone"
      }
    },
    "BatchDeleteClusterSnapshotsRequest": {
      "type": "structure",
      "required": [
        "Identifiers"
      ],
      "members": {
        "Identifiers": {
          "shape": "DeleteClusterSnapshotMessageList",
          "documentation": "<p>A list of identifiers for the snapshots that you want to delete.</p>"
        }
      }
    },
    "BatchDeleteClusterSnapshotsResult": {
      "type": "structure",
      "members": {
        "Resources": {
          "shape": "SnapshotIdentifierList",
          "documentation": "<p>A list of the snapshot identifiers that were deleted. </p>"
        },
        "Errors": {
          "shape": "BatchSnapshotOperationErrorList",
          "documentation": "<p>A list of any errors returned.</p>"
        }
      }
    },
    "BatchModifyClusterSnapshotsMessage": {
      "type": "structure",
      "required": [
        "SnapshotIdentifierList"
      ],
      "members": {
        "SnapshotIdentifierList": {
          "shape": "SnapshotIdentifierList",
          "documentation": "<p>A list of snapshot identifiers you want to modify.</p>"
        },
        "ManualSnapshotRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days that a manual snapshot is retained. If you specify the value -1, the manual snapshot is retained indefinitely.</p> <p>The number must be either -1 or an integer between 1 and 3,653.</p> <p>If you decrease the manual snapshot retention period from its current value, existing manual snapshots that fall outside of the new retention period will return an error. If you want to suppress the errors and delete the snapshots, use the force option. </p>"
        },
        "Force": {
          "shape": "Boolean",
          "documentation": "<p>A boolean value indicating whether to override an exception if the retention period has passed. </p>"
        }
      }
    },
    "BatchModifyClusterSnapshotsOutputMessage": {
      "type": "structure",
      "members": {
        "Resources": {
          "shape": "SnapshotIdentifierList",
          "documentation": "<p>A list of the snapshots that were modified.</p>"
        },
        "Errors": {
          "shape": "BatchSnapshotOperationErrors",
          "documentation": "<p>A list of any errors returned.</p>"
        }
      }
    },
    "BatchSnapshotOperationErrorList": {
      "type": "list",
      "member": {
        "shape": "SnapshotErrorMessage",
        "locationName": "SnapshotErrorMessage"
      }
    },
    "BatchSnapshotOperationErrors": {
      "type": "list",
      "member": {
        "shape": "SnapshotErrorMessage",
        "locationName": "SnapshotErrorMessage"
      }
    },
    "Boolean": {
      "type": "boolean"
    },
    "BooleanOptional": {
      "type": "boolean"
    },
    "CancelResizeMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the cluster that you want to cancel a resize operation for.</p>"
        }
      }
    },
    "Cluster": {
      "type": "structure",
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier of the cluster.</p>"
        },
        "NodeType": {
          "shape": "String",
          "documentation": "<p>The node type for the nodes in the cluster.</p>"
        },
        "ClusterStatus": {
          "shape": "String",
          "documentation": "<p> The current state of the cluster. Possible values are the following:</p> <ul> <li> <p> <code>available</code> </p> </li> <li> <p> <code>available, prep-for-resize</code> </p> </li> <li> <p> <code>available, resize-cleanup</code> </p> </li> <li> <p> <code>cancelling-resize</code> </p> </li> <li> <p> <code>creating</code> </p> </li> <li> <p> <code>deleting</code> </p> </li> <li> <p> <code>final-snapshot</code> </p> </li> <li> <p> <code>hardware-failure</code> </p> </li> <li> <p> <code>incompatible-hsm</code> </p> </li> <li> <p> <code>incompatible-network</code> </p> </li> <li> <p> <code>incompatible-parameters</code> </p> </li> <li> <p> <code>incompatible-restore</code> </p> </li> <li> <p> <code>modifying</code> </p> </li> <li> <p> <code>paused</code> </p> </li> <li> <p> <code>rebooting</code> </p> </li> <li> <p> <code>renaming</code> </p> </li> <li> <p> <code>resizing</code> </p> </li> <li> <p> <code>rotating-keys</code> </p> </li> <li> <p> <code>storage-full</code> </p> </li> <li> <p> <code>updating-hsm</code> </p> </li> </ul>"
        },
        "ClusterAvailabilityStatus": {
          "shape": "String",
          "documentation": "<p>The availability status of the cluster for queries. Possible values are the following:</p> <ul> <li> <p>Available - The cluster is available for queries. </p> </li> <li> <p>Unavailable - The cluster is not available for queries.</p> </li> <li> <p>Maintenance - The cluster is intermittently available for queries due to maintenance activities.</p> </li> <li> <p>Modifying - The cluster is intermittently available for queries due to changes that modify the cluster.</p> </li> <li> <p>Failed - The cluster failed and is not available for queries.</p> </li> </ul>"
        },
        "ModifyStatus": {
          "shape": "String",
          "documentation": "<p>The status of a modify operation, if any, initiated for the cluster.</p>"
        },
        "MasterUsername": {
          "shape": "String",
          "documentation": "<p>The master user name for the cluster. This name is used to connect to the database that is specified in the <b>DBName</b> parameter. </p>"
        },
        "DBName": {
          "shape": "String",
          "documentation": "<p>The name of the initial database that was created when the cluster was created. This same name is returned for the life of the cluster. If an initial database was not specified, a database named <code>dev</code>dev was created by default. </p>"
        },
        "Endpoint": {
          "shape": "Endpoint",
          "documentation": "<p>The connection endpoint.</p>"
        },
        "ClusterCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>The date and time that the cluster was created.</p>"
        },
        "AutomatedSnapshotRetentionPeriod": {
          "shape": "Integer",
          "documentation": "<p>The number of days that automatic cluster snapshots are retained.</p>"
        },
        "ManualSnapshotRetentionPeriod": {
          "shape": "Integer",
          "documentation": "<p>The default number of days to retain a manual snapshot. If the value is -1, the snapshot is retained indefinitely. This setting doesn't change the retention period of existing snapshots.</p> <p>The value must be either -1 or an integer between 1 and 3,653.</p>"
        },
        "ClusterSecurityGroups": {
          "shape": "ClusterSecurityGroupMembershipList",
          "documentation": "<p>A list of cluster security group that are associated with the cluster. Each security group is represented by an element that contains <code>ClusterSecurityGroup.Name</code> and <code>ClusterSecurityGroup.Status</code> subelements. </p> <p>Cluster security groups are used when the cluster is not created in an Amazon Virtual Private Cloud (VPC). Clusters that are created in a VPC use VPC security groups, which are listed by the <b>VpcSecurityGroups</b> parameter. </p>"
        },
        "VpcSecurityGroups": {
          "shape": "VpcSecurityGroupMembershipList",
          "documentation": "<p>A list of Amazon Virtual Private Cloud (Amazon VPC) security groups that are associated with the cluster. This parameter is returned only if the cluster is in a VPC.</p>"
        },
        "ClusterParameterGroups": {
          "shape": "ClusterParameterGroupStatusList",
          "documentation": "<p>The list of cluster parameter groups that are associated with this cluster. Each parameter group in the list is returned with its status.</p>"
        },
        "ClusterSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the subnet group that is associated with the cluster. This parameter is valid only when the cluster is in a VPC.</p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>The identifier of the VPC the cluster is in, if the cluster is in a VPC.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The name of the Availability Zone in which the cluster is located.</p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The weekly time range, in Universal Coordinated Time (UTC), during which system maintenance can occur.</p>"
        },
        "PendingModifiedValues": {
          "shape": "PendingModifiedValues",
          "documentation": "<p>A value that, if present, indicates that changes to the cluster are pending. Specific pending changes are identified by subelements.</p>"
        },
        "ClusterVersion": {
          "shape": "String",
          "documentation": "<p>The version ID of the Amazon Redshift engine that is running on the cluster.</p>"
        },
        "AllowVersionUpgrade": {
          "shape": "Boolean",
          "documentation": "<p>A boolean value that, if <code>true</code>, indicates that major version upgrades will be applied automatically to the cluster during the maintenance window. </p>"
        },
        "NumberOfNodes": {
          "shape": "Integer",
          "documentation": "<p>The number of compute nodes in the cluster.</p>"
        },
        "PubliclyAccessible": {
          "shape": "Boolean",
          "documentation": "<p>A boolean value that, if <code>true</code>, indicates that the cluster can be accessed from a public network.</p>"
        },
        "Encrypted": {
          "shape": "Boolean",
          "documentation": "<p>A boolean value that, if <code>true</code>, indicates that data in the cluster is encrypted at rest.</p>"
        },
        "RestoreStatus": {
          "shape": "RestoreStatus",
          "documentation": "<p>A value that describes the status of a cluster restore action. This parameter returns null if the cluster was not created by restoring a snapshot.</p>"
        },
        "DataTransferProgress": {
          "shape": "DataTransferProgress",
          "documentation": "<p/>"
        },
        "HsmStatus": {
          "shape": "HsmStatus",
          "documentation": "<p>A value that reports whether the Amazon Redshift cluster has finished applying any hardware security module (HSM) settings changes specified in a modify cluster command.</p> <p>Values: active, applying</p>"
        },
        "ClusterSnapshotCopyStatus": {
          "shape": "ClusterSnapshotCopyStatus",
          "documentation": "<p>A value that returns the destination region and retention period that are configured for cross-region snapshot copy.</p>"
        },
        "ClusterPublicKey": {
          "shape": "String",
          "documentation": "<p>The public key for the cluster.</p>"
        },
        "ClusterNodes": {
          "shape": "ClusterNodesList",
          "documentation": "<p>The nodes in the cluster.</p>"
        },
        "ElasticIpStatus": {
          "shape": "ElasticIpStatus",
          "documentation": "<p>The status of the elastic IP (EIP) address.</p>"
        },
        "ClusterRevisionNumber": {
          "shape": "String",
          "documentation": "<p>The specific revision number of the database in the cluster.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags for the cluster.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS Key Management Service (AWS KMS) key ID of the encryption key used to encrypt data in the cluster.</p>"
        },
        "EnhancedVpcRouting": {
          "shape": "Boolean",
          "documentation": "<p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>"
        },
        "IamRoles": {
          "shape": "ClusterIamRoleList",
          "documentation": "<p>A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services.</p>"
        },
        "PendingActions": {
          "shape": "PendingActionsList",
          "documentation": "<p>Cluster operations that are waiting to be started.</p>"
        },
        "MaintenanceTrackName": {
          "shape": "String",
          "documentation": "<p>The name of the maintenance track for the cluster.</p>"
        },
        "ElasticResizeNumberOfNodeOptions": {
          "shape": "String",
          "documentation": "<p>The number of nodes that you can resize the cluster to with the elastic resize method. </p>"
        },
        "DeferredMaintenanceWindows": {
          "shape": "DeferredMaintenanceWindowsList",
          "documentation": "<p>Describes a group of <code>DeferredMaintenanceWindow</code> objects.</p>"
        },
        "SnapshotScheduleIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the cluster snapshot schedule.</p>"
        },
        "SnapshotScheduleState": {
          "shape": "ScheduleState",
          "documentation": "<p>The current state of the cluster snapshot schedule.</p>"
        },
        "ExpectedNextSnapshotScheduleTime": {
          "shape": "TStamp",
          "documentation": "<p>The date and time when the next snapshot is expected to be taken for clusters with a valid snapshot schedule and backups enabled. </p>"
        },
        "ExpectedNextSnapshotScheduleTimeStatus": {
          "shape": "String",
          "documentation": "<p> The status of next expected snapshot for clusters having a valid snapshot schedule and backups enabled. Possible values are the following:</p> <ul> <li> <p>OnTrack - The next snapshot is expected to be taken on time. </p> </li> <li> <p>Pending - The next snapshot is pending to be taken. </p> </li> </ul>"
        },
        "NextMaintenanceWindowStartTime": {
          "shape": "TStamp",
          "documentation": "<p>The date and time in UTC when system maintenance can begin.</p>"
        },
        "ResizeInfo": {
          "shape": "ResizeInfo",
          "documentation": "<p>Returns the following:</p> <ul> <li> <p>AllowCancelResize: a boolean value indicating if the resize operation can be cancelled.</p> </li> <li> <p>ResizeType: Returns ClassicResize</p> </li> </ul>"
        }
      },
      "documentation": "<p>Describes a cluster.</p>",
      "wrapper": true
    },
    "ClusterAssociatedToSchedule": {
      "type": "structure",
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p/>"
        },
        "ScheduleAssociationState": {
          "shape": "ScheduleState",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p/>"
    },
    "ClusterCredentials": {
      "type": "structure",
      "members": {
        "DbUser": {
          "shape": "String",
          "documentation": "<p>A database user name that is authorized to log on to the database <code>DbName</code> using the password <code>DbPassword</code>. If the specified DbUser exists in the database, the new user name has the same database privileges as the the user named in DbUser. By default, the user is added to PUBLIC. If the <code>DbGroups</code> parameter is specifed, <code>DbUser</code> is added to the listed groups for any sessions created using these credentials.</p>"
        },
        "DbPassword": {
          "shape": "SensitiveString",
          "documentation": "<p>A temporary password that authorizes the user name returned by <code>DbUser</code> to log on to the database <code>DbName</code>. </p>"
        },
        "Expiration": {
          "shape": "TStamp",
          "documentation": "<p>The date and time the password in <code>DbPassword</code> expires.</p>"
        }
      },
      "documentation": "<p>Temporary credentials with authorization to log on to an Amazon Redshift database. </p>"
    },
    "ClusterDbRevision": {
      "type": "structure",
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier of the cluster.</p>"
        },
        "CurrentDatabaseRevision": {
          "shape": "String",
          "documentation": "<p>A string representing the current cluster version.</p>"
        },
        "DatabaseRevisionReleaseDate": {
          "shape": "TStamp",
          "documentation": "<p>The date on which the database revision was released.</p>"
        },
        "RevisionTargets": {
          "shape": "RevisionTargetsList",
          "documentation": "<p>A list of <code>RevisionTarget</code> objects, where each object describes the database revision that a cluster can be updated to.</p>"
        }
      },
      "documentation": "<p>Describes a <code>ClusterDbRevision</code>.</p>"
    },
    "ClusterDbRevisionsList": {
      "type": "list",
      "member": {
        "shape": "ClusterDbRevision",
        "locationName": "ClusterDbRevision"
      }
    },
    "ClusterDbRevisionsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A string representing the starting point for the next set of revisions. If a value is returned in a response, you can retrieve the next set of revisions by providing the value in the <code>marker</code> parameter and retrying the command. If the <code>marker</code> field is empty, all revisions have already been returned.</p>"
        },
        "ClusterDbRevisions": {
          "shape": "ClusterDbRevisionsList",
          "documentation": "<p>A list of revisions.</p>"
        }
      }
    },
    "ClusterIamRole": {
      "type": "structure",
      "members": {
        "IamRoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role, for example, <code>arn:aws:iam::123456789012:role/RedshiftCopyUnload</code>. </p>"
        },
        "ApplyStatus": {
          "shape": "String",
          "documentation": "<p>A value that describes the status of the IAM role's association with an Amazon Redshift cluster.</p> <p>The following are possible statuses and descriptions.</p> <ul> <li> <p> <code>in-sync</code>: The role is available for use by the cluster.</p> </li> <li> <p> <code>adding</code>: The role is in the process of being associated with the cluster.</p> </li> <li> <p> <code>removing</code>: The role is in the process of being disassociated with the cluster.</p> </li> </ul>"
        }
      },
      "documentation": "<p>An AWS Identity and Access Management (IAM) role that can be used by the associated Amazon Redshift cluster to access other AWS services.</p>"
    },
    "ClusterIamRoleList": {
      "type": "list",
      "member": {
        "shape": "ClusterIamRole",
        "locationName": "ClusterIamRole"
      }
    },
    "ClusterList": {
      "type": "list",
      "member": {
        "shape": "Cluster",
        "locationName": "Cluster"
      }
    },
    "ClusterNode": {
      "type": "structure",
      "members": {
        "NodeRole": {
          "shape": "String",
          "documentation": "<p>Whether the node is a leader node or a compute node.</p>"
        },
        "PrivateIPAddress": {
          "shape": "String",
          "documentation": "<p>The private IP address of a node within a cluster.</p>"
        },
        "PublicIPAddress": {
          "shape": "String",
          "documentation": "<p>The public IP address of a node within a cluster.</p>"
        }
      },
      "documentation": "<p>The identifier of a node in a cluster.</p>"
    },
    "ClusterNodesList": {
      "type": "list",
      "member": {
        "shape": "ClusterNode"
      }
    },
    "ClusterParameterGroup": {
      "type": "structure",
      "members": {
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group.</p>"
        },
        "ParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group family that this cluster parameter group is compatible with.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The description of the parameter group.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags for the cluster parameter group.</p>"
        }
      },
      "documentation": "<p>Describes a parameter group.</p>",
      "wrapper": true
    },
    "ClusterParameterGroupDetails": {
      "type": "structure",
      "members": {
        "Parameters": {
          "shape": "ParametersList",
          "documentation": "<p>A list of <a>Parameter</a> instances. Each instance lists the parameters of one cluster parameter group. </p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        }
      },
      "documentation": "<p>Contains the output from the <a>DescribeClusterParameters</a> action. </p>"
    },
    "ClusterParameterGroupNameMessage": {
      "type": "structure",
      "members": {
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group.</p>"
        },
        "ParameterGroupStatus": {
          "shape": "String",
          "documentation": "<p>The status of the parameter group. For example, if you made a change to a parameter group name-value pair, then the change could be pending a reboot of an associated cluster.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ClusterParameterGroupStatus": {
      "type": "structure",
      "members": {
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group.</p>"
        },
        "ParameterApplyStatus": {
          "shape": "String",
          "documentation": "<p>The status of parameter updates.</p>"
        },
        "ClusterParameterStatusList": {
          "shape": "ClusterParameterStatusList",
          "documentation": "<p>The list of parameter statuses.</p> <p> For more information about parameters and parameter groups, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
        }
      },
      "documentation": "<p>Describes the status of a parameter group.</p>"
    },
    "ClusterParameterGroupStatusList": {
      "type": "list",
      "member": {
        "shape": "ClusterParameterGroupStatus",
        "locationName": "ClusterParameterGroup"
      }
    },
    "ClusterParameterGroupsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        },
        "ParameterGroups": {
          "shape": "ParameterGroupList",
          "documentation": "<p>A list of <a>ClusterParameterGroup</a> instances. Each instance describes one cluster parameter group. </p>"
        }
      },
      "documentation": "<p>Contains the output from the <a>DescribeClusterParameterGroups</a> action. </p>"
    },
    "ClusterParameterStatus": {
      "type": "structure",
      "members": {
        "ParameterName": {
          "shape": "String",
          "documentation": "<p>The name of the parameter.</p>"
        },
        "ParameterApplyStatus": {
          "shape": "String",
          "documentation": "<p>The status of the parameter that indicates whether the parameter is in sync with the database, waiting for a cluster reboot, or encountered an error when being applied.</p> <p>The following are possible statuses and descriptions.</p> <ul> <li> <p> <code>in-sync</code>: The parameter value is in sync with the database.</p> </li> <li> <p> <code>pending-reboot</code>: The parameter value will be applied after the cluster reboots.</p> </li> <li> <p> <code>applying</code>: The parameter value is being applied to the database.</p> </li> <li> <p> <code>invalid-parameter</code>: Cannot apply the parameter value because it has an invalid value or syntax.</p> </li> <li> <p> <code>apply-deferred</code>: The parameter contains static property changes. The changes are deferred until the cluster reboots.</p> </li> <li> <p> <code>apply-error</code>: Cannot connect to the cluster. The parameter change will be applied after the cluster reboots.</p> </li> <li> <p> <code>unknown-error</code>: Cannot apply the parameter change right now. The change will be applied after the cluster reboots.</p> </li> </ul>"
        },
        "ParameterApplyErrorDescription": {
          "shape": "String",
          "documentation": "<p>The error that prevented the parameter from being applied to the database.</p>"
        }
      },
      "documentation": "<p>Describes the status of a parameter group.</p>"
    },
    "ClusterParameterStatusList": {
      "type": "list",
      "member": {
        "shape": "ClusterParameterStatus"
      }
    },
    "ClusterSecurityGroup": {
      "type": "structure",
      "members": {
        "ClusterSecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster security group to which the operation was applied.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the security group.</p>"
        },
        "EC2SecurityGroups": {
          "shape": "EC2SecurityGroupList",
          "documentation": "<p>A list of EC2 security groups that are permitted to access clusters associated with this cluster security group.</p>"
        },
        "IPRanges": {
          "shape": "IPRangeList",
          "documentation": "<p>A list of IP ranges (CIDR blocks) that are permitted to access clusters associated with this cluster security group.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags for the cluster security group.</p>"
        }
      },
      "documentation": "<p>Describes a security group.</p>",
      "wrapper": true
    },
    "ClusterSecurityGroupMembership": {
      "type": "structure",
      "members": {
        "ClusterSecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster security group.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the cluster security group.</p>"
        }
      },
      "documentation": "<p>Describes a cluster security group.</p>"
    },
    "ClusterSecurityGroupMembershipList": {
      "type": "list",
      "member": {
        "shape": "ClusterSecurityGroupMembership",
        "locationName": "ClusterSecurityGroup"
      }
    },
    "ClusterSecurityGroupMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        },
        "ClusterSecurityGroups": {
          "shape": "ClusterSecurityGroups",
          "documentation": "<p>A list of <a>ClusterSecurityGroup</a> instances. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "ClusterSecurityGroupNameList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "ClusterSecurityGroupName"
      }
    },
    "ClusterSecurityGroups": {
      "type": "list",
      "member": {
        "shape": "ClusterSecurityGroup",
        "locationName": "ClusterSecurityGroup"
      }
    },
    "ClusterSnapshotCopyStatus": {
      "type": "structure",
      "members": {
        "DestinationRegion": {
          "shape": "String",
          "documentation": "<p>The destination region that snapshots are automatically copied to when cross-region snapshot copy is enabled.</p>"
        },
        "RetentionPeriod": {
          "shape": "Long",
          "documentation": "<p>The number of days that automated snapshots are retained in the destination region after they are copied from a source region.</p>"
        },
        "ManualSnapshotRetentionPeriod": {
          "shape": "Integer",
          "documentation": "<p>The number of days that automated snapshots are retained in the destination region after they are copied from a source region. If the value is -1, the manual snapshot is retained indefinitely. </p> <p>The value must be either -1 or an integer between 1 and 3,653.</p>"
        },
        "SnapshotCopyGrantName": {
          "shape": "String",
          "documentation": "<p>The name of the snapshot copy grant.</p>"
        }
      },
      "documentation": "<p>Returns the destination region and retention period that are configured for cross-region snapshot copy.</p>"
    },
    "ClusterSubnetGroup": {
      "type": "structure",
      "members": {
        "ClusterSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster subnet group.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The description of the cluster subnet group.</p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>The VPC ID of the cluster subnet group.</p>"
        },
        "SubnetGroupStatus": {
          "shape": "String",
          "documentation": "<p>The status of the cluster subnet group. Possible values are <code>Complete</code>, <code>Incomplete</code> and <code>Invalid</code>. </p>"
        },
        "Subnets": {
          "shape": "SubnetList",
          "documentation": "<p>A list of the VPC <a>Subnet</a> elements. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags for the cluster subnet group.</p>"
        }
      },
      "documentation": "<p>Describes a subnet group.</p>",
      "wrapper": true
    },
    "ClusterSubnetGroupMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        },
        "ClusterSubnetGroups": {
          "shape": "ClusterSubnetGroups",
          "documentation": "<p>A list of <a>ClusterSubnetGroup</a> instances. </p>"
        }
      },
      "documentation": "<p>Contains the output from the <a>DescribeClusterSubnetGroups</a> action. </p>"
    },
    "ClusterSubnetGroups": {
      "type": "list",
      "member": {
        "shape": "ClusterSubnetGroup",
        "locationName": "ClusterSubnetGroup"
      }
    },
    "ClusterVersion": {
      "type": "structure",
      "members": {
        "ClusterVersion": {
          "shape": "String",
          "documentation": "<p>The version number used by the cluster.</p>"
        },
        "ClusterParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group family for the cluster.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The description of the cluster version.</p>"
        }
      },
      "documentation": "<p>Describes a cluster version, including the parameter group family and description of the version.</p>"
    },
    "ClusterVersionList": {
      "type": "list",
      "member": {
        "shape": "ClusterVersion",
        "locationName": "ClusterVersion"
      }
    },
    "ClusterVersionsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        },
        "ClusterVersions": {
          "shape": "ClusterVersionList",
          "documentation": "<p>A list of <code>Version</code> elements. </p>"
        }
      },
      "documentation": "<p>Contains the output from the <a>DescribeClusterVersions</a> action. </p>"
    },
    "ClustersMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        },
        "Clusters": {
          "shape": "ClusterList",
          "documentation": "<p>A list of <code>Cluster</code> objects, where each object describes one cluster. </p>"
        }
      },
      "documentation": "<p>Contains the output from the <a>DescribeClusters</a> action. </p>"
    },
    "CopyClusterSnapshotMessage": {
      "type": "structure",
      "required": [
        "SourceSnapshotIdentifier",
        "TargetSnapshotIdentifier"
      ],
      "members": {
        "SourceSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the source snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier for a valid automated snapshot whose state is <code>available</code>.</p> </li> </ul>"
        },
        "SourceSnapshotClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier for a valid cluster.</p> </li> </ul>"
        },
        "TargetSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier given to the new manual snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank.</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique for the AWS account that is making the request.</p> </li> </ul>"
        },
        "ManualSnapshotRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely. </p> <p>The value must be either -1 or an integer between 1 and 3,653.</p> <p>The default value is -1.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CopyClusterSnapshotResult": {
      "type": "structure",
      "members": {
        "Snapshot": {
          "shape": "Snapshot"
        }
      }
    },
    "CreateClusterMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier",
        "NodeType",
        "MasterUsername",
        "MasterUserPassword"
      ],
      "members": {
        "DBName": {
          "shape": "String",
          "documentation": "<p>The name of the first database to be created when the cluster is created.</p> <p>To create additional databases after the cluster is created, connect to the cluster with a SQL client and use SQL commands to create a database. For more information, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/t_creating_database.html\">Create a Database</a> in the Amazon Redshift Database Developer Guide. </p> <p>Default: <code>dev</code> </p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 64 alphanumeric characters.</p> </li> <li> <p>Must contain only lowercase letters.</p> </li> <li> <p>Cannot be a word that is reserved by the service. A list of reserved words can be found in <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words</a> in the Amazon Redshift Database Developer Guide. </p> </li> </ul>"
        },
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the cluster. You use this identifier to refer to the cluster for any subsequent cluster operations such as deleting or modifying. The identifier also appears in the Amazon Redshift console.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>Alphabetic characters must be lowercase.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique for all clusters within an AWS account.</p> </li> </ul> <p>Example: <code>myexamplecluster</code> </p>"
        },
        "ClusterType": {
          "shape": "String",
          "documentation": "<p>The type of the cluster. When cluster type is specified as</p> <ul> <li> <p> <code>single-node</code>, the <b>NumberOfNodes</b> parameter is not required.</p> </li> <li> <p> <code>multi-node</code>, the <b>NumberOfNodes</b> parameter is required.</p> </li> </ul> <p>Valid Values: <code>multi-node</code> | <code>single-node</code> </p> <p>Default: <code>multi-node</code> </p>"
        },
        "NodeType": {
          "shape": "String",
          "documentation": "<p>The node type to be provisioned for the cluster. For information about node types, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes\"> Working with Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p> <p>Valid Values: <code>ds2.xlarge</code> | <code>ds2.8xlarge</code> | <code>dc1.large</code> | <code>dc1.8xlarge</code> | <code>dc2.large</code> | <code>dc2.8xlarge</code> | <code>ra3.4xlarge</code> | <code>ra3.16xlarge</code> </p>"
        },
        "MasterUsername": {
          "shape": "String",
          "documentation": "<p>The user name associated with the master user account for the cluster that is being created.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 - 128 alphanumeric characters. The user name can't be <code>PUBLIC</code>.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word. A list of reserved words can be found in <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words</a> in the Amazon Redshift Database Developer Guide. </p> </li> </ul>"
        },
        "MasterUserPassword": {
          "shape": "String",
          "documentation": "<p>The password associated with the master user account for the cluster that is being created.</p> <p>Constraints:</p> <ul> <li> <p>Must be between 8 and 64 characters in length.</p> </li> <li> <p>Must contain at least one uppercase letter.</p> </li> <li> <p>Must contain at least one lowercase letter.</p> </li> <li> <p>Must contain one number.</p> </li> <li> <p>Can be any printable ASCII character (ASCII code 33 to 126) except ' (single quote), \" (double quote), \\, /, @, or space.</p> </li> </ul>"
        },
        "ClusterSecurityGroups": {
          "shape": "ClusterSecurityGroupNameList",
          "documentation": "<p>A list of security groups to be associated with this cluster.</p> <p>Default: The default cluster security group for Amazon Redshift.</p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.</p> <p>Default: The default VPC security group is associated with the cluster.</p>"
        },
        "ClusterSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of a cluster subnet group to be associated with this cluster.</p> <p>If this parameter is not provided the resulting cluster will be deployed outside virtual private cloud (VPC).</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster. For example, if you have several EC2 instances running in a specific Availability Zone, then you might want the cluster to be provisioned in the same zone in order to decrease network latency.</p> <p>Default: A random, system-chosen Availability Zone in the region that is specified by the endpoint.</p> <p>Example: <code>us-east-2d</code> </p> <p>Constraint: The specified Availability Zone must be in the same region as the current endpoint.</p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The weekly time range (in UTC) during which automated cluster maintenance can occur.</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p> Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. For more information about the time blocks for each region, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows\">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide.</p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Minimum 30-minute window.</p>"
        },
        "ClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the parameter group to be associated with this cluster.</p> <p>Default: The default Amazon Redshift cluster parameter group. For information about the default parameter group, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Working with Amazon Redshift Parameter Groups</a> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "AutomatedSnapshotRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p> <p>Default: <code>1</code> </p> <p>Constraints: Must be a value from 0 to 35.</p>"
        },
        "ManualSnapshotRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The default number of days to retain a manual snapshot. If the value is -1, the snapshot is retained indefinitely. This setting doesn't change the retention period of existing snapshots.</p> <p>The value must be either -1 or an integer between 1 and 3,653.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the cluster accepts incoming connections.</p> <p>The cluster is accessible only via the JDBC and ODBC connection strings. Part of the connection string requires the port on which the cluster will listen for incoming connections.</p> <p>Default: <code>5439</code> </p> <p>Valid Values: <code>1150-65535</code> </p>"
        },
        "ClusterVersion": {
          "shape": "String",
          "documentation": "<p>The version of the Amazon Redshift engine software that you want to deploy on the cluster.</p> <p>The version selected runs on all the nodes in the cluster.</p> <p>Constraints: Only version 1.0 is currently available.</p> <p>Example: <code>1.0</code> </p>"
        },
        "AllowVersionUpgrade": {
          "shape": "BooleanOptional",
          "documentation": "<p>If <code>true</code>, major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster.</p> <p>When a new major version of the Amazon Redshift engine is released, you can request that the service automatically apply upgrades during the maintenance window to the Amazon Redshift engine that is running on your cluster.</p> <p>Default: <code>true</code> </p>"
        },
        "NumberOfNodes": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of compute nodes in the cluster. This parameter is required when the <b>ClusterType</b> parameter is specified as <code>multi-node</code>. </p> <p>For information about determining how many nodes you need, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes\"> Working with Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p> <p>If you don't specify this parameter, you get a single-node cluster. When requesting a multi-node cluster, you must specify the number of nodes that you want in the cluster.</p> <p>Default: <code>1</code> </p> <p>Constraints: Value must be at least 1 and no more than 100.</p>"
        },
        "PubliclyAccessible": {
          "shape": "BooleanOptional",
          "documentation": "<p>If <code>true</code>, the cluster can be accessed from a public network. </p>"
        },
        "Encrypted": {
          "shape": "BooleanOptional",
          "documentation": "<p>If <code>true</code>, the data in the cluster is encrypted at rest. </p> <p>Default: false</p>"
        },
        "HsmClientCertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.</p>"
        },
        "HsmConfigurationIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>"
        },
        "ElasticIp": {
          "shape": "String",
          "documentation": "<p>The Elastic IP (EIP) address for the cluster.</p> <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible through an Internet gateway. For more information about provisioning clusters in EC2-VPC, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms\">Supported Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag instances.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster.</p>"
        },
        "EnhancedVpcRouting": {
          "shape": "BooleanOptional",
          "documentation": "<p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>"
        },
        "AdditionalInfo": {
          "shape": "String",
          "documentation": "<p>Reserved.</p>"
        },
        "IamRoles": {
          "shape": "IamRoleArnList",
          "documentation": "<p>A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 10 IAM roles in a single request.</p> <p>A cluster can have up to 10 IAM roles associated with it at any time.</p>"
        },
        "MaintenanceTrackName": {
          "shape": "String",
          "documentation": "<p>An optional parameter for the name of the maintenance track for the cluster. If you don't provide a maintenance track name, the cluster is assigned to the <code>current</code> track.</p>"
        },
        "SnapshotScheduleIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the snapshot schedule.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateClusterParameterGroupMessage": {
      "type": "structure",
      "required": [
        "ParameterGroupName",
        "ParameterGroupFamily",
        "Description"
      ],
      "members": {
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique withing your AWS account.</p> </li> </ul> <note> <p>This value is stored as a lower-case string.</p> </note>"
        },
        "ParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The Amazon Redshift engine version to which the cluster parameter group applies. The cluster engine version determines the set of parameters.</p> <p>To get a list of valid parameter group family names, you can call <a>DescribeClusterParameterGroups</a>. By default, Amazon Redshift returns a list of all the parameter groups that are owned by your AWS account, including the default parameter groups for each Amazon Redshift engine version. The parameter group family names associated with the default parameter groups provide you the valid values. For example, a valid family name is \"redshift-1.0\". </p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the parameter group.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag instances.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateClusterParameterGroupResult": {
      "type": "structure",
      "members": {
        "ClusterParameterGroup": {
          "shape": "ClusterParameterGroup"
        }
      }
    },
    "CreateClusterResult": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster"
        }
      }
    },
    "CreateClusterSecurityGroupMessage": {
      "type": "structure",
      "required": [
        "ClusterSecurityGroupName",
        "Description"
      ],
      "members": {
        "ClusterSecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The name for the security group. Amazon Redshift stores the value as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain no more than 255 alphanumeric characters or hyphens.</p> </li> <li> <p>Must not be \"Default\".</p> </li> <li> <p>Must be unique for all security groups that are created by your AWS account.</p> </li> </ul> <p>Example: <code>examplesecuritygroup</code> </p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description for the security group.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag instances.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateClusterSecurityGroupResult": {
      "type": "structure",
      "members": {
        "ClusterSecurityGroup": {
          "shape": "ClusterSecurityGroup"
        }
      }
    },
    "CreateClusterSnapshotMessage": {
      "type": "structure",
      "required": [
        "SnapshotIdentifier",
        "ClusterIdentifier"
      ],
      "members": {
        "SnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the AWS account.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>"
        },
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The cluster identifier for which you want a snapshot.</p>"
        },
        "ManualSnapshotRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely. </p> <p>The value must be either -1 or an integer between 1 and 3,653.</p> <p>The default value is -1.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag instances.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateClusterSnapshotResult": {
      "type": "structure",
      "members": {
        "Snapshot": {
          "shape": "Snapshot"
        }
      }
    },
    "CreateClusterSubnetGroupMessage": {
      "type": "structure",
      "required": [
        "ClusterSubnetGroupName",
        "Description",
        "SubnetIds"
      ],
      "members": {
        "ClusterSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name for the subnet group. Amazon Redshift stores the value as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain no more than 255 alphanumeric characters or hyphens.</p> </li> <li> <p>Must not be \"Default\".</p> </li> <li> <p>Must be unique for all subnet groups that are created by your AWS account.</p> </li> </ul> <p>Example: <code>examplesubnetgroup</code> </p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description for the subnet group.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIdentifierList",
          "documentation": "<p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single request.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag instances.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateClusterSubnetGroupResult": {
      "type": "structure",
      "members": {
        "ClusterSubnetGroup": {
          "shape": "ClusterSubnetGroup"
        }
      }
    },
    "CreateEventSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName",
        "SnsTopicArn"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String",
          "documentation": "<p>The name of the event subscription to be created.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank.</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "SnsTopicArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic used to transmit the event notifications. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>"
        },
        "SourceType": {
          "shape": "String",
          "documentation": "<p>The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs.</p> <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.</p>"
        },
        "SourceIds": {
          "shape": "SourceIdsList",
          "documentation": "<p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified.</p> <p>Example: my-cluster-1, my-cluster-2</p> <p>Example: my-snapshot-20131010</p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p>Specifies the Amazon Redshift event categories to be published by the event notification subscription.</p> <p>Values: configuration, management, monitoring, security</p>"
        },
        "Severity": {
          "shape": "String",
          "documentation": "<p>Specifies the Amazon Redshift event severity to be published by the event notification subscription.</p> <p>Values: ERROR, INFO</p>"
        },
        "Enabled": {
          "shape": "BooleanOptional",
          "documentation": "<p>A boolean value; set to <code>true</code> to activate the subscription, and set to <code>false</code> to create the subscription but not activate it. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag instances.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateEventSubscriptionResult": {
      "type": "structure",
      "members": {
        "EventSubscription": {
          "shape": "EventSubscription"
        }
      }
    },
    "CreateHsmClientCertificateMessage": {
      "type": "structure",
      "required": [
        "HsmClientCertificateIdentifier"
      ],
      "members": {
        "HsmClientCertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier to be assigned to the new HSM client certificate that the cluster will use to connect to the HSM to use the database encryption keys.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag instances.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateHsmClientCertificateResult": {
      "type": "structure",
      "members": {
        "HsmClientCertificate": {
          "shape": "HsmClientCertificate"
        }
      }
    },
    "CreateHsmConfigurationMessage": {
      "type": "structure",
      "required": [
        "HsmConfigurationIdentifier",
        "Description",
        "HsmIpAddress",
        "HsmPartitionName",
        "HsmPartitionPassword",
        "HsmServerPublicCertificate"
      ],
      "members": {
        "HsmConfigurationIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier to be assigned to the new Amazon Redshift HSM configuration.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A text description of the HSM configuration to be created.</p>"
        },
        "HsmIpAddress": {
          "shape": "String",
          "documentation": "<p>The IP address that the Amazon Redshift cluster must use to access the HSM.</p>"
        },
        "HsmPartitionName": {
          "shape": "String",
          "documentation": "<p>The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.</p>"
        },
        "HsmPartitionPassword": {
          "shape": "String",
          "documentation": "<p>The password required to access the HSM partition.</p>"
        },
        "HsmServerPublicCertificate": {
          "shape": "String",
          "documentation": "<p>The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag instances.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateHsmConfigurationResult": {
      "type": "structure",
      "members": {
        "HsmConfiguration": {
          "shape": "HsmConfiguration"
        }
      }
    },
    "CreateScheduledActionMessage": {
      "type": "structure",
      "required": [
        "ScheduledActionName",
        "TargetAction",
        "Schedule",
        "IamRole"
      ],
      "members": {
        "ScheduledActionName": {
          "shape": "String",
          "documentation": "<p>The name of the scheduled action. The name must be unique within an account. For more information about this parameter, see <a>ScheduledAction</a>. </p>"
        },
        "TargetAction": {
          "shape": "ScheduledActionType",
          "documentation": "<p>A JSON format string of the Amazon Redshift API operation with input parameters. For more information about this parameter, see <a>ScheduledAction</a>. </p>"
        },
        "Schedule": {
          "shape": "String",
          "documentation": "<p>The schedule in <code>at( )</code> or <code>cron( )</code> format. For more information about this parameter, see <a>ScheduledAction</a>.</p>"
        },
        "IamRole": {
          "shape": "String",
          "documentation": "<p>The IAM role to assume to run the target action. For more information about this parameter, see <a>ScheduledAction</a>. </p>"
        },
        "ScheduledActionDescription": {
          "shape": "String",
          "documentation": "<p>The description of the scheduled action. </p>"
        },
        "StartTime": {
          "shape": "TStamp",
          "documentation": "<p>The start time in UTC of the scheduled action. Before this time, the scheduled action does not trigger. For more information about this parameter, see <a>ScheduledAction</a>.</p>"
        },
        "EndTime": {
          "shape": "TStamp",
          "documentation": "<p>The end time in UTC of the scheduled action. After this time, the scheduled action does not trigger. For more information about this parameter, see <a>ScheduledAction</a>. </p>"
        },
        "Enable": {
          "shape": "BooleanOptional",
          "documentation": "<p>If true, the schedule is enabled. If false, the scheduled action does not trigger. For more information about <code>state</code> of the scheduled action, see <a>ScheduledAction</a>. </p>"
        }
      }
    },
    "CreateSnapshotCopyGrantMessage": {
      "type": "structure",
      "required": [
        "SnapshotCopyGrantName"
      ],
      "members": {
        "SnapshotCopyGrantName": {
          "shape": "String",
          "documentation": "<p>The name of the snapshot copy grant. This name must be unique in the region for the AWS account.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>Alphabetic characters must be lowercase.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique for all clusters within an AWS account.</p> </li> </ul>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The unique identifier of the customer master key (CMK) to which to grant Amazon Redshift permission. If no key is specified, the default key is used.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag instances.</p>"
        }
      },
      "documentation": "<p>The result of the <code>CreateSnapshotCopyGrant</code> action.</p>"
    },
    "CreateSnapshotCopyGrantResult": {
      "type": "structure",
      "members": {
        "SnapshotCopyGrant": {
          "shape": "SnapshotCopyGrant"
        }
      }
    },
    "CreateSnapshotScheduleMessage": {
      "type": "structure",
      "members": {
        "ScheduleDefinitions": {
          "shape": "ScheduleDefinitionList",
          "documentation": "<p>The definition of the snapshot schedule. The definition is made up of schedule expressions, for example \"cron(30 12 *)\" or \"rate(12 hours)\". </p>"
        },
        "ScheduleIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for a snapshot schedule. Only alphanumeric characters are allowed for the identifier.</p>"
        },
        "ScheduleDescription": {
          "shape": "String",
          "documentation": "<p>The description of the snapshot schedule.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An optional set of tags you can use to search for the schedule.</p>"
        },
        "DryRun": {
          "shape": "BooleanOptional",
          "documentation": "<p/>"
        },
        "NextInvocations": {
          "shape": "IntegerOptional",
          "documentation": "<p/>"
        }
      }
    },
    "CreateTagsMessage": {
      "type": "structure",
      "required": [
        "ResourceName",
        "Tags"
      ],
      "members": {
        "ResourceName": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) to which you want to add the tag or tags. For example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>One or more name/value pairs to add as tags to the specified resource. Each tag name is passed in with the parameter <code>Key</code> and the corresponding value is passed in with the parameter <code>Value</code>. The <code>Key</code> and <code>Value</code> parameters are separated by a comma (,). Separate multiple tags with a space. For example, <code>--tags \"Key\"=\"owner\",\"Value\"=\"admin\" \"Key\"=\"environment\",\"Value\"=\"test\" \"Key\"=\"version\",\"Value\"=\"1.0\"</code>. </p>"
        }
      },
      "documentation": "<p>Contains the output from the <code>CreateTags</code> action. </p>"
    },
    "CreateUsageLimitMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier",
        "FeatureType",
        "LimitType",
        "Amount"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster that you want to limit usage.</p>"
        },
        "FeatureType": {
          "shape": "UsageLimitFeatureType",
          "documentation": "<p>The Amazon Redshift feature that you want to limit.</p>"
        },
        "LimitType": {
          "shape": "UsageLimitLimitType",
          "documentation": "<p>The type of limit. Depending on the feature type, this can be based on a time duration or data size. If <code>FeatureType</code> is <code>spectrum</code>, then <code>LimitType</code> must be <code>data-scanned</code>. If <code>FeatureType</code> is <code>concurrency-scaling</code>, then <code>LimitType</code> must be <code>time</code>. </p>"
        },
        "Amount": {
          "shape": "Long",
          "documentation": "<p>The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB). The value must be a positive number. </p>"
        },
        "Period": {
          "shape": "UsageLimitPeriod",
          "documentation": "<p>The time period that the amount applies to. A <code>weekly</code> period begins on Sunday. The default is <code>monthly</code>. </p>"
        },
        "BreachAction": {
          "shape": "UsageLimitBreachAction",
          "documentation": "<p>The action that Amazon Redshift takes when the limit is reached. The default is log. For more information about this parameter, see <a>UsageLimit</a>.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag instances.</p>"
        }
      }
    },
    "CustomerStorageMessage": {
      "type": "structure",
      "members": {
        "TotalBackupSizeInMegaBytes": {
          "shape": "Double",
          "documentation": "<p>The total amount of storage currently used for snapshots.</p>"
        },
        "TotalProvisionedStorageInMegaBytes": {
          "shape": "Double",
          "documentation": "<p>The total amount of storage currently provisioned.</p>"
        }
      }
    },
    "DataTransferProgress": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "String",
          "documentation": "<p>Describes the status of the cluster. While the transfer is in progress the status is <code>transferringdata</code>.</p>"
        },
        "CurrentRateInMegaBytesPerSecond": {
          "shape": "DoubleOptional",
          "documentation": "<p>Describes the data transfer rate in MB's per second.</p>"
        },
        "TotalDataInMegaBytes": {
          "shape": "Long",
          "documentation": "<p>Describes the total amount of data to be transfered in megabytes.</p>"
        },
        "DataTransferredInMegaBytes": {
          "shape": "Long",
          "documentation": "<p>Describes the total amount of data that has been transfered in MB's.</p>"
        },
        "EstimatedTimeToCompletionInSeconds": {
          "shape": "LongOptional",
          "documentation": "<p>Describes the estimated number of seconds remaining to complete the transfer.</p>"
        },
        "ElapsedTimeInSeconds": {
          "shape": "LongOptional",
          "documentation": "<p>Describes the number of seconds that have elapsed during the data transfer.</p>"
        }
      },
      "documentation": "<p>Describes the status of a cluster while it is in the process of resizing with an incremental resize.</p>"
    },
    "DbGroupList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "DbGroup"
      }
    },
    "DefaultClusterParameters": {
      "type": "structure",
      "members": {
        "ParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group family to which the engine default parameters apply.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        },
        "Parameters": {
          "shape": "ParametersList",
          "documentation": "<p>The list of cluster default parameters.</p>"
        }
      },
      "documentation": "<p>Describes the default cluster parameters for a parameter group family.</p>",
      "wrapper": true
    },
    "DeferredMaintenanceWindow": {
      "type": "structure",
      "members": {
        "DeferMaintenanceIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the maintenance window.</p>"
        },
        "DeferMaintenanceStartTime": {
          "shape": "TStamp",
          "documentation": "<p> A timestamp for the beginning of the time period when we defer maintenance.</p>"
        },
        "DeferMaintenanceEndTime": {
          "shape": "TStamp",
          "documentation": "<p> A timestamp for the end of the time period when we defer maintenance.</p>"
        }
      },
      "documentation": "<p>Describes a deferred maintenance window</p>"
    },
    "DeferredMaintenanceWindowsList": {
      "type": "list",
      "member": {
        "shape": "DeferredMaintenanceWindow",
        "locationName": "DeferredMaintenanceWindow"
      }
    },
    "DeleteClusterMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster to be deleted.</p> <p>Constraints:</p> <ul> <li> <p>Must contain lowercase characters.</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "SkipFinalClusterSnapshot": {
          "shape": "Boolean",
          "documentation": "<p>Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If <code>true</code>, a final cluster snapshot is not created. If <code>false</code>, a final cluster snapshot is created before the cluster is deleted. </p> <note> <p>The <i>FinalClusterSnapshotIdentifier</i> parameter must be specified if <i>SkipFinalClusterSnapshot</i> is <code>false</code>.</p> </note> <p>Default: <code>false</code> </p>"
        },
        "FinalClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, <i>SkipFinalClusterSnapshot</i> must be <code>false</code>. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "FinalClusterSnapshotRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely.</p> <p>The value must be either -1 or an integer between 1 and 3,653.</p> <p>The default value is -1.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteClusterParameterGroupMessage": {
      "type": "structure",
      "required": [
        "ParameterGroupName"
      ],
      "members": {
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the parameter group to be deleted.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing cluster parameter group.</p> </li> <li> <p>Cannot delete a default cluster parameter group.</p> </li> </ul>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteClusterResult": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster"
        }
      }
    },
    "DeleteClusterSecurityGroupMessage": {
      "type": "structure",
      "required": [
        "ClusterSecurityGroupName"
      ],
      "members": {
        "ClusterSecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster security group to be deleted.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteClusterSnapshotMessage": {
      "type": "structure",
      "required": [
        "SnapshotIdentifier"
      ],
      "members": {
        "SnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier of the manual snapshot to be deleted.</p> <p>Constraints: Must be the name of an existing snapshot that is in the <code>available</code>, <code>failed</code>, or <code>cancelled</code> state.</p>"
        },
        "SnapshotClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.</p> <p>Constraints: Must be the name of valid cluster.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteClusterSnapshotMessageList": {
      "type": "list",
      "member": {
        "shape": "DeleteClusterSnapshotMessage",
        "locationName": "DeleteClusterSnapshotMessage"
      }
    },
    "DeleteClusterSnapshotResult": {
      "type": "structure",
      "members": {
        "Snapshot": {
          "shape": "Snapshot"
        }
      }
    },
    "DeleteClusterSubnetGroupMessage": {
      "type": "structure",
      "required": [
        "ClusterSubnetGroupName"
      ],
      "members": {
        "ClusterSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster subnet group name to be deleted.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteEventSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon Redshift event notification subscription to be deleted.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteHsmClientCertificateMessage": {
      "type": "structure",
      "required": [
        "HsmClientCertificateIdentifier"
      ],
      "members": {
        "HsmClientCertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the HSM client certificate to be deleted.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteHsmConfigurationMessage": {
      "type": "structure",
      "required": [
        "HsmConfigurationIdentifier"
      ],
      "members": {
        "HsmConfigurationIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the Amazon Redshift HSM configuration to be deleted.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteScheduledActionMessage": {
      "type": "structure",
      "required": [
        "ScheduledActionName"
      ],
      "members": {
        "ScheduledActionName": {
          "shape": "String",
          "documentation": "<p>The name of the scheduled action to delete. </p>"
        }
      }
    },
    "DeleteSnapshotCopyGrantMessage": {
      "type": "structure",
      "required": [
        "SnapshotCopyGrantName"
      ],
      "members": {
        "SnapshotCopyGrantName": {
          "shape": "String",
          "documentation": "<p>The name of the snapshot copy grant to delete.</p>"
        }
      },
      "documentation": "<p>The result of the <code>DeleteSnapshotCopyGrant</code> action.</p>"
    },
    "DeleteSnapshotScheduleMessage": {
      "type": "structure",
      "required": [
        "ScheduleIdentifier"
      ],
      "members": {
        "ScheduleIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier of the snapshot schedule to delete.</p>"
        }
      }
    },
    "DeleteTagsMessage": {
      "type": "structure",
      "required": [
        "ResourceName",
        "TagKeys"
      ],
      "members": {
        "ResourceName": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) from which you want to remove the tag or tags. For example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The tag key that you want to delete.</p>"
        }
      },
      "documentation": "<p>Contains the output from the <code>DeleteTags</code> action. </p>"
    },
    "DeleteUsageLimitMessage": {
      "type": "structure",
      "required": [
        "UsageLimitId"
      ],
      "members": {
        "UsageLimitId": {
          "shape": "String",
          "documentation": "<p>The identifier of the usage limit to delete.</p>"
        }
      }
    },
    "DescribeAccountAttributesMessage": {
      "type": "structure",
      "members": {
        "AttributeNames": {
          "shape": "AttributeNameList",
          "documentation": "<p>A list of attribute names.</p>"
        }
      }
    },
    "DescribeClusterDbRevisionsMessage": {
      "type": "structure",
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for a cluster whose <code>ClusterDbRevisions</code> you are requesting. This parameter is case sensitive. All clusters defined for an account are returned by default.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in the <code>marker</code> field of the response. You can retrieve the next set of response records by providing the returned <code>marker</code> value in the <code>marker</code> parameter and retrying the request. </p> <p>Default: 100</p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point for returning a set of response records. When the results of a <code>DescribeClusterDbRevisions</code> request exceed the value specified in <code>MaxRecords</code>, Amazon Redshift returns a value in the <code>marker</code> field of the response. You can retrieve the next set of response records by providing the returned <code>marker</code> value in the <code>marker</code> parameter and retrying the request. </p> <p>Constraints: You can specify either the <code>ClusterIdentifier</code> parameter, or the <code>marker</code> parameter, but not both.</p>"
        }
      }
    },
    "DescribeClusterParameterGroupsMessage": {
      "type": "structure",
      "members": {
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of a specific parameter group for which to return details. By default, details about all parameter groups and the default parameter group are returned.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterParameterGroups</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A tag key or keys for which you want to return all matching cluster parameter groups that are associated with the specified key or keys. For example, suppose that you have parameter groups that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag keys associated with them.</p>"
        },
        "TagValues": {
          "shape": "TagValueList",
          "documentation": "<p>A tag value or values for which you want to return all matching cluster parameter groups that are associated with the specified tag value or values. For example, suppose that you have parameter groups that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag values associated with them.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeClusterParametersMessage": {
      "type": "structure",
      "required": [
        "ParameterGroupName"
      ],
      "members": {
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of a cluster parameter group for which to return details.</p>"
        },
        "Source": {
          "shape": "String",
          "documentation": "<p>The parameter types to return. Specify <code>user</code> to show parameters that are different form the default. Similarly, specify <code>engine-default</code> to show parameters that are the same as the default parameter group. </p> <p>Default: All parameter types returned.</p> <p>Valid Values: <code>user</code> | <code>engine-default</code> </p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterParameters</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeClusterSecurityGroupsMessage": {
      "type": "structure",
      "members": {
        "ClusterSecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The name of a cluster security group for which you are requesting details. You can specify either the <b>Marker</b> parameter or a <b>ClusterSecurityGroupName</b> parameter, but not both. </p> <p> Example: <code>securitygroup1</code> </p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterSecurityGroups</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p> <p>Constraints: You can specify either the <b>ClusterSecurityGroupName</b> parameter or the <b>Marker</b> parameter, but not both. </p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A tag key or keys for which you want to return all matching cluster security groups that are associated with the specified key or keys. For example, suppose that you have security groups that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the security groups that have either or both of these tag keys associated with them.</p>"
        },
        "TagValues": {
          "shape": "TagValueList",
          "documentation": "<p>A tag value or values for which you want to return all matching cluster security groups that are associated with the specified tag value or values. For example, suppose that you have security groups that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the security groups that have either or both of these tag values associated with them.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeClusterSnapshotsMessage": {
      "type": "structure",
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster which generated the requested snapshots.</p>"
        },
        "SnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The snapshot identifier of the snapshot about which to return information.</p>"
        },
        "SnapshotType": {
          "shape": "String",
          "documentation": "<p>The type of snapshots for which you are requesting information. By default, snapshots of all types are returned.</p> <p>Valid Values: <code>automated</code> | <code>manual</code> </p>"
        },
        "StartTime": {
          "shape": "TStamp",
          "documentation": "<p>A value that requests only snapshots created at or after the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a> </p> <p>Example: <code>2012-07-16T18:00:00Z</code> </p>"
        },
        "EndTime": {
          "shape": "TStamp",
          "documentation": "<p>A time value that requests only snapshots created at or before the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a> </p> <p>Example: <code>2012-07-16T18:00:00Z</code> </p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterSnapshots</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        },
        "OwnerAccount": {
          "shape": "String",
          "documentation": "<p>The AWS customer account used to create or copy the snapshot. Use this field to filter the results to snapshots owned by a particular account. To describe snapshots you own, either specify your AWS customer account, or do not specify the parameter.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A tag key or keys for which you want to return all matching cluster snapshots that are associated with the specified key or keys. For example, suppose that you have snapshots that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag keys associated with them.</p>"
        },
        "TagValues": {
          "shape": "TagValueList",
          "documentation": "<p>A tag value or values for which you want to return all matching cluster snapshots that are associated with the specified tag value or values. For example, suppose that you have snapshots that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag values associated with them.</p>"
        },
        "ClusterExists": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to return snapshots only for an existing cluster. You can perform table-level restore only by using a snapshot of an existing cluster, that is, a cluster that has not been deleted. Values for this parameter work as follows: </p> <ul> <li> <p>If <code>ClusterExists</code> is set to <code>true</code>, <code>ClusterIdentifier</code> is required.</p> </li> <li> <p>If <code>ClusterExists</code> is set to <code>false</code> and <code>ClusterIdentifier</code> isn't specified, all snapshots associated with deleted clusters (orphaned snapshots) are returned. </p> </li> <li> <p>If <code>ClusterExists</code> is set to <code>false</code> and <code>ClusterIdentifier</code> is specified for a deleted cluster, snapshots associated with that cluster are returned.</p> </li> <li> <p>If <code>ClusterExists</code> is set to <code>false</code> and <code>ClusterIdentifier</code> is specified for an existing cluster, no snapshots are returned. </p> </li> </ul>"
        },
        "SortingEntities": {
          "shape": "SnapshotSortingEntityList",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeClusterSubnetGroupsMessage": {
      "type": "structure",
      "members": {
        "ClusterSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster subnet group for which information is requested.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterSubnetGroups</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A tag key or keys for which you want to return all matching cluster subnet groups that are associated with the specified key or keys. For example, suppose that you have subnet groups that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the subnet groups that have either or both of these tag keys associated with them.</p>"
        },
        "TagValues": {
          "shape": "TagValueList",
          "documentation": "<p>A tag value or values for which you want to return all matching cluster subnet groups that are associated with the specified tag value or values. For example, suppose that you have subnet groups that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the subnet groups that have either or both of these tag values associated with them.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeClusterTracksMessage": {
      "type": "structure",
      "members": {
        "MaintenanceTrackName": {
          "shape": "String",
          "documentation": "<p>The name of the maintenance track. </p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>An integer value for the maximum number of maintenance tracks to return.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <code>DescribeClusterTracks</code> request exceed the value specified in <code>MaxRecords</code>, Amazon Redshift returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        }
      }
    },
    "DescribeClusterVersionsMessage": {
      "type": "structure",
      "members": {
        "ClusterVersion": {
          "shape": "String",
          "documentation": "<p>The specific cluster version to return.</p> <p>Example: <code>1.0</code> </p>"
        },
        "ClusterParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The name of a specific cluster parameter group family to return details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterVersions</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeClustersMessage": {
      "type": "structure",
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier of a cluster whose properties you are requesting. This parameter is case sensitive.</p> <p>The default is that all clusters defined for an account are returned.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusters</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p> <p>Constraints: You can specify either the <b>ClusterIdentifier</b> parameter or the <b>Marker</b> parameter, but not both. </p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A tag key or keys for which you want to return all matching clusters that are associated with the specified key or keys. For example, suppose that you have clusters that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the clusters that have either or both of these tag keys associated with them.</p>"
        },
        "TagValues": {
          "shape": "TagValueList",
          "documentation": "<p>A tag value or values for which you want to return all matching clusters that are associated with the specified tag value or values. For example, suppose that you have clusters that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the clusters that have either or both of these tag values associated with them.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeDefaultClusterParametersMessage": {
      "type": "structure",
      "required": [
        "ParameterGroupFamily"
      ],
      "members": {
        "ParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group family.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeDefaultClusterParameters</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeDefaultClusterParametersResult": {
      "type": "structure",
      "members": {
        "DefaultClusterParameters": {
          "shape": "DefaultClusterParameters"
        }
      }
    },
    "DescribeEventCategoriesMessage": {
      "type": "structure",
      "members": {
        "SourceType": {
          "shape": "String",
          "documentation": "<p>The source type, such as cluster or parameter group, to which the described event categories apply.</p> <p>Valid values: cluster, cluster-snapshot, cluster-parameter-group, cluster-security-group, and scheduled-action.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEventSubscriptionsMessage": {
      "type": "structure",
      "members": {
        "SubscriptionName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon Redshift event notification subscription to be described.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeEventSubscriptions request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A tag key or keys for which you want to return all matching event notification subscriptions that are associated with the specified key or keys. For example, suppose that you have subscriptions that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the subscriptions that have either or both of these tag keys associated with them.</p>"
        },
        "TagValues": {
          "shape": "TagValueList",
          "documentation": "<p>A tag value or values for which you want to return all matching event notification subscriptions that are associated with the specified tag value or values. For example, suppose that you have subscriptions that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the subscriptions that have either or both of these tag values associated with them.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEventsMessage": {
      "type": "structure",
      "members": {
        "SourceIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the event source for which events will be returned. If this parameter is not specified, then all sources are included in the response.</p> <p>Constraints:</p> <p>If <i>SourceIdentifier</i> is supplied, <i>SourceType</i> must also be provided.</p> <ul> <li> <p>Specify a cluster identifier when <i>SourceType</i> is <code>cluster</code>.</p> </li> <li> <p>Specify a cluster security group name when <i>SourceType</i> is <code>cluster-security-group</code>.</p> </li> <li> <p>Specify a cluster parameter group name when <i>SourceType</i> is <code>cluster-parameter-group</code>.</p> </li> <li> <p>Specify a cluster snapshot identifier when <i>SourceType</i> is <code>cluster-snapshot</code>.</p> </li> </ul>"
        },
        "SourceType": {
          "shape": "SourceType",
          "documentation": "<p>The event source to retrieve events for. If no value is specified, all events are returned.</p> <p>Constraints:</p> <p>If <i>SourceType</i> is supplied, <i>SourceIdentifier</i> must also be provided.</p> <ul> <li> <p>Specify <code>cluster</code> when <i>SourceIdentifier</i> is a cluster identifier.</p> </li> <li> <p>Specify <code>cluster-security-group</code> when <i>SourceIdentifier</i> is a cluster security group name.</p> </li> <li> <p>Specify <code>cluster-parameter-group</code> when <i>SourceIdentifier</i> is a cluster parameter group name.</p> </li> <li> <p>Specify <code>cluster-snapshot</code> when <i>SourceIdentifier</i> is a cluster snapshot identifier.</p> </li> </ul>"
        },
        "StartTime": {
          "shape": "TStamp",
          "documentation": "<p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a> </p> <p>Example: <code>2009-07-08T18:00Z</code> </p>"
        },
        "EndTime": {
          "shape": "TStamp",
          "documentation": "<p>The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a> </p> <p>Example: <code>2009-07-08T18:00Z</code> </p>"
        },
        "Duration": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of minutes prior to the time of the request for which to retrieve events. For example, if the request is sent at 18:00 and you specify a duration of 60, then only events which have occurred after 17:00 will be returned.</p> <p>Default: <code>60</code> </p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeEvents</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeHsmClientCertificatesMessage": {
      "type": "structure",
      "members": {
        "HsmClientCertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of a specific HSM client certificate for which you want information. If no identifier is specified, information is returned for all HSM client certificates owned by your AWS customer account.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeHsmClientCertificates</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A tag key or keys for which you want to return all matching HSM client certificates that are associated with the specified key or keys. For example, suppose that you have HSM client certificates that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag keys associated with them.</p>"
        },
        "TagValues": {
          "shape": "TagValueList",
          "documentation": "<p>A tag value or values for which you want to return all matching HSM client certificates that are associated with the specified tag value or values. For example, suppose that you have HSM client certificates that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag values associated with them.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeHsmConfigurationsMessage": {
      "type": "structure",
      "members": {
        "HsmConfigurationIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of a specific Amazon Redshift HSM configuration to be described. If no identifier is specified, information is returned for all HSM configurations owned by your AWS customer account.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeHsmConfigurations</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A tag key or keys for which you want to return all matching HSM configurations that are associated with the specified key or keys. For example, suppose that you have HSM configurations that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag keys associated with them.</p>"
        },
        "TagValues": {
          "shape": "TagValueList",
          "documentation": "<p>A tag value or values for which you want to return all matching HSM configurations that are associated with the specified tag value or values. For example, suppose that you have HSM configurations that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag values associated with them.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeLoggingStatusMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster from which to get the logging status.</p> <p>Example: <code>examplecluster</code> </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeNodeConfigurationOptionsMessage": {
      "type": "structure",
      "required": [
        "ActionType"
      ],
      "members": {
        "ActionType": {
          "shape": "ActionType",
          "documentation": "<p>The action type to evaluate for possible node configurations. Specify \"restore-cluster\" to get configuration combinations based on an existing snapshot. Specify \"recommend-node-config\" to get configuration recommendations based on an existing cluster or snapshot. Specify \"resize-cluster\" to get configuration combinations for elastic resize based on an existing cluster. </p>"
        },
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster to evaluate for possible node configurations.</p>"
        },
        "SnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the snapshot to evaluate for possible node configurations.</p>"
        },
        "OwnerAccount": {
          "shape": "String",
          "documentation": "<p>The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.</p>"
        },
        "Filters": {
          "shape": "NodeConfigurationOptionsFilterList",
          "documentation": "<p>A set of name, operator, and value items to filter the results.</p>",
          "locationName": "Filter"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeNodeConfigurationOptions</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>500</code> </p> <p>Constraints: minimum 100, maximum 500.</p>"
        }
      }
    },
    "DescribeOrderableClusterOptionsMessage": {
      "type": "structure",
      "members": {
        "ClusterVersion": {
          "shape": "String",
          "documentation": "<p>The version filter value. Specify this parameter to show only the available offerings matching the specified version.</p> <p>Default: All versions.</p> <p>Constraints: Must be one of the version returned from <a>DescribeClusterVersions</a>.</p>"
        },
        "NodeType": {
          "shape": "String",
          "documentation": "<p>The node type filter value. Specify this parameter to show only the available offerings matching the specified node type.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeOrderableClusterOptions</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReservedNodeOfferingsMessage": {
      "type": "structure",
      "members": {
        "ReservedNodeOfferingId": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the offering.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeReservedNodeOfferings</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReservedNodesMessage": {
      "type": "structure",
      "members": {
        "ReservedNodeId": {
          "shape": "String",
          "documentation": "<p>Identifier for the node reservation.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeReservedNodes</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeResizeMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier of a cluster whose resize progress you are requesting. This parameter is case-sensitive.</p> <p>By default, resize operations for all clusters defined for an AWS account are returned.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeScheduledActionsMessage": {
      "type": "structure",
      "members": {
        "ScheduledActionName": {
          "shape": "String",
          "documentation": "<p>The name of the scheduled action to retrieve. </p>"
        },
        "TargetActionType": {
          "shape": "ScheduledActionTypeValues",
          "documentation": "<p>The type of the scheduled actions to retrieve. </p>"
        },
        "StartTime": {
          "shape": "TStamp",
          "documentation": "<p>The start time in UTC of the scheduled actions to retrieve. Only active scheduled actions that have invocations after this time are retrieved.</p>"
        },
        "EndTime": {
          "shape": "TStamp",
          "documentation": "<p>The end time in UTC of the scheduled action to retrieve. Only active scheduled actions that have invocations before this time are retrieved.</p>"
        },
        "Active": {
          "shape": "BooleanOptional",
          "documentation": "<p>If true, retrieve only active scheduled actions. If false, retrieve only disabled scheduled actions. </p>"
        },
        "Filters": {
          "shape": "ScheduledActionFilterList",
          "documentation": "<p>List of scheduled action filters. </p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeScheduledActions</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        }
      }
    },
    "DescribeSnapshotCopyGrantsMessage": {
      "type": "structure",
      "members": {
        "SnapshotCopyGrantName": {
          "shape": "String",
          "documentation": "<p>The name of the snapshot copy grant.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <code>DescribeSnapshotCopyGrant</code> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p> <p>Constraints: You can specify either the <b>SnapshotCopyGrantName</b> parameter or the <b>Marker</b> parameter, but not both. </p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A tag key or keys for which you want to return all matching resources that are associated with the specified key or keys. For example, suppose that you have resources tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with all resources that have either or both of these tag keys associated with them.</p>"
        },
        "TagValues": {
          "shape": "TagValueList",
          "documentation": "<p>A tag value or values for which you want to return all matching resources that are associated with the specified value or values. For example, suppose that you have resources tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with all resources that have either or both of these tag values associated with them.</p>"
        }
      },
      "documentation": "<p>The result of the <code>DescribeSnapshotCopyGrants</code> action.</p>"
    },
    "DescribeSnapshotSchedulesMessage": {
      "type": "structure",
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the cluster whose snapshot schedules you want to view.</p>"
        },
        "ScheduleIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for a snapshot schedule.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The key value for a snapshot schedule tag.</p>"
        },
        "TagValues": {
          "shape": "TagValueList",
          "documentation": "<p>The value corresponding to the key of the snapshot schedule tag.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>marker</code> parameter and retrying the command. If the <code>marker</code> field is empty, all response records have been retrieved for the request.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number or response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned <code>marker</code> value.</p>"
        }
      }
    },
    "DescribeSnapshotSchedulesOutputMessage": {
      "type": "structure",
      "members": {
        "SnapshotSchedules": {
          "shape": "SnapshotScheduleList",
          "documentation": "<p>A list of SnapshotSchedules.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>marker</code> parameter and retrying the command. If the <code>marker</code> field is empty, all response records have been retrieved for the request.</p>"
        }
      }
    },
    "DescribeTableRestoreStatusMessage": {
      "type": "structure",
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The Amazon Redshift cluster that the table is being restored to.</p>"
        },
        "TableRestoreRequestId": {
          "shape": "String",
          "documentation": "<p>The identifier of the table restore request to return status for. If you don't specify a <code>TableRestoreRequestId</code> value, then <code>DescribeTableRestoreStatus</code> returns the status of all in-progress table restore requests.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous <code>DescribeTableRestoreStatus</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by the <code>MaxRecords</code> parameter.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeTagsMessage": {
      "type": "structure",
      "members": {
        "ResourceName": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for which you want to describe the tag or tags. For example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>"
        },
        "ResourceType": {
          "shape": "String",
          "documentation": "<p>The type of resource with which you want to view tags. Valid resource types are: </p> <ul> <li> <p>Cluster</p> </li> <li> <p>CIDR/IP</p> </li> <li> <p>EC2 security group</p> </li> <li> <p>Snapshot</p> </li> <li> <p>Cluster security group</p> </li> <li> <p>Subnet group</p> </li> <li> <p>HSM connection</p> </li> <li> <p>HSM certificate</p> </li> <li> <p>Parameter group</p> </li> <li> <p>Snapshot copy grant</p> </li> </ul> <p>For more information about Amazon Redshift resource types and constructing ARNs, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions\">Specifying Policy Elements: Actions, Effects, Resources, and Principals</a> in the Amazon Redshift Cluster Management Guide. </p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number or response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned <code>marker</code> value. </p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>marker</code> parameter and retrying the command. If the <code>marker</code> field is empty, all response records have been retrieved for the request. </p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A tag key or keys for which you want to return all matching resources that are associated with the specified key or keys. For example, suppose that you have resources tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with all resources that have either or both of these tag keys associated with them.</p>"
        },
        "TagValues": {
          "shape": "TagValueList",
          "documentation": "<p>A tag value or values for which you want to return all matching resources that are associated with the specified value or values. For example, suppose that you have resources tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with all resources that have either or both of these tag values associated with them.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeUsageLimitsMessage": {
      "type": "structure",
      "members": {
        "UsageLimitId": {
          "shape": "String",
          "documentation": "<p>The identifier of the usage limit to describe.</p>"
        },
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster for which you want to describe usage limits.</p>"
        },
        "FeatureType": {
          "shape": "UsageLimitFeatureType",
          "documentation": "<p>The feature type for which you want to describe usage limits.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeUsageLimits</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A tag key or keys for which you want to return all matching usage limit objects that are associated with the specified key or keys. For example, suppose that you have parameter groups that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the usage limit objects have either or both of these tag keys associated with them.</p>"
        },
        "TagValues": {
          "shape": "TagValueList",
          "documentation": "<p>A tag value or values for which you want to return all matching usage limit objects that are associated with the specified tag value or values. For example, suppose that you have parameter groups that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the usage limit objects that have either or both of these tag values associated with them.</p>"
        }
      }
    },
    "DisableLoggingMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster on which logging is to be stopped.</p> <p>Example: <code>examplecluster</code> </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DisableSnapshotCopyMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier of the source cluster that you want to disable copying of snapshots to a destination region.</p> <p>Constraints: Must be the valid name of an existing cluster that has cross-region snapshot copy enabled.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DisableSnapshotCopyResult": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster"
        }
      }
    },
    "Double": {
      "type": "double"
    },
    "DoubleOptional": {
      "type": "double"
    },
    "EC2SecurityGroup": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the EC2 security group.</p>"
        },
        "EC2SecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the EC2 Security Group.</p>"
        },
        "EC2SecurityGroupOwnerId": {
          "shape": "String",
          "documentation": "<p>The AWS ID of the owner of the EC2 security group specified in the <code>EC2SecurityGroupName</code> field. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags for the EC2 security group.</p>"
        }
      },
      "documentation": "<p>Describes an Amazon EC2 security group.</p>"
    },
    "EC2SecurityGroupList": {
      "type": "list",
      "member": {
        "shape": "EC2SecurityGroup",
        "locationName": "EC2SecurityGroup"
      }
    },
    "ElasticIpStatus": {
      "type": "structure",
      "members": {
        "ElasticIp": {
          "shape": "String",
          "documentation": "<p>The elastic IP (EIP) address for the cluster.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the elastic IP (EIP) address.</p>"
        }
      },
      "documentation": "<p>Describes the status of the elastic IP (EIP) address.</p>"
    },
    "EligibleTracksToUpdateList": {
      "type": "list",
      "member": {
        "shape": "UpdateTarget",
        "locationName": "UpdateTarget"
      }
    },
    "EnableLoggingMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier",
        "BucketName"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster on which logging is to be started.</p> <p>Example: <code>examplecluster</code> </p>"
        },
        "BucketName": {
          "shape": "String",
          "documentation": "<p>The name of an existing S3 bucket where the log files are to be stored.</p> <p>Constraints:</p> <ul> <li> <p>Must be in the same region as the cluster</p> </li> <li> <p>The cluster must have read bucket and put object permissions</p> </li> </ul>"
        },
        "S3KeyPrefix": {
          "shape": "String",
          "documentation": "<p>The prefix applied to the log file names.</p> <p>Constraints:</p> <ul> <li> <p>Cannot exceed 512 characters</p> </li> <li> <p>Cannot contain spaces( ), double quotes (\"), single quotes ('), a backslash (\\), or control characters. The hexadecimal codes for invalid characters are: </p> <ul> <li> <p>x00 to x20</p> </li> <li> <p>x22</p> </li> <li> <p>x27</p> </li> <li> <p>x5c</p> </li> <li> <p>x7f or larger</p> </li> </ul> </li> </ul>"
        }
      },
      "documentation": "<p/>"
    },
    "EnableSnapshotCopyMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier",
        "DestinationRegion"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier of the source cluster to copy snapshots from.</p> <p>Constraints: Must be the valid name of an existing cluster that does not already have cross-region snapshot copy enabled.</p>"
        },
        "DestinationRegion": {
          "shape": "String",
          "documentation": "<p>The destination AWS Region that you want to copy snapshots to.</p> <p>Constraints: Must be the name of a valid AWS Region. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html#redshift_region\">Regions and Endpoints</a> in the Amazon Web Services General Reference. </p>"
        },
        "RetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days to retain automated snapshots in the destination region after they are copied from the source region.</p> <p>Default: 7.</p> <p>Constraints: Must be at least 1 and no more than 35.</p>"
        },
        "SnapshotCopyGrantName": {
          "shape": "String",
          "documentation": "<p>The name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.</p>"
        },
        "ManualSnapshotRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days to retain newly copied snapshots in the destination AWS Region after they are copied from the source AWS Region. If the value is -1, the manual snapshot is retained indefinitely. </p> <p>The value must be either -1 or an integer between 1 and 3,653.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "EnableSnapshotCopyResult": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster"
        }
      }
    },
    "Endpoint": {
      "type": "structure",
      "members": {
        "Address": {
          "shape": "String",
          "documentation": "<p>The DNS address of the Cluster.</p>"
        },
        "Port": {
          "shape": "Integer",
          "documentation": "<p>The port that the database engine is listening on.</p>"
        }
      },
      "documentation": "<p>Describes a connection endpoint.</p>"
    },
    "Event": {
      "type": "structure",
      "members": {
        "SourceIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the source of the event.</p>"
        },
        "SourceType": {
          "shape": "SourceType",
          "documentation": "<p>The source type for this event.</p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>The text of this event.</p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p>A list of the event categories.</p> <p>Values: Configuration, Management, Monitoring, Security</p>"
        },
        "Severity": {
          "shape": "String",
          "documentation": "<p>The severity of the event.</p> <p>Values: ERROR, INFO</p>"
        },
        "Date": {
          "shape": "TStamp",
          "documentation": "<p>The date and time of the event.</p>"
        },
        "EventId": {
          "shape": "String",
          "documentation": "<p>The identifier of the event.</p>"
        }
      },
      "documentation": "<p>Describes an event.</p>"
    },
    "EventCategoriesList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "EventCategory"
      }
    },
    "EventCategoriesMap": {
      "type": "structure",
      "members": {
        "SourceType": {
          "shape": "String",
          "documentation": "<p>The source type, such as cluster or cluster-snapshot, that the returned categories belong to.</p>"
        },
        "Events": {
          "shape": "EventInfoMapList",
          "documentation": "<p>The events in the event category.</p>"
        }
      },
      "documentation": "<p>Describes event categories.</p>",
      "wrapper": true
    },
    "EventCategoriesMapList": {
      "type": "list",
      "member": {
        "shape": "EventCategoriesMap",
        "locationName": "EventCategoriesMap"
      }
    },
    "EventCategoriesMessage": {
      "type": "structure",
      "members": {
        "EventCategoriesMapList": {
          "shape": "EventCategoriesMapList",
          "documentation": "<p>A list of event categories descriptions.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "EventInfoMap": {
      "type": "structure",
      "members": {
        "EventId": {
          "shape": "String",
          "documentation": "<p>The identifier of an Amazon Redshift event.</p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p>The category of an Amazon Redshift event.</p>"
        },
        "EventDescription": {
          "shape": "String",
          "documentation": "<p>The description of an Amazon Redshift event.</p>"
        },
        "Severity": {
          "shape": "String",
          "documentation": "<p>The severity of the event.</p> <p>Values: ERROR, INFO</p>"
        }
      },
      "documentation": "<p>Describes event information.</p>",
      "wrapper": true
    },
    "EventInfoMapList": {
      "type": "list",
      "member": {
        "shape": "EventInfoMap",
        "locationName": "EventInfoMap"
      }
    },
    "EventList": {
      "type": "list",
      "member": {
        "shape": "Event",
        "locationName": "Event"
      }
    },
    "EventSubscription": {
      "type": "structure",
      "members": {
        "CustomerAwsId": {
          "shape": "String",
          "documentation": "<p>The AWS customer account associated with the Amazon Redshift event notification subscription.</p>"
        },
        "CustSubscriptionId": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon Redshift event notification subscription.</p>"
        },
        "SnsTopicArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic used by the event notification subscription.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the Amazon Redshift event notification subscription.</p> <p>Constraints:</p> <ul> <li> <p>Can be one of the following: active | no-permission | topic-not-exist</p> </li> <li> <p>The status \"no-permission\" indicates that Amazon Redshift no longer has permission to post to the Amazon SNS topic. The status \"topic-not-exist\" indicates that the topic was deleted after the subscription was created.</p> </li> </ul>"
        },
        "SubscriptionCreationTime": {
          "shape": "TStamp",
          "documentation": "<p>The date and time the Amazon Redshift event notification subscription was created.</p>"
        },
        "SourceType": {
          "shape": "String",
          "documentation": "<p>The source type of the events returned by the Amazon Redshift event notification, such as cluster, cluster-snapshot, cluster-parameter-group, cluster-security-group, or scheduled-action. </p>"
        },
        "SourceIdsList": {
          "shape": "SourceIdsList",
          "documentation": "<p>A list of the sources that publish events to the Amazon Redshift event notification subscription.</p>"
        },
        "EventCategoriesList": {
          "shape": "EventCategoriesList",
          "documentation": "<p>The list of Amazon Redshift event categories specified in the event notification subscription.</p> <p>Values: Configuration, Management, Monitoring, Security</p>"
        },
        "Severity": {
          "shape": "String",
          "documentation": "<p>The event severity specified in the Amazon Redshift event notification subscription.</p> <p>Values: ERROR, INFO</p>"
        },
        "Enabled": {
          "shape": "Boolean",
          "documentation": "<p>A boolean value indicating whether the subscription is enabled; <code>true</code> indicates that the subscription is enabled.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags for the event subscription.</p>"
        }
      },
      "documentation": "<p>Describes event subscriptions.</p>",
      "wrapper": true
    },
    "EventSubscriptionsList": {
      "type": "list",
      "member": {
        "shape": "EventSubscription",
        "locationName": "EventSubscription"
      }
    },
    "EventSubscriptionsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        },
        "EventSubscriptionsList": {
          "shape": "EventSubscriptionsList",
          "documentation": "<p>A list of event subscriptions.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "EventsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        },
        "Events": {
          "shape": "EventList",
          "documentation": "<p>A list of <code>Event</code> instances. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetClusterCredentialsMessage": {
      "type": "structure",
      "required": [
        "DbUser",
        "ClusterIdentifier"
      ],
      "members": {
        "DbUser": {
          "shape": "String",
          "documentation": "<p>The name of a database user. If a user name matching <code>DbUser</code> exists in the database, the temporary user credentials have the same permissions as the existing user. If <code>DbUser</code> doesn't exist in the database and <code>Autocreate</code> is <code>True</code>, a new user is created using the value for <code>DbUser</code> with PUBLIC permissions. If a database user matching the value for <code>DbUser</code> doesn't exist and <code>Autocreate</code> is <code>False</code>, then the command succeeds but the connection attempt will fail because the user doesn't exist in the database.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html\">CREATE USER</a> in the Amazon Redshift Database Developer Guide. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 64 alphanumeric characters or hyphens. The user name can't be <code>PUBLIC</code>.</p> </li> <li> <p>Must contain only lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Must not contain a colon ( : ) or slash ( / ). </p> </li> <li> <p>Cannot be a reserved word. A list of reserved words can be found in <a href=\"http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words</a> in the Amazon Redshift Database Developer Guide.</p> </li> </ul>"
        },
        "DbName": {
          "shape": "String",
          "documentation": "<p>The name of a database that <code>DbUser</code> is authorized to log on to. If <code>DbName</code> is not specified, <code>DbUser</code> can log on to any existing database.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 64 alphanumeric characters or hyphens</p> </li> <li> <p>Must contain only lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Must not contain a colon ( : ) or slash ( / ). </p> </li> <li> <p>Cannot be a reserved word. A list of reserved words can be found in <a href=\"http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words</a> in the Amazon Redshift Database Developer Guide.</p> </li> </ul>"
        },
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier of the cluster that contains the database for which your are requesting credentials. This parameter is case sensitive.</p>"
        },
        "DurationSeconds": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of seconds until the returned temporary password expires.</p> <p>Constraint: minimum 900, maximum 3600.</p> <p>Default: 900</p>"
        },
        "AutoCreate": {
          "shape": "BooleanOptional",
          "documentation": "<p>Create a database user with the name specified for the user named in <code>DbUser</code> if one does not exist.</p>"
        },
        "DbGroups": {
          "shape": "DbGroupList",
          "documentation": "<p>A list of the names of existing database groups that the user named in <code>DbUser</code> will join for the current session, in addition to any group memberships for an existing user. If not specified, a new user is added only to PUBLIC.</p> <p>Database group name constraints</p> <ul> <li> <p>Must be 1 to 64 alphanumeric characters or hyphens</p> </li> <li> <p>Must contain only lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Must not contain a colon ( : ) or slash ( / ). </p> </li> <li> <p>Cannot be a reserved word. A list of reserved words can be found in <a href=\"http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words</a> in the Amazon Redshift Database Developer Guide.</p> </li> </ul>"
        }
      },
      "documentation": "<p>The request parameters to get cluster credentials.</p>"
    },
    "GetReservedNodeExchangeOfferingsInputMessage": {
      "type": "structure",
      "required": [
        "ReservedNodeId"
      ],
      "members": {
        "ReservedNodeId": {
          "shape": "String",
          "documentation": "<p>A string representing the node identifier for the DC1 Reserved Node to be exchanged.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>An integer setting the maximum number of ReservedNodeOfferings to retrieve.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of ReservedNodeOfferings.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetReservedNodeExchangeOfferingsOutputMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point for returning a set of response records. When the results of a <code>GetReservedNodeExchangeOfferings</code> request exceed the value specified in MaxRecords, Amazon Redshift returns a value in the marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the marker parameter and retrying the request. </p>"
        },
        "ReservedNodeOfferings": {
          "shape": "ReservedNodeOfferingList",
          "documentation": "<p>Returns an array of <a>ReservedNodeOffering</a> objects.</p>"
        }
      }
    },
    "HsmClientCertificate": {
      "type": "structure",
      "members": {
        "HsmClientCertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the HSM client certificate.</p>"
        },
        "HsmClientCertificatePublicKey": {
          "shape": "String",
          "documentation": "<p>The public key that the Amazon Redshift cluster will use to connect to the HSM. You must register the public key in the HSM.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags for the HSM client certificate.</p>"
        }
      },
      "documentation": "<p>Returns information about an HSM client certificate. The certificate is stored in a secure Hardware Storage Module (HSM), and used by the Amazon Redshift cluster to encrypt data files.</p>",
      "wrapper": true
    },
    "HsmClientCertificateList": {
      "type": "list",
      "member": {
        "shape": "HsmClientCertificate",
        "locationName": "HsmClientCertificate"
      }
    },
    "HsmClientCertificateMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        },
        "HsmClientCertificates": {
          "shape": "HsmClientCertificateList",
          "documentation": "<p>A list of the identifiers for one or more HSM client certificates used by Amazon Redshift clusters to store and retrieve database encryption keys in an HSM.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "HsmConfiguration": {
      "type": "structure",
      "members": {
        "HsmConfigurationIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon Redshift HSM configuration.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A text description of the HSM configuration.</p>"
        },
        "HsmIpAddress": {
          "shape": "String",
          "documentation": "<p>The IP address that the Amazon Redshift cluster must use to access the HSM.</p>"
        },
        "HsmPartitionName": {
          "shape": "String",
          "documentation": "<p>The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags for the HSM configuration.</p>"
        }
      },
      "documentation": "<p>Returns information about an HSM configuration, which is an object that describes to Amazon Redshift clusters the information they require to connect to an HSM where they can store database encryption keys.</p>",
      "wrapper": true
    },
    "HsmConfigurationList": {
      "type": "list",
      "member": {
        "shape": "HsmConfiguration",
        "locationName": "HsmConfiguration"
      }
    },
    "HsmConfigurationMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        },
        "HsmConfigurations": {
          "shape": "HsmConfigurationList",
          "documentation": "<p>A list of <code>HsmConfiguration</code> objects.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "HsmStatus": {
      "type": "structure",
      "members": {
        "HsmClientCertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.</p>"
        },
        "HsmConfigurationIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Reports whether the Amazon Redshift cluster has finished applying any HSM settings changes specified in a modify cluster command.</p> <p>Values: active, applying</p>"
        }
      },
      "documentation": "<p>Describes the status of changes to HSM settings.</p>"
    },
    "IPRange": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the IP range, for example, \"authorized\".</p>"
        },
        "CIDRIP": {
          "shape": "String",
          "documentation": "<p>The IP range in Classless Inter-Domain Routing (CIDR) notation.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags for the IP range.</p>"
        }
      },
      "documentation": "<p>Describes an IP range used in a security group.</p>"
    },
    "IPRangeList": {
      "type": "list",
      "member": {
        "shape": "IPRange",
        "locationName": "IPRange"
      }
    },
    "IamRoleArnList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "IamRoleArn"
      }
    },
    "ImportTablesCompleted": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ImportTablesInProgress": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ImportTablesNotStarted": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "Integer": {
      "type": "integer"
    },
    "IntegerOptional": {
      "type": "integer"
    },
    "LoggingStatus": {
      "type": "structure",
      "members": {
        "LoggingEnabled": {
          "shape": "Boolean",
          "documentation": "<p> <code>true</code> if logging is on, <code>false</code> if logging is off.</p>"
        },
        "BucketName": {
          "shape": "String",
          "documentation": "<p>The name of the S3 bucket where the log files are stored.</p>"
        },
        "S3KeyPrefix": {
          "shape": "String",
          "documentation": "<p>The prefix applied to the log file names.</p>"
        },
        "LastSuccessfulDeliveryTime": {
          "shape": "TStamp",
          "documentation": "<p>The last time that logs were delivered.</p>"
        },
        "LastFailureTime": {
          "shape": "TStamp",
          "documentation": "<p>The last time when logs failed to be delivered.</p>"
        },
        "LastFailureMessage": {
          "shape": "String",
          "documentation": "<p>The message indicating that logs failed to be delivered.</p>"
        }
      },
      "documentation": "<p>Describes the status of logging for a cluster.</p>"
    },
    "Long": {
      "type": "long"
    },
    "LongOptional": {
      "type": "long"
    },
    "MaintenanceTrack": {
      "type": "structure",
      "members": {
        "MaintenanceTrackName": {
          "shape": "String",
          "documentation": "<p>The name of the maintenance track. Possible values are <code>current</code> and <code>trailing</code>.</p>"
        },
        "DatabaseVersion": {
          "shape": "String",
          "documentation": "<p>The version number for the cluster release.</p>"
        },
        "UpdateTargets": {
          "shape": "EligibleTracksToUpdateList",
          "documentation": "<p>An array of <a>UpdateTarget</a> objects to update with the maintenance track. </p>"
        }
      },
      "documentation": "<p>Defines a maintenance track that determines which Amazon Redshift version to apply during a maintenance window. If the value for <code>MaintenanceTrack</code> is <code>current</code>, the cluster is updated to the most recently certified maintenance release. If the value is <code>trailing</code>, the cluster is updated to the previously certified maintenance release. </p>"
    },
    "Mode": {
      "type": "string",
      "enum": [
        "standard",
        "high-performance"
      ]
    },
    "ModifyClusterDbRevisionMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier",
        "RevisionTarget"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier of a cluster whose database revision you want to modify. </p> <p>Example: <code>examplecluster</code> </p>"
        },
        "RevisionTarget": {
          "shape": "String",
          "documentation": "<p>The identifier of the database revision. You can retrieve this value from the response to the <a>DescribeClusterDbRevisions</a> request.</p>"
        }
      }
    },
    "ModifyClusterDbRevisionResult": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster"
        }
      }
    },
    "ModifyClusterIamRolesMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier of the cluster for which you want to associate or disassociate IAM roles.</p>"
        },
        "AddIamRoles": {
          "shape": "IamRoleArnList",
          "documentation": "<p>Zero or more IAM roles to associate with the cluster. The roles must be in their Amazon Resource Name (ARN) format. You can associate up to 10 IAM roles with a single cluster in a single request.</p>"
        },
        "RemoveIamRoles": {
          "shape": "IamRoleArnList",
          "documentation": "<p>Zero or more IAM roles in ARN format to disassociate from the cluster. You can disassociate up to 10 IAM roles from a single cluster in a single request.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyClusterIamRolesResult": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster"
        }
      }
    },
    "ModifyClusterMaintenanceMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the cluster.</p>"
        },
        "DeferMaintenance": {
          "shape": "BooleanOptional",
          "documentation": "<p>A boolean indicating whether to enable the deferred maintenance window. </p>"
        },
        "DeferMaintenanceIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the deferred maintenance window.</p>"
        },
        "DeferMaintenanceStartTime": {
          "shape": "TStamp",
          "documentation": "<p>A timestamp indicating the start time for the deferred maintenance window.</p>"
        },
        "DeferMaintenanceEndTime": {
          "shape": "TStamp",
          "documentation": "<p>A timestamp indicating end time for the deferred maintenance window. If you specify an end time, you can't specify a duration.</p>"
        },
        "DeferMaintenanceDuration": {
          "shape": "IntegerOptional",
          "documentation": "<p>An integer indicating the duration of the maintenance window in days. If you specify a duration, you can't specify an end time. The duration must be 45 days or less.</p>"
        }
      }
    },
    "ModifyClusterMaintenanceResult": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster"
        }
      }
    },
    "ModifyClusterMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier of the cluster to be modified.</p> <p>Example: <code>examplecluster</code> </p>"
        },
        "ClusterType": {
          "shape": "String",
          "documentation": "<p>The new cluster type.</p> <p>When you submit your cluster resize request, your existing cluster goes into a read-only mode. After Amazon Redshift provisions a new cluster based on your resize requirements, there will be outage for a period while the old cluster is deleted and your connection is switched to the new cluster. You can use <a>DescribeResize</a> to track the progress of the resize request. </p> <p>Valid Values: <code> multi-node | single-node </code> </p>"
        },
        "NodeType": {
          "shape": "String",
          "documentation": "<p>The new node type of the cluster. If you specify a new node type, you must also specify the number of nodes parameter.</p> <p> For more information about resizing clusters, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html\">Resizing Clusters in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>Valid Values: <code>ds2.xlarge</code> | <code>ds2.8xlarge</code> | <code>dc1.large</code> | <code>dc1.8xlarge</code> | <code>dc2.large</code> | <code>dc2.8xlarge</code> | <code>ra3.4xlarge</code> | <code>ra3.16xlarge</code> </p>"
        },
        "NumberOfNodes": {
          "shape": "IntegerOptional",
          "documentation": "<p>The new number of nodes of the cluster. If you specify a new number of nodes, you must also specify the node type parameter.</p> <p> For more information about resizing clusters, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html\">Resizing Clusters in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>Valid Values: Integer greater than <code>0</code>.</p>"
        },
        "ClusterSecurityGroups": {
          "shape": "ClusterSecurityGroupNameList",
          "documentation": "<p>A list of cluster security groups to be authorized on this cluster. This change is asynchronously applied as soon as possible.</p> <p>Security groups currently associated with the cluster, and not in the list of groups to apply, will be revoked from the cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of virtual private cloud (VPC) security groups to be associated with the cluster. This change is asynchronously applied as soon as possible.</p>"
        },
        "MasterUserPassword": {
          "shape": "String",
          "documentation": "<p>The new password for the cluster master user. This change is asynchronously applied as soon as possible. Between the time of the request and the completion of the request, the <code>MasterUserPassword</code> element exists in the <code>PendingModifiedValues</code> element of the operation response. </p> <note> <p>Operations never return the password, so this operation provides a way to regain access to the master user account for a cluster if the password is lost.</p> </note> <p>Default: Uses existing setting.</p> <p>Constraints:</p> <ul> <li> <p>Must be between 8 and 64 characters in length.</p> </li> <li> <p>Must contain at least one uppercase letter.</p> </li> <li> <p>Must contain at least one lowercase letter.</p> </li> <li> <p>Must contain one number.</p> </li> <li> <p>Can be any printable ASCII character (ASCII code 33 to 126) except ' (single quote), \" (double quote), \\, /, @, or space.</p> </li> </ul>"
        },
        "ClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group to apply to this cluster. This change is applied only after the cluster is rebooted. To reboot a cluster use <a>RebootCluster</a>. </p> <p>Default: Uses existing setting.</p> <p>Constraints: The cluster parameter group must be in the same parameter group family that matches the cluster version.</p>"
        },
        "AutomatedSnapshotRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p> <p>If you decrease the automated snapshot retention period from its current value, existing automated snapshots that fall outside of the new retention period will be immediately deleted.</p> <p>Default: Uses existing setting.</p> <p>Constraints: Must be a value from 0 to 35.</p>"
        },
        "ManualSnapshotRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The default for number of days that a newly created manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely. This value doesn't retroactively change the retention periods of existing manual snapshots.</p> <p>The value must be either -1 or an integer between 1 and 3,653.</p> <p>The default value is -1.</p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The weekly time range (in UTC) during which system maintenance can occur, if necessary. If system maintenance is necessary during the window, it may result in an outage.</p> <p>This maintenance window change is made immediately. If the new maintenance window indicates the current time, there must be at least 120 minutes between the current time and end of the window in order to ensure that pending changes are applied.</p> <p>Default: Uses existing setting.</p> <p>Format: ddd:hh24:mi-ddd:hh24:mi, for example <code>wed:07:30-wed:08:00</code>.</p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Must be at least 30 minutes.</p>"
        },
        "ClusterVersion": {
          "shape": "String",
          "documentation": "<p>The new version number of the Amazon Redshift engine to upgrade to.</p> <p>For major version upgrades, if a non-default cluster parameter group is currently in use, a new cluster parameter group in the cluster parameter group family for the new version must be specified. The new cluster parameter group can be the default for that cluster parameter group family. For more information about parameters and parameter groups, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>Example: <code>1.0</code> </p>"
        },
        "AllowVersionUpgrade": {
          "shape": "BooleanOptional",
          "documentation": "<p>If <code>true</code>, major version upgrades will be applied automatically to the cluster during the maintenance window. </p> <p>Default: <code>false</code> </p>"
        },
        "HsmClientCertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.</p>"
        },
        "HsmConfigurationIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>"
        },
        "NewClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The new identifier for the cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>Alphabetic characters must be lowercase.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique for all clusters within an AWS account.</p> </li> </ul> <p>Example: <code>examplecluster</code> </p>"
        },
        "PubliclyAccessible": {
          "shape": "BooleanOptional",
          "documentation": "<p>If <code>true</code>, the cluster can be accessed from a public network. Only clusters in VPCs can be set to be publicly available.</p>"
        },
        "ElasticIp": {
          "shape": "String",
          "documentation": "<p>The Elastic IP (EIP) address for the cluster.</p> <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible through an Internet gateway. For more information about provisioning clusters in EC2-VPC, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms\">Supported Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>"
        },
        "EnhancedVpcRouting": {
          "shape": "BooleanOptional",
          "documentation": "<p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>"
        },
        "MaintenanceTrackName": {
          "shape": "String",
          "documentation": "<p>The name for the maintenance track that you want to assign for the cluster. This name change is asynchronous. The new track name stays in the <code>PendingModifiedValues</code> for the cluster until the next maintenance window. When the maintenance track changes, the cluster is switched to the latest cluster release available for the maintenance track. At this point, the maintenance track name is applied.</p>"
        },
        "Encrypted": {
          "shape": "BooleanOptional",
          "documentation": "<p>Indicates whether the cluster is encrypted. If the value is encrypted (true) and you provide a value for the <code>KmsKeyId</code> parameter, we encrypt the cluster with the provided <code>KmsKeyId</code>. If you don't provide a <code>KmsKeyId</code>, we encrypt with the default key. </p> <p>If the value is not encrypted (false), then the cluster is decrypted. </p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyClusterParameterGroupMessage": {
      "type": "structure",
      "required": [
        "ParameterGroupName",
        "Parameters"
      ],
      "members": {
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the parameter group to be modified.</p>"
        },
        "Parameters": {
          "shape": "ParametersList",
          "documentation": "<p>An array of parameters to be modified. A maximum of 20 parameters can be modified in a single request.</p> <p>For each parameter to be modified, you must supply at least the parameter name and parameter value; other name-value pairs of the parameter are optional.</p> <p>For the workload management (WLM) configuration, you must supply all the name-value pairs in the wlm_json_configuration parameter.</p>"
        }
      },
      "documentation": "<p>Describes a modify cluster parameter group operation. </p>"
    },
    "ModifyClusterResult": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster"
        }
      }
    },
    "ModifyClusterSnapshotMessage": {
      "type": "structure",
      "required": [
        "SnapshotIdentifier"
      ],
      "members": {
        "SnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the snapshot whose setting you want to modify.</p>"
        },
        "ManualSnapshotRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely.</p> <p>If the manual snapshot falls outside of the new retention period, you can specify the force option to immediately delete the snapshot.</p> <p>The value must be either -1 or an integer between 1 and 3,653.</p>"
        },
        "Force": {
          "shape": "Boolean",
          "documentation": "<p>A Boolean option to override an exception if the retention period has already passed.</p>"
        }
      }
    },
    "ModifyClusterSnapshotResult": {
      "type": "structure",
      "members": {
        "Snapshot": {
          "shape": "Snapshot"
        }
      }
    },
    "ModifyClusterSnapshotScheduleMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the cluster whose snapshot schedule you want to modify. </p>"
        },
        "ScheduleIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique alphanumeric identifier for the schedule that you want to associate with the cluster.</p>"
        },
        "DisassociateSchedule": {
          "shape": "BooleanOptional",
          "documentation": "<p>A boolean to indicate whether to remove the assoiciation between the cluster and the schedule.</p>"
        }
      }
    },
    "ModifyClusterSubnetGroupMessage": {
      "type": "structure",
      "required": [
        "ClusterSubnetGroupName",
        "SubnetIds"
      ],
      "members": {
        "ClusterSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the subnet group to be modified.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A text description of the subnet group to be modified.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIdentifierList",
          "documentation": "<p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single request.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyClusterSubnetGroupResult": {
      "type": "structure",
      "members": {
        "ClusterSubnetGroup": {
          "shape": "ClusterSubnetGroup"
        }
      }
    },
    "ModifyEventSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String",
          "documentation": "<p>The name of the modified Amazon Redshift event notification subscription.</p>"
        },
        "SnsTopicArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the SNS topic to be used by the event notification subscription.</p>"
        },
        "SourceType": {
          "shape": "String",
          "documentation": "<p>The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs.</p> <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.</p>"
        },
        "SourceIds": {
          "shape": "SourceIdsList",
          "documentation": "<p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified.</p> <p>Example: my-cluster-1, my-cluster-2</p> <p>Example: my-snapshot-20131010</p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p>Specifies the Amazon Redshift event categories to be published by the event notification subscription.</p> <p>Values: configuration, management, monitoring, security</p>"
        },
        "Severity": {
          "shape": "String",
          "documentation": "<p>Specifies the Amazon Redshift event severity to be published by the event notification subscription.</p> <p>Values: ERROR, INFO</p>"
        },
        "Enabled": {
          "shape": "BooleanOptional",
          "documentation": "<p>A Boolean value indicating if the subscription is enabled. <code>true</code> indicates the subscription is enabled </p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyEventSubscriptionResult": {
      "type": "structure",
      "members": {
        "EventSubscription": {
          "shape": "EventSubscription"
        }
      }
    },
    "ModifyScheduledActionMessage": {
      "type": "structure",
      "required": [
        "ScheduledActionName"
      ],
      "members": {
        "ScheduledActionName": {
          "shape": "String",
          "documentation": "<p>The name of the scheduled action to modify. </p>"
        },
        "TargetAction": {
          "shape": "ScheduledActionType",
          "documentation": "<p>A modified JSON format of the scheduled action. For more information about this parameter, see <a>ScheduledAction</a>. </p>"
        },
        "Schedule": {
          "shape": "String",
          "documentation": "<p>A modified schedule in either <code>at( )</code> or <code>cron( )</code> format. For more information about this parameter, see <a>ScheduledAction</a>.</p>"
        },
        "IamRole": {
          "shape": "String",
          "documentation": "<p>A different IAM role to assume to run the target action. For more information about this parameter, see <a>ScheduledAction</a>.</p>"
        },
        "ScheduledActionDescription": {
          "shape": "String",
          "documentation": "<p>A modified description of the scheduled action. </p>"
        },
        "StartTime": {
          "shape": "TStamp",
          "documentation": "<p>A modified start time of the scheduled action. For more information about this parameter, see <a>ScheduledAction</a>. </p>"
        },
        "EndTime": {
          "shape": "TStamp",
          "documentation": "<p>A modified end time of the scheduled action. For more information about this parameter, see <a>ScheduledAction</a>. </p>"
        },
        "Enable": {
          "shape": "BooleanOptional",
          "documentation": "<p>A modified enable flag of the scheduled action. If true, the scheduled action is active. If false, the scheduled action is disabled. </p>"
        }
      }
    },
    "ModifySnapshotCopyRetentionPeriodMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier",
        "RetentionPeriod"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier of the cluster for which you want to change the retention period for either automated or manual snapshots that are copied to a destination AWS Region.</p> <p>Constraints: Must be the valid name of an existing cluster that has cross-region snapshot copy enabled.</p>"
        },
        "RetentionPeriod": {
          "shape": "Integer",
          "documentation": "<p>The number of days to retain automated snapshots in the destination AWS Region after they are copied from the source AWS Region.</p> <p>By default, this only changes the retention period of copied automated snapshots. </p> <p>If you decrease the retention period for automated snapshots that are copied to a destination AWS Region, Amazon Redshift deletes any existing automated snapshots that were copied to the destination AWS Region and that fall outside of the new retention period.</p> <p>Constraints: Must be at least 1 and no more than 35 for automated snapshots. </p> <p>If you specify the <code>manual</code> option, only newly copied manual snapshots will have the new retention period. </p> <p>If you specify the value of -1 newly copied manual snapshots are retained indefinitely.</p> <p>Constraints: The number of days must be either -1 or an integer between 1 and 3,653 for manual snapshots.</p>"
        },
        "Manual": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether to apply the snapshot retention period to newly copied manual snapshots instead of automated snapshots.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifySnapshotCopyRetentionPeriodResult": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster"
        }
      }
    },
    "ModifySnapshotScheduleMessage": {
      "type": "structure",
      "required": [
        "ScheduleIdentifier",
        "ScheduleDefinitions"
      ],
      "members": {
        "ScheduleIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique alphanumeric identifier of the schedule to modify.</p>"
        },
        "ScheduleDefinitions": {
          "shape": "ScheduleDefinitionList",
          "documentation": "<p>An updated list of schedule definitions. A schedule definition is made up of schedule expressions, for example, \"cron(30 12 *)\" or \"rate(12 hours)\".</p>"
        }
      }
    },
    "ModifyUsageLimitMessage": {
      "type": "structure",
      "required": [
        "UsageLimitId"
      ],
      "members": {
        "UsageLimitId": {
          "shape": "String",
          "documentation": "<p>The identifier of the usage limit to modify.</p>"
        },
        "Amount": {
          "shape": "LongOptional",
          "documentation": "<p>The new limit amount. For more information about this parameter, see <a>UsageLimit</a>. </p>"
        },
        "BreachAction": {
          "shape": "UsageLimitBreachAction",
          "documentation": "<p>The new action that Amazon Redshift takes when the limit is reached. For more information about this parameter, see <a>UsageLimit</a>. </p>"
        }
      }
    },
    "NodeConfigurationOption": {
      "type": "structure",
      "members": {
        "NodeType": {
          "shape": "String",
          "documentation": "<p>The node type, such as, \"ds2.8xlarge\".</p>"
        },
        "NumberOfNodes": {
          "shape": "Integer",
          "documentation": "<p>The number of nodes.</p>"
        },
        "EstimatedDiskUtilizationPercent": {
          "shape": "DoubleOptional",
          "documentation": "<p>The estimated disk utilizaton percentage.</p>"
        },
        "Mode": {
          "shape": "Mode",
          "documentation": "<p>The category of the node configuration recommendation.</p>"
        }
      },
      "documentation": "<p>A list of node configurations.</p>"
    },
    "NodeConfigurationOptionList": {
      "type": "list",
      "member": {
        "shape": "NodeConfigurationOption",
        "locationName": "NodeConfigurationOption"
      }
    },
    "NodeConfigurationOptionsFilter": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NodeConfigurationOptionsFilterName",
          "documentation": "<p>The name of the element to filter.</p>"
        },
        "Operator": {
          "shape": "OperatorType",
          "documentation": "<p>The filter operator. If filter Name is NodeType only the 'in' operator is supported. Provide one value to evaluate for 'eq', 'lt', 'le', 'gt', and 'ge'. Provide two values to evaluate for 'between'. Provide a list of values for 'in'.</p>"
        },
        "Values": {
          "shape": "ValueStringList",
          "documentation": "<p>List of values. Compare Name using Operator to Values. If filter Name is NumberOfNodes, then values can range from 0 to 200. If filter Name is EstimatedDiskUtilizationPercent, then values can range from 0 to 100. For example, filter NumberOfNodes (name) GT (operator) 3 (values).</p>",
          "locationName": "Value"
        }
      },
      "documentation": "<p>A set of elements to filter the returned node configurations.</p>"
    },
    "NodeConfigurationOptionsFilterList": {
      "type": "list",
      "member": {
        "shape": "NodeConfigurationOptionsFilter",
        "locationName": "NodeConfigurationOptionsFilter"
      }
    },
    "NodeConfigurationOptionsFilterName": {
      "type": "string",
      "enum": [
        "NodeType",
        "NumberOfNodes",
        "EstimatedDiskUtilizationPercent",
        "Mode"
      ]
    },
    "NodeConfigurationOptionsMessage": {
      "type": "structure",
      "members": {
        "NodeConfigurationOptionList": {
          "shape": "NodeConfigurationOptionList",
          "documentation": "<p>A list of valid node configurations.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        }
      }
    },
    "OperatorType": {
      "type": "string",
      "enum": [
        "eq",
        "lt",
        "gt",
        "le",
        "ge",
        "in",
        "between"
      ]
    },
    "OrderableClusterOption": {
      "type": "structure",
      "members": {
        "ClusterVersion": {
          "shape": "String",
          "documentation": "<p>The version of the orderable cluster.</p>"
        },
        "ClusterType": {
          "shape": "String",
          "documentation": "<p>The cluster type, for example <code>multi-node</code>. </p>"
        },
        "NodeType": {
          "shape": "String",
          "documentation": "<p>The node type for the orderable cluster.</p>"
        },
        "AvailabilityZones": {
          "shape": "AvailabilityZoneList",
          "documentation": "<p>A list of availability zones for the orderable cluster.</p>"
        }
      },
      "documentation": "<p>Describes an orderable cluster option.</p>",
      "wrapper": true
    },
    "OrderableClusterOptionsList": {
      "type": "list",
      "member": {
        "shape": "OrderableClusterOption",
        "locationName": "OrderableClusterOption"
      }
    },
    "OrderableClusterOptionsMessage": {
      "type": "structure",
      "members": {
        "OrderableClusterOptions": {
          "shape": "OrderableClusterOptionsList",
          "documentation": "<p>An <code>OrderableClusterOption</code> structure containing information about orderable options for the cluster.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        }
      },
      "documentation": "<p>Contains the output from the <a>DescribeOrderableClusterOptions</a> action. </p>"
    },
    "Parameter": {
      "type": "structure",
      "members": {
        "ParameterName": {
          "shape": "String",
          "documentation": "<p>The name of the parameter.</p>"
        },
        "ParameterValue": {
          "shape": "String",
          "documentation": "<p>The value of the parameter.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the parameter.</p>"
        },
        "Source": {
          "shape": "String",
          "documentation": "<p>The source of the parameter value, such as \"engine-default\" or \"user\".</p>"
        },
        "DataType": {
          "shape": "String",
          "documentation": "<p>The data type of the parameter.</p>"
        },
        "AllowedValues": {
          "shape": "String",
          "documentation": "<p>The valid range of values for the parameter.</p>"
        },
        "ApplyType": {
          "shape": "ParameterApplyType",
          "documentation": "<p>Specifies how to apply the WLM configuration parameter. Some properties can be applied dynamically, while other properties require that any associated clusters be rebooted for the configuration changes to be applied. For more information about parameters and parameter groups, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"
        },
        "IsModifiable": {
          "shape": "Boolean",
          "documentation": "<p>If <code>true</code>, the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed. </p>"
        },
        "MinimumEngineVersion": {
          "shape": "String",
          "documentation": "<p>The earliest engine version to which the parameter can apply.</p>"
        }
      },
      "documentation": "<p>Describes a parameter in a cluster parameter group.</p>"
    },
    "ParameterApplyType": {
      "type": "string",
      "enum": [
        "static",
        "dynamic"
      ]
    },
    "ParameterGroupList": {
      "type": "list",
      "member": {
        "shape": "ClusterParameterGroup",
        "locationName": "ClusterParameterGroup"
      }
    },
    "ParametersList": {
      "type": "list",
      "member": {
        "shape": "Parameter",
        "locationName": "Parameter"
      }
    },
    "PauseClusterMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster to be paused.</p>"
        }
      },
      "documentation": "<p>Describes a pause cluster operation. For example, a scheduled action to run the <code>PauseCluster</code> API operation. </p>"
    },
    "PauseClusterResult": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster"
        }
      }
    },
    "PendingActionsList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "PendingModifiedValues": {
      "type": "structure",
      "members": {
        "MasterUserPassword": {
          "shape": "String",
          "documentation": "<p>The pending or in-progress change of the master user password for the cluster.</p>"
        },
        "NodeType": {
          "shape": "String",
          "documentation": "<p>The pending or in-progress change of the cluster's node type.</p>"
        },
        "NumberOfNodes": {
          "shape": "IntegerOptional",
          "documentation": "<p>The pending or in-progress change of the number of nodes in the cluster.</p>"
        },
        "ClusterType": {
          "shape": "String",
          "documentation": "<p>The pending or in-progress change of the cluster type.</p>"
        },
        "ClusterVersion": {
          "shape": "String",
          "documentation": "<p>The pending or in-progress change of the service version.</p>"
        },
        "AutomatedSnapshotRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The pending or in-progress change of the automated snapshot retention period.</p>"
        },
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The pending or in-progress change of the new identifier for the cluster.</p>"
        },
        "PubliclyAccessible": {
          "shape": "BooleanOptional",
          "documentation": "<p>The pending or in-progress change of the ability to connect to the cluster from the public network.</p>"
        },
        "EnhancedVpcRouting": {
          "shape": "BooleanOptional",
          "documentation": "<p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>"
        },
        "MaintenanceTrackName": {
          "shape": "String",
          "documentation": "<p>The name of the maintenance track that the cluster will change to during the next maintenance window.</p>"
        },
        "EncryptionType": {
          "shape": "String",
          "documentation": "<p>The encryption type for a cluster. Possible values are: KMS and None. </p>"
        }
      },
      "documentation": "<p>Describes cluster attributes that are in a pending state. A change to one or more the attributes was requested and is in progress or will be applied.</p>"
    },
    "PurchaseReservedNodeOfferingMessage": {
      "type": "structure",
      "required": [
        "ReservedNodeOfferingId"
      ],
      "members": {
        "ReservedNodeOfferingId": {
          "shape": "String",
          "documentation": "<p>The unique identifier of the reserved node offering you want to purchase.</p>"
        },
        "NodeCount": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of reserved nodes that you want to purchase.</p> <p>Default: <code>1</code> </p>"
        }
      },
      "documentation": "<p/>"
    },
    "PurchaseReservedNodeOfferingResult": {
      "type": "structure",
      "members": {
        "ReservedNode": {
          "shape": "ReservedNode"
        }
      }
    },
    "RebootClusterMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The cluster identifier.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "RebootClusterResult": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster"
        }
      }
    },
    "RecurringCharge": {
      "type": "structure",
      "members": {
        "RecurringChargeAmount": {
          "shape": "Double",
          "documentation": "<p>The amount charged per the period of time specified by the recurring charge frequency.</p>"
        },
        "RecurringChargeFrequency": {
          "shape": "String",
          "documentation": "<p>The frequency at which the recurring charge amount is applied.</p>"
        }
      },
      "documentation": "<p>Describes a recurring charge.</p>",
      "wrapper": true
    },
    "RecurringChargeList": {
      "type": "list",
      "member": {
        "shape": "RecurringCharge",
        "locationName": "RecurringCharge"
      }
    },
    "ReservedNode": {
      "type": "structure",
      "members": {
        "ReservedNodeId": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the reservation.</p>"
        },
        "ReservedNodeOfferingId": {
          "shape": "String",
          "documentation": "<p>The identifier for the reserved node offering.</p>"
        },
        "NodeType": {
          "shape": "String",
          "documentation": "<p>The node type of the reserved node.</p>"
        },
        "StartTime": {
          "shape": "TStamp",
          "documentation": "<p>The time the reservation started. You purchase a reserved node offering for a duration. This is the start time of that duration.</p>"
        },
        "Duration": {
          "shape": "Integer",
          "documentation": "<p>The duration of the node reservation in seconds.</p>"
        },
        "FixedPrice": {
          "shape": "Double",
          "documentation": "<p>The fixed cost Amazon Redshift charges you for this reserved node.</p>"
        },
        "UsagePrice": {
          "shape": "Double",
          "documentation": "<p>The hourly rate Amazon Redshift charges you for this reserved node.</p>"
        },
        "CurrencyCode": {
          "shape": "String",
          "documentation": "<p>The currency code for the reserved cluster.</p>"
        },
        "NodeCount": {
          "shape": "Integer",
          "documentation": "<p>The number of reserved compute nodes.</p>"
        },
        "State": {
          "shape": "String",
          "documentation": "<p>The state of the reserved compute node.</p> <p>Possible Values:</p> <ul> <li> <p>pending-payment-This reserved node has recently been purchased, and the sale has been approved, but payment has not yet been confirmed.</p> </li> <li> <p>active-This reserved node is owned by the caller and is available for use.</p> </li> <li> <p>payment-failed-Payment failed for the purchase attempt.</p> </li> <li> <p>retired-The reserved node is no longer available. </p> </li> <li> <p>exchanging-The owner is exchanging the reserved node for another reserved node.</p> </li> </ul>"
        },
        "OfferingType": {
          "shape": "String",
          "documentation": "<p>The anticipated utilization of the reserved node, as defined in the reserved node offering.</p>"
        },
        "RecurringCharges": {
          "shape": "RecurringChargeList",
          "documentation": "<p>The recurring charges for the reserved node.</p>"
        },
        "ReservedNodeOfferingType": {
          "shape": "ReservedNodeOfferingType",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p>Describes a reserved node. You can call the <a>DescribeReservedNodeOfferings</a> API to obtain the available reserved node offerings. </p>",
      "wrapper": true
    },
    "ReservedNodeList": {
      "type": "list",
      "member": {
        "shape": "ReservedNode",
        "locationName": "ReservedNode"
      }
    },
    "ReservedNodeOffering": {
      "type": "structure",
      "members": {
        "ReservedNodeOfferingId": {
          "shape": "String",
          "documentation": "<p>The offering identifier.</p>"
        },
        "NodeType": {
          "shape": "String",
          "documentation": "<p>The node type offered by the reserved node offering.</p>"
        },
        "Duration": {
          "shape": "Integer",
          "documentation": "<p>The duration, in seconds, for which the offering will reserve the node.</p>"
        },
        "FixedPrice": {
          "shape": "Double",
          "documentation": "<p>The upfront fixed charge you will pay to purchase the specific reserved node offering.</p>"
        },
        "UsagePrice": {
          "shape": "Double",
          "documentation": "<p>The rate you are charged for each hour the cluster that is using the offering is running.</p>"
        },
        "CurrencyCode": {
          "shape": "String",
          "documentation": "<p>The currency code for the compute nodes offering.</p>"
        },
        "OfferingType": {
          "shape": "String",
          "documentation": "<p>The anticipated utilization of the reserved node, as defined in the reserved node offering.</p>"
        },
        "RecurringCharges": {
          "shape": "RecurringChargeList",
          "documentation": "<p>The charge to your account regardless of whether you are creating any clusters using the node offering. Recurring charges are only in effect for heavy-utilization reserved nodes.</p>"
        },
        "ReservedNodeOfferingType": {
          "shape": "ReservedNodeOfferingType",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p>Describes a reserved node offering.</p>",
      "wrapper": true
    },
    "ReservedNodeOfferingList": {
      "type": "list",
      "member": {
        "shape": "ReservedNodeOffering",
        "locationName": "ReservedNodeOffering"
      }
    },
    "ReservedNodeOfferingType": {
      "type": "string",
      "enum": [
        "Regular",
        "Upgradable"
      ]
    },
    "ReservedNodeOfferingsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        },
        "ReservedNodeOfferings": {
          "shape": "ReservedNodeOfferingList",
          "documentation": "<p>A list of <code>ReservedNodeOffering</code> objects.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ReservedNodesMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        },
        "ReservedNodes": {
          "shape": "ReservedNodeList",
          "documentation": "<p>The list of <code>ReservedNode</code> objects.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ResetClusterParameterGroupMessage": {
      "type": "structure",
      "required": [
        "ParameterGroupName"
      ],
      "members": {
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group to be reset.</p>"
        },
        "ResetAllParameters": {
          "shape": "Boolean",
          "documentation": "<p>If <code>true</code>, all parameters in the specified parameter group will be reset to their default values. </p> <p>Default: <code>true</code> </p>"
        },
        "Parameters": {
          "shape": "ParametersList",
          "documentation": "<p>An array of names of parameters to be reset. If <i>ResetAllParameters</i> option is not used, then at least one parameter name must be supplied. </p> <p>Constraints: A maximum of 20 parameters can be reset in a single request.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ResizeClusterMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the cluster to resize.</p>"
        },
        "ClusterType": {
          "shape": "String",
          "documentation": "<p>The new cluster type for the specified cluster.</p>"
        },
        "NodeType": {
          "shape": "String",
          "documentation": "<p>The new node type for the nodes you are adding. If not specified, the cluster's current node type is used.</p>"
        },
        "NumberOfNodes": {
          "shape": "Integer",
          "documentation": "<p>The new number of nodes for the cluster. If not specified, the cluster's current number of nodes is used.</p>"
        },
        "Classic": {
          "shape": "BooleanOptional",
          "documentation": "<p>A boolean value indicating whether the resize operation is using the classic resize process. If you don't provide this parameter or set the value to <code>false</code>, the resize type is elastic. </p>"
        }
      },
      "documentation": "<p>Describes a resize cluster operation. For example, a scheduled action to run the <code>ResizeCluster</code> API operation. </p>"
    },
    "ResizeClusterResult": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster"
        }
      }
    },
    "ResizeInfo": {
      "type": "structure",
      "members": {
        "ResizeType": {
          "shape": "String",
          "documentation": "<p>Returns the value <code>ClassicResize</code>.</p>"
        },
        "AllowCancelResize": {
          "shape": "Boolean",
          "documentation": "<p>A boolean value indicating if the resize operation can be cancelled.</p>"
        }
      },
      "documentation": "<p>Describes a resize operation.</p>"
    },
    "ResizeProgressMessage": {
      "type": "structure",
      "members": {
        "TargetNodeType": {
          "shape": "String",
          "documentation": "<p>The node type that the cluster will have after the resize operation is complete.</p>"
        },
        "TargetNumberOfNodes": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of nodes that the cluster will have after the resize operation is complete.</p>"
        },
        "TargetClusterType": {
          "shape": "String",
          "documentation": "<p>The cluster type after the resize operation is complete.</p> <p>Valid Values: <code>multi-node</code> | <code>single-node</code> </p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the resize operation.</p> <p>Valid Values: <code>NONE</code> | <code>IN_PROGRESS</code> | <code>FAILED</code> | <code>SUCCEEDED</code> | <code>CANCELLING</code> </p>"
        },
        "ImportTablesCompleted": {
          "shape": "ImportTablesCompleted",
          "documentation": "<p>The names of tables that have been completely imported .</p> <p>Valid Values: List of table names.</p>"
        },
        "ImportTablesInProgress": {
          "shape": "ImportTablesInProgress",
          "documentation": "<p>The names of tables that are being currently imported.</p> <p>Valid Values: List of table names.</p>"
        },
        "ImportTablesNotStarted": {
          "shape": "ImportTablesNotStarted",
          "documentation": "<p>The names of tables that have not been yet imported.</p> <p>Valid Values: List of table names</p>"
        },
        "AvgResizeRateInMegaBytesPerSecond": {
          "shape": "DoubleOptional",
          "documentation": "<p>The average rate of the resize operation over the last few minutes, measured in megabytes per second. After the resize operation completes, this value shows the average rate of the entire resize operation.</p>"
        },
        "TotalResizeDataInMegaBytes": {
          "shape": "LongOptional",
          "documentation": "<p>The estimated total amount of data, in megabytes, on the cluster before the resize operation began.</p>"
        },
        "ProgressInMegaBytes": {
          "shape": "LongOptional",
          "documentation": "<p>While the resize operation is in progress, this value shows the current amount of data, in megabytes, that has been processed so far. When the resize operation is complete, this value shows the total amount of data, in megabytes, on the cluster, which may be more or less than TotalResizeDataInMegaBytes (the estimated total amount of data before resize).</p>"
        },
        "ElapsedTimeInSeconds": {
          "shape": "LongOptional",
          "documentation": "<p>The amount of seconds that have elapsed since the resize operation began. After the resize operation completes, this value shows the total actual time, in seconds, for the resize operation.</p>"
        },
        "EstimatedTimeToCompletionInSeconds": {
          "shape": "LongOptional",
          "documentation": "<p>The estimated time remaining, in seconds, until the resize operation is complete. This value is calculated based on the average resize rate and the estimated amount of data remaining to be processed. Once the resize operation is complete, this value will be 0.</p>"
        },
        "ResizeType": {
          "shape": "String",
          "documentation": "<p>An enum with possible values of <code>ClassicResize</code> and <code>ElasticResize</code>. These values describe the type of resize operation being performed. </p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>An optional string to provide additional details about the resize action.</p>"
        },
        "TargetEncryptionType": {
          "shape": "String",
          "documentation": "<p>The type of encryption for the cluster after the resize is complete.</p> <p>Possible values are <code>KMS</code> and <code>None</code>. </p>"
        },
        "DataTransferProgressPercent": {
          "shape": "DoubleOptional",
          "documentation": "<p>The percent of data transferred from source cluster to target cluster.</p>"
        }
      },
      "documentation": "<p>Describes the result of a cluster resize operation.</p>"
    },
    "RestorableNodeTypeList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "NodeType"
      }
    },
    "RestoreFromClusterSnapshotMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier",
        "SnapshotIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster that will be created from restoring the snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>Alphabetic characters must be lowercase.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique for all clusters within an AWS account.</p> </li> </ul>"
        },
        "SnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the snapshot from which to create the new cluster. This parameter isn't case sensitive.</p> <p>Example: <code>my-snapshot-id</code> </p>"
        },
        "SnapshotClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the cluster accepts connections.</p> <p>Default: The same port as the original cluster.</p> <p>Constraints: Must be between <code>1115</code> and <code>65535</code>.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The Amazon EC2 Availability Zone in which to restore the cluster.</p> <p>Default: A random, system-chosen Availability Zone.</p> <p>Example: <code>us-east-2a</code> </p>"
        },
        "AllowVersionUpgrade": {
          "shape": "BooleanOptional",
          "documentation": "<p>If <code>true</code>, major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. </p> <p>Default: <code>true</code> </p>"
        },
        "ClusterSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the subnet group where you want to cluster restored.</p> <p>A snapshot of cluster in VPC can be restored only in VPC. Therefore, you must provide subnet group name where you want the cluster restored.</p>"
        },
        "PubliclyAccessible": {
          "shape": "BooleanOptional",
          "documentation": "<p>If <code>true</code>, the cluster can be accessed from a public network. </p>"
        },
        "OwnerAccount": {
          "shape": "String",
          "documentation": "<p>The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.</p>"
        },
        "HsmClientCertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.</p>"
        },
        "HsmConfigurationIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>"
        },
        "ElasticIp": {
          "shape": "String",
          "documentation": "<p>The elastic IP (EIP) address for the cluster.</p>"
        },
        "ClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the parameter group to be associated with this cluster.</p> <p>Default: The default Amazon Redshift cluster parameter group. For information about the default parameter group, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Working with Amazon Redshift Parameter Groups</a>.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "ClusterSecurityGroups": {
          "shape": "ClusterSecurityGroupNameList",
          "documentation": "<p>A list of security groups to be associated with this cluster.</p> <p>Default: The default cluster security group for Amazon Redshift.</p> <p>Cluster security groups only apply to clusters outside of VPCs.</p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.</p> <p>Default: The default VPC security group is associated with the cluster.</p> <p>VPC security groups only apply to clusters in VPCs.</p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The weekly time range (in UTC) during which automated cluster maintenance can occur.</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p> Default: The value selected for the cluster from which the snapshot was taken. For more information about the time blocks for each region, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows\">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide. </p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Minimum 30-minute window.</p>"
        },
        "AutomatedSnapshotRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p> <p>Default: The value selected for the cluster from which the snapshot was taken.</p> <p>Constraints: Must be a value from 0 to 35.</p>"
        },
        "ManualSnapshotRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The default number of days to retain a manual snapshot. If the value is -1, the snapshot is retained indefinitely. This setting doesn't change the retention period of existing snapshots.</p> <p>The value must be either -1 or an integer between 1 and 3,653.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster that you restore from a shared snapshot.</p>"
        },
        "NodeType": {
          "shape": "String",
          "documentation": "<p>The node type that the restored cluster will be provisioned with.</p> <p>Default: The node type of the cluster from which the snapshot was taken. You can modify this if you are using any DS node type. In that case, you can choose to restore into another DS node type of the same size. For example, you can restore ds1.8xlarge into ds2.8xlarge, or ds1.xlarge into ds2.xlarge. If you have a DC instance type, you must restore into that same instance type and size. In other words, you can only restore a dc1.large instance type into another dc1.large instance type or dc2.large instance type. You can't restore dc1.8xlarge to dc2.8xlarge. First restore to a dc1.8xlarge cluster, then resize to a dc2.8large cluster. For more information about node types, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes\"> About Clusters and Nodes</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>"
        },
        "EnhancedVpcRouting": {
          "shape": "BooleanOptional",
          "documentation": "<p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>"
        },
        "AdditionalInfo": {
          "shape": "String",
          "documentation": "<p>Reserved.</p>"
        },
        "IamRoles": {
          "shape": "IamRoleArnList",
          "documentation": "<p>A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 10 IAM roles in a single request.</p> <p>A cluster can have up to 10 IAM roles associated at any time.</p>"
        },
        "MaintenanceTrackName": {
          "shape": "String",
          "documentation": "<p>The name of the maintenance track for the restored cluster. When you take a snapshot, the snapshot inherits the <code>MaintenanceTrack</code> value from the cluster. The snapshot might be on a different track than the cluster that was the source for the snapshot. For example, suppose that you take a snapshot of a cluster that is on the current track and then change the cluster to be on the trailing track. In this case, the snapshot and the source cluster are on different tracks.</p>"
        },
        "SnapshotScheduleIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the snapshot schedule.</p>"
        },
        "NumberOfNodes": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of nodes specified when provisioning the restored cluster.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "RestoreFromClusterSnapshotResult": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster"
        }
      }
    },
    "RestoreStatus": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the restore action. Returns starting, restoring, completed, or failed.</p>"
        },
        "CurrentRestoreRateInMegaBytesPerSecond": {
          "shape": "Double",
          "documentation": "<p>The number of megabytes per second being transferred from the backup storage. Returns the average rate for a completed backup. This field is only updated when you restore to DC2 and DS2 node types. </p>"
        },
        "SnapshotSizeInMegaBytes": {
          "shape": "Long",
          "documentation": "<p>The size of the set of snapshot data used to restore the cluster. This field is only updated when you restore to DC2 and DS2 node types. </p>"
        },
        "ProgressInMegaBytes": {
          "shape": "Long",
          "documentation": "<p>The number of megabytes that have been transferred from snapshot storage. This field is only updated when you restore to DC2 and DS2 node types. </p>"
        },
        "ElapsedTimeInSeconds": {
          "shape": "Long",
          "documentation": "<p>The amount of time an in-progress restore has been running, or the amount of time it took a completed restore to finish. This field is only updated when you restore to DC2 and DS2 node types. </p>"
        },
        "EstimatedTimeToCompletionInSeconds": {
          "shape": "Long",
          "documentation": "<p>The estimate of the time remaining before the restore will complete. Returns 0 for a completed restore. This field is only updated when you restore to DC2 and DS2 node types. </p>"
        }
      },
      "documentation": "<p>Describes the status of a cluster restore action. Returns null if the cluster was not created by restoring a snapshot.</p>"
    },
    "RestoreTableFromClusterSnapshotMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier",
        "SnapshotIdentifier",
        "SourceDatabaseName",
        "SourceTableName",
        "NewTableName"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the Amazon Redshift cluster to restore the table to.</p>"
        },
        "SnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the snapshot to restore the table from. This snapshot must have been created from the Amazon Redshift cluster specified by the <code>ClusterIdentifier</code> parameter.</p>"
        },
        "SourceDatabaseName": {
          "shape": "String",
          "documentation": "<p>The name of the source database that contains the table to restore from.</p>"
        },
        "SourceSchemaName": {
          "shape": "String",
          "documentation": "<p>The name of the source schema that contains the table to restore from. If you do not specify a <code>SourceSchemaName</code> value, the default is <code>public</code>.</p>"
        },
        "SourceTableName": {
          "shape": "String",
          "documentation": "<p>The name of the source table to restore from.</p>"
        },
        "TargetDatabaseName": {
          "shape": "String",
          "documentation": "<p>The name of the database to restore the table to.</p>"
        },
        "TargetSchemaName": {
          "shape": "String",
          "documentation": "<p>The name of the schema to restore the table to.</p>"
        },
        "NewTableName": {
          "shape": "String",
          "documentation": "<p>The name of the table to create as a result of the current request.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "RestoreTableFromClusterSnapshotResult": {
      "type": "structure",
      "members": {
        "TableRestoreStatus": {
          "shape": "TableRestoreStatus"
        }
      }
    },
    "ResumeClusterMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster to be resumed.</p>"
        }
      },
      "documentation": "<p>Describes a resume cluster operation. For example, a scheduled action to run the <code>ResumeCluster</code> API operation. </p>"
    },
    "ResumeClusterResult": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster"
        }
      }
    },
    "RevisionTarget": {
      "type": "structure",
      "members": {
        "DatabaseRevision": {
          "shape": "String",
          "documentation": "<p>A unique string that identifies the version to update the cluster to. You can use this value in <a>ModifyClusterDbRevision</a>.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A string that describes the changes and features that will be applied to the cluster when it is updated to the corresponding <a>ClusterDbRevision</a>.</p>"
        },
        "DatabaseRevisionReleaseDate": {
          "shape": "TStamp",
          "documentation": "<p>The date on which the database revision was released.</p>"
        }
      },
      "documentation": "<p>Describes a <code>RevisionTarget</code>.</p>"
    },
    "RevisionTargetsList": {
      "type": "list",
      "member": {
        "shape": "RevisionTarget",
        "locationName": "RevisionTarget"
      }
    },
    "RevokeClusterSecurityGroupIngressMessage": {
      "type": "structure",
      "required": [
        "ClusterSecurityGroupName"
      ],
      "members": {
        "ClusterSecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the security Group from which to revoke the ingress rule.</p>"
        },
        "CIDRIP": {
          "shape": "String",
          "documentation": "<p>The IP range for which to revoke access. This range must be a valid Classless Inter-Domain Routing (CIDR) block of IP addresses. If <code>CIDRIP</code> is specified, <code>EC2SecurityGroupName</code> and <code>EC2SecurityGroupOwnerId</code> cannot be provided. </p>"
        },
        "EC2SecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the EC2 Security Group whose access is to be revoked. If <code>EC2SecurityGroupName</code> is specified, <code>EC2SecurityGroupOwnerId</code> must also be provided and <code>CIDRIP</code> cannot be provided. </p>"
        },
        "EC2SecurityGroupOwnerId": {
          "shape": "String",
          "documentation": "<p>The AWS account number of the owner of the security group specified in the <code>EC2SecurityGroupName</code> parameter. The AWS access key ID is not an acceptable value. If <code>EC2SecurityGroupOwnerId</code> is specified, <code>EC2SecurityGroupName</code> must also be provided. and <code>CIDRIP</code> cannot be provided. </p> <p>Example: <code>111122223333</code> </p>"
        }
      },
      "documentation": "<p/>"
    },
    "RevokeClusterSecurityGroupIngressResult": {
      "type": "structure",
      "members": {
        "ClusterSecurityGroup": {
          "shape": "ClusterSecurityGroup"
        }
      }
    },
    "RevokeSnapshotAccessMessage": {
      "type": "structure",
      "required": [
        "SnapshotIdentifier",
        "AccountWithRestoreAccess"
      ],
      "members": {
        "SnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the snapshot that the account can no longer access.</p>"
        },
        "SnapshotClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.</p>"
        },
        "AccountWithRestoreAccess": {
          "shape": "String",
          "documentation": "<p>The identifier of the AWS customer account that can no longer restore the specified snapshot.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "RevokeSnapshotAccessResult": {
      "type": "structure",
      "members": {
        "Snapshot": {
          "shape": "Snapshot"
        }
      }
    },
    "RotateEncryptionKeyMessage": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique identifier of the cluster that you want to rotate the encryption keys for.</p> <p>Constraints: Must be the name of valid cluster that has encryption enabled.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "RotateEncryptionKeyResult": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster"
        }
      }
    },
    "ScheduleDefinitionList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "ScheduleDefinition"
      }
    },
    "ScheduleState": {
      "type": "string",
      "enum": [
        "MODIFYING",
        "ACTIVE",
        "FAILED"
      ]
    },
    "ScheduledAction": {
      "type": "structure",
      "members": {
        "ScheduledActionName": {
          "shape": "String",
          "documentation": "<p>The name of the scheduled action. </p>"
        },
        "TargetAction": {
          "shape": "ScheduledActionType",
          "documentation": "<p>A JSON format string of the Amazon Redshift API operation with input parameters. </p> <p>\"<code>{\\\"ResizeCluster\\\":{\\\"NodeType\\\":\\\"ds2.8xlarge\\\",\\\"ClusterIdentifier\\\":\\\"my-test-cluster\\\",\\\"NumberOfNodes\\\":3}}</code>\". </p>"
        },
        "Schedule": {
          "shape": "String",
          "documentation": "<p>The schedule for a one-time (at format) or recurring (cron format) scheduled action. Schedule invocations must be separated by at least one hour.</p> <p>Format of at expressions is \"<code>at(yyyy-mm-ddThh:mm:ss)</code>\". For example, \"<code>at(2016-03-04T17:27:00)</code>\".</p> <p>Format of cron expressions is \"<code>cron(Minutes Hours Day-of-month Month Day-of-week Year)</code>\". For example, \"<code>cron(0 10 ? * MON *)</code>\". For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions\">Cron Expressions</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>"
        },
        "IamRole": {
          "shape": "String",
          "documentation": "<p>The IAM role to assume to run the scheduled action. This IAM role must have permission to run the Amazon Redshift API operation in the scheduled action. This IAM role must allow the Amazon Redshift scheduler (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf. For more information about the IAM role to use with the Amazon Redshift scheduler, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html\">Using Identity-Based Policies for Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>"
        },
        "ScheduledActionDescription": {
          "shape": "String",
          "documentation": "<p>The description of the scheduled action. </p>"
        },
        "State": {
          "shape": "ScheduledActionState",
          "documentation": "<p>The state of the scheduled action. For example, <code>DISABLED</code>. </p>"
        },
        "NextInvocations": {
          "shape": "ScheduledActionTimeList",
          "documentation": "<p>List of times when the scheduled action will run. </p>"
        },
        "StartTime": {
          "shape": "TStamp",
          "documentation": "<p>The start time in UTC when the schedule is active. Before this time, the scheduled action does not trigger. </p>"
        },
        "EndTime": {
          "shape": "TStamp",
          "documentation": "<p>The end time in UTC when the schedule is no longer active. After this time, the scheduled action does not trigger. </p>"
        }
      },
      "documentation": "<p>Describes a scheduled action. You can use a scheduled action to trigger some Amazon Redshift API operations on a schedule. For information about which API operations can be scheduled, see <a>ScheduledActionType</a>. </p>"
    },
    "ScheduledActionFilter": {
      "type": "structure",
      "required": [
        "Name",
        "Values"
      ],
      "members": {
        "Name": {
          "shape": "ScheduledActionFilterName",
          "documentation": "<p>The type of element to filter. </p>"
        },
        "Values": {
          "shape": "ValueStringList",
          "documentation": "<p>List of values. Compare if the value (of type defined by <code>Name</code>) equals an item in the list of scheduled actions. </p>"
        }
      },
      "documentation": "<p>A set of elements to filter the returned scheduled actions. </p>"
    },
    "ScheduledActionFilterList": {
      "type": "list",
      "member": {
        "shape": "ScheduledActionFilter",
        "locationName": "ScheduledActionFilter"
      }
    },
    "ScheduledActionFilterName": {
      "type": "string",
      "enum": [
        "cluster-identifier",
        "iam-role"
      ]
    },
    "ScheduledActionList": {
      "type": "list",
      "member": {
        "shape": "ScheduledAction",
        "locationName": "ScheduledAction"
      }
    },
    "ScheduledActionState": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "DISABLED"
      ]
    },
    "ScheduledActionTimeList": {
      "type": "list",
      "member": {
        "shape": "TStamp",
        "locationName": "ScheduledActionTime"
      }
    },
    "ScheduledActionType": {
      "type": "structure",
      "members": {
        "ResizeCluster": {
          "shape": "ResizeClusterMessage",
          "documentation": "<p>An action that runs a <code>ResizeCluster</code> API operation. </p>"
        },
        "PauseCluster": {
          "shape": "PauseClusterMessage",
          "documentation": "<p>An action that runs a <code>PauseCluster</code> API operation. </p>"
        },
        "ResumeCluster": {
          "shape": "ResumeClusterMessage",
          "documentation": "<p>An action that runs a <code>ResumeCluster</code> API operation. </p>"
        }
      },
      "documentation": "<p>The action type that specifies an Amazon Redshift API operation that is supported by the Amazon Redshift scheduler. </p>"
    },
    "ScheduledActionTypeValues": {
      "type": "string",
      "enum": [
        "ResizeCluster",
        "PauseCluster",
        "ResumeCluster"
      ]
    },
    "ScheduledActionsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeScheduledActions</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"
        },
        "ScheduledActions": {
          "shape": "ScheduledActionList",
          "documentation": "<p>List of retrieved scheduled actions. </p>"
        }
      }
    },
    "ScheduledSnapshotTimeList": {
      "type": "list",
      "member": {
        "shape": "TStamp",
        "locationName": "SnapshotTime"
      }
    },
    "SensitiveString": {
      "type": "string",
      "sensitive": true
    },
    "Snapshot": {
      "type": "structure",
      "members": {
        "SnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The snapshot identifier that is provided in the request.</p>"
        },
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster for which the snapshot was taken.</p>"
        },
        "SnapshotCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>The time (in UTC format) when Amazon Redshift began the snapshot. A snapshot contains a copy of the cluster data as of this exact time.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The snapshot status. The value of the status depends on the API operation used: </p> <ul> <li> <p> <a>CreateClusterSnapshot</a> and <a>CopyClusterSnapshot</a> returns status as \"creating\". </p> </li> <li> <p> <a>DescribeClusterSnapshots</a> returns status as \"creating\", \"available\", \"final snapshot\", or \"failed\".</p> </li> <li> <p> <a>DeleteClusterSnapshot</a> returns status as \"deleted\".</p> </li> </ul>"
        },
        "Port": {
          "shape": "Integer",
          "documentation": "<p>The port that the cluster is listening on.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The Availability Zone in which the cluster was created.</p>"
        },
        "ClusterCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>The time (UTC) when the cluster was originally created.</p>"
        },
        "MasterUsername": {
          "shape": "String",
          "documentation": "<p>The master user name for the cluster.</p>"
        },
        "ClusterVersion": {
          "shape": "String",
          "documentation": "<p>The version ID of the Amazon Redshift engine that is running on the cluster.</p>"
        },
        "SnapshotType": {
          "shape": "String",
          "documentation": "<p>The snapshot type. Snapshots created using <a>CreateClusterSnapshot</a> and <a>CopyClusterSnapshot</a> are of type \"manual\". </p>"
        },
        "NodeType": {
          "shape": "String",
          "documentation": "<p>The node type of the nodes in the cluster.</p>"
        },
        "NumberOfNodes": {
          "shape": "Integer",
          "documentation": "<p>The number of nodes in the cluster.</p>"
        },
        "DBName": {
          "shape": "String",
          "documentation": "<p>The name of the database that was created when the cluster was created.</p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>The VPC identifier of the cluster if the snapshot is from a cluster in a VPC. Otherwise, this field is not in the output.</p>"
        },
        "Encrypted": {
          "shape": "Boolean",
          "documentation": "<p>If <code>true</code>, the data in the snapshot is encrypted at rest.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS Key Management Service (KMS) key ID of the encryption key that was used to encrypt data in the cluster from which the snapshot was taken.</p>"
        },
        "EncryptedWithHSM": {
          "shape": "Boolean",
          "documentation": "<p>A boolean that indicates whether the snapshot data is encrypted using the HSM keys of the source cluster. <code>true</code> indicates that the data is encrypted using HSM keys.</p>"
        },
        "AccountsWithRestoreAccess": {
          "shape": "AccountsWithRestoreAccessList",
          "documentation": "<p>A list of the AWS customer accounts authorized to restore the snapshot. Returns <code>null</code> if no accounts are authorized. Visible only to the snapshot owner. </p>"
        },
        "OwnerAccount": {
          "shape": "String",
          "documentation": "<p>For manual snapshots, the AWS customer account used to create or copy the snapshot. For automatic snapshots, the owner of the cluster. The owner can perform all snapshot actions, such as sharing a manual snapshot.</p>"
        },
        "TotalBackupSizeInMegaBytes": {
          "shape": "Double",
          "documentation": "<p>The size of the complete set of backup data that would be used to restore the cluster.</p>"
        },
        "ActualIncrementalBackupSizeInMegaBytes": {
          "shape": "Double",
          "documentation": "<p>The size of the incremental backup.</p>"
        },
        "BackupProgressInMegaBytes": {
          "shape": "Double",
          "documentation": "<p>The number of megabytes that have been transferred to the snapshot backup.</p>"
        },
        "CurrentBackupRateInMegaBytesPerSecond": {
          "shape": "Double",
          "documentation": "<p>The number of megabytes per second being transferred to the snapshot backup. Returns <code>0</code> for a completed backup. </p>"
        },
        "EstimatedSecondsToCompletion": {
          "shape": "Long",
          "documentation": "<p>The estimate of the time remaining before the snapshot backup will complete. Returns <code>0</code> for a completed backup. </p>"
        },
        "ElapsedTimeInSeconds": {
          "shape": "Long",
          "documentation": "<p>The amount of time an in-progress snapshot backup has been running, or the amount of time it took a completed backup to finish.</p>"
        },
        "SourceRegion": {
          "shape": "String",
          "documentation": "<p>The source region from which the snapshot was copied.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags for the cluster snapshot.</p>"
        },
        "RestorableNodeTypes": {
          "shape": "RestorableNodeTypeList",
          "documentation": "<p>The list of node types that this cluster snapshot is able to restore into.</p>"
        },
        "EnhancedVpcRouting": {
          "shape": "Boolean",
          "documentation": "<p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>"
        },
        "MaintenanceTrackName": {
          "shape": "String",
          "documentation": "<p>The name of the maintenance track for the snapshot.</p>"
        },
        "ManualSnapshotRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely. </p> <p>The value must be either -1 or an integer between 1 and 3,653.</p>"
        },
        "ManualSnapshotRemainingDays": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days until a manual snapshot will pass its retention period.</p>"
        },
        "SnapshotRetentionStartTime": {
          "shape": "TStamp",
          "documentation": "<p>A timestamp representing the start of the retention period for the snapshot.</p>"
        }
      },
      "documentation": "<p>Describes a snapshot.</p>",
      "wrapper": true
    },
    "SnapshotAttributeToSortBy": {
      "type": "string",
      "enum": [
        "SOURCE_TYPE",
        "TOTAL_SIZE",
        "CREATE_TIME"
      ]
    },
    "SnapshotCopyGrant": {
      "type": "structure",
      "members": {
        "SnapshotCopyGrantName": {
          "shape": "String",
          "documentation": "<p>The name of the snapshot copy grant.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The unique identifier of the customer master key (CMK) in AWS KMS to which Amazon Redshift is granted permission.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag instances.</p>"
        }
      },
      "documentation": "<p>The snapshot copy grant that grants Amazon Redshift permission to encrypt copied snapshots with the specified customer master key (CMK) from AWS KMS in the destination region.</p> <p> For more information about managing snapshot copy grants, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html\">Amazon Redshift Database Encryption</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>",
      "wrapper": true
    },
    "SnapshotCopyGrantList": {
      "type": "list",
      "member": {
        "shape": "SnapshotCopyGrant",
        "locationName": "SnapshotCopyGrant"
      }
    },
    "SnapshotCopyGrantMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <code>DescribeSnapshotCopyGrant</code> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p> <p>Constraints: You can specify either the <b>SnapshotCopyGrantName</b> parameter or the <b>Marker</b> parameter, but not both. </p>"
        },
        "SnapshotCopyGrants": {
          "shape": "SnapshotCopyGrantList",
          "documentation": "<p>The list of <code>SnapshotCopyGrant</code> objects.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "SnapshotErrorMessage": {
      "type": "structure",
      "members": {
        "SnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the snapshot returning the error.</p>"
        },
        "SnapshotClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the cluster.</p>"
        },
        "FailureCode": {
          "shape": "String",
          "documentation": "<p>The failure code for the error.</p>"
        },
        "FailureReason": {
          "shape": "String",
          "documentation": "<p>The text message describing the error.</p>"
        }
      },
      "documentation": "<p>Describes the errors returned by a snapshot.</p>"
    },
    "SnapshotIdentifierList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "String"
      }
    },
    "SnapshotList": {
      "type": "list",
      "member": {
        "shape": "Snapshot",
        "locationName": "Snapshot"
      }
    },
    "SnapshotMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        },
        "Snapshots": {
          "shape": "SnapshotList",
          "documentation": "<p>A list of <a>Snapshot</a> instances. </p>"
        }
      },
      "documentation": "<p>Contains the output from the <a>DescribeClusterSnapshots</a> action. </p>"
    },
    "SnapshotSchedule": {
      "type": "structure",
      "members": {
        "ScheduleDefinitions": {
          "shape": "ScheduleDefinitionList",
          "documentation": "<p>A list of ScheduleDefinitions.</p>"
        },
        "ScheduleIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the schedule.</p>"
        },
        "ScheduleDescription": {
          "shape": "String",
          "documentation": "<p>The description of the schedule.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An optional set of tags describing the schedule.</p>"
        },
        "NextInvocations": {
          "shape": "ScheduledSnapshotTimeList",
          "documentation": "<p/>"
        },
        "AssociatedClusterCount": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of clusters associated with the schedule.</p>"
        },
        "AssociatedClusters": {
          "shape": "AssociatedClusterList",
          "documentation": "<p>A list of clusters associated with the schedule. A maximum of 100 clusters is returned.</p>"
        }
      },
      "documentation": "<p>Describes a snapshot schedule. You can set a regular interval for creating snapshots of a cluster. You can also schedule snapshots for specific dates. </p>"
    },
    "SnapshotScheduleList": {
      "type": "list",
      "member": {
        "shape": "SnapshotSchedule",
        "locationName": "SnapshotSchedule"
      }
    },
    "SnapshotSortingEntity": {
      "type": "structure",
      "required": [
        "Attribute"
      ],
      "members": {
        "Attribute": {
          "shape": "SnapshotAttributeToSortBy",
          "documentation": "<p>The category for sorting the snapshots.</p>"
        },
        "SortOrder": {
          "shape": "SortByOrder",
          "documentation": "<p>The order for listing the attributes.</p>"
        }
      },
      "documentation": "<p>Describes a sorting entity</p>"
    },
    "SnapshotSortingEntityList": {
      "type": "list",
      "member": {
        "shape": "SnapshotSortingEntity",
        "locationName": "SnapshotSortingEntity"
      }
    },
    "SortByOrder": {
      "type": "string",
      "enum": [
        "ASC",
        "DESC"
      ]
    },
    "SourceIdsList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "SourceId"
      }
    },
    "SourceType": {
      "type": "string",
      "enum": [
        "cluster",
        "cluster-parameter-group",
        "cluster-security-group",
        "cluster-snapshot",
        "scheduled-action"
      ]
    },
    "String": {
      "type": "string"
    },
    "Subnet": {
      "type": "structure",
      "members": {
        "SubnetIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the subnet.</p>"
        },
        "SubnetAvailabilityZone": {
          "shape": "AvailabilityZone",
          "documentation": "<p/>"
        },
        "SubnetStatus": {
          "shape": "String",
          "documentation": "<p>The status of the subnet.</p>"
        }
      },
      "documentation": "<p>Describes a subnet.</p>"
    },
    "SubnetIdentifierList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "SubnetIdentifier"
      }
    },
    "SubnetList": {
      "type": "list",
      "member": {
        "shape": "Subnet",
        "locationName": "Subnet"
      }
    },
    "SupportedOperation": {
      "type": "structure",
      "members": {
        "OperationName": {
          "shape": "String",
          "documentation": "<p>A list of the supported operations.</p>"
        }
      },
      "documentation": "<p>Describes the operations that are allowed on a maintenance track.</p>"
    },
    "SupportedOperationList": {
      "type": "list",
      "member": {
        "shape": "SupportedOperation",
        "locationName": "SupportedOperation"
      }
    },
    "SupportedPlatform": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p>A list of supported platforms for orderable clusters.</p>",
      "wrapper": true
    },
    "SupportedPlatformsList": {
      "type": "list",
      "member": {
        "shape": "SupportedPlatform",
        "locationName": "SupportedPlatform"
      }
    },
    "TStamp": {
      "type": "timestamp"
    },
    "TableRestoreStatus": {
      "type": "structure",
      "members": {
        "TableRestoreRequestId": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the table restore request.</p>"
        },
        "Status": {
          "shape": "TableRestoreStatusType",
          "documentation": "<p>A value that describes the current state of the table restore request.</p> <p>Valid Values: <code>SUCCEEDED</code>, <code>FAILED</code>, <code>CANCELED</code>, <code>PENDING</code>, <code>IN_PROGRESS</code> </p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>A description of the status of the table restore request. Status values include <code>SUCCEEDED</code>, <code>FAILED</code>, <code>CANCELED</code>, <code>PENDING</code>, <code>IN_PROGRESS</code>.</p>"
        },
        "RequestTime": {
          "shape": "TStamp",
          "documentation": "<p>The time that the table restore request was made, in Universal Coordinated Time (UTC).</p>"
        },
        "ProgressInMegaBytes": {
          "shape": "LongOptional",
          "documentation": "<p>The amount of data restored to the new table so far, in megabytes (MB).</p>"
        },
        "TotalDataInMegaBytes": {
          "shape": "LongOptional",
          "documentation": "<p>The total amount of data to restore to the new table, in megabytes (MB).</p>"
        },
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the Amazon Redshift cluster that the table is being restored to.</p>"
        },
        "SnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the snapshot that the table is being restored from.</p>"
        },
        "SourceDatabaseName": {
          "shape": "String",
          "documentation": "<p>The name of the source database that contains the table being restored.</p>"
        },
        "SourceSchemaName": {
          "shape": "String",
          "documentation": "<p>The name of the source schema that contains the table being restored.</p>"
        },
        "SourceTableName": {
          "shape": "String",
          "documentation": "<p>The name of the source table being restored.</p>"
        },
        "TargetDatabaseName": {
          "shape": "String",
          "documentation": "<p>The name of the database to restore the table to.</p>"
        },
        "TargetSchemaName": {
          "shape": "String",
          "documentation": "<p>The name of the schema to restore the table to.</p>"
        },
        "NewTableName": {
          "shape": "String",
          "documentation": "<p>The name of the table to create as a result of the table restore request.</p>"
        }
      },
      "documentation": "<p>Describes the status of a <a>RestoreTableFromClusterSnapshot</a> operation.</p>",
      "wrapper": true
    },
    "TableRestoreStatusList": {
      "type": "list",
      "member": {
        "shape": "TableRestoreStatus",
        "locationName": "TableRestoreStatus"
      }
    },
    "TableRestoreStatusMessage": {
      "type": "structure",
      "members": {
        "TableRestoreStatusDetails": {
          "shape": "TableRestoreStatusList",
          "documentation": "<p>A list of status details for one or more table restore requests.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a subsequent <a>DescribeTableRestoreStatus</a> request.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "TableRestoreStatusType": {
      "type": "string",
      "enum": [
        "PENDING",
        "IN_PROGRESS",
        "SUCCEEDED",
        "FAILED",
        "CANCELED"
      ]
    },
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "String",
          "documentation": "<p>The key, or name, for the resource tag.</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>The value for the resource tag.</p>"
        }
      },
      "documentation": "<p>A tag consisting of a name/value pair for a resource.</p>"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "TagKey"
      }
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag",
        "locationName": "Tag"
      }
    },
    "TagValueList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "TagValue"
      }
    },
    "TaggedResource": {
      "type": "structure",
      "members": {
        "Tag": {
          "shape": "Tag",
          "documentation": "<p>The tag for the resource.</p>"
        },
        "ResourceName": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) with which the tag is associated, for example: <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>.</p>"
        },
        "ResourceType": {
          "shape": "String",
          "documentation": "<p>The type of resource with which the tag is associated. Valid resource types are: </p> <ul> <li> <p>Cluster</p> </li> <li> <p>CIDR/IP</p> </li> <li> <p>EC2 security group</p> </li> <li> <p>Snapshot</p> </li> <li> <p>Cluster security group</p> </li> <li> <p>Subnet group</p> </li> <li> <p>HSM connection</p> </li> <li> <p>HSM certificate</p> </li> <li> <p>Parameter group</p> </li> </ul> <p>For more information about Amazon Redshift resource types and constructing ARNs, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions\">Constructing an Amazon Redshift Amazon Resource Name (ARN)</a> in the Amazon Redshift Cluster Management Guide. </p>"
        }
      },
      "documentation": "<p>A tag and its associated resource.</p>"
    },
    "TaggedResourceList": {
      "type": "list",
      "member": {
        "shape": "TaggedResource",
        "locationName": "TaggedResource"
      }
    },
    "TaggedResourceListMessage": {
      "type": "structure",
      "members": {
        "TaggedResources": {
          "shape": "TaggedResourceList",
          "documentation": "<p>A list of tags with their associated resources.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "TrackList": {
      "type": "list",
      "member": {
        "shape": "MaintenanceTrack",
        "locationName": "MaintenanceTrack"
      }
    },
    "TrackListMessage": {
      "type": "structure",
      "members": {
        "MaintenanceTracks": {
          "shape": "TrackList",
          "documentation": "<p>A list of maintenance tracks output by the <code>DescribeClusterTracks</code> operation. </p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>The starting point to return a set of response tracklist records. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request.</p>"
        }
      }
    },
    "UpdateTarget": {
      "type": "structure",
      "members": {
        "MaintenanceTrackName": {
          "shape": "String",
          "documentation": "<p>The name of the new maintenance track.</p>"
        },
        "DatabaseVersion": {
          "shape": "String",
          "documentation": "<p>The cluster version for the new maintenance track.</p>"
        },
        "SupportedOperations": {
          "shape": "SupportedOperationList",
          "documentation": "<p>A list of operations supported by the maintenance track.</p>"
        }
      },
      "documentation": "<p>A maintenance track that you can switch the current track to.</p>"
    },
    "UsageLimit": {
      "type": "structure",
      "members": {
        "UsageLimitId": {
          "shape": "String",
          "documentation": "<p>The identifier of the usage limit.</p>"
        },
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster with a usage limit.</p>"
        },
        "FeatureType": {
          "shape": "UsageLimitFeatureType",
          "documentation": "<p>The Amazon Redshift feature to which the limit applies.</p>"
        },
        "LimitType": {
          "shape": "UsageLimitLimitType",
          "documentation": "<p>The type of limit. Depending on the feature type, this can be based on a time duration or data size.</p>"
        },
        "Amount": {
          "shape": "Long",
          "documentation": "<p>The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB).</p>"
        },
        "Period": {
          "shape": "UsageLimitPeriod",
          "documentation": "<p>The time period that the amount applies to. A <code>weekly</code> period begins on Sunday. The default is <code>monthly</code>. </p>"
        },
        "BreachAction": {
          "shape": "UsageLimitBreachAction",
          "documentation": "<p>The action that Amazon Redshift takes when the limit is reached. Possible values are: </p> <ul> <li> <p> <b>log</b> - To log an event in a system table. The default is log.</p> </li> <li> <p> <b>emit-metric</b> - To emit CloudWatch metrics.</p> </li> <li> <p> <b>disable</b> - To disable the feature until the next usage period begins.</p> </li> </ul>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag instances.</p>"
        }
      },
      "documentation": "<p>Describes a usage limit object for a cluster. </p>"
    },
    "UsageLimitBreachAction": {
      "type": "string",
      "enum": [
        "log",
        "emit-metric",
        "disable"
      ]
    },
    "UsageLimitFeatureType": {
      "type": "string",
      "enum": [
        "spectrum",
        "concurrency-scaling"
      ]
    },
    "UsageLimitLimitType": {
      "type": "string",
      "enum": [
        "time",
        "data-scanned"
      ]
    },
    "UsageLimitList": {
      "type": "structure",
      "members": {
        "UsageLimits": {
          "shape": "UsageLimits",
          "documentation": "<p>Contains the output from the <a>DescribeUsageLimits</a> action. </p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>"
        }
      }
    },
    "UsageLimitPeriod": {
      "type": "string",
      "enum": [
        "daily",
        "weekly",
        "monthly"
      ]
    },
    "UsageLimits": {
      "type": "list",
      "member": {
        "shape": "UsageLimit"
      }
    },
    "ValueStringList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "item"
      }
    },
    "VpcSecurityGroupIdList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "VpcSecurityGroupId"
      }
    },
    "VpcSecurityGroupMembership": {
      "type": "structure",
      "members": {
        "VpcSecurityGroupId": {
          "shape": "String",
          "documentation": "<p>The identifier of the VPC security group.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the VPC security group.</p>"
        }
      },
      "documentation": "<p>Describes the members of a VPC security group.</p>"
    },
    "VpcSecurityGroupMembershipList": {
      "type": "list",
      "member": {
        "shape": "VpcSecurityGroupMembership",
        "locationName": "VpcSecurityGroup"
      }
    }
  },
  "documentation": "<fullname>Amazon Redshift</fullname> <p> <b>Overview</b> </p> <p>This is an interface reference for Amazon Redshift. It contains documentation for one of the programming or command line interfaces you can use to manage Amazon Redshift clusters. Note that Amazon Redshift is asynchronous, which means that some interfaces may require techniques, such as polling or asynchronous callback handlers, to determine when a command has been applied. In this reference, the parameter descriptions indicate whether a change is applied immediately, on the next instance reboot, or during the next maintenance window. For a summary of the Amazon Redshift cluster management interfaces, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html\">Using the Amazon Redshift Management Interfaces</a>.</p> <p>Amazon Redshift manages all the work of setting up, operating, and scaling a data warehouse: provisioning capacity, monitoring and backing up the cluster, and applying patches and upgrades to the Amazon Redshift engine. You can focus on using your data to acquire new insights for your business and customers.</p> <p>If you are a first-time user of Amazon Redshift, we recommend that you begin by reading the <a href=\"https://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html\">Amazon Redshift Getting Started Guide</a>.</p> <p>If you are a database developer, the <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/welcome.html\">Amazon Redshift Database Developer Guide</a> explains how to design, build, query, and maintain the databases that make up your data warehouse. </p>"
}
]===]))
