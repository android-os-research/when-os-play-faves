.class public Lcom/sec/ims/volte2/data/VolteConstants$ErrorCode;
.super Ljava/lang/Object;
.source "VolteConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/VolteConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/data/VolteConstants$ErrorCode$ErrorDesc;
    }
.end annotation


# static fields
.field public static final ACTIVE_CALL_ON_ANOTHER_SOFTPHONE:I = 0xbbf

.field public static final ADDRESS_INCOMPLETE:I = 0x1e4

.field public static final ALREADY_CALL_RELEASED:I = 0xe6

.field public static final ALTERNATIVE_SERVICES:I = 0x17c

.field public static final ALTERNATIVE_SERVICES_EMERGENCY:I = 0x17d

.field public static final ALTERNATIVE_SERVICES_EMERGENCY_CSFB:I = 0x17e

.field public static final ALTERNATIVE_SERVICE_ONLY_ERROR_CAUSE:I = 0x0

.field public static final ALTERNATIVE_SERVICE_ONLY_ERROR_COUNTS:I = 0x3

.field public static final ALTERNATIVE_SERVICE_ONLY_ERROR_TEXT:I = 0x1

.field public static final ALTERNATIVE_SERVICE_ONLY_ERROR_TYPE:I = 0x2

.field public static final BAD_EXTENSION:I = 0x1a4

.field public static final BAD_GATEWAY:I = 0x1f6

.field public static final BAD_REQUEST:I = 0x190

.field public static final BUSY_EVERYWHERE:I = 0x258

.field public static final BUSY_HERE:I = 0x1e6

.field public static final CALL_18X_RETRANSMISSION_TIMEOUT:I = 0x464

.field public static final CALL_5XX_RESPONSE:I = 0x899

.field public static final CALL_BARRED_BY_NETWORK:I = 0xaf1

.field public static final CALL_BARRED_DUE_TO_SSAC:I = 0x45c

.field public static final CALL_CANCEL_MODIFY_REQUESTED:I = 0x462

.field public static final CALL_CANCEL_TRANSFER_FAILED:I = 0x461

.field public static final CALL_CANCEL_TRANSFER_SUCCESS:I = 0x460

.field public static final CALL_ENDED_BY_NW_HANDOVER_BEFORE_100_TRYING:I = 0x45d

.field public static final CALL_END_CALL_NW_HANDOVER:I = 0x453

.field public static final CALL_END_REASON_IMS_DEREGISTRATION:I = 0x45b

.field public static final CALL_END_REASON_TELEPHONY_NOT_RESPONDING:I = 0x463

.field public static final CALL_FAILED:I = 0x8fd

.field public static final CALL_FAILED_SERVICE_UNAVAILABLE_NO_POPUP:I = 0x902

.field public static final CALL_FORBIDDEN:I = 0x7d1

.field public static final CALL_FORBIDDEN_RSN_EXPIRED:I = 0x8fe

.field public static final CALL_FORBIDDEN_RSN_GROUP_CALL_SERVICE_UNAVAILABLE:I = 0x8ff

.field public static final CALL_FORBIDDEN_RSN_OUTGOING_CALLS_IMPOSSIBLE:I = 0x901

.field public static final CALL_FORBIDDEN_RSN_TEMPORARY_DISABILITY:I = 0x900

.field public static final CALL_HAS_BEEN_TRANSFERRED_TO_ANOTHER_DEVICE:I = 0xbba

.field public static final CALL_HOLD_FAILED:I = 0x457

.field public static final CALL_INVITE_TIMEOUT:I = 0x45a

.field public static final CALL_NOT_ACCEPTABLE_DIVERT:I = 0x835

.field public static final CALL_REJECT_REASON_USR_BUSY_CS_CALL:I = 0x454

.field public static final CALL_RESUME_FAILED:I = 0x458

.field public static final CALL_RING_TIMER_EXPIRED:I = 0x70a

.field public static final CALL_SESSION_ABORT:I = 0x44d

.field public static final CALL_SESSION_TERMINATED:I = 0x44e

.field public static final CALL_SESSION_TIMEOUT:I = 0x44f

.field public static final CALL_STATUS_CONF_ADD_USER_TO_SESSION_FAILURE:I = 0x451

.field public static final CALL_STATUS_CONF_REMOVE_USER_FROM_SESSION_FAILURE:I = 0x452

.field public static final CALL_STATUS_CONF_START_SESSION_FAILURE:I = 0x450

.field public static final CALL_SWITCH_FAILURE:I = 0x455

.field public static final CALL_SWITCH_REJECTED:I = 0x456

.field public static final CALL_TEMP_UNAVAILABLE_415_CAUSE:I = 0x459

.field public static final CALL_TEMP_UNAVAILABLE_WITH_380_CAUSE:I = 0x89a

.field public static final CALL_TEMP_UNAVAILABLE_WITH_415_CAUSE:I = 0x89b

.field public static final CALL_TRANSFER_FAILED:I = 0x45f

.field public static final CALL_TRANSFER_SUCCESS:I = 0x45e

.field public static final CANCEL_CALL_BUSY:I = 0x9c9

.field public static final CANCEL_CALL_COMPLETED_ELSEWHERE:I = 0xbb9

.field public static final CANCEL_CALL_COMPLETED_ELSEWHERE_FORKED:I = 0xbc2

.field public static final CANCEL_CALL_COMPLETION:I = 0x9c8

.field public static final CANCEL_SERVICE_NOT_ALLOWED_IN_THIS_LOCATION:I = 0xbbc

.field public static final CANCEL_WITH_DECLINED_TEXT:I = 0xbc1

.field public static final CLIENT_ERROR:I = 0x3e9

.field public static final CLIENT_ERROR_NOT_ALLOWED_URI:I = 0x3ec

.field public static final CLIENT_ERROR_NOT_ENOUGH_PARTICIPANT:I = 0x3ed

.field public static final CLIENT_ERROR_NO_CALL_SESSION:I = 0x3ee

.field public static final CLIENT_ERROR_NO_REGISTRATION:I = 0x3eb

.field public static final CLIENT_ERROR_SESSION_CREATE_FAILURE:I = 0x3ea

.field public static final CMC_E911_NOT_ALLOWED_ON_SD:I = 0x1773

.field public static final CMC_ERROR_CODE_MAX:I = 0x1b57

.field public static final CMC_PD_CALL_EXISTS_ON_THE_OTHER_SLOT:I = 0x177b

.field public static final CMC_PD_NOT_REGISTERED:I = 0x1771

.field public static final CMC_PD_UNREACHABLE:I = 0x1772

.field public static final CMC_SD_CONNECTION_LOST:I = 0x1776

.field public static final CMC_SD_FORCE_CSFB:I = 0x177a

.field public static final CMC_SD_NOT_REGISTERED:I = 0x1774

.field public static final CMC_SD_VT_NOT_SUPPORT:I = 0x1775

.field public static final CMC_SERVER_RELAY_RESTRICTED:I = 0x177c

.field public static final DATA_CONNECTION_LOST:I = 0x6a5

.field public static final DECLINE:I = 0x25b

.field public static final DEREG_SUCCEEDED:I = 0x644

.field public static final DIAL_ALTERNATIVE_NUMBER:I = 0x96c

.field public static final DNS_FAILURE_HOST:I = 0x5df

.field public static final DNS_FAILURE_NAPTR:I = 0x5e0

.field public static final DNS_FAILURE_SVC:I = 0x5e1

.field public static final DNS_QUERY_RETRY_FAILED:I = 0x963

.field public static final DNS_QUERY_RETRY_START:I = 0x962

.field public static final DOES_NOT_EXIST_ANYWHERE:I = 0x25c

.field public static final EMERGENCY_CALLS_OVER_WIFI_NOT_ALLOWED:I = 0xbc0

.field public static final EMERGENCY_PERM_FAILURE:I = 0xa89

.field public static final EMERGENCY_TEMP_FAILURE:I = 0xa88

.field public static final END_BY_REGULAR_CALL_RELEASE:I = 0x1779

.field public static final FAILED_TO_GO_READY:I = 0x709

.field public static final FORBIDDEN:I = 0x193

.field public static final FORBIDDEN_MULTI_CALL_LIMITATION:I = 0x9ce

.field public static final FORBIDDEN_SERVICE_NOT_ALLOWED_IN_THIS_LOCATION:I = 0xbbb

.field public static final IMEI_NOT_ACCEPTED:I = 0xa8a

.field public static final INTERVAL_TOO_BRIEF:I = 0x1a7

.field public static final KDDI_INVITE_FAIL:I = 0xa8b

.field public static final LINE_IN_USE_ON_OTHER_DEVICE:I = 0x96d

.field public static final LOCAL_OK:I = 0xdc

.field public static final LOST_LTE_AND_WIFI_CONNECTION:I = 0x9c7

.field public static final LTE_911_FAIL:I = 0x9cb

.field public static final MAKECALL_REG_FAILURE_GENERAL:I = 0x7d5

.field public static final MAKECALL_REG_FAILURE_REG_403:I = 0x7d3

.field public static final MAKECALL_REG_FAILURE_REG_423:I = 0x7d4

.field public static final MAKECALL_REG_FAILURE_TIMER_F:I = 0x7d2

.field public static final MDMN_CALL_FORWARDED:I = 0xfa1

.field public static final MDMN_PULLCALL_BY_PRIMARY:I = 0x1777

.field public static final MDMN_PULLCALL_BY_SECONDARY:I = 0x1778

.field public static final MDMN_PUSHCALL_TO_PRIMARY:I = 0xfa2

.field public static final METHOD_NOT_ALLOWED:I = 0x195

.field public static final MISSED_CALL_NOTIFICATION:I = 0x70b

.field public static final NETWORK_UNREACHABLE:I = 0x836

.field public static final NON_STANDARD_ERROR_CODE_BASE_CALL:I = 0x44c

.field public static final NOT_ACCEPTABLE:I = 0x196

.field public static final NOT_ACCEPTABLE2:I = 0x25e

.field public static final NOT_ACCEPTABLE_HERE:I = 0x1e8

.field public static final NOT_FOUND:I = 0x194

.field public static final NOT_IMPLEMENTED:I = 0x1f5

.field public static final NO_ERROR:I = 0x3e8

.field public static final OK:I = 0xc8

.field public static final OTHER_SECONDARY_DEVICE_IN_USE:I = 0xbbe

.field public static final PPP_OPEN_FAILURE:I = 0x516

.field public static final PPP_STATUS_CLOSE_EVENT:I = 0x515

.field public static final PRECONDITION_FAILURE:I = 0x244

.field public static final PULLED_BY_ANOTHER_DEVICE:I = 0x9ca

.field public static final QOS_FAILURE:I = 0x4b1

.field public static final QOS_INCALL_SUSPEND:I = 0x4b3

.field public static final QOS_INCALL_UNAWARE:I = 0x4b4

.field public static final QOS_NW_UNAWARE:I = 0x4b2

.field public static final REG_NOT_SUBSCRIBED:I = 0x969

.field public static final REG_NOT_SUBSCRIBED_NON_403:I = 0x96a

.field public static final REG_NOT_SUBSCRIBED_REASON:I = 0x96b

.field public static final REG_RETRY_FAILED:I = 0x965

.field public static final REG_RETRY_START:I = 0x964

.field public static final REG_SSL_CERTIFICATE_FAILURE:I = 0x961

.field public static final REG_SUBSCRIBED:I = 0x968

.field public static final REG_SUSPENDED:I = 0x9cf

.field public static final REMOTE_OK:I = 0xd2

.field public static final REQUEST_TERMINATED:I = 0x1e7

.field public static final REQUEST_TIMEOUT:I = 0x198

.field public static final RRC_CONNECTION_REJECT:I = 0x6a6

.field public static final RTP_TIME_OUT:I = 0x579

.field public static final RTT_E911_CALL_FAIL:I = 0x96e

.field public static final SDP_PROCESSING_FAILED:I = 0x5e2

.field public static final SERVER_ERROR:I = 0x5de

.field public static final SERVER_INTERNAL_ERROR:I = 0x1f4

.field public static final SERVER_INTERNAL_ERROR_WTH_BEARER_CAPABILITY:I = 0xa8e

.field public static final SERVER_INTERNAL_ERROR_WTH_INCOMPATIBLE_DESTINATION:I = 0xa8d

.field public static final SERVER_INTERNAL_ERROR_WTH_RESTORATION:I = 0x89d

.field public static final SERVER_TIME_OUT:I = 0x1f8

.field public static final SERVER_UNREACHABLE:I = 0x5dd

.field public static final SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final SERVICE_UNAVAILABLE_WITH_IMS_OUTAGE:I = 0x9c6

.field public static final SESSION_INTERVAL_TOO_SMALL:I = 0x1a6

.field public static final SIMULTANEOUS_CALL_LIMIT_HAS_ALREADY_BEEN_REACHED:I = 0xbbd

.field public static final SIP_REG_FAILURE:I = 0x641

.field public static final SUBSCRIBE_RETRY_FAILED:I = 0x967

.field public static final SUBSCRIBE_RETRY_START:I = 0x966

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1e0

.field public static final TIMER_VZW_EXPIRED:I = 0x9c5

.field public static final UNKNOWN:I = -0x1

.field public static final UNSUPPORTED_MEDIA_TYPE:I = 0x19f

.field public static final UNSUPPORTED_URI_SCHEME:I = 0x1a0

.field public static final UT_RETRY_TO_CDMA_DIAL:I = 0x1389

.field public static final VERSION_NOT_SUPPORTED:I = 0x1f9

.field public static final WIFI_CONNECTION_LOST:I = 0x6a7


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "errorCode"    # I

    .line 1206
    const-string v0, "Call not allowed(Invite Failure)"

    sparse-switch p0, :sswitch_data_be

    .line 1336
    const-string v0, "Unknown"

    return-object v0

    .line 1334
    :sswitch_8
    const-string v0, "Forked Call Completed Elsewhere"

    return-object v0

    .line 1332
    :sswitch_b
    const-string v0, "CANCEL wtih reason Text = DECLINED"

    return-object v0

    .line 1330
    :sswitch_e
    const-string v0, "Emergency calls over WiFi not allowed in this location"

    return-object v0

    .line 1328
    :sswitch_11
    const-string v0, "You have an active call on another soft phone that must complete before you can use this soft phone"

    return-object v0

    .line 1326
    :sswitch_14
    const-string v0, "Other secondary device in use"

    return-object v0

    .line 1324
    :sswitch_17
    const-string v0, "Simultaneous call limit has already been reached"

    return-object v0

    .line 1322
    :sswitch_1a
    const-string v0, "Cancel Service not allowed in this location"

    return-object v0

    .line 1320
    :sswitch_1d
    const-string v0, "Forbbiden Service not allowed in this location"

    return-object v0

    .line 1318
    :sswitch_20
    const-string v0, "Call has been transferred to another device"

    return-object v0

    .line 1316
    :sswitch_23
    const-string v0, "Call Completed Elsewhere"

    return-object v0

    .line 1306
    :sswitch_26
    const-string v0, "21:\"call rejected\":\"ODB: Call is released by operator specific barring.\""

    return-object v0

    .line 1304
    :sswitch_29
    const-string v0, "Incompatible destination"

    return-object v0

    .line 1314
    :sswitch_2c
    const-string v0, "Simultaneous Call Limit Has Already Been Reached"

    return-object v0

    .line 1312
    :sswitch_2f
    const-string v0, "Pulled By Another Device"

    return-object v0

    .line 1310
    :sswitch_32
    const-string v0, "Cancel Call Busy"

    return-object v0

    .line 1308
    :sswitch_35
    const-string v0, "Cancel Call Completion"

    return-object v0

    .line 1302
    :sswitch_38
    const-string v0, "SERVICE_UNAVAILABLE With IMS OUTAGE"

    return-object v0

    .line 1300
    :sswitch_3b
    const-string v0, "Timer_VZW expired"

    return-object v0

    .line 1270
    :sswitch_3e
    const-string v0, "403 response for registering"

    return-object v0

    .line 1242
    :sswitch_41
    const-string v0, "Call failed (Service unavailable no popup)"

    return-object v0

    .line 1238
    :sswitch_44
    return-object v0

    .line 1236
    :sswitch_45
    return-object v0

    .line 1234
    :sswitch_46
    return-object v0

    .line 1232
    :sswitch_47
    return-object v0

    .line 1240
    :sswitch_48
    const-string v0, "Call failed"

    return-object v0

    .line 1298
    :sswitch_4b
    const-string v0, "Internal server error with Restoration"

    return-object v0

    .line 1296
    :sswitch_4e
    const-string v0, "Call temporal unavailable with 415 cause"

    return-object v0

    .line 1294
    :sswitch_51
    const-string v0, "Call temporal unavailable with 380 cause"

    return-object v0

    .line 1292
    :sswitch_54
    const-string v0, "Call 5xx error response"

    return-object v0

    .line 1290
    :sswitch_57
    const-string v0, "Network Unreachable"

    return-object v0

    .line 1250
    :sswitch_5a
    const-string v0, "Call not acceptable divert"

    return-object v0

    .line 1264
    :sswitch_5d
    const-string v0, "Invite Timeout"

    return-object v0

    .line 1262
    :sswitch_60
    const-string v0, "Cannot connect HD call"

    return-object v0

    .line 1284
    :sswitch_63
    const-string v0, "Call resume failed"

    return-object v0

    .line 1282
    :sswitch_66
    const-string v0, "Call hold failed"

    return-object v0

    .line 1280
    :sswitch_69
    const-string v0, "Call switch rejected"

    return-object v0

    .line 1278
    :sswitch_6c
    const-string v0, "Call switch failure"

    return-object v0

    .line 1272
    :sswitch_6f
    const-string v0, "Call rejected due to active CS Call"

    return-object v0

    .line 1260
    :sswitch_72
    const-string v0, "End call NW handover"

    return-object v0

    .line 1258
    :sswitch_75
    const-string v0, "Remove user from session failure"

    return-object v0

    .line 1256
    :sswitch_78
    const-string v0, "Add user to session failure"

    return-object v0

    .line 1254
    :sswitch_7b
    const-string v0, "Start conference call failure"

    return-object v0

    .line 1248
    :sswitch_7e
    const-string v0, "Session time out"

    return-object v0

    .line 1268
    :sswitch_81
    const-string v0, "ACK for 200 OK but call terminated"

    return-object v0

    .line 1222
    :sswitch_84
    const-string v0, "Session aborted"

    return-object v0

    .line 1210
    :sswitch_87
    const-string v0, "Client error"

    return-object v0

    .line 1208
    :sswitch_8a
    const-string v0, "No Error"

    return-object v0

    .line 1226
    :sswitch_8d
    const-string v0, "call not allowed"

    return-object v0

    .line 1218
    :sswitch_90
    const-string v0, "Call rejected"

    return-object v0

    .line 1246
    :sswitch_93
    const-string v0, "Service unavailable"

    return-object v0

    .line 1244
    :sswitch_96
    const-string v0, "Internal server error"

    return-object v0

    .line 1288
    :sswitch_99
    const-string v0, "Not Acceptable Here"

    return-object v0

    .line 1220
    :sswitch_9c
    const-string v0, "Request terminated"

    return-object v0

    .line 1286
    :sswitch_9f
    const-string v0, "Busy here"

    return-object v0

    .line 1224
    :sswitch_a2
    const-string v0, "Invalid address"

    return-object v0

    .line 1214
    :sswitch_a5
    const-string v0, "Unreachable"

    return-object v0

    .line 1276
    :sswitch_a8
    const-string v0, "Media not supported"

    return-object v0

    .line 1266
    :sswitch_ab
    const-string v0, "ACK wait timer timeout"

    return-object v0

    .line 1216
    :sswitch_ae
    const-string v0, "Call request failed"

    return-object v0

    .line 1228
    :sswitch_b1
    const-string v0, "Request type not allowed"

    return-object v0

    .line 1212
    :sswitch_b4
    const-string v0, "Invalid remote address"

    return-object v0

    .line 1230
    :sswitch_b7
    return-object v0

    .line 1274
    :sswitch_b8
    const-string v0, "Bad request"

    return-object v0

    .line 1252
    :sswitch_bb
    const-string v0, "Call alternative services"

    return-object v0

    :sswitch_data_be
    .sparse-switch
        0x17c -> :sswitch_bb
        0x190 -> :sswitch_b8
        0x193 -> :sswitch_b7
        0x194 -> :sswitch_b4
        0x195 -> :sswitch_b1
        0x196 -> :sswitch_ae
        0x198 -> :sswitch_ab
        0x19f -> :sswitch_a8
        0x1e0 -> :sswitch_a5
        0x1e4 -> :sswitch_a2
        0x1e6 -> :sswitch_9f
        0x1e7 -> :sswitch_9c
        0x1e8 -> :sswitch_99
        0x1f4 -> :sswitch_96
        0x1f7 -> :sswitch_93
        0x25b -> :sswitch_90
        0x25e -> :sswitch_8d
        0x3e8 -> :sswitch_8a
        0x3e9 -> :sswitch_87
        0x44d -> :sswitch_84
        0x44e -> :sswitch_81
        0x44f -> :sswitch_7e
        0x450 -> :sswitch_7b
        0x451 -> :sswitch_78
        0x452 -> :sswitch_75
        0x453 -> :sswitch_72
        0x454 -> :sswitch_6f
        0x455 -> :sswitch_6c
        0x456 -> :sswitch_69
        0x457 -> :sswitch_66
        0x458 -> :sswitch_63
        0x459 -> :sswitch_60
        0x45a -> :sswitch_5d
        0x835 -> :sswitch_5a
        0x836 -> :sswitch_57
        0x899 -> :sswitch_54
        0x89a -> :sswitch_51
        0x89b -> :sswitch_4e
        0x89d -> :sswitch_4b
        0x8fd -> :sswitch_48
        0x8fe -> :sswitch_47
        0x8ff -> :sswitch_46
        0x900 -> :sswitch_45
        0x901 -> :sswitch_44
        0x902 -> :sswitch_41
        0x969 -> :sswitch_3e
        0x9c5 -> :sswitch_3b
        0x9c6 -> :sswitch_38
        0x9c8 -> :sswitch_35
        0x9c9 -> :sswitch_32
        0x9ca -> :sswitch_2f
        0x9ce -> :sswitch_2c
        0xa8d -> :sswitch_29
        0xaf1 -> :sswitch_26
        0xbb9 -> :sswitch_23
        0xbba -> :sswitch_20
        0xbbb -> :sswitch_1d
        0xbbc -> :sswitch_1a
        0xbbd -> :sswitch_17
        0xbbe -> :sswitch_14
        0xbbf -> :sswitch_11
        0xbc0 -> :sswitch_e
        0xbc1 -> :sswitch_b
        0xbc2 -> :sswitch_8
    .end sparse-switch
.end method
