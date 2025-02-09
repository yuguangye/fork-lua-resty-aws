local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-10-01",
    "endpointPrefix": "appmesh",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "AWS App Mesh",
    "serviceId": "App Mesh",
    "signatureVersion": "v4",
    "signingName": "appmesh",
    "uid": "appmesh-2018-10-01"
  },
  "documentation": "<p>AWS App Mesh is a service mesh based on the Envoy proxy that makes it easy to monitor and\n         control containerized microservices. App Mesh standardizes how your microservices\n         communicate, giving you end-to-end visibility and helping to ensure high-availability for\n         your applications.</p>\n         <p>App Mesh gives you consistent visibility and network traffic controls for every\n         microservice in an application. You can use App Mesh with Amazon ECS\n         (using the Amazon EC2 launch type), Amazon EKS, and Kubernetes on AWS.</p>\n         <note>\n            <p>App Mesh supports containerized microservice applications that use service discovery\n            naming for their components. To use App Mesh, you must have a containerized application\n            running on Amazon EC2 instances, hosted in either Amazon ECS, Amazon EKS, or Kubernetes on AWS. For\n            more information about service discovery on Amazon ECS, see <a href=\"http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html\">Service Discovery</a> in the\n               <i>Amazon Elastic Container Service Developer Guide</i>. Kubernetes <code>kube-dns</code> is supported.\n            For more information, see <a href=\"https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/\">DNS\n               for Services and Pods</a> in the Kubernetes documentation.</p>\n         </note>",
  "operations": {
    "CreateMesh": {
      "name": "CreateMesh",
      "http": {
        "method": "PUT",
        "requestUri": "/meshes",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateMeshInput"
      },
      "output": {
        "shape": "CreateMeshOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Creates a new service mesh. A service mesh is a logical boundary for network traffic\n         between the services that reside within it.</p>\n         <p>After you create your service mesh, you can create virtual nodes, virtual routers, and\n         routes to distribute traffic between the applications in your mesh.</p>",
      "idempotent": true
    },
    "CreateRoute": {
      "name": "CreateRoute",
      "http": {
        "method": "PUT",
        "requestUri": "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateRouteInput"
      },
      "output": {
        "shape": "CreateRouteOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Creates a new route that is associated with a virtual router.</p>\n         <p>You can use the <code>prefix</code> parameter in your route specification for path-based\n         routing of requests. For example, if your virtual router service name is\n            <code>my-service.local</code>, and you want the route to match requests to\n            <code>my-service.local/metrics</code>, then your prefix should be\n         <code>/metrics</code>.</p>\n         <p>If your route matches a request, you can distribute traffic to one or more target\n         virtual nodes with relative weighting.</p>",
      "idempotent": true
    },
    "CreateVirtualNode": {
      "name": "CreateVirtualNode",
      "http": {
        "method": "PUT",
        "requestUri": "/meshes/{meshName}/virtualNodes",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateVirtualNodeInput"
      },
      "output": {
        "shape": "CreateVirtualNodeOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Creates a new virtual node within a service mesh.</p>\n         <p>A virtual node acts as logical pointer to a particular task group, such as an Amazon ECS\n         service or a Kubernetes deployment. When you create a virtual node, you must specify the\n         DNS service discovery name for your task group.</p>\n         <p>Any inbound traffic that your virtual node expects should be specified as a\n            <code>listener</code>. Any outbound traffic that your virtual node expects to reach\n         should be specified as a <code>backend</code>.</p>\n         <p>The response metadata for your new virtual node contains the <code>arn</code> that is\n         associated with the virtual node. Set this value (either the full ARN or the truncated\n         resource name, for example, <code>mesh/default/virtualNode/simpleapp</code>, as the\n            <code>APPMESH_VIRTUAL_NODE_NAME</code> environment variable for your task group's Envoy\n         proxy container in your task definition or pod spec. This is then mapped to the\n            <code>node.id</code> and <code>node.cluster</code> Envoy parameters.</p>\n         <note>\n            <p>If you require your Envoy stats or tracing to use a different name, you can override\n            the <code>node.cluster</code> value that is set by\n               <code>APPMESH_VIRTUAL_NODE_NAME</code> with the\n               <code>APPMESH_VIRTUAL_NODE_CLUSTER</code> environment variable.</p>\n         </note>",
      "idempotent": true
    },
    "CreateVirtualRouter": {
      "name": "CreateVirtualRouter",
      "http": {
        "method": "PUT",
        "requestUri": "/meshes/{meshName}/virtualRouters",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateVirtualRouterInput"
      },
      "output": {
        "shape": "CreateVirtualRouterOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Creates a new virtual router within a service mesh.</p>\n         <p>Virtual routers handle traffic for one or more service names within your mesh. After you\n         create your virtual router, create and associate routes for your virtual router that direct\n         incoming requests to different virtual nodes.</p>",
      "idempotent": true
    },
    "DeleteMesh": {
      "name": "DeleteMesh",
      "http": {
        "method": "DELETE",
        "requestUri": "/meshes/{meshName}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteMeshInput"
      },
      "output": {
        "shape": "DeleteMeshOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Deletes an existing service mesh.</p>\n         <p>You must delete all resources (routes, virtual routers, virtual nodes) in the service\n         mesh before you can delete the mesh itself.</p>",
      "idempotent": true
    },
    "DeleteRoute": {
      "name": "DeleteRoute",
      "http": {
        "method": "DELETE",
        "requestUri": "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteRouteInput"
      },
      "output": {
        "shape": "DeleteRouteOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Deletes an existing route.</p>",
      "idempotent": true
    },
    "DeleteVirtualNode": {
      "name": "DeleteVirtualNode",
      "http": {
        "method": "DELETE",
        "requestUri": "/meshes/{meshName}/virtualNodes/{virtualNodeName}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteVirtualNodeInput"
      },
      "output": {
        "shape": "DeleteVirtualNodeOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Deletes an existing virtual node.</p>",
      "idempotent": true
    },
    "DeleteVirtualRouter": {
      "name": "DeleteVirtualRouter",
      "http": {
        "method": "DELETE",
        "requestUri": "/meshes/{meshName}/virtualRouters/{virtualRouterName}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteVirtualRouterInput"
      },
      "output": {
        "shape": "DeleteVirtualRouterOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Deletes an existing virtual router.</p>\n         <p>You must delete any routes associated with the virtual router before you can delete the\n         router itself.</p>",
      "idempotent": true
    },
    "DescribeMesh": {
      "name": "DescribeMesh",
      "http": {
        "method": "GET",
        "requestUri": "/meshes/{meshName}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeMeshInput"
      },
      "output": {
        "shape": "DescribeMeshOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Describes an existing service mesh.</p>"
    },
    "DescribeRoute": {
      "name": "DescribeRoute",
      "http": {
        "method": "GET",
        "requestUri": "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeRouteInput"
      },
      "output": {
        "shape": "DescribeRouteOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Describes an existing route.</p>"
    },
    "DescribeVirtualNode": {
      "name": "DescribeVirtualNode",
      "http": {
        "method": "GET",
        "requestUri": "/meshes/{meshName}/virtualNodes/{virtualNodeName}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeVirtualNodeInput"
      },
      "output": {
        "shape": "DescribeVirtualNodeOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Describes an existing virtual node.</p>"
    },
    "DescribeVirtualRouter": {
      "name": "DescribeVirtualRouter",
      "http": {
        "method": "GET",
        "requestUri": "/meshes/{meshName}/virtualRouters/{virtualRouterName}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeVirtualRouterInput"
      },
      "output": {
        "shape": "DescribeVirtualRouterOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Describes an existing virtual router.</p>"
    },
    "ListMeshes": {
      "name": "ListMeshes",
      "http": {
        "method": "GET",
        "requestUri": "/meshes",
        "responseCode": 200
      },
      "input": {
        "shape": "ListMeshesInput"
      },
      "output": {
        "shape": "ListMeshesOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Returns a list of existing service meshes.</p>"
    },
    "ListRoutes": {
      "name": "ListRoutes",
      "http": {
        "method": "GET",
        "requestUri": "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes",
        "responseCode": 200
      },
      "input": {
        "shape": "ListRoutesInput"
      },
      "output": {
        "shape": "ListRoutesOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Returns a list of existing routes in a service mesh.</p>"
    },
    "ListVirtualNodes": {
      "name": "ListVirtualNodes",
      "http": {
        "method": "GET",
        "requestUri": "/meshes/{meshName}/virtualNodes",
        "responseCode": 200
      },
      "input": {
        "shape": "ListVirtualNodesInput"
      },
      "output": {
        "shape": "ListVirtualNodesOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Returns a list of existing virtual nodes.</p>"
    },
    "ListVirtualRouters": {
      "name": "ListVirtualRouters",
      "http": {
        "method": "GET",
        "requestUri": "/meshes/{meshName}/virtualRouters",
        "responseCode": 200
      },
      "input": {
        "shape": "ListVirtualRoutersInput"
      },
      "output": {
        "shape": "ListVirtualRoutersOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Returns a list of existing virtual routers in a service mesh.</p>"
    },
    "UpdateRoute": {
      "name": "UpdateRoute",
      "http": {
        "method": "PUT",
        "requestUri": "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateRouteInput"
      },
      "output": {
        "shape": "UpdateRouteOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Updates an existing route for a specified service mesh and virtual router.</p>",
      "idempotent": true
    },
    "UpdateVirtualNode": {
      "name": "UpdateVirtualNode",
      "http": {
        "method": "PUT",
        "requestUri": "/meshes/{meshName}/virtualNodes/{virtualNodeName}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateVirtualNodeInput"
      },
      "output": {
        "shape": "UpdateVirtualNodeOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Updates an existing virtual node in a specified service mesh.</p>",
      "idempotent": true
    },
    "UpdateVirtualRouter": {
      "name": "UpdateVirtualRouter",
      "http": {
        "method": "PUT",
        "requestUri": "/meshes/{meshName}/virtualRouters/{virtualRouterName}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateVirtualRouterInput"
      },
      "output": {
        "shape": "UpdateVirtualRouterOutput"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Updates an existing virtual router in a specified service mesh.</p>",
      "idempotent": true
    }
  },
  "shapes": {
    "ServiceName": {
      "type": "string"
    },
    "HealthCheckThreshold": {
      "type": "integer",
      "min": 2,
      "max": 10
    },
    "DeleteMeshOutput": {
      "type": "structure",
      "members": {
        "mesh": {
          "shape": "MeshData",
          "documentation": "<p>The service mesh that was deleted.</p>"
        }
      },
      "documentation": "",
      "payload": "mesh"
    },
    "Long": {
      "type": "long",
      "box": true
    },
    "UpdateVirtualRouterOutput": {
      "type": "structure",
      "members": {
        "virtualRouter": {
          "shape": "VirtualRouterData",
          "documentation": "<p>A full description of the virtual router that was updated.</p>"
        }
      },
      "documentation": "",
      "payload": "virtualRouter"
    },
    "MeshStatusCode": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "DELETED",
        "INACTIVE"
      ]
    },
    "PortNumber": {
      "type": "integer",
      "min": 1,
      "max": 65535
    },
    "WeightedTarget": {
      "type": "structure",
      "members": {
        "virtualNode": {
          "shape": "ResourceName",
          "documentation": "<p>The virtual node to associate with the weighted target.</p>"
        },
        "weight": {
          "shape": "PercentInt",
          "documentation": "<p>The relative weight of the weighted target.</p>"
        }
      },
      "documentation": "<p>An object representing a target and its relative weight. Traffic is distributed across\n         targets according to their relative weight. For example, a weighted target with a relative\n         weight of 50 receives five times as much traffic as one with a relative weight of\n         10.</p>"
    },
    "VirtualNodeList": {
      "type": "list",
      "member": {
        "shape": "VirtualNodeRef"
      }
    },
    "CreateRouteOutput": {
      "type": "structure",
      "members": {
        "route": {
          "shape": "RouteData",
          "documentation": "<p>The full description of your mesh following the create call.</p>"
        }
      },
      "documentation": "",
      "payload": "route"
    },
    "RouteList": {
      "type": "list",
      "member": {
        "shape": "RouteRef"
      }
    },
    "DeleteVirtualNodeInput": {
      "type": "structure",
      "required": [
        "meshName",
        "virtualNodeName"
      ],
      "members": {
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which to delete the virtual node.</p>",
          "location": "uri",
          "locationName": "meshName"
        },
        "virtualNodeName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the virtual node to delete.</p>",
          "location": "uri",
          "locationName": "virtualNodeName"
        }
      },
      "documentation": ""
    },
    "ListVirtualRoutersLimit": {
      "type": "integer",
      "box": true,
      "min": 1,
      "max": 100
    },
    "DnsServiceDiscovery": {
      "type": "structure",
      "members": {
        "serviceName": {
          "shape": "ServiceName",
          "documentation": "<p>The DNS service name for your virtual node.</p>"
        }
      },
      "documentation": "<p>The DNS service discovery information for your virtual node.</p>"
    },
    "HealthCheckIntervalMillis": {
      "type": "long",
      "box": true,
      "min": 5000,
      "max": 300000
    },
    "VirtualNodeRef": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The full Amazon Resource Name (ARN) for the virtual node.</p>"
        },
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which the virtual node resides.</p>"
        },
        "virtualNodeName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the virtual node.</p>"
        }
      },
      "documentation": "<p>An object representing a virtual node returned by a list operation.</p>"
    },
    "DescribeRouteOutput": {
      "type": "structure",
      "members": {
        "route": {
          "shape": "RouteData",
          "documentation": "<p>The full description of your route.</p>"
        }
      },
      "documentation": "",
      "payload": "route"
    },
    "ServiceDiscovery": {
      "type": "structure",
      "members": {
        "dns": {
          "shape": "DnsServiceDiscovery",
          "documentation": "<p>Specifies the DNS service name for the virtual node.</p>"
        }
      },
      "documentation": "<p>An object representing the service discovery information for a virtual node.</p>"
    },
    "MeshStatus": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "MeshStatusCode",
          "documentation": "<p>The current mesh status.</p>"
        }
      },
      "documentation": "<p>An object representing the status of a service mesh.</p>"
    },
    "VirtualNodeData": {
      "type": "structure",
      "required": [
        "meshName",
        "virtualNodeName"
      ],
      "members": {
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which the virtual node resides.</p>"
        },
        "metadata": {
          "shape": "ResourceMetadata",
          "documentation": "<p>The associated metadata for the virtual node.</p>"
        },
        "spec": {
          "shape": "VirtualNodeSpec",
          "documentation": "<p>The specifications of the virtual node.</p>"
        },
        "status": {
          "shape": "VirtualNodeStatus",
          "documentation": "<p>The current status for the virtual node.</p>"
        },
        "virtualNodeName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the virtual node.</p>"
        }
      },
      "documentation": "<p>An object representing a virtual node returned by a describe operation.</p>"
    },
    "VirtualNodeSpec": {
      "type": "structure",
      "members": {
        "backends": {
          "shape": "Backends",
          "documentation": "<p>The backends to which the virtual node is expected to send outbound traffic.</p>"
        },
        "listeners": {
          "shape": "Listeners",
          "documentation": "<p>The listeners from which the virtual node is expected to receive inbound traffic.</p>"
        },
        "serviceDiscovery": {
          "shape": "ServiceDiscovery",
          "documentation": "<p>The service discovery information for the virtual node.</p>"
        }
      },
      "documentation": "<p>An object representing the specification of a virtual node.</p>"
    },
    "ServiceNames": {
      "type": "list",
      "member": {
        "shape": "ServiceName"
      },
      "max": 10
    },
    "MeshRef": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The full Amazon Resource Name (ARN) of the service mesh.</p>"
        },
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh.</p>"
        }
      },
      "documentation": "<p>An object representing a service mesh returned by a list operation.</p>"
    },
    "DescribeVirtualRouterInput": {
      "type": "structure",
      "required": [
        "meshName",
        "virtualRouterName"
      ],
      "members": {
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which the virtual router resides.</p>",
          "location": "uri",
          "locationName": "meshName"
        },
        "virtualRouterName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the virtual router to describe.</p>",
          "location": "uri",
          "locationName": "virtualRouterName"
        }
      },
      "documentation": ""
    },
    "DescribeVirtualRouterOutput": {
      "type": "structure",
      "members": {
        "virtualRouter": {
          "shape": "VirtualRouterData",
          "documentation": "<p>The full description of your virtual router.</p>"
        }
      },
      "documentation": "",
      "payload": "virtualRouter"
    },
    "UpdateRouteOutput": {
      "type": "structure",
      "members": {
        "route": {
          "shape": "RouteData",
          "documentation": "<p>A full description of the route that was updated.</p>"
        }
      },
      "documentation": "",
      "payload": "route"
    },
    "HttpRouteAction": {
      "type": "structure",
      "members": {
        "weightedTargets": {
          "shape": "WeightedTargets",
          "documentation": "<p>The targets that traffic is routed to when a request matches the route. You can specify\n         one or more targets and their relative weights with which to distribute traffic.</p>"
        }
      },
      "documentation": "<p>An object representing the traffic distribution requirements for matched HTTP\n         requests.</p>"
    },
    "CreateVirtualRouterOutput": {
      "type": "structure",
      "members": {
        "virtualRouter": {
          "shape": "VirtualRouterData",
          "documentation": "<p>The full description of your virtual router following the create call.</p>"
        }
      },
      "documentation": "",
      "payload": "virtualRouter"
    },
    "HealthCheckTimeoutMillis": {
      "type": "long",
      "box": true,
      "min": 2000,
      "max": 60000
    },
    "CreateVirtualRouterInput": {
      "type": "structure",
      "required": [
        "meshName",
        "spec",
        "virtualRouterName"
      ],
      "members": {
        "clientToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\nrequest. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>",
          "idempotencyToken": true
        },
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which to create the virtual router.</p>",
          "location": "uri",
          "locationName": "meshName"
        },
        "spec": {
          "shape": "VirtualRouterSpec",
          "documentation": "<p>The virtual router specification to apply.</p>"
        },
        "virtualRouterName": {
          "shape": "ResourceName",
          "documentation": "<p>The name to use for the virtual router.</p>"
        }
      },
      "documentation": ""
    },
    "RouteStatus": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "RouteStatusCode",
          "documentation": "<p>The current status for the route.</p>"
        }
      },
      "documentation": "<p>An object representing the current status of a route.</p>"
    },
    "ListMeshesInput": {
      "type": "structure",
      "members": {
        "limit": {
          "shape": "ListMeshesLimit",
          "documentation": "<p>The maximum number of mesh results returned by <code>ListMeshes</code> in paginated\n         output. When this parameter is used, <code>ListMeshes</code> only returns\n            <code>limit</code> results in a single page along with a <code>nextToken</code> response\n         element. The remaining results of the initial request can be seen by sending another\n            <code>ListMeshes</code> request with the returned <code>nextToken</code> value. This\n         value can be between 1 and 100. If this parameter is not\n         used, then <code>ListMeshes</code> returns up to 100 results and a\n            <code>nextToken</code> value if applicable.</p>",
          "location": "querystring",
          "locationName": "limit"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated\n         <code>ListMeshes</code> request where <code>limit</code> was used and the\n         results exceeded the value of that parameter. Pagination continues from the end of the\n         previous results that returned the <code>nextToken</code> value.</p>\n         <note>\n            <p>This token should be treated as an opaque identifier that is only used to\n                retrieve the next items in a list and not for other programmatic purposes.</p>\n        </note>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      },
      "documentation": ""
    },
    "VirtualRouterStatus": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "VirtualRouterStatusCode",
          "documentation": "<p>The current status of the virtual router.</p>"
        }
      },
      "documentation": "<p>An object representing the status of a virtual router. </p>"
    },
    "ListMeshesOutput": {
      "type": "structure",
      "required": [
        "meshes"
      ],
      "members": {
        "meshes": {
          "shape": "MeshList",
          "documentation": "<p>The list of existing service meshes.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListMeshes</code>\n         request. When the results of a <code>ListMeshes</code> request exceed\n         <code>limit</code>, this value can be used to retrieve the next page of\n         results. This value is <code>null</code> when there are no more results to\n         return.</p>"
        }
      },
      "documentation": ""
    },
    "DescribeVirtualNodeOutput": {
      "type": "structure",
      "members": {
        "virtualNode": {
          "shape": "VirtualNodeData",
          "documentation": "<p>The full description of your virtual node.</p>"
        }
      },
      "documentation": "",
      "payload": "virtualNode"
    },
    "CreateMeshOutput": {
      "type": "structure",
      "members": {
        "mesh": {
          "shape": "MeshData",
          "documentation": "<p>The full description of your service mesh following the create call.</p>"
        }
      },
      "documentation": "",
      "payload": "mesh"
    },
    "ResourceName": {
      "type": "string",
      "min": 1,
      "max": 255
    },
    "RouteData": {
      "type": "structure",
      "required": [
        "meshName",
        "routeName",
        "virtualRouterName"
      ],
      "members": {
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which the route resides.</p>"
        },
        "metadata": {
          "shape": "ResourceMetadata",
          "documentation": "<p>The associated metadata for the route.</p>"
        },
        "routeName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the route.</p>"
        },
        "spec": {
          "shape": "RouteSpec",
          "documentation": "<p>The specifications of the route.</p>"
        },
        "status": {
          "shape": "RouteStatus",
          "documentation": "<p>The status of the route.</p>"
        },
        "virtualRouterName": {
          "shape": "ResourceName",
          "documentation": "<p>The virtual router with which the route is associated.</p>"
        }
      },
      "documentation": "<p>An object representing a route returned by a describe operation.</p>"
    },
    "Arn": {
      "type": "string"
    },
    "UpdateVirtualNodeInput": {
      "type": "structure",
      "required": [
        "meshName",
        "spec",
        "virtualNodeName"
      ],
      "members": {
        "clientToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\nrequest. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>",
          "idempotencyToken": true
        },
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which the virtual node resides.</p>",
          "location": "uri",
          "locationName": "meshName"
        },
        "spec": {
          "shape": "VirtualNodeSpec",
          "documentation": "<p>The new virtual node specification to apply. This overwrites the existing data.</p>"
        },
        "virtualNodeName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the virtual node to update.</p>",
          "location": "uri",
          "locationName": "virtualNodeName"
        }
      },
      "documentation": ""
    },
    "DeleteRouteInput": {
      "type": "structure",
      "required": [
        "meshName",
        "routeName",
        "virtualRouterName"
      ],
      "members": {
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which to delete the route.</p>",
          "location": "uri",
          "locationName": "meshName"
        },
        "routeName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the route to delete.</p>",
          "location": "uri",
          "locationName": "routeName"
        },
        "virtualRouterName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the virtual router in which to delete the route.</p>",
          "location": "uri",
          "locationName": "virtualRouterName"
        }
      },
      "documentation": ""
    },
    "Listeners": {
      "type": "list",
      "member": {
        "shape": "Listener"
      }
    },
    "ListRoutesInput": {
      "type": "structure",
      "required": [
        "meshName",
        "virtualRouterName"
      ],
      "members": {
        "limit": {
          "shape": "ListRoutesLimit",
          "documentation": "<p>The maximum number of mesh results returned by <code>ListRoutes</code> in paginated\n         output. When this parameter is used, <code>ListRoutes</code> only returns\n            <code>limit</code> results in a single page along with a <code>nextToken</code> response\n         element. The remaining results of the initial request can be seen by sending another\n            <code>ListRoutes</code> request with the returned <code>nextToken</code> value. This\n         value can be between 1 and 100. If this parameter is not\n         used, then <code>ListRoutes</code> returns up to 100 results and a\n            <code>nextToken</code> value if applicable.</p>",
          "location": "querystring",
          "locationName": "limit"
        },
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which to list routes.</p>",
          "location": "uri",
          "locationName": "meshName"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated\n         <code>ListRoutes</code> request where <code>limit</code> was used and the\n         results exceeded the value of that parameter. Pagination continues from the end of the\n         previous results that returned the <code>nextToken</code> value.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "virtualRouterName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the virtual router in which to list routes.</p>",
          "location": "uri",
          "locationName": "virtualRouterName"
        }
      },
      "documentation": ""
    },
    "HttpRoute": {
      "type": "structure",
      "members": {
        "action": {
          "shape": "HttpRouteAction",
          "documentation": "<p>The action to take if a match is determined.</p>"
        },
        "match": {
          "shape": "HttpRouteMatch",
          "documentation": "<p>The criteria for determining an HTTP request match.</p>"
        }
      },
      "documentation": "<p>An object representing the HTTP routing specification for a route.</p>"
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "ListRoutesOutput": {
      "type": "structure",
      "required": [
        "routes"
      ],
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListRoutes</code>\n         request. When the results of a <code>ListRoutes</code> request exceed\n         <code>limit</code>, this value can be used to retrieve the next page of\n         results. This value is <code>null</code> when there are no more results to\n         return.</p>"
        },
        "routes": {
          "shape": "RouteList",
          "documentation": "<p>The list of existing routes for the specified service mesh and virtual router.</p>"
        }
      },
      "documentation": ""
    },
    "RouteSpec": {
      "type": "structure",
      "members": {
        "httpRoute": {
          "shape": "HttpRoute",
          "documentation": "<p>The HTTP routing information for the route.</p>"
        }
      },
      "documentation": "<p>An object representing the specification of a route.</p>"
    },
    "DescribeVirtualNodeInput": {
      "type": "structure",
      "required": [
        "meshName",
        "virtualNodeName"
      ],
      "members": {
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which the virtual node resides.</p>",
          "location": "uri",
          "locationName": "meshName"
        },
        "virtualNodeName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the virtual node to describe.</p>",
          "location": "uri",
          "locationName": "virtualNodeName"
        }
      },
      "documentation": ""
    },
    "VirtualRouterRef": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The full Amazon Resource Name (ARN) for the virtual router.</p>"
        },
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which the virtual router resides.</p>"
        },
        "virtualRouterName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the virtual router.</p>"
        }
      },
      "documentation": "<p>An object representing a virtual router returned by a list operation.</p>"
    },
    "VirtualRouterStatusCode": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "DELETED",
        "INACTIVE"
      ]
    },
    "ListVirtualNodesOutput": {
      "type": "structure",
      "required": [
        "virtualNodes"
      ],
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListVirtualNodes</code>\n         request. When the results of a <code>ListVirtualNodes</code> request exceed\n         <code>limit</code>, this value can be used to retrieve the next page of\n         results. This value is <code>null</code> when there are no more results to\n         return.</p>"
        },
        "virtualNodes": {
          "shape": "VirtualNodeList",
          "documentation": "<p>The list of existing virtual nodes for the specified service mesh.</p>"
        }
      },
      "documentation": ""
    },
    "DeleteVirtualNodeOutput": {
      "type": "structure",
      "members": {
        "virtualNode": {
          "shape": "VirtualNodeData",
          "documentation": "<p>The virtual node that was deleted.</p>"
        }
      },
      "documentation": "",
      "payload": "virtualNode"
    },
    "UpdateVirtualRouterInput": {
      "type": "structure",
      "required": [
        "meshName",
        "spec",
        "virtualRouterName"
      ],
      "members": {
        "clientToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\nrequest. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>",
          "idempotencyToken": true
        },
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which the virtual router resides.</p>",
          "location": "uri",
          "locationName": "meshName"
        },
        "spec": {
          "shape": "VirtualRouterSpec",
          "documentation": "<p>The new virtual router specification to apply. This overwrites the existing data.</p>"
        },
        "virtualRouterName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the virtual router to update.</p>",
          "location": "uri",
          "locationName": "virtualRouterName"
        }
      },
      "documentation": ""
    },
    "DescribeRouteInput": {
      "type": "structure",
      "required": [
        "meshName",
        "routeName",
        "virtualRouterName"
      ],
      "members": {
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which the route resides.</p>",
          "location": "uri",
          "locationName": "meshName"
        },
        "routeName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the route to describe.</p>",
          "location": "uri",
          "locationName": "routeName"
        },
        "virtualRouterName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the virtual router with which the route is associated.</p>",
          "location": "uri",
          "locationName": "virtualRouterName"
        }
      },
      "documentation": ""
    },
    "ListVirtualRoutersOutput": {
      "type": "structure",
      "required": [
        "virtualRouters"
      ],
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListVirtualRouters</code>\n         request. When the results of a <code>ListVirtualRouters</code> request exceed\n         <code>limit</code>, this value can be used to retrieve the next page of\n         results. This value is <code>null</code> when there are no more results to\n         return.</p>"
        },
        "virtualRouters": {
          "shape": "VirtualRouterList",
          "documentation": "<p>The list of existing virtual routers for the specified service mesh.</p>"
        }
      },
      "documentation": ""
    },
    "CreateVirtualNodeOutput": {
      "type": "structure",
      "members": {
        "virtualNode": {
          "shape": "VirtualNodeData",
          "documentation": "<p>The full description of your virtual node following the create call.</p>"
        }
      },
      "documentation": "",
      "payload": "virtualNode"
    },
    "DeleteVirtualRouterOutput": {
      "type": "structure",
      "members": {
        "virtualRouter": {
          "shape": "VirtualRouterData",
          "documentation": "<p>The virtual router that was deleted.</p>"
        }
      },
      "documentation": "",
      "payload": "virtualRouter"
    },
    "ListRoutesLimit": {
      "type": "integer",
      "box": true,
      "min": 1,
      "max": 100
    },
    "PortProtocol": {
      "type": "string",
      "enum": [
        "http",
        "tcp"
      ]
    },
    "MeshList": {
      "type": "list",
      "member": {
        "shape": "MeshRef"
      }
    },
    "ResourceMetadata": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The full Amazon Resource Name (ARN) for the resource.</p>\n         <note>\n            <p>After you create a virtual node, set this value (either the full ARN or the\n            truncated resource name, for example, <code>mesh/default/virtualNode/simpleapp</code>,\n            as the <code>APPMESH_VIRTUAL_NODE_NAME</code> environment variable for your task group's\n            Envoy proxy container in your task definition or pod spec. This is then mapped to the\n               <code>node.id</code> and <code>node.cluster</code> Envoy parameters.</p>\n            <p>If you require your Envoy stats or tracing to use a different name, you can override\n            the <code>node.cluster</code> value that is set by\n               <code>APPMESH_VIRTUAL_NODE_NAME</code> with the\n               <code>APPMESH_VIRTUAL_NODE_CLUSTER</code> environment variable.</p>\n         </note>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix epoch timestamp in seconds for when the resource was created.</p>"
        },
        "lastUpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>"
        },
        "uid": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the resource.</p>"
        },
        "version": {
          "shape": "Long",
          "documentation": "<p>The version of the resource. Resources are created at version 1, and this version is\n         incremented each time they are updated.</p>"
        }
      },
      "documentation": "<p>An object representing metadata for a resource.</p>"
    },
    "CreateMeshInput": {
      "type": "structure",
      "required": [
        "meshName"
      ],
      "members": {
        "clientToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\nrequest. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>",
          "idempotencyToken": true
        },
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name to use for the service mesh.</p>"
        }
      },
      "documentation": ""
    },
    "PortMapping": {
      "type": "structure",
      "members": {
        "port": {
          "shape": "PortNumber",
          "documentation": "<p>The port used for the port mapping.</p>"
        },
        "protocol": {
          "shape": "PortProtocol",
          "documentation": "<p>The protocol used for the port mapping.</p>"
        }
      },
      "documentation": "<p>An object representing a virtual node listener port mapping.</p>"
    },
    "VirtualNodeStatusCode": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "DELETED",
        "INACTIVE"
      ]
    },
    "DeleteVirtualRouterInput": {
      "type": "structure",
      "required": [
        "meshName",
        "virtualRouterName"
      ],
      "members": {
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which to delete the virtual router.</p>",
          "location": "uri",
          "locationName": "meshName"
        },
        "virtualRouterName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the virtual router to delete.</p>",
          "location": "uri",
          "locationName": "virtualRouterName"
        }
      },
      "documentation": ""
    },
    "VirtualRouterSpec": {
      "type": "structure",
      "members": {
        "serviceNames": {
          "shape": "ServiceNames",
          "documentation": "<p>The service mesh service names to associate with the virtual router.</p>"
        }
      },
      "documentation": "<p>An object representing the specification of a virtual router.</p>"
    },
    "UpdateRouteInput": {
      "type": "structure",
      "required": [
        "meshName",
        "routeName",
        "spec",
        "virtualRouterName"
      ],
      "members": {
        "clientToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\nrequest. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>",
          "idempotencyToken": true
        },
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which the route resides.</p>",
          "location": "uri",
          "locationName": "meshName"
        },
        "routeName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the route to update.</p>",
          "location": "uri",
          "locationName": "routeName"
        },
        "spec": {
          "shape": "RouteSpec",
          "documentation": "<p>The new route specification to apply. This overwrites the existing data.</p>"
        },
        "virtualRouterName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the virtual router with which the route is associated.</p>",
          "location": "uri",
          "locationName": "virtualRouterName"
        }
      },
      "documentation": ""
    },
    "PercentInt": {
      "type": "integer",
      "min": 0,
      "max": 100
    },
    "ListMeshesLimit": {
      "type": "integer",
      "box": true,
      "min": 1,
      "max": 100
    },
    "DescribeMeshInput": {
      "type": "structure",
      "required": [
        "meshName"
      ],
      "members": {
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh to describe.</p>",
          "location": "uri",
          "locationName": "meshName"
        }
      },
      "documentation": ""
    },
    "DescribeMeshOutput": {
      "type": "structure",
      "members": {
        "mesh": {
          "shape": "MeshData",
          "documentation": "<p>The full description of your service mesh.</p>"
        }
      },
      "documentation": "",
      "payload": "mesh"
    },
    "VirtualRouterData": {
      "type": "structure",
      "required": [
        "meshName",
        "virtualRouterName"
      ],
      "members": {
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which the virtual router resides.</p>"
        },
        "metadata": {
          "shape": "ResourceMetadata",
          "documentation": "<p>The associated metadata for the virtual router.</p>"
        },
        "spec": {
          "shape": "VirtualRouterSpec",
          "documentation": "<p>The specifications of the virtual router.</p>"
        },
        "status": {
          "shape": "VirtualRouterStatus",
          "documentation": "<p>The current status of the virtual router.</p>"
        },
        "virtualRouterName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the virtual router.</p>"
        }
      },
      "documentation": "<p>An object representing a virtual router returned by a describe operation.</p>"
    },
    "VirtualRouterList": {
      "type": "list",
      "member": {
        "shape": "VirtualRouterRef"
      }
    },
    "Listener": {
      "type": "structure",
      "members": {
        "healthCheck": {
          "shape": "HealthCheckPolicy",
          "documentation": "<p>The health check information for the listener.</p>"
        },
        "portMapping": {
          "shape": "PortMapping",
          "documentation": "<p>The port mapping information for the listener.</p>"
        }
      },
      "documentation": "<p>An object representing a listener for a virtual node.</p>"
    },
    "String": {
      "type": "string"
    },
    "HealthCheckPolicy": {
      "type": "structure",
      "required": [
        "healthyThreshold",
        "intervalMillis",
        "protocol",
        "timeoutMillis",
        "unhealthyThreshold"
      ],
      "members": {
        "healthyThreshold": {
          "shape": "HealthCheckThreshold",
          "documentation": "<p>The number of consecutive successful health checks that must occur before declaring\n         listener healthy.</p>"
        },
        "intervalMillis": {
          "shape": "HealthCheckIntervalMillis",
          "documentation": "<p>The time period in milliseconds between each health check execution.</p>"
        },
        "path": {
          "shape": "String",
          "documentation": "<p>The destination path for the health check request. This is only required if the\n         specified protocol is HTTP; if the protocol is TCP, then this parameter is ignored.</p>"
        },
        "port": {
          "shape": "PortNumber",
          "documentation": "<p>The destination port for the health check request. This port must match the port defined\n         in the <a>PortMapping</a> for the listener.</p>"
        },
        "protocol": {
          "shape": "PortProtocol",
          "documentation": "<p>The protocol for the health check request.</p>"
        },
        "timeoutMillis": {
          "shape": "HealthCheckTimeoutMillis",
          "documentation": "<p>The amount of time to wait when receiving a response from the health check, in\n         milliseconds.</p>"
        },
        "unhealthyThreshold": {
          "shape": "HealthCheckThreshold",
          "documentation": "<p>The number of consecutive failed health checks that must occur before declaring a\n         virtual node unhealthy. </p>"
        }
      },
      "documentation": "<p>An object representing the health check policy for a virtual node's listener.</p>"
    },
    "ListVirtualRoutersInput": {
      "type": "structure",
      "required": [
        "meshName"
      ],
      "members": {
        "limit": {
          "shape": "ListVirtualRoutersLimit",
          "documentation": "<p>The maximum number of mesh results returned by <code>ListVirtualRouters</code> in\n         paginated output. When this parameter is used, <code>ListVirtualRouters</code> only returns\n         <code>limit</code> results in a single page along with a <code>nextToken</code>\n         response element. The remaining results of the initial request can be seen by sending\n         another <code>ListVirtualRouters</code> request with the returned <code>nextToken</code>\n         value. This value can be between 1 and 100. If this\n         parameter is not used, then <code>ListVirtualRouters</code> returns up to\n         100 results and a <code>nextToken</code> value if applicable.</p>",
          "location": "querystring",
          "locationName": "limit"
        },
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which to list virtual routers.</p>",
          "location": "uri",
          "locationName": "meshName"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated\n         <code>ListVirtualRouters</code> request where <code>limit</code> was used and the\n         results exceeded the value of that parameter. Pagination continues from the end of the\n         previous results that returned the <code>nextToken</code> value.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      },
      "documentation": ""
    },
    "CreateVirtualNodeInput": {
      "type": "structure",
      "required": [
        "meshName",
        "spec",
        "virtualNodeName"
      ],
      "members": {
        "clientToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\nrequest. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>",
          "idempotencyToken": true
        },
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which to create the virtual node.</p>",
          "location": "uri",
          "locationName": "meshName"
        },
        "spec": {
          "shape": "VirtualNodeSpec",
          "documentation": "<p>The virtual node specification to apply.</p>"
        },
        "virtualNodeName": {
          "shape": "ResourceName",
          "documentation": "<p>The name to use for the virtual node.</p>"
        }
      },
      "documentation": ""
    },
    "MeshData": {
      "type": "structure",
      "required": [
        "meshName",
        "metadata"
      ],
      "members": {
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh.</p>"
        },
        "metadata": {
          "shape": "ResourceMetadata",
          "documentation": "<p>The associated metadata for the service mesh.</p>"
        },
        "status": {
          "shape": "MeshStatus",
          "documentation": "<p>The status of the service mesh.</p>"
        }
      },
      "documentation": "<p>An object representing a service mesh returned by a describe operation.</p>"
    },
    "ListVirtualNodesLimit": {
      "type": "integer",
      "box": true,
      "min": 1,
      "max": 100
    },
    "WeightedTargets": {
      "type": "list",
      "member": {
        "shape": "WeightedTarget"
      }
    },
    "DeleteMeshInput": {
      "type": "structure",
      "required": [
        "meshName"
      ],
      "members": {
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh to delete.</p>",
          "location": "uri",
          "locationName": "meshName"
        }
      },
      "documentation": ""
    },
    "HttpRouteMatch": {
      "type": "structure",
      "members": {
        "prefix": {
          "shape": "String",
          "documentation": "<p>Specifies the path with which to match requests. This parameter must always start with\n            <code>/</code>, which by itself matches all requests to the virtual router service name.\n         You can also match for path-based routing of requests. For example, if your virtual router\n         service name is <code>my-service.local</code>, and you want the route to match requests to\n            <code>my-service.local/metrics</code>, then your prefix should be\n         <code>/metrics</code>.</p>"
        }
      },
      "documentation": "<p>An object representing the requirements for a route to match HTTP requests for a virtual\n         router.</p>"
    },
    "DeleteRouteOutput": {
      "type": "structure",
      "members": {
        "route": {
          "shape": "RouteData",
          "documentation": "<p>The route that was deleted.</p>"
        }
      },
      "documentation": "",
      "payload": "route"
    },
    "Backends": {
      "type": "list",
      "member": {
        "shape": "ServiceName"
      }
    },
    "CreateRouteInput": {
      "type": "structure",
      "required": [
        "meshName",
        "routeName",
        "spec",
        "virtualRouterName"
      ],
      "members": {
        "clientToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\nrequest. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>",
          "idempotencyToken": true
        },
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which to create the route.</p>",
          "location": "uri",
          "locationName": "meshName"
        },
        "routeName": {
          "shape": "ResourceName",
          "documentation": "<p>The name to use for the route.</p>"
        },
        "spec": {
          "shape": "RouteSpec",
          "documentation": "<p>The route specification to apply.</p>"
        },
        "virtualRouterName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the virtual router in which to create the route.</p>",
          "location": "uri",
          "locationName": "virtualRouterName"
        }
      },
      "documentation": ""
    },
    "VirtualNodeStatus": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "VirtualNodeStatusCode",
          "documentation": "<p>The current status of the virtual node.</p>"
        }
      },
      "documentation": "<p>An object representing the current status of the virtual node.</p>"
    },
    "ListVirtualNodesInput": {
      "type": "structure",
      "required": [
        "meshName"
      ],
      "members": {
        "limit": {
          "shape": "ListVirtualNodesLimit",
          "documentation": "<p>The maximum number of mesh results returned by <code>ListVirtualNodes</code> in\n         paginated output. When this parameter is used, <code>ListVirtualNodes</code> only returns\n         <code>limit</code> results in a single page along with a <code>nextToken</code>\n         response element. The remaining results of the initial request can be seen by sending\n         another <code>ListVirtualNodes</code> request with the returned <code>nextToken</code>\n         value. This value can be between 1 and 100. If this\n         parameter is not used, then <code>ListVirtualNodes</code> returns up to\n         100 results and a <code>nextToken</code> value if applicable.</p>",
          "location": "querystring",
          "locationName": "limit"
        },
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which to list virtual nodes.</p>",
          "location": "uri",
          "locationName": "meshName"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated\n         <code>ListVirtualNodes</code> request where <code>limit</code> was used and the\n         results exceeded the value of that parameter. Pagination continues from the end of the\n         previous results that returned the <code>nextToken</code> value.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      },
      "documentation": ""
    },
    "RouteRef": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The full Amazon Resource Name (ARN) for the route.</p>"
        },
        "meshName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the service mesh in which the route resides.</p>"
        },
        "routeName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the route.</p>"
        },
        "virtualRouterName": {
          "shape": "ResourceName",
          "documentation": "<p>The virtual router with which the route is associated.</p>"
        }
      },
      "documentation": "<p>An object representing a route returned by a list operation.</p>"
    },
    "RouteStatusCode": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "DELETED",
        "INACTIVE"
      ]
    },
    "UpdateVirtualNodeOutput": {
      "type": "structure",
      "members": {
        "virtualNode": {
          "shape": "VirtualNodeData",
          "documentation": "<p>A full description of the virtual node that was updated.</p>"
        }
      },
      "documentation": "",
      "payload": "virtualNode"
    }
  }
}
]===]))
