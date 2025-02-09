local decode = require("cjson").new().decode
return assert(decode([===[
{
  "documentation": "<p>Use the AWS Elemental MediaTailor SDK to configure scalable ad insertion for your live and VOD content. With AWS Elemental MediaTailor, you can serve targeted ads to viewers while maintaining broadcast quality in over-the-top (OTT) video applications. For information about using the service, including detailed information about the settings covered in this guide, see the AWS Elemental MediaTailor User Guide.<p>Through the SDK, you manage AWS Elemental MediaTailor configurations the same as you do through the console. For example, you specify ad insertion behavior and mapping information for the origin server and the ad decision server (ADS).</p>",
  "metadata": {
    "apiVersion": "2018-04-23",
    "endpointPrefix": "api.mediatailor",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "MediaTailor",
    "serviceFullName": "AWS MediaTailor",
    "serviceId": "MediaTailor",
    "signatureVersion": "v4",
    "signingName": "mediatailor",
    "uid": "mediatailor-2018-04-23"
  },
  "operations": {
    "DeletePlaybackConfiguration": {
      "documentation": "<p>Deletes the playback configuration for the specified name. </p>",
      "errors": [],
      "http": {
        "method": "DELETE",
        "requestUri": "/playbackConfiguration/{Name}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeletePlaybackConfigurationRequest"
      },
      "name": "DeletePlaybackConfiguration",
      "output": {
        "documentation": "<p>The request was successful and there is no content in the response. </p>",
        "shape": "DeletePlaybackConfigurationResponse"
      }
    },
    "GetPlaybackConfiguration": {
      "documentation": "<p>Returns the playback configuration for the specified name. </p>",
      "errors": [],
      "http": {
        "method": "GET",
        "requestUri": "/playbackConfiguration/{Name}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetPlaybackConfigurationRequest"
      },
      "name": "GetPlaybackConfiguration",
      "output": {
        "documentation": "<p>Success.</p>",
        "shape": "GetPlaybackConfigurationResponse"
      }
    },
    "ListPlaybackConfigurations": {
      "documentation": "<p>Returns a list of the playback configurations defined in AWS Elemental MediaTailor. You can specify a maximum number of configurations to return at a time. The default maximum is 50. Results are returned in pagefuls. If MediaTailor has more configurations than the specified maximum, it provides parameters in the response that you can use to retrieve the next pageful. </p>",
      "errors": [],
      "http": {
        "method": "GET",
        "requestUri": "/playbackConfigurations",
        "responseCode": 200
      },
      "input": {
        "shape": "ListPlaybackConfigurationsRequest"
      },
      "name": "ListPlaybackConfigurations",
      "output": {
        "documentation": "<p>Success.</p>",
        "shape": "ListPlaybackConfigurationsResponse"
      }
    },
    "ListTagsForResource": {
      "documentation": "<p>Returns a list of the tags assigned to the specified playback configuration resource. </p>",
      "errors": [
        {
          "documentation": "<p>Invalid request parameters.</p>",
          "shape": "BadRequestException"
        }
      ],
      "http": {
        "method": "GET",
        "requestUri": "/tags/{ResourceArn}",
        "responseCode": 200
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "name": "ListTagsForResource",
      "output": {
        "documentation": "<p>Success. </p>",
        "shape": "ListTagsForResourceResponse"
      }
    },
    "PutPlaybackConfiguration": {
      "documentation": "<p>Adds a new playback configuration to AWS Elemental MediaTailor. </p>",
      "errors": [],
      "http": {
        "method": "PUT",
        "requestUri": "/playbackConfiguration",
        "responseCode": 200
      },
      "input": {
        "shape": "PutPlaybackConfigurationRequest"
      },
      "name": "PutPlaybackConfiguration",
      "output": {
        "documentation": "<p>Success.</p>",
        "shape": "PutPlaybackConfigurationResponse"
      }
    },
    "TagResource": {
      "documentation": "<p>Adds tags to the specified playback configuration resource. You can specify one or more tags to add. </p>",
      "errors": [
        {
          "documentation": "<p>Invalid request parameters.</p>",
          "shape": "BadRequestException"
        }
      ],
      "http": {
        "method": "POST",
        "requestUri": "/tags/{ResourceArn}",
        "responseCode": 204
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "name": "TagResource"
    },
    "UntagResource": {
      "documentation": "<p>Removes tags from the specified playback configuration resource. You can specify one or more tags to remove. </p>",
      "errors": [
        {
          "documentation": "<p>Invalid request parameters.</p>",
          "shape": "BadRequestException"
        }
      ],
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{ResourceArn}",
        "responseCode": 204
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "name": "UntagResource"
    }
  },
  "shapes": {
    "AvailSuppression": {
      "type": "structure",
      "documentation": "<p>The configuration for Avail Suppression. Ad suppression can be used to turn off ad personalization in a long manifest, or if a viewer joins mid-break.</p>",
      "members": {
        "Mode": {
          "documentation": "Sets the mode for avail suppression, also known as ad suppression. By default, ad suppression is off and all ad breaks are filled by MediaTailor with ads or slate.",
          "shape": "Mode"
        },
        "Value": {
          "documentation": "The avail suppression value is a live edge offset time in HH:MM:SS. MediaTailor won't fill ad breaks on or behind this time in the manifest lookback window. ",
          "shape": "__string"
        }
      }
    },
    "Bumper": {
      "type": "structure",
      "documentation": "<p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. </p>",
      "members": {
        "EndUrl": {
          "documentation": "<p>The URL for the end bumper asset. </p>",
          "shape": "__string"
        },
        "StartUrl": {
          "documentation": "<p>The URL for the start bumper asset. </p>",
          "shape": "__string"
        }
      }
    },
    "CdnConfiguration": {
      "documentation": "<p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. </p>",
      "members": {
        "AdSegmentUrlPrefix": {
          "documentation": "<p>A non-default content delivery network (CDN) to serve ad segments. By default, AWS Elemental MediaTailor uses Amazon CloudFront with default cache settings as its CDN for ad segments. To set up an alternate CDN, create a rule in your CDN for the following origin: ads.mediatailor.&lt;region>.amazonaws.com. Then specify the rule's name in this AdSegmentUrlPrefix. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for ad segments.</p>",
          "shape": "__string"
        },
        "ContentSegmentUrlPrefix": {
          "documentation": "<p>A content delivery network (CDN) to cache content segments, so that content requests don’t always have to go to the origin server. First, create a rule in your CDN for the content segment origin server. Then specify the rule's name in this ContentSegmentUrlPrefix. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for content segments.</p>",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "DashConfiguration": {
      "documentation": "<p>The configuration for DASH content. </p>",
      "members": {
        "ManifestEndpointPrefix": {
          "documentation": "<p>The URL generated by MediaTailor to initiate a playback session. The session uses server-side reporting. This setting is ignored in PUT operations. </p>",
          "shape": "__string"
        },
        "MpdLocation": {
          "documentation": "<p>The setting that controls whether MediaTailor includes the Location tag in DASH manifests. MediaTailor populates the Location tag with the URL for manifest update requests, to be used by players that don't support sticky redirects. Disable this if you have CDN routing rules set up for accessing MediaTailor manifests, and you are either using client-side reporting or your players support sticky HTTP redirects. Valid values are DISABLED and EMT_DEFAULT. The EMT_DEFAULT setting enables the inclusion of the tag and is the default value. </p>",
          "shape": "__string"
        },
        "OriginManifestType": {
          "documentation": "<p>The setting that controls whether MediaTailor handles manifests from the origin server as multi-period manifests or single-period manifests. If your origin server produces single-period manifests, set this to SINGLE_PERIOD. The default setting is MULTI_PERIOD. For multi-period manifests, omit this setting or set it to MULTI_PERIOD. </p>",
          "shape": "OriginManifestType"
        }
      },
      "type": "structure"
    },
    "DashConfigurationForPut": {
      "documentation": "<p>The configuration for DASH PUT operations. </p>",
      "members": {
        "MpdLocation": {
          "documentation": "<p>The setting that controls whether MediaTailor includes the Location tag in DASH manifests. MediaTailor populates the Location tag with the URL for manifest update requests, to be used by players that don't support sticky redirects. Disable this if you have CDN routing rules set up for accessing MediaTailor manifests, and you are either using client-side reporting or your players support sticky HTTP redirects. Valid values are DISABLED and EMT_DEFAULT. The EMT_DEFAULT setting enables the inclusion of the tag and is the default value. </p>",
          "shape": "__string"
        },
        "OriginManifestType": {
          "documentation": "<p>The setting that controls whether MediaTailor handles manifests from the origin server as multi-period manifests or single-period manifests. If your origin server produces single-period manifests, set this to SINGLE_PERIOD. The default setting is MULTI_PERIOD. For multi-period manifests, omit this setting or set it to MULTI_PERIOD. </p>",
          "shape": "OriginManifestType"
        }
      },
      "type": "structure"
    },
    "DeletePlaybackConfigurationRequest": {
      "members": {
        "Name": {
          "documentation": "<p>The identifier for the playback configuration.</p>",
          "location": "uri",
          "locationName": "Name",
          "shape": "__string"
        }
      },
      "required": [
        "Name"
      ],
      "type": "structure"
    },
    "DeletePlaybackConfigurationResponse": {
      "members": {},
      "type": "structure"
    },
    "GetPlaybackConfigurationRequest": {
      "members": {
        "Name": {
          "documentation": "<p>The identifier for the playback configuration.</p>",
          "location": "uri",
          "locationName": "Name",
          "shape": "__string"
        }
      },
      "required": [
        "Name"
      ],
      "type": "structure"
    },
    "GetPlaybackConfigurationResponse": {
      "members": {
        "AdDecisionServerUrl": {
          "documentation": "<p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25,000 characters.</p>",
          "shape": "__string"
        },
        "AvailSuppression": {
          "shape": "AvailSuppression",
          "documentation": "<p>The configuration for Avail Suppression. Ad suppression can be used to turn off ad personalization in a long manifest, or if a viewer joins mid-break.</p>"
        },
        "Bumper": {
          "shape": "Bumper",
          "documentation": "<p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. </p>"
        },
        "CdnConfiguration": {
          "documentation": "<p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. </p>",
          "shape": "CdnConfiguration"
        },
        "DashConfiguration": {
          "documentation": "<p>The configuration for DASH content. </p>",
          "shape": "DashConfiguration"
        },
        "HlsConfiguration": {
          "documentation": "<p>The configuration for HLS content. </p>",
          "shape": "HlsConfiguration"
        },
        "LivePreRollConfiguration": {
          "shape": "LivePreRollConfiguration",
          "documentation": "<p>The configuration for pre-roll ad insertion.</p>"
        },
        "Name": {
          "documentation": "<p>The identifier for the playback configuration.</p>",
          "shape": "__string"
        },
        "PersonalizationThresholdSeconds": {
          "documentation": "<p>The maximum duration of underfilled ad time (in seconds) allowed in an ad break.</p>",
          "shape": "__integerMin1"
        },
        "PlaybackConfigurationArn": {
          "documentation": "<p>The Amazon Resource Name (ARN) for the playback configuration. </p>",
          "shape": "__string"
        },
        "PlaybackEndpointPrefix": {
          "documentation": "<p>The URL that the player accesses to get a manifest from AWS Elemental MediaTailor. This session will use server-side reporting. </p>",
          "shape": "__string"
        },
        "SessionInitializationEndpointPrefix": {
          "documentation": "<p>The URL that the player uses to initialize a session that uses client-side reporting. </p>",
          "shape": "__string"
        },
        "SlateAdUrl": {
          "documentation": "<p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID playback configurations. For VPAID, the slate is required because MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. </p>",
          "shape": "__string"
        },
        "Tags": {
          "documentation": "<p>The tags assigned to the playback configuration. </p>",
          "locationName": "tags",
          "shape": "__mapOf__string"
        },
        "TranscodeProfileName": {
          "documentation": "<p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>",
          "shape": "__string"
        },
        "VideoContentSourceUrl": {
          "documentation": "<p>The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.</p>",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "HlsConfiguration": {
      "documentation": "<p>The configuration for HLS content. </p>",
      "members": {
        "ManifestEndpointPrefix": {
          "documentation": "<p>The URL that is used to initiate a playback session for devices that support Apple HLS. The session uses server-side reporting.</p>",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "ListPlaybackConfigurationsRequest": {
      "members": {
        "MaxResults": {
          "documentation": "<p>Maximum number of records to return. </p>",
          "location": "querystring",
          "locationName": "MaxResults",
          "shape": "__integerMin1Max100"
        },
        "NextToken": {
          "documentation": "<p>Pagination token returned by the GET list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>",
          "location": "querystring",
          "locationName": "NextToken",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "ListPlaybackConfigurationsResponse": {
      "members": {
        "Items": {
          "documentation": "<p>Array of playback configurations. This might be all the available configurations or a subset, depending on the settings that you provide and the total number of configurations stored. </p>",
          "shape": "__listOfPlaybackConfigurations"
        },
        "NextToken": {
          "documentation": "<p>Pagination token returned by the GET list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "ListTagsForResourceRequest": {
      "members": {
        "ResourceArn": {
          "documentation": "<p>The Amazon Resource Name (ARN) for the playback configuration. You can get this from the response to any playback configuration request. </p>",
          "location": "uri",
          "locationName": "ResourceArn",
          "shape": "__string"
        }
      },
      "required": [
        "ResourceArn"
      ],
      "type": "structure"
    },
    "ListTagsForResourceResponse": {
      "members": {
        "Tags": {
          "documentation": "<p>A comma-separated list of tag key:value pairs. For example: \n {\n \"Key1\": \"Value1\",\n \"Key2\": \"Value2\"\n }\n </p>",
          "locationName": "tags",
          "shape": "__mapOf__string"
        }
      },
      "type": "structure"
    },
    "OriginManifestType": {
      "enum": [
        "SINGLE_PERIOD",
        "MULTI_PERIOD"
      ],
      "type": "string"
    },
    "Mode": {
      "enum": [
        "OFF",
        "BEHIND_LIVE_EDGE"
      ],
      "type": "string"
    },
    "PlaybackConfiguration": {
      "documentation": "<p>The AWSMediaTailor configuration.</p>",
      "members": {
        "AdDecisionServerUrl": {
          "documentation": "<p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25,000 characters.</p>",
          "shape": "__string"
        },
        "AvailSuppression": {
          "documentation": "<p>The configuration for Avail Suppression. Ad suppression can be used to turn off ad personalization in a long manifest, or if a viewer joins mid-break.</p>",
          "shape": "AvailSuppression"
        },
        "Bumper": {
          "shape": "Bumper",
          "documentation": "<p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. </p>"
        },
        "CdnConfiguration": {
          "documentation": "<p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. </p>",
          "shape": "CdnConfiguration"
        },
        "DashConfiguration": {
          "documentation": "<p>The configuration for DASH content. </p>",
          "shape": "DashConfiguration"
        },
        "HlsConfiguration": {
          "documentation": "<p>The configuration for HLS content. </p>",
          "shape": "HlsConfiguration"
        },
        "Name": {
          "documentation": "<p>The identifier for the playback configuration.</p>",
          "shape": "__string"
        },
        "PlaybackConfigurationArn": {
          "documentation": "<p>The Amazon Resource Name (ARN) for the playback configuration. </p>",
          "shape": "__string"
        },
        "PlaybackEndpointPrefix": {
          "documentation": "<p>The URL that the player accesses to get a manifest from AWS Elemental MediaTailor. This session will use server-side reporting. </p>",
          "shape": "__string"
        },
        "SessionInitializationEndpointPrefix": {
          "documentation": "<p>The URL that the player uses to initialize a session that uses client-side reporting. </p>",
          "shape": "__string"
        },
        "SlateAdUrl": {
          "documentation": "<p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID playback configurations. For VPAID, the slate is required because MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. </p>",
          "shape": "__string"
        },
        "Tags": {
          "documentation": "<p>The tags assigned to the playback configuration. </p>",
          "locationName": "tags",
          "shape": "__mapOf__string"
        },
        "TranscodeProfileName": {
          "documentation": "<p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>",
          "shape": "__string"
        },
        "PersonalizationThresholdSeconds": {
          "documentation": "<p>The maximum duration of underfilled ad time (in seconds) allowed in an ad break.</p>",
          "shape": "__integerMin1"
        },
        "VideoContentSourceUrl": {
          "documentation": "<p>The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.</p>",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "LivePreRollConfiguration": {
      "type": "structure",
      "members": {
        "AdDecisionServerUrl": {
          "shape": "__string",
          "documentation": "<p>The URL for the ad decision server (ADS) for pre-roll ads. This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25,000 characters.</p>"
        },
        "MaxDurationSeconds": {
          "shape": "__integer",
          "documentation": "The maximum allowed duration for the pre-roll ad avail. AWS Elemental MediaTailor won't play pre-roll ads to exceed this duration, regardless of the total duration of ads that the ADS returns."
        }
      },
      "documentation": "<p>The configuration for pre-roll ad insertion.</p>"
    },
    "PutPlaybackConfigurationRequest": {
      "members": {
        "AdDecisionServerUrl": {
          "documentation": "<p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25,000 characters.</p>",
          "shape": "__string"
        },
        "AvailSuppression": {
          "shape": "AvailSuppression",
          "documentation": "<p>The configuration for Avail Suppression. Ad suppression can be used to turn off ad personalization in a long manifest, or if a viewer joins mid-break.</p>"
        },
        "Bumper": {
          "shape": "Bumper",
          "documentation": "<p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. </p>"
        },
        "CdnConfiguration": {
          "documentation": "<p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. </p>",
          "shape": "CdnConfiguration"
        },
        "DashConfiguration": {
          "documentation": "<p>The configuration for DASH content. </p>",
          "shape": "DashConfigurationForPut"
        },
        "LivePreRollConfiguration": {
          "shape": "LivePreRollConfiguration",
          "documentation": "<p>The configuration for pre-roll ad insertion.</p>"
        },
        "Name": {
          "documentation": "<p>The identifier for the playback configuration.</p>",
          "shape": "__string"
        },
        "PersonalizationThresholdSeconds": {
          "documentation": "<p>The maximum duration of underfilled ad time (in seconds) allowed in an ad break.</p>",
          "shape": "__integerMin1"
        },
        "SlateAdUrl": {
          "documentation": "<p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because MediaTailor provides it in the slots that are designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. </p>",
          "shape": "__string"
        },
        "Tags": {
          "documentation": "<p>The tags to assign to the playback configuration. </p>",
          "locationName": "tags",
          "shape": "__mapOf__string"
        },
        "TranscodeProfileName": {
          "documentation": "<p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>",
          "shape": "__string"
        },
        "VideoContentSourceUrl": {
          "documentation": "<p>The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.</p>",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "PutPlaybackConfigurationResponse": {
      "members": {
        "AdDecisionServerUrl": {
          "documentation": "<p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25,000 characters.</p>",
          "shape": "__string"
        },
        "AvailSuppression": {
          "shape": "AvailSuppression",
          "documentation": "<p>The configuration for Avail Suppression. Ad suppression can be used to turn off ad personalization in a long manifest, or if a viewer joins mid-break.</p>"
        },
        "Bumper": {
          "shape": "Bumper",
          "documentation": "<p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. </p>"
        },
        "CdnConfiguration": {
          "documentation": "<p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. </p>",
          "shape": "CdnConfiguration"
        },
        "DashConfiguration": {
          "documentation": "<p>The configuration for DASH content. </p>",
          "shape": "DashConfiguration"
        },
        "HlsConfiguration": {
          "documentation": "<p>The configuration for HLS content. </p>",
          "shape": "HlsConfiguration"
        },
        "LivePreRollConfiguration": {
          "shape": "LivePreRollConfiguration",
          "documentation": "<p>The configuration for pre-roll ad insertion.</p>"
        },
        "Name": {
          "documentation": "<p>The identifier for the playback configuration.</p>",
          "shape": "__string"
        },
        "PersonalizationThresholdSeconds": {
          "documentation": "<p>The maximum duration of underfilled ad time (in seconds) allowed in an ad break.</p>",
          "shape": "__integerMin1"
        },
        "PlaybackConfigurationArn": {
          "documentation": "<p>The Amazon Resource Name (ARN) for the playback configuration. </p>",
          "shape": "__string"
        },
        "PlaybackEndpointPrefix": {
          "documentation": "<p>The URL that the player accesses to get a manifest from AWS Elemental MediaTailor. This session will use server-side reporting. </p>",
          "shape": "__string"
        },
        "SessionInitializationEndpointPrefix": {
          "documentation": "<p>The URL that the player uses to initialize a session that uses client-side reporting. </p>",
          "shape": "__string"
        },
        "SlateAdUrl": {
          "documentation": "<p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID playback configurations. For VPAID, the slate is required because MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. </p>",
          "shape": "__string"
        },
        "Tags": {
          "documentation": "<p>The tags assigned to the playback configuration. </p>",
          "locationName": "tags",
          "shape": "__mapOf__string"
        },
        "TranscodeProfileName": {
          "documentation": "<p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>",
          "shape": "__string"
        },
        "VideoContentSourceUrl": {
          "documentation": "<p>The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.</p>",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "TagResourceRequest": {
      "members": {
        "ResourceArn": {
          "documentation": "<p>The Amazon Resource Name (ARN) for the playback configuration. You can get this from the response to any playback configuration request. </p>",
          "location": "uri",
          "locationName": "ResourceArn",
          "shape": "__string"
        },
        "Tags": {
          "documentation": "<p>A comma-separated list of tag key:value pairs. For example: \n {\n \"Key1\": \"Value1\",\n \"Key2\": \"Value2\"\n }\n </p>",
          "locationName": "tags",
          "shape": "__mapOf__string"
        }
      },
      "required": [
        "ResourceArn",
        "Tags"
      ],
      "type": "structure"
    },
    "UntagResourceRequest": {
      "members": {
        "ResourceArn": {
          "documentation": "<p>The Amazon Resource Name (ARN) for the playback configuration. You can get this from the response to any playback configuration request. </p>",
          "location": "uri",
          "locationName": "ResourceArn",
          "shape": "__string"
        },
        "TagKeys": {
          "documentation": "<p>A comma-separated list of the tag keys to remove from the playback configuration. </p>",
          "location": "querystring",
          "locationName": "tagKeys",
          "shape": "__listOf__string"
        }
      },
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "type": "structure"
    },
    "__integer": {
      "type": "integer"
    },
    "__integerMin1": {
      "type": "integer",
      "min": 1
    },
    "__integerMin1Max100": {
      "max": 100,
      "min": 1,
      "type": "integer"
    },
    "__listOfPlaybackConfigurations": {
      "member": {
        "shape": "PlaybackConfiguration"
      },
      "type": "list"
    },
    "__listOf__string": {
      "member": {
        "shape": "__string"
      },
      "type": "list"
    },
    "__mapOf__string": {
      "key": {
        "shape": "__string"
      },
      "type": "map",
      "value": {
        "shape": "__string"
      }
    },
    "__string": {
      "type": "string"
    }
  }
}
]===]))
