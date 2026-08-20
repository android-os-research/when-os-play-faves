.class public Lcom/samsung/android/server/wifi/halclient/MboOceConstants;
.super Ljava/lang/Object;
.source "MboOceConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/MboOceConstants$MboAssocDisallowedReasonCode;,
        Lcom/samsung/android/server/wifi/halclient/MboOceConstants$MboCellularDataConnectionPreference;,
        Lcom/samsung/android/server/wifi/halclient/MboOceConstants$MboTransitionReason;,
        Lcom/samsung/android/server/wifi/halclient/MboOceConstants$BtmDataFlag;,
        Lcom/samsung/android/server/wifi/halclient/MboOceConstants$BtmResponseStatus;,
        Lcom/samsung/android/server/wifi/halclient/MboOceConstants$MboOceAid;
    }
.end annotation


# static fields
.field public static final BTM_DATA_FLAG_BSS_TERMINATION_INCLUDED:I = 0x8

.field public static final BTM_DATA_FLAG_DISASSOCIATION_IMMINENT:I = 0x4

.field public static final BTM_DATA_FLAG_ESS_DISASSOCIATION_IMMINENT:I = 0x10

.field public static final BTM_DATA_FLAG_MBO_ASSOC_RETRY_DELAY_INCLUDED:I = 0x40

.field public static final BTM_DATA_FLAG_MBO_CELL_DATA_CONNECTION_PREFERENCE_INCLUDED:I = 0x80

.field public static final BTM_DATA_FLAG_MBO_TRANSITION_REASON_CODE_INCLUDED:I = 0x20

.field public static final BTM_DATA_FLAG_MODE_ABRIDGED:I = 0x2

.field public static final BTM_DATA_FLAG_PREFERRED_CANDIDATE_LIST_INCLUDED:I = 0x1

.field public static final BTM_RESPONSE_STATUS_ACCEPT:I = 0x0

.field public static final BTM_RESPONSE_STATUS_INVALID:I = -0x1

.field public static final BTM_RESPONSE_STATUS_REJECT_BSS_TERMINATION_DELAY_REQUEST:I = 0x5

.field public static final BTM_RESPONSE_STATUS_REJECT_BSS_TERMINATION_UNDESIRED:I = 0x4

.field public static final BTM_RESPONSE_STATUS_REJECT_INSUFFICIENT_BEACON:I = 0x2

.field public static final BTM_RESPONSE_STATUS_REJECT_INSUFFICIENT_CAPABITY:I = 0x3

.field public static final BTM_RESPONSE_STATUS_REJECT_LEAVING_ESS:I = 0x8

.field public static final BTM_RESPONSE_STATUS_REJECT_NO_SUITABLE_CANDIDATES:I = 0x7

.field public static final BTM_RESPONSE_STATUS_REJECT_RESERVED:I = 0xfe

.field public static final BTM_RESPONSE_STATUS_REJECT_STA_CANDIDATE_LIST_PROVIDED:I = 0x6

.field public static final BTM_RESPONSE_STATUS_REJECT_UNSPECIFIED:I = 0x1

.field public static final DEFAULT_BLOCKLIST_DURATION_MS:J = 0x493e0L

.field public static final MBO_AP_CAP_IND_ATTR_CELL_DATA_AWARE:I = 0x40

.field public static final MBO_ASSOC_DISALLOWED_REASON_AIR_INTERFACE_OVERLOADED:I = 0x3

.field public static final MBO_ASSOC_DISALLOWED_REASON_AUTH_SERVER_OVERLOADED:I = 0x4

.field public static final MBO_ASSOC_DISALLOWED_REASON_INSUFFICIENT_RSSI:I = 0x5

.field public static final MBO_ASSOC_DISALLOWED_REASON_INVALID:I = -0x1

.field public static final MBO_ASSOC_DISALLOWED_REASON_MAX_NUM_STA_ASSOCIATED:I = 0x2

.field public static final MBO_ASSOC_DISALLOWED_REASON_RESERVED:I = 0xfe

.field public static final MBO_ASSOC_DISALLOWED_REASON_RESERVED_0:I = 0x0

.field public static final MBO_ASSOC_DISALLOWED_REASON_UNSPECIFIED:I = 0x1

.field public static final MBO_CELLULAR_DATA_CONNECTION_EXCLUDED:I = 0x0

.field public static final MBO_CELLULAR_DATA_CONNECTION_INVALID:I = -0x1

.field public static final MBO_CELLULAR_DATA_CONNECTION_NOT_PREFERRED:I = 0x1

.field public static final MBO_CELLULAR_DATA_CONNECTION_PREFERRED:I = 0xff

.field public static final MBO_CELLULAR_DATA_CONNECTION_RESERVED:I = 0xfe

.field public static final MBO_OCE_AID_ASSOCIATION_DISALLOWED:I = 0x4

.field public static final MBO_OCE_AID_ASSOCIATION_RETRY_DELAY:I = 0x8

.field public static final MBO_OCE_AID_CELLULAR_DATA_CAPABILITIES:I = 0x3

.field public static final MBO_OCE_AID_CELLULAR_DATA_CONNECTION_PREFERENCE:I = 0x5

.field public static final MBO_OCE_AID_MBO_AP_CAPABILITY_INDICATION:I = 0x1

.field public static final MBO_OCE_AID_NON_PREFERRED_CHANNEL_REPORT:I = 0x2

.field public static final MBO_OCE_AID_OCE_AP_CAPABILITY_INDICATION:I = 0x65

.field public static final MBO_OCE_AID_PROBE_SUPPRESSION_BSSIDS:I = 0x69

.field public static final MBO_OCE_AID_PROBE_SUPPRESSION_SSIDS:I = 0x6a

.field public static final MBO_OCE_AID_REDUCED_WAN_METRICS:I = 0x67

.field public static final MBO_OCE_AID_RNR_COMPLETENESS:I = 0x68

.field public static final MBO_OCE_AID_RSSI_BASED_ASSOCIATION_REJECTION:I = 0x66

.field public static final MBO_OCE_AID_TRANSITION_REASON_CODE:I = 0x6

.field public static final MBO_OCE_AID_TRANSITION_REJECTION_REASON_CODE:I = 0x7

.field public static final MBO_OCE_ATTRIBUTE_NOT_PRESENT:I = -0x1

.field public static final MBO_TRANSITION_REASON_EXCESSIVE_FRAME_LOSS:I = 0x1

.field public static final MBO_TRANSITION_REASON_EXCESSIVE_TRAFFIC_DELAY:I = 0x2

.field public static final MBO_TRANSITION_REASON_GRAY_ZONE:I = 0x8

.field public static final MBO_TRANSITION_REASON_HIGH_INTERFERENCE:I = 0x7

.field public static final MBO_TRANSITION_REASON_INSUFFICIENT_BANDWIDTH:I = 0x3

.field public static final MBO_TRANSITION_REASON_INVALID:I = -0x1

.field public static final MBO_TRANSITION_REASON_LOAD_BALANCING:I = 0x4

.field public static final MBO_TRANSITION_REASON_LOW_RSSI:I = 0x5

.field public static final MBO_TRANSITION_REASON_RESERVED:I = 0xfe

.field public static final MBO_TRANSITION_REASON_RX_EXCESSIVE_RETRIES:I = 0x6

.field public static final MBO_TRANSITION_REASON_TRANSITION_TO_PREMIUM_AP:I = 0x9

.field public static final MBO_TRANSITION_REASON_UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
