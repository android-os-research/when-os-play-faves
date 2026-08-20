.class public final Lcom/samsung/android/mcf/continuity/profile/ContinuityProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BT_STATE_OFF:I = 0x258

.field public static final BT_STATE_ON:I = 0x259

.field public static final CONFIRM_ACCEPT:I = 0x0

.field public static final CONFIRM_DENY:I = -0x1

.field public static final CONFIRM_DENY_BY_OTHER_CONNECTION:I = -0x2

.field public static final DEVICE_TYPE_MONITOR:I = 0x7

.field public static final DEVICE_TYPE_PC:I = 0x5

.field public static final DEVICE_TYPE_PHONE:I = 0x1

.field public static final DEVICE_TYPE_PROJECTOR:I = 0x6

.field public static final DEVICE_TYPE_TABLET:I = 0x2

.field public static final DEVICE_TYPE_TV:I = 0x4

.field public static final DEVICE_TYPE_UNKNOWN:I = 0x0

.field public static final DEVICE_TYPE_WATCH:I = 0x3

.field public static final EVENT_DEVICE_FOUND:I = 0x64

.field public static final EVENT_DEVICE_LOST:I = 0x66

.field public static final EVENT_DEVICE_UPDATED:I = 0x65

.field public static final FAIL_REASON_AUTH_FAIL:I = 0x3f5

.field public static final FAIL_REASON_BUSY:I = 0x3ed

.field public static final FAIL_REASON_CANCEL:I = 0x3e9

.field public static final FAIL_REASON_DEVICE_NOT_FOUND:I = 0x3ec

.field public static final FAIL_REASON_DUPLICATED_CONNECTION:I = 0x3f6

.field public static final FAIL_REASON_NONE:I = 0x3f8

.field public static final FAIL_REASON_NOT_SAME_AP:I = 0x3eb

.field public static final FAIL_REASON_NO_SESSION:I = 0x3ee

.field public static final FAIL_REASON_PEER_BUSY:I = 0x3f0

.field public static final FAIL_REASON_PEER_NO_SESSION:I = 0x3f1

.field public static final FAIL_REASON_PEER_OTHER_CONNECTION:I = 0x3f7

.field public static final FAIL_REASON_PEER_REJECT:I = 0x3f3

.field public static final FAIL_REASON_PEER_UNAVAILABLE_NETWORK:I = 0x3f2

.field public static final FAIL_REASON_SOCKET_EXCEPTION:I = 0x3f4

.field public static final FAIL_REASON_TIMEOUT:I = 0x3ea

.field public static final FAIL_REASON_UNAVAILABLE_NETWORK:I = 0x3ef

.field public static final FAIL_REASON_UNCLASSIFIED:I = 0x3e8

.field public static final INIT_FAIL_APP_ID_NOT_SUPPORTED:I = 0x387

.field public static final INIT_FAIL_FEATURE_NOT_ENABLED:I = 0x385

.field public static final INIT_FAIL_SETTING_NOT_ENABLED:I = 0x386

.field public static final INIT_SUCCESS:I = 0x384

.field public static final MESSAGE_TYPE_TCP:I = 0xc8

.field public static final MESSAGE_TYPE_UDP:I = 0xc9

.field public static final NETWORK_ROLE_AWARE_PUBLISHER:I = 0x25

.field public static final NETWORK_ROLE_AWARE_SUBSCRIBER:I = 0x24

.field public static final NETWORK_ROLE_DEFAULT:I = 0x1e

.field public static final NETWORK_ROLE_ETHERNET:I = 0x27

.field public static final NETWORK_ROLE_ETHERNET_STA:I = 0x28

.field public static final NETWORK_ROLE_GROUP_CLIENT:I = 0x20

.field public static final NETWORK_ROLE_GROUP_OWNER:I = 0x1f

.field public static final NETWORK_ROLE_HOTSPOT_AP:I = 0x22

.field public static final NETWORK_ROLE_HOTSPOT_STA:I = 0x23

.field public static final NETWORK_ROLE_MAX:I = 0x28

.field public static final NETWORK_ROLE_MIN:I = 0x1e

.field public static final NETWORK_ROLE_NOT_SELECTED:I = 0x1e

.field public static final NETWORK_ROLE_STA:I = 0x21

.field public static final NETWORK_ROLE_UNKNOWN:I = 0x26

.field public static final NETWORK_TOPOLOGY_1_1:I = 0x15

.field public static final NETWORK_TOPOLOGY_DEFAULT:I = 0x15

.field public static final NETWORK_TOPOLOGY_MAX:I = 0x16

.field public static final NETWORK_TOPOLOGY_MESH:I = 0x17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NETWORK_TOPOLOGY_MIN:I = 0x15

.field public static final NETWORK_TOPOLOGY_NOT_SELECTED:I = 0x14

.field public static final NETWORK_TOPOLOGY_STAR:I = 0x16

.field public static final NETWORK_TYPE_BT:I = 0xb

.field public static final NETWORK_TYPE_DEFAULT:I = 0xc

.field public static final NETWORK_TYPE_MAX:I = 0xc

.field public static final NETWORK_TYPE_MIN:I = 0xb

.field public static final NETWORK_TYPE_NOT_SELECTED:I = 0xa

.field public static final NETWORK_TYPE_WIFI:I = 0xc

.field public static final NETWORK_TYPE_WIFI_AP:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NETWORK_TYPE_WIFI_P2P:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCREEN_STATE_OFF:I = 0x190

.field public static final SCREEN_STATE_ON:I = 0x191

.field public static final SCREEN_STATE_ON_LOCKED:I = 0x192

.field public static final TRAFFIC_TYPE_LOW_DELAY:I = 0x44e

.field public static final TRAFFIC_TYPE_MAX_THROUGHPUT:I = 0x44d

.field public static final TRAFFIC_TYPE_NORMAL:I = 0x44c

.field public static final WIFI_INTERFACE_ANY:I = 0xf

.field public static final WIFI_INTERFACE_AP:I = 0x1

.field public static final WIFI_INTERFACE_AWARE:I = 0x2

.field public static final WIFI_INTERFACE_HOTSPOT_AP:I = 0x8

.field public static final WIFI_INTERFACE_INVALID:I = 0x0

.field public static final WIFI_INTERFACE_P2P:I = 0x4

.field public static final WIFI_STATE_ACTIVE_TRANSPORT:I = 0x2be

.field public static final WIFI_STATE_NO_ACTIVE_TRANSPORT:I = 0x2bd

.field public static final WIFI_STATE_OFF:I = 0x2bc


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
