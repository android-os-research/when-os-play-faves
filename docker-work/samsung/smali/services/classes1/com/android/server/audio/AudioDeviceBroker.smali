.class public final Lcom/android/server/audio/AudioDeviceBroker;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;,
        Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;,
        Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;,
        Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;,
        Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;,
        Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;,
        Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;
    }
.end annotation


# static fields
.field public static final BROKER_WAKELOCK_TIMEOUT_MS:J = 0x1388L

.field public static final BTA2DP_DOCK_TIMEOUT_MS:I = 0x1f40

.field public static final BTA2DP_MUTE_CHECK_DELAY_MS:I = 0x64

.field public static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field public static final MESSAGES_MUTE_MUSIC:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGES_SAR_RCV_CONTROL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MSG_A2DP_DEVICE_CHANGED:I = 0x2f9

.field public static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xc

.field public static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field public static final MSG_BT_PROFILES_DISCONNECT:I = 0x2fa

.field public static final MSG_CHECK_ABNORMAL_SCO:I = 0x2fc

.field public static final MSG_CHECK_MUTE_MUSIC:I = 0x23

.field public static final MSG_CHECK_SAR_CONTROL:I = 0x2fb

.field public static final MSG_IIL_SET_FORCE_BT_A2DP_USE:I = 0x5

.field public static final MSG_IIL_SET_FORCE_USE:I = 0x4

.field public static final MSG_II_SET_HEARING_AID_VOLUME:I = 0xe

.field public static final MSG_II_SET_LE_AUDIO_OUT_VOLUME:I = 0x2e

.field public static final MSG_IL_BTA2DP_TIMEOUT:I = 0xa

.field public static final MSG_IL_BT_SERVICE_CONNECTED_PROFILE:I = 0x17

.field public static final MSG_IL_SAVE_PREF_DEVICES_FOR_CAPTURE_PRESET:I = 0x25

.field public static final MSG_IL_SAVE_PREF_DEVICES_FOR_STRATEGY:I = 0x20

.field public static final MSG_INIT_DUAL_A2DP_MANAGER:I = 0x2f7

.field public static final MSG_I_BROADCAST_BT_CONNECTION_STATE:I = 0x3

.field public static final MSG_I_BT_SERVICE_DISCONNECTED_PROFILE:I = 0x16

.field public static final MSG_I_SAVE_CLEAR_PREF_DEVICES_FOR_CAPTURE_PRESET:I = 0x26

.field public static final MSG_I_SAVE_REMOVE_PREF_DEVICES_FOR_STRATEGY:I = 0x21

.field public static final MSG_I_SCO_AUDIO_STATE_CHANGED:I = 0x2c

.field public static final MSG_I_SET_AVRCP_ABSOLUTE_VOLUME:I = 0xf

.field public static final MSG_I_SET_MODE_OWNER_PID:I = 0x10

.field public static final MSG_L_A2DP_DEVICE_CONFIG_CHANGE:I = 0xb

.field public static final MSG_L_A2DP_DEVICE_CONNECTION_CHANGE_EXT:I = 0x1d

.field public static final MSG_L_BT_ACTIVE_DEVICE_CHANGE_EXT:I = 0x2d

.field public static final MSG_L_COMMUNICATION_ROUTE_CLIENT_DIED:I = 0x22

.field public static final MSG_L_HEARING_AID_DEVICE_CONNECTION_CHANGE_EXT:I = 0x1f

.field public static final MSG_L_SET_BT_ACTIVE_DEVICE:I = 0x7

.field public static final MSG_L_SET_COMMUNICATION_ROUTE_FOR_CLIENT:I = 0x2a

.field public static final MSG_L_SET_FORCE_BY_USER:I = 0x2f8

.field public static final MSG_L_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x2

.field public static final MSG_L_UPDATE_COMMUNICATION_ROUTE:I = 0x27

.field public static final MSG_L_UPDATE_COMMUNICATION_ROUTE_CLIENT:I = 0x2b

.field public static final MSG_REPORT_NEW_ROUTES:I = 0xd

.field public static final MSG_REPORT_NEW_ROUTES_A2DP:I = 0x24

.field public static final MSG_RESTORE_DEVICES:I = 0x1

.field public static final MSG_TOGGLE_HDMI:I = 0x6

.field public static final SENDMSG_NOOP:I = 0x1

.field public static final SENDMSG_QUEUE:I = 0x2

.field public static final SENDMSG_REPLACE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AS.AudioDeviceBroker"

.field public static sLastDeviceConnectMsgTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLastDeviceConnectionMsgTimeLock"
        }
    .end annotation
.end field

.field public static final sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;


# instance fields
.field public mAccessibilityStrategyId:I

.field public mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public mBluetoothA2dpEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation
.end field

.field public mBluetoothScoOn:Z

.field public mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

.field public mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

.field public final mBtHelper:Lcom/android/server/audio/BtHelper;

.field public final mCommDevDispatchers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/ICommunicationDeviceDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field public final mCommunicationRouteClients:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;",
            ">;"
        }
    .end annotation
.end field

.field public mCommunicationStrategyId:I

.field public final mContext:Landroid/content/Context;

.field public mCurCommunicationPortId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation
.end field

.field public mCurRCVBackOffState:Z

.field public mCurrentCallPathType:I

.field public final mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

.field public final mDeviceStateLock:Ljava/lang/Object;

.field public mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

.field public mModeOwnerPid:I

.field public mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

.field public mReceiverSupported:Ljava/lang/Boolean;

.field public mRequestScoCount:I

.field public mRequestScoPid:I

.field public mSarBackoffParam:Z

.field public mScoCb:Landroid/os/IBinder;

.field public final mSetModeLock:Ljava/lang/Object;

.field public final mSystemServer:Lcom/android/server/audio/SystemServerAdapter;


# direct methods
.method public static synthetic $r8$lambda$VarJDTHGtx-e1FGP_B_yLilAfsk(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lRFRJr3ZEpXKAzXxtVQAnF5exUI(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->lambda$removeBleCommunicationRouteClient$2(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$v9FTLXwh4FooFHGAscfdW8FffxU(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->lambda$enforceBluetoothSafeMediaVolume$1(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioService(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrokerEventWakeLock(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrokerHandler(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCommunicationRouteClients(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/util/LinkedList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModeOwnerPid(Lcom/android/server/audio/AudioDeviceBroker;)I
    .registers 1

    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReceiverSupported(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestScoPid(Lcom/android/server/audio/AudioDeviceBroker;)I
    .registers 1

    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoPid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmBrokerHandler(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentCallPathType(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallPathType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDualA2dpManager(Lcom/android/server/audio/AudioDeviceBroker;Lcom/samsung/android/server/audio/DualA2dpVolumeManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmModeOwnerPid(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckMessagesMuteMusic(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitRoutingStrategyIds(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->initRoutingStrategyIds()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misSpeakerphoneActive(Lcom/android/server/audio/AudioDeviceBroker;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneActive()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSendBecomingNoisyIntent(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onSendBecomingNoisyIntent(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSetForceUse(Lcom/android/server/audio/AudioDeviceBroker;IIZLjava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUpdateCommunicationRoute(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdateCommunicationRoute(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUpdateCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdateCommunicationRouteClient(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveScoCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->removeScoCommunicationRouteClient(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendMsg(Lcom/android/server/audio/AudioDeviceBroker;III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetMESSAGES_MUTE_MUSIC()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetMESSAGES_SAR_RCV_CONTROL()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_SAR_RCV_CONTROL:Ljava/util/Set;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smisMessageHandledUnderWakelock(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    .line 1861
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    .line 2258
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_SAR_RCV_CONTROL:Ljava/util/Set;

    const/4 v1, 0x2

    .line 2259
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    .line 2260
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    .line 2261
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x27

    .line 2262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .registers 6

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 102
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 126
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 134
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 137
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    .line 976
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 981
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    .line 1874
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1919
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 2189
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallPathType:I

    .line 2190
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    .line 2206
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoPid:I

    .line 2207
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    const/4 v0, 0x0

    .line 2208
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    .line 2265
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurRCVBackOffState:Z

    .line 2266
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSarBackoffParam:Z

    .line 2489
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 141
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 143
    new-instance p2, Lcom/android/server/audio/BtHelper;

    invoke-direct {p2, p0}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 144
    new-instance p2, Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {p2, p0}, Lcom/android/server/audio/AudioDeviceInventory;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 145
    invoke-static {p1}, Lcom/android/server/audio/SystemServerAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 147
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioDeviceInventory;Lcom/android/server/audio/SystemServerAdapter;)V
    .registers 8

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 102
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 126
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 134
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 137
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    .line 976
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 981
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    .line 1874
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1919
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 2189
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallPathType:I

    .line 2190
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    .line 2206
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoPid:I

    .line 2207
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    const/4 v0, 0x0

    .line 2208
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    .line 2265
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurRCVBackOffState:Z

    .line 2266
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSarBackoffParam:Z

    .line 2489
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 155
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 157
    new-instance p1, Lcom/android/server/audio/BtHelper;

    invoke-direct {p1, p0}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 158
    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 159
    iput-object p4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 161
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->init()V

    return-void
.end method

.method public static hasIntersection(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1877
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1878
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static isMessageHandledUnderWakelock(I)Z
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1f

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1f

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1f

    const/4 p0, 0x0

    return p0

    :cond_1f
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .registers 5

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "pid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " device: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cb: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1261
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$enforceBluetoothSafeMediaVolume$1(I)V
    .registers 5

    .line 2659
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2660
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 2661
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->enforceSafeMediaVolume(I)Ljava/util/List;

    move-result-object v1

    .line 2662
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndex(Ljava/util/List;I)V

    const/4 p1, 0x0

    const-string v1, "enforceBluetoothSafeMediaVolume"

    .line 2663
    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexForA2dpDevice(ZLjava/lang/String;)V

    .line 2664
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public static synthetic lambda$removeBleCommunicationRouteClient$2(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)Z
    .registers 3

    .line 2699
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1b

    .line 2700
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    const/16 v0, 0x1b

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method


# virtual methods
.method public final addCommunicationRouteClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2152
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 2153
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;)V

    .line 2154
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->registerDeathRecipient()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 2155
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-object v0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V
    .registers 2

    .line 1246
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SystemServerAdapter;->broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V

    return-void
.end method

.method public final btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    .registers 5

    .line 746
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 747
    new-instance p1, Landroid/media/MediaMetrics$Item;

    const-string v0, "audio.device.queueOnBluetoothActiveDeviceChanged"

    invoke-direct {p1, v0}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 749
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p2, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    iget-object p3, p3, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 750
    invoke-virtual {p3}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p2, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 751
    invoke-virtual {p1, p2, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 752
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public checkAndInitRequestBtScoInfo(ILandroid/os/IBinder;)V
    .registers 4

    .line 2216
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoPid:I

    if-eqz v0, :cond_6

    if-eq v0, p1, :cond_d

    .line 2217
    :cond_6
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoPid:I

    const/4 p1, 0x0

    .line 2218
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    .line 2219
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    :cond_d
    return-void
.end method

.method public checkAndResetBtSco()V
    .registers 6

    .line 2224
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_38

    .line 2225
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    if-eqz v0, :cond_38

    const/4 v1, 0x1

    .line 2226
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 2228
    sget-object v1, Lcom/android/server/audio/AudioService;->sScoPreventionLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndResetBtSco remove SCO client of pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getPid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.AudioDeviceBroker"

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v0

    .line 2228
    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2231
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->resetRequestBtSco()V

    :cond_38
    return-void
.end method

.method public checkDeviceConnected(I)Z
    .registers 3

    .line 2269
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2270
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 2271
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final checkMessagesMuteMusic(I)V
    .registers 5

    .line 1901
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->messageMutesMusic(I)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 1903
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1904
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1905
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->messageMutesMusic(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p1, 0x1

    .line 1913
    :cond_2b
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eq p1, v0, :cond_38

    .line 1914
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setMusicMute(Z)V

    :cond_38
    return-void
.end method

.method public checkMusicActive(ILjava/lang/String;)V
    .registers 3

    .line 1054
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkMusicActive(ILjava/lang/String;)V

    return-void
.end method

.method public checkRCVStateForSARTest()V
    .registers 5

    .line 2301
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSarBackoffParam:Z

    if-eqz v0, :cond_12

    .line 2302
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getCurOutDevice()I

    move-result v0

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 2307
    :goto_13
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurRCVBackOffState:Z

    if-ne v0, v1, :cond_18

    return-void

    .line 2312
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.samsung.media.action.receiver_sar"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.samsung.media.extra.receiver"

    .line 2313
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2314
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v2, v0, v3}, Lcom/samsung/android/server/audio/AudioHelper;->sendBroadcastToUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2315
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurRCVBackOffState:Z

    .line 2316
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Send receiver_sar state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AS.AudioDeviceBroker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public checkSendBecomingNoisyIntent(III)I
    .registers 4

    .line 2472
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntent(III)I

    move-result p0

    return p0
.end method

.method public checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .registers 3

    .line 1059
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService;->postCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    return-void
.end method

.method public clearAvrcpAbsoluteVolumeSupported()V
    .registers 2

    const/4 v0, 0x0

    .line 1235
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 1236
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setAvrcpAbsoluteVolumeSupported(Z)V

    return-void
.end method

.method public clearPreferredDevicesForCapturePresetSync(I)I
    .registers 2

    .line 952
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->clearPreferredDevicesForCapturePresetSync(I)I

    move-result p0

    return p0
.end method

.method public connectA2dpDevice(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .line 2561
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, -0x1

    if-eq p3, v0, :cond_e

    mul-int/lit8 p3, p3, 0xa

    :cond_e
    move v3, p3

    const/4 p3, 0x3

    const/16 v0, 0x80

    .line 2570
    invoke-virtual {p0, p3, v0}, Lcom/android/server/audio/AudioDeviceBroker;->getVssVolumeForDevice(II)I

    move-result v4

    .line 2573
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p3}, Lcom/android/server/audio/BtHelper;->getActiveA2dpDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    .line 2574
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2576
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->isSafeMediaVolumeStateActive()Z

    move-result v5

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    .line 2574
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->connectA2dpDevice(Landroid/bluetooth/BluetoothDevice;IIIZLandroid/bluetooth/BluetoothDevice;)V

    if-eqz p3, :cond_32

    const/4 p1, 0x2

    if-ne p2, p1, :cond_32

    .line 2580
    invoke-virtual {p0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 2583
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAvrcpAbsoluteVolumeSupported()Z

    return-void
.end method

.method public createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    .registers 13

    .line 716
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v0}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_51

    const/16 p0, 0xb

    if-eq v0, p0, :cond_4c

    const/16 p0, 0x1a

    if-eq v0, p0, :cond_48

    const/16 p0, 0x15

    if-eq v0, p0, :cond_45

    const/16 p0, 0x16

    if-ne v0, p0, :cond_28

    .line 730
    iget-object p0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {p0}, Landroid/media/BluetoothProfileConnectionInfo;->isLeOutput()Z

    move-result p0

    if-eqz p0, :cond_25

    const/high16 p0, 0x20000000

    goto :goto_4e

    :cond_25
    const/high16 p0, -0x60000000

    goto :goto_4e

    .line 739
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid profile "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {p1}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    const/high16 p0, 0x8000000

    goto :goto_4e

    :cond_48
    const p0, 0x20000002

    goto :goto_4e

    :cond_4c
    const/high16 p0, -0x7ffe0000

    :goto_4e
    move v7, p0

    :goto_4f
    move v8, v2

    goto :goto_5f

    :cond_51
    const/16 v0, 0x80

    .line 722
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 723
    :try_start_56
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/audio/BtHelper;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 724
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_69

    move v7, v0

    goto :goto_4f

    .line 741
    :goto_5f
    new-instance p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;-><init>(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;III)V

    return-object p0

    :catchall_69
    move-exception p0

    .line 724
    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public disconnectAllBluetoothProfiles()V
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->disconnectAllBluetoothProfiles()V

    .line 234
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final dispatchCommunicationDevice()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .line 986
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    .line 987
    :cond_7
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 988
    :goto_b
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    if-ne v0, v2, :cond_10

    return-void

    .line 991
    :cond_10
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    .line 993
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    :goto_18
    if-ge v1, v2, :cond_28

    .line 996
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/ICommunicationDeviceDispatcher;

    .line 997
    invoke-interface {v3, v0}, Landroid/media/ICommunicationDeviceDispatcher;->dispatchCommunicationDeviceChanged(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_25} :catch_25

    :catch_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1001
    :cond_28
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 1250
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    if-eqz v0, :cond_34

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Message handler (watch for unhandled messages):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_39

    :cond_34
    const-string v0, "Message handler is null"

    .line 1254
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1257
    :goto_39
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Communication route clients:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1260
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->forEach(Ljava/util/function/Consumer;)V

    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Computed Preferred communication device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1264
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Applied Preferred communication device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Active communication device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-nez v2, :cond_af

    const-string v2, "None"

    goto :goto_b6

    .line 1270
    :cond_af
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    invoke-direct {v2, v3}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    :goto_b6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1268
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mCommunicationStrategyId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mAccessibilityStrategyId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mModeOwnerPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1280
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpA2dpDevicesVolume(Ljava/io/PrintWriter;)V
    .registers 2

    .line 2512
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enforceBluetoothSafeMediaVolume(I)V
    .registers 4

    .line 2658
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioDeviceBroker;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getA2dp()Landroid/bluetooth/BluetoothA2dp;
    .registers 2

    .line 2371
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2372
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 2373
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;)I
    .registers 2

    .line 2504
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getA2dpDevices()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2492
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getA2dpDevices()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public getAddressForDevice(I)Ljava/lang/String;
    .registers 2

    .line 2389
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getAddressForDevice(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableDeviceSetForQuickSoundPath()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2399
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2400
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->getAvailableDeviceSetForQuickSoundPath()Ljava/util/Set;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 2401
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getBTHeadset()Landroid/bluetooth/BluetoothHeadset;
    .registers 2

    .line 2383
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2384
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getBTHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 2385
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getBluetoothA2dpEnabled()Z
    .registers 2

    .line 1240
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1241
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1242
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getCommunicationDevice()Landroid/media/AudioDeviceInfo;
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 456
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    .line 457
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final getCommunicationRouteClientForPid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .line 2163
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 2164
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getPid()I

    move-result v1

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConnectedDevice()I
    .registers 1

    .line 2466
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->getConnectedDevice()I

    move-result p0

    return p0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 1

    .line 1050
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .registers 2

    .line 849
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 851
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final getCurOutDevice()I
    .registers 2

    const-string/jumbo p0, "l_device_current_output"

    .line 2287
    invoke-static {p0}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2289
    :try_start_7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return p0

    :catch_c
    const-string p0, "AS.AudioDeviceBroker"

    const-string v0, "getCurOutDevice : Can\'t get outDevice"

    .line 2291
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getDeviceForStream(I)I
    .registers 2

    .line 1020
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result p0

    return p0
.end method

.method public getDeviceSensorUuid(Landroid/media/AudioDeviceAttributes;)Ljava/util/UUID;
    .registers 3

    .line 2172
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2173
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getDeviceSensorUuid(Landroid/media/AudioDeviceAttributes;)Ljava/util/UUID;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 2174
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getLeAudio()Landroid/bluetooth/BluetoothLeAudio;
    .registers 2

    .line 2377
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2378
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getLeAudio()Landroid/bluetooth/BluetoothLeAudio;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 2379
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getMainA2dpVolume()I
    .registers 1

    .line 2508
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getMainVolume()I

    move-result p0

    return p0
.end method

.method public getMaxVssVolumeForStream(I)I
    .registers 2

    .line 1016
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getMaxVssVolumeForStream(I)I

    move-result p0

    return p0
.end method

.method public getPinDevice()I
    .registers 1

    .line 2450
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getPinDeviceInternal()I

    move-result p0

    return p0
.end method

.method public getPriorityDevice(I)I
    .registers 2

    .line 2462
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getPriorityDevice(I)I

    move-result p0

    return p0
.end method

.method public getVssVolumeForDevice(II)I
    .registers 3

    .line 1012
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    move-result p0

    return p0
.end method

.method public handleCancelFailureToConnectToBtHeadsetService()V
    .registers 2

    .line 1211
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public handleDeviceConnection(Landroid/media/AudioDeviceAttributes;Z)Z
    .registers 5

    .line 1201
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZZ)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 1203
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public handleFailureToConnectToBtHeadsetService(I)V
    .registers 4

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 1207
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    return-void
.end method

.method public handleFmRadioDeviceConnection(IILjava/lang/String;)V
    .registers 5

    .line 2328
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2329
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->handleFmRadioDeviceConnection(IILjava/lang/String;)V

    .line 2330
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public handleTmsStateChange(ZI)V
    .registers 3

    .line 2652
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->handleTmsStateChange(ZI)V

    return-void
.end method

.method public hasAudioFocusUsers()Z
    .registers 1

    .line 1063
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->hasAudioFocusUsers()Z

    move-result p0

    return p0
.end method

.method public hasMediaDynamicPolicy()Z
    .registers 1

    .line 1046
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->hasMediaDynamicPolicy()Z

    move-result p0

    return p0
.end method

.method public hasScheduledA2dpConnection(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4

    .line 1220
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1221
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final init()V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setupMessaging(Landroid/content/Context;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->initRoutingStrategyIds()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    .line 187
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 189
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/SystemServerAdapter;->registerUserStartedReceiver(Landroid/content/Context;)V

    .line 191
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v0, 0x2f7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final initRoutingStrategyIds()V
    .registers 5

    .line 165
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    .line 166
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 167
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 169
    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    if-ne v3, v1, :cond_2a

    const/4 v3, 0x0

    .line 170
    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 172
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v3

    iput v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 174
    :cond_2a
    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    if-ne v3, v1, :cond_d

    const/16 v3, 0xa

    .line 175
    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 177
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    goto :goto_d

    :cond_3d
    return-void
.end method

.method public isAvrcpAbsoluteVolumeSupported()Z
    .registers 2

    .line 855
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 857
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 860
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z
    .registers 1

    .line 2640
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z

    move-result p0

    return p0
.end method

.method public isBluetoothA2dpOn()Z
    .registers 2

    .line 864
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 865
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 866
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isBluetoothHeadphoneActive()Z
    .registers 1

    .line 2669
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->isBluetoothHeadphoneActive()Z

    move-result p0

    return p0
.end method

.method public isBluetoothScoActive()Z
    .registers 2

    const/4 v0, 0x7

    .line 573
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public isBluetoothScoOn()Z
    .registers 2

    const/4 v0, 0x7

    .line 569
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceOnForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public isBluetoothScoRequested()Z
    .registers 2

    const/4 v0, 0x7

    .line 561
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public isBluetoothScoSupported()Z
    .registers 2

    .line 2243
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2244
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->isBluetoothScoSupported()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 2245
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isDeviceActiveForCommunication(I)Z
    .registers 3

    .line 528
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_16

    .line 529
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    if-ne v0, p1, :cond_16

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz p0, :cond_16

    .line 531
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    if-ne p0, p1, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isDeviceConnected(Landroid/media/AudioDeviceAttributes;)Z
    .registers 3

    .line 577
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->isDeviceConnected(Landroid/media/AudioDeviceAttributes;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 579
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isDeviceOnForCommunication(I)Z
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 516
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    if-ne p0, p1, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 517
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final isDeviceRequestedForCommunication(I)Z
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 502
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    if-ne p0, p1, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 503
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public isDualA2dpMode()Z
    .registers 1

    .line 2520
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->isDualA2dpMode()Z

    move-result p0

    return p0
.end method

.method public isDualModeActive()Z
    .registers 1

    .line 2675
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getActiveA2dpDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 2676
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isLeAudioDualMode()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isFMRadioRecording()Z
    .registers 1

    .line 2342
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mFMRadioRecordingChecker:Lcom/samsung/android/server/audio/FrequentWorker;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/FrequentWorker;->runOrSkip()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isForceSpeakerOn()Z
    .registers 1

    .line 2354
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isForceSpeakerOn()Z

    move-result p0

    return p0
.end method

.method public final isForcedUse()Z
    .registers 1

    .line 2275
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public isInCommunication()Z
    .registers 2

    .line 1038
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 1039
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isRingtoneMode()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isMultiSoundOn()Z
    .registers 1

    .line 2446
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    move-result p0

    return p0
.end method

.method public isOnlyWatchConnected()Z
    .registers 2

    .line 2249
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2250
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->isOnlyWatchConnected()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 2251
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isRemoteVolumeControlSupported()Z
    .registers 2

    .line 2199
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2200
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->isRemoteVolumeControlSupported()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 2201
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isRestrictedHeadphone()Z
    .registers 1

    .line 2348
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/audio/AudioHelper;->isRestrictedHeadphone(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final isSpeakerphoneActive()Z
    .registers 2

    const/4 v0, 0x2

    .line 552
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public isSpeakerphoneOn()Z
    .registers 2

    const/4 v0, 0x2

    .line 548
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceOnForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public final isSpeakerphoneRequested()Z
    .registers 2

    const/4 v0, 0x2

    .line 540
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public messageMutesMusic(I)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x7

    if-eq p1, v1, :cond_f

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_f

    const/16 v1, 0xb

    if-ne p1, v1, :cond_25

    :cond_f
    const/4 p1, 0x3

    .line 1891
    invoke-static {p1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 1893
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceSetForStream(I)Ljava/util/Set;

    move-result-object p0

    .line 1892
    invoke-static {v1, p0}, Lcom/android/server/audio/AudioDeviceBroker;->hasIntersection(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_25

    return v0

    :cond_25
    const/4 p0, 0x1

    return p0
.end method

.method public muteRingtoneDuringVibration()V
    .registers 1

    .line 2322
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->muteRingtoneDuringVibration()V

    return-void
.end method

.method public onAudioServerDied()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    return-void
.end method

.method public final onCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "AS.AudioDeviceBroker"

    const-string v1, "Communication client died"

    .line 1989
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getPid()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const-string/jumbo v7, "onCommunicationRouteClientDied"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    return-void
.end method

.method public final onSendBecomingNoisyIntent()V
    .registers 4

    .line 1310
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "broadcast ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioDeviceBroker"

    .line 1311
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 1310
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1312
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {p0}, Lcom/android/server/audio/SystemServerAdapter;->sendDeviceBecomingNoisyIntent()V

    return-void
.end method

.method public final onSendBecomingNoisyIntent(I)V
    .registers 6

    .line 2422
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2423
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isMultiSoundOnInternal()Z

    move-result v0

    const-string v1, "AS.AudioDeviceBroker"

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2424
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getPinDevice()I

    move-result v0

    if-eq v0, p1, :cond_28

    .line 2425
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->sendBecomingNoisyIntentToUnpinApps(I)V

    .line 2426
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v0, "broadcast ACTION_AUDIO_BECOMING_NOISY to unppin apps"

    invoke-direct {p1, v0}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 2427
    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p1

    .line 2426
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    return-void

    .line 2430
    :cond_28
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v3, "broadcast ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 2431
    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 2430
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2434
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->sendDeviceBecomingSemNoisyIntent()V

    .line 2436
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2437
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    const/4 p1, 0x1

    const-string v1, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    .line 2438
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2440
    :cond_56
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SystemServerAdapter;->sendDeviceBecomingNoisyIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onSetForceUse(IIZLjava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1290
    invoke-virtual {p0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    .line 1292
    :cond_6
    sget-object p0, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v0, p1, p2, p4}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1294
    new-instance p0, Landroid/media/MediaMetrics$Item;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio.forceUse."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    invoke-static {p1}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v1, "onSetForceUse"

    .line 1296
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object v0, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    .line 1297
    invoke-virtual {p0, v0, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object v0, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    .line 1299
    invoke-static {p2}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1298
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 1300
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1303
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSetForceUse(useCase<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ">, config<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ">, fromA2dp<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ">, eventSource<"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ">)"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "AS.AudioDeviceBroker"

    invoke-static {p3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    return-void
.end method

.method public onSystemReady()V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1e

    .line 208
    :try_start_6
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getModeOwnerPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    .line 209
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->onSystemReady()V

    .line 210
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_1b

    .line 211
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_1e

    .line 213
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->onSystemReady()V

    return-void

    :catchall_1b
    move-exception p0

    .line 210
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p0

    :catchall_1e
    move-exception p0

    .line 211
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final onUpdateCommunicationRoute(Ljava/lang/String;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .line 2029
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    .line 2031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateCommunicationRoute, preferredCommunicationDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " eventSource: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AS.AudioDeviceBroker"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    if-eqz v0, :cond_52

    .line 2039
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_4c

    goto :goto_52

    :cond_4c
    const-string p1, "BT_SCO=on"

    .line 2042
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_57

    :cond_52
    :goto_52
    const-string p1, "BT_SCO=off"

    .line 2040
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2045
    :goto_57
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_9b

    if-nez v0, :cond_6b

    .line 2047
    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallPathType:I

    .line 2048
    iget p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->removePreferredDevicesForStrategySync(I)I

    goto :goto_c2

    .line 2050
    :cond_6b
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p1

    .line 2051
    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallPathType:I

    if-ne v3, p1, :cond_8b

    .line 2052
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onUpdateCommunicationRoute return already mCurrentCallPathType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallPathType:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2055
    :cond_8b
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallPathType:I

    .line 2056
    iget p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    new-array v1, v1, [Landroid/media/AudioDeviceAttributes;

    aput-object v0, v1, v2

    .line 2057
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2056
    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->setPreferredDevicesForStrategySync(ILjava/util/List;)I

    goto :goto_c2

    :cond_9b
    if-nez v0, :cond_a8

    .line 2062
    iget p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->removePreferredDevicesForStrategySync(I)I

    .line 2063
    iget p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->removePreferredDevicesForStrategySync(I)I

    goto :goto_c2

    .line 2065
    :cond_a8
    iget p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    new-array v3, v1, [Landroid/media/AudioDeviceAttributes;

    aput-object v0, v3, v2

    .line 2066
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 2065
    invoke-virtual {p0, p1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setPreferredDevicesForStrategySync(ILjava/util/List;)I

    .line 2067
    iget p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    new-array v1, v1, [Landroid/media/AudioDeviceAttributes;

    aput-object v0, v1, v2

    .line 2068
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2067
    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->setPreferredDevicesForStrategySync(ILjava/util/List;)I

    .line 2072
    :goto_c2
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdatePhoneStrategyDevice(Landroid/media/AudioDeviceAttributes;)V

    return-void
.end method

.method public final onUpdateCommunicationRouteClient(Ljava/lang/String;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .line 2082
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdateCommunicationRoute(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v0

    .line 2085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateCommunicationRouteClient, crc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " eventSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioDeviceBroker"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_80

    .line 2089
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_3c

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 2090
    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->isWatchOrBudsWearingOff()Z

    move-result v1

    if-eqz v1, :cond_3c

    return-void

    .line 2093
    :cond_3c
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6e

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    if-eqz v1, :cond_6e

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallPathType:I

    .line 2094
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    if-ne v1, v3, :cond_6e

    .line 2095
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onUpdateCommunicationRouteClient return mCurrentCallPathType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallPathType:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2098
    :cond_6e
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getPid()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v6

    const/4 v7, -0x1

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    :cond_80
    return-void
.end method

.method public final onUpdatePhoneStrategyDevice(Landroid/media/AudioDeviceAttributes;)V
    .registers 7

    .line 2104
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2105
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_62

    .line 2106
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneActive()Z

    move-result v2

    .line 2107
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    .line 2108
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 2109
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneActive()Z

    move-result p1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_5f

    if-eq v2, p1, :cond_54

    .line 2112
    :try_start_15
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.media.action.SPEAKERPHONE_STATE_CHANGED"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 2113
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v2, "modeOwner"

    .line 2115
    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    if-nez v3, :cond_2c

    const-string v3, ""

    goto :goto_32

    :cond_2c
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->getPackageNameModeOwner()Ljava/lang/String;

    move-result-object v3

    .line 2114
    :goto_32
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2116
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3c} :catch_3d
    .catchall {:try_start_15 .. :try_end_3c} :catchall_5f

    goto :goto_54

    :catch_3d
    move-exception p1

    :try_start_3e
    const-string v2, "AS.AudioDeviceBroker"

    .line 2125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to broadcast ACTION_SPEAKERPHONE_STATE_CHANGED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    :cond_54
    :goto_54
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->postUpdateRingerModeServiceInt()V

    .line 2129
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->dispatchCommunicationDevice()V

    .line 2130
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_3e .. :try_end_5d} :catchall_5f

    .line 2131
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_62

    return-void

    :catchall_5f
    move-exception p0

    .line 2130
    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    :try_start_61
    throw p0

    :catchall_62
    move-exception p0

    .line 2131
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public postAccessoryPlugMediaUnmute(I)V
    .registers 2

    .line 1008
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->postAccessoryPlugMediaUnmute(I)V

    return-void
.end method

.method public postActiveBluetoothDeviceChanged(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    const/16 v0, 0x2f9

    const/4 v1, 0x2

    .line 2587
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postApplyVolumeOnDevice(IILjava/lang/String;)V
    .registers 4

    .line 1024
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    return-void
.end method

.method public postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    const/16 v0, 0xb

    const/4 v1, 0x2

    .line 887
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    const/4 v0, 0x7

    const/4 v1, 0x2

    .line 1078
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    return-void
.end method

.method public postBroadcastBecomingNoisy()V
    .registers 3

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 1073
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    return-void
.end method

.method public postBroadcastBecomingNoisy(I)V
    .registers 4

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 2418
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    return-void
.end method

.method public postBroadcastScoConnectionState(I)V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1069
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    return-void
.end method

.method public postBtProfileConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 5

    const/16 v0, 0x17

    const/4 v1, 0x2

    .line 1091
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    return-void
.end method

.method public postBtProfileDisconnected(I)V
    .registers 4

    const/16 v0, 0x16

    const/4 v1, 0x2

    .line 1087
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    return-void
.end method

.method public postCheckAbnormalSco(I)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    const/16 v1, 0x2fc

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1770

    move-object v0, p0

    move v3, p1

    .line 2212
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public postCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .registers 4

    const/16 v0, 0x22

    const/4 v1, 0x2

    .line 1095
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postDisconnectAllBluetoothProfiles()V
    .registers 3

    const/16 v0, 0x2fa

    const/4 v1, 0x2

    .line 2646
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    return-void
.end method

.method public postObserveDevicesForAllStreams()V
    .registers 1

    .line 1033
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams()V

    return-void
.end method

.method public postReportNewRoutes(Z)V
    .registers 3

    if-eqz p1, :cond_5

    const/16 p1, 0x24

    goto :goto_7

    :cond_5
    const/16 p1, 0xd

    :goto_7
    const/4 v0, 0x1

    .line 1215
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    return-void
.end method

.method public postSarControl()V
    .registers 3

    const/16 v0, 0x2fb

    const/4 v1, 0x0

    .line 2283
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    return-void
.end method

.method public postSaveClearPreferredDevicesForCapturePreset(I)V
    .registers 4

    const/16 v0, 0x26

    const/4 v1, 0x2

    .line 1115
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    return-void
.end method

.method public postSaveRemovePreferredDevicesForStrategy(I)V
    .registers 4

    const/16 v0, 0x21

    const/4 v1, 0x2

    .line 1105
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    return-void
.end method

.method public postSaveSetPreferredDevicesForCapturePreset(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x25

    const/4 v1, 0x2

    .line 1110
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    return-void
.end method

.method public postSaveSetPreferredDevicesForStrategy(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x20

    const/4 v1, 0x2

    .line 1101
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    return-void
.end method

.method public postScoAudioStateChanged(I)V
    .registers 4

    const/16 v0, 0x2c

    const/4 v1, 0x2

    .line 1128
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    return-void
.end method

.method public postSetAvrcpAbsoluteVolumeIndex(I)V
    .registers 4

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 870
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    return-void
.end method

.method public postSetCommunicationRouteForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;)V
    .registers 4

    const/16 v0, 0x2a

    const/4 v1, 0x2

    .line 1124
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postSetDeviceConnectionStateForceByUser(Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;I)V
    .registers 5

    const/16 v0, 0x2f8

    const/4 v1, 0x2

    .line 2406
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    return-void
.end method

.method public postSetHearingAidVolumeIndex(II)V
    .registers 5

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 874
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIIMsgNoDelay(IIII)V

    return-void
.end method

.method public postSetLeAudioVolumeIndex(III)V
    .registers 5

    .line 878
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;-><init>(III)V

    const/16 p1, 0x2e

    const/4 p2, 0x0

    .line 879
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postSetModeOwnerPid(II)V
    .registers 5

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 883
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIIMsgNoDelay(IIII)V

    return-void
.end method

.method public final postSetVolumeIndexForA2dpDevice(ZLjava/lang/String;)V
    .registers 6

    .line 2613
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getMainVolume()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    const/16 v1, 0x80

    const/4 v2, 0x3

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    .line 2619
    invoke-static {v2, p1, v1}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    .line 2623
    :cond_12
    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 2625
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "update volume "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.AudioDeviceBroker"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method

.method public postSetVolumeIndexOnDevice(IIILjava/lang/String;)V
    .registers 5

    .line 1029
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    return-void
.end method

.method public postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V
    .registers 4

    const/4 v0, 0x2

    .line 1083
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    return-void
.end method

.method public postUpdateCommunicationRouteClient(Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x2b

    const/4 v1, 0x2

    .line 1120
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public final preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .line 2003
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_1a

    .line 2009
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->getHeadsetAudioDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    if-eqz v0, :cond_1a

    return-object v0

    .line 2014
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 2015
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_28

    goto :goto_29

    :cond_28
    return-object p0

    :cond_29
    :goto_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public queueOnBluetoothActiveDeviceChanged(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    .registers 10

    .line 762
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 763
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioDeviceBroker"

    .line 766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queueOnBluetoothActiveDeviceChanged newDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " prevDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v2}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8f

    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_8f

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 770
    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 771
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 772
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.queueOnBluetoothActiveDeviceChanged_update"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 774
    invoke-virtual {v2, v3, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 775
    invoke-virtual {v3}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 776
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 777
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6d
    const-string v1, "AS.AudioDeviceBroker"

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queueOnBluetoothActiveDeviceChanged config change device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    .line 786
    monitor-exit v2

    goto/16 :goto_129

    :catchall_8c
    move-exception p0

    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_6d .. :try_end_8e} :catchall_8c

    throw p0

    .line 788
    :cond_8f
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 790
    :try_start_92
    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v4}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v4

    const/16 v5, 0x16

    const/16 v6, 0x2d

    if-ne v4, v5, :cond_d5

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_d5

    iget-object v5, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 791
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 792
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v4, "connected"

    invoke-virtual {p0, v1, v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    const-string v1, "AS.AudioDeviceBroker"

    .line 794
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "queueOnBluetoothActiveDeviceChanged ble re-connect device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v1, 0x63

    .line 798
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object p1

    .line 797
    invoke-virtual {p0, v6, v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 799
    monitor-exit v2

    return-void

    .line 802
    :cond_d5
    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_ff

    const-string v5, "disconnected"

    .line 803
    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    const-string v4, "AS.AudioDeviceBroker"

    .line 806
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queueOnBluetoothActiveDeviceChanged disconnect device = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    .line 810
    invoke-virtual {p0, p1, v1, v4}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object v1

    .line 809
    invoke-virtual {p0, v6, v3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 813
    :cond_ff
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_128

    const-string v4, "connected"

    .line 814
    invoke-virtual {p0, v1, v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    const-string v1, "AS.AudioDeviceBroker"

    .line 816
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "queueOnBluetoothActiveDeviceChanged connect device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 820
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object p1

    .line 819
    invoke-virtual {p0, v6, v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 823
    :cond_128
    monitor-exit v2

    :goto_129
    return-void

    :catchall_12a
    move-exception p0

    monitor-exit v2
    :try_end_12c
    .catchall {:try_start_92 .. :try_end_12c} :catchall_12a

    throw p0
.end method

.method public receiveBtEvent(Landroid/content/Intent;)V
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    .line 246
    :try_start_6
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->receiveBtEvent(Landroid/content/Intent;)V

    .line 247
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_e

    .line 248
    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_11

    return-void

    :catchall_e
    move-exception p0

    .line 247
    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    :try_start_10
    throw p0

    :catchall_11
    move-exception p0

    .line 248
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .registers 2

    .line 957
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    return-void
.end method

.method public registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    .registers 2

    .line 967
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .registers 2

    .line 938
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    return-void
.end method

.method public removeBleCommunicationRouteClient(Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .line 2689
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 2690
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v2

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_22

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_6

    .line 2692
    :cond_22
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->unregisterDeathRecipient()V

    .line 2693
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ble route removed on CommunicationRouteClients, eventSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "AS.AudioDeviceBroker"

    .line 2695
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 2693
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_6

    .line 2698
    :cond_47
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    new-instance p1, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .registers 6

    .line 2136
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 2137
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_6

    if-eqz p2, :cond_1d

    .line 2139
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->unregisterDeathRecipient()V

    .line 2141
    :cond_1d
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-object v1

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public removePreferredDevicesForStrategySync(I)I
    .registers 2

    .line 933
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->removePreferredDevicesForStrategySync(I)I

    move-result p0

    return p0
.end method

.method public final removeScoCommunicationRouteClient(Ljava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .line 2707
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 2708
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->requestsBluetoothSco()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2709
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->unregisterDeathRecipient()V

    .line 2710
    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sco route removed on CommunicationRouteClients, pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2711
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getPid()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventSource: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "AS.AudioDeviceBroker"

    .line 2712
    invoke-virtual {v3, v1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 2710
    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_6

    .line 2715
    :cond_4a
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    new-instance p1, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 441
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 443
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestedCommunicationDevice, device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mode owner pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public resetRequestBtSco()V
    .registers 2

    const/4 v0, 0x0

    .line 2237
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoPid:I

    .line 2238
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    const/4 v0, 0x0

    .line 2239
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    return-void
.end method

.method public sendBecomingNoisyToPinnedApp(I)V
    .registers 3

    .line 2454
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2458
    :cond_9
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->sendBecomingNoisyToPinnedApp(I)V

    return-void
.end method

.method public final sendIILMsg(IIIILjava/lang/Object;I)V
    .registers 11

    if-nez p2, :cond_8

    .line 1816
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_14

    :cond_8
    const/4 v0, 0x1

    if-ne p2, v0, :cond_14

    .line 1817
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_14

    return-void

    .line 1821
    :cond_14
    :goto_14
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 1822
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1824
    :try_start_1e
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {p2, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception p2

    const-string v2, "AS.AudioDeviceBroker"

    const-string v3, "Exception acquiring wakelock"

    .line 1826
    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1828
    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1831
    :cond_31
    sget-object p2, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 1832
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    .line 1835
    :cond_40
    sget-object p2, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1836
    :try_start_43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p6

    add-long/2addr v0, v2

    const/4 p6, 0x2

    if-eq p1, p6, :cond_5c

    const/4 p6, 0x7

    if-eq p1, p6, :cond_5c

    const/16 p6, 0x2f8

    if-eq p1, p6, :cond_5c

    const/16 p6, 0xa

    if-eq p1, p6, :cond_5c

    const/16 p6, 0xb

    if-eq p1, p6, :cond_5c

    goto :goto_68

    .line 1844
    :cond_5c
    sget-wide v2, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    cmp-long p6, v2, v0

    if-ltz p6, :cond_66

    const-wide/16 v0, 0x1e

    add-long/2addr v2, v0

    move-wide v0, v2

    .line 1848
    :cond_66
    sput-wide v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    .line 1853
    :goto_68
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1855
    monitor-exit p2

    return-void

    :catchall_73
    move-exception p0

    monitor-exit p2
    :try_end_75
    .catchall {:try_start_43 .. :try_end_75} :catchall_73

    throw p0
.end method

.method public final sendIILMsgNoDelay(IIIILjava/lang/Object;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1810
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendIIMsgNoDelay(IIII)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1798
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendILMsg(IIILjava/lang/Object;I)V
    .registers 13

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    .line 1778
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendILMsgNoDelay(IIILjava/lang/Object;)V
    .registers 12

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1802
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendIMsg(IIII)V
    .registers 12

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 1786
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendIMsgNoDelay(III)V
    .registers 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1794
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendLMsg(IILjava/lang/Object;I)V
    .registers 12

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v6, p4

    .line 1782
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendLMsgNoDelay(IILjava/lang/Object;)V
    .registers 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 1806
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendMsg(III)V
    .registers 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p3

    .line 1774
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public sendMsgForForceSpeaker()V
    .registers 1

    .line 2358
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->sendMsgForForceSpeaker()V

    return-void
.end method

.method public final sendMsgNoDelay(II)V
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 1790
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public setA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3

    .line 2496
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public setA2dpTimeout(Ljava/lang/String;II)V
    .registers 10

    const/16 v1, 0xa

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p2

    move-object v4, p1

    move v5, p3

    .line 1225
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    return-void
.end method

.method public setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .line 2591
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2592
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2594
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAvrcpAbsoluteVolumeSupported()Z

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    const-string/jumbo v1, "setActiveBluetoothDevice"

    .line 2597
    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexForA2dpDevice(ZLjava/lang/String;)V

    .line 2599
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public setAvrcpAbsoluteVolumeSupported(Z)V
    .registers 3

    .line 1229
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1230
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 1231
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setAvrcpAbsoluteVolumeSupported(ZLjava/lang/String;)Z
    .registers 5

    .line 2630
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2631
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v1, p2, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setAvrcpAbsoluteVolumeSupported(Ljava/lang/String;Z)V

    .line 2632
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z

    move-result p1

    .line 2633
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p2, p1}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 2634
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 2635
    monitor-exit v0

    return p1

    :catchall_1a
    move-exception p0

    .line 2636
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public setBluetoothA2dpOnInt(ZZLjava/lang/String;)V
    .registers 7

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothA2dpOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    .line 1183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " src:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1186
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1187
    :try_start_32
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    .line 1188
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x1

    .line 1191
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    move v1, v2

    goto :goto_44

    :cond_42
    const/16 v1, 0xa

    .line 1189
    :goto_44
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    .line 1194
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_56

    const/16 p1, 0x23

    const/16 p2, 0x64

    .line 1195
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    .line 1197
    :cond_56
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_32 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public setBluetoothA2dpOn_Async(ZLjava/lang/String;)V
    .registers 12

    .line 252
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-ne v1, p1, :cond_9

    .line 254
    monitor-exit v0

    return-void

    .line 256
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    .line 257
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 260
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1c

    :cond_1a
    const/16 v1, 0xa

    :goto_1c
    move v7, v1

    move-object v3, p0

    move-object v8, p2

    .line 258
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isForceSpeakerOn()Z

    move-result p2

    if-eqz p2, :cond_2d

    if-nez p1, :cond_2d

    .line 265
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgForForceSpeaker()V

    .line 268
    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public setBluetoothScoOn(ZLjava/lang/String;)V
    .registers 6

    const-string v0, "AS.AudioDeviceBroker"

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothScoOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 837
    :try_start_22
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    .line 838
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdateCommunicationRouteClient(Ljava/lang/String;)V

    .line 839
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public setBtOffloadEnable(I)V
    .registers 2

    .line 2478
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->setBtOffloadEnable(I)V

    return-void
.end method

.method public setCommunicationDevice(Landroid/os/IBinder;ILandroid/media/AudioDeviceInfo;Ljava/lang/String;)Z
    .registers 13

    if-nez p3, :cond_22

    const-string v0, "AS.AudioDeviceBroker"

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCommunicationDevice, device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    :cond_22
    const-string v0, "AS.AudioDeviceBroker"

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCommunicationDevice, device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", deviceType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_4d
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_50
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_7b

    const/4 v2, 0x0

    if-eqz p3, :cond_5c

    .line 326
    :try_start_56
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v2, p3}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    goto :goto_66

    .line 328
    :cond_5c
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForPid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object p3

    if-nez p3, :cond_66

    const/4 p0, 0x0

    .line 330
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_56 .. :try_end_64} :catchall_78

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_7b

    return p0

    :cond_66
    :goto_66
    move-object v5, v2

    .line 333
    :try_start_67
    new-instance p3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    const/4 v6, -0x1

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;-><init>(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationRouteForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;)V

    .line 335
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_67 .. :try_end_75} :catchall_78

    .line 336
    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_7b

    const/4 p0, 0x1

    return p0

    :catchall_78
    move-exception p0

    .line 335
    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    :try_start_7a
    throw p0

    :catchall_7b
    move-exception p0

    .line 336
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7b

    throw p0
.end method

.method public setCommunicationRouteForClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCommunicationRouteForClient: device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCommunicationRouteForClient for pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 348
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result v0

    .line 359
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForPid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 361
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    goto :goto_57

    :cond_56
    const/4 v2, 0x0

    :goto_57
    const/4 v3, 0x7

    const/4 v4, 0x1

    if-eqz p3, :cond_99

    .line 365
    invoke-virtual {p3}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v5

    if-ne v5, v3, :cond_75

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v6, 0x2fc

    .line 366
    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 367
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    const-string v5, "MSG_CHECK_ABNORMAL_SCO removeMessages when creating Sco client."

    .line 368
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_75
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->addCommunicationRouteClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v5

    if-nez v5, :cond_9d

    .line 372
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setCommunicationRouteForClient: could not add client for pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 376
    :cond_99
    invoke-virtual {p0, p1, v4}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v5

    :cond_9d
    :goto_9d
    if-nez v5, :cond_a0

    return-void

    :cond_a0
    if-eqz p3, :cond_ba

    .line 383
    invoke-virtual {p3}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p3

    if-ne p3, v3, :cond_ba

    const-string/jumbo p3, "receiveBtEvent"

    .line 384
    invoke-virtual {p5, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_ba

    .line 385
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkAndInitRequestBtScoInfo(ILandroid/os/IBinder;)V

    .line 386
    iget p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    add-int/2addr p3, v4

    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    goto :goto_bd

    .line 388
    :cond_ba
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->resetRequestBtSco()V

    .line 392
    :goto_bd
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result p3

    if-eqz p3, :cond_f6

    if-eqz v0, :cond_cb

    .line 393
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoActive()Z

    move-result v3

    if-nez v3, :cond_f6

    .line 394
    :cond_cb
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p3, p4, p5}, Lcom/android/server/audio/BtHelper;->startBluetoothSco(ILjava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_ff

    .line 395
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setCommunicationRouteForClient: failure to start BT SCO for pid: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_ee

    .line 399
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/audio/AudioDeviceBroker;->addCommunicationRouteClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    goto :goto_f1

    .line 401
    :cond_ee
    invoke-virtual {p0, p1, v4}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    :goto_f1
    const/4 p1, 0x0

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastScoConnectionState(I)V

    goto :goto_ff

    :cond_f6
    if-nez p3, :cond_ff

    if-eqz v0, :cond_ff

    .line 406
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p1, p5}, Lcom/android/server/audio/BtHelper;->stopBluetoothSco(Ljava/lang/String;)Z

    :cond_ff
    :goto_ff
    const/16 p1, 0x27

    const/4 p2, 0x2

    .line 409
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public setDeviceToForceByUser(ILjava/lang/String;Z)I
    .registers 5

    .line 2393
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2394
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 2395
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public setDualA2dpMode(Z)V
    .registers 9

    .line 2524
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2525
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setDualA2dpMode(Z)V

    .line 2527
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5d

    .line 2528
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 2531
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    .line 2532
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_5d

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz p1, :cond_38

    .line 2534
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2535
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->semGetAudioType()I

    move-result v1

    if-ne v1, v5, :cond_25

    goto :goto_5a

    .line 2541
    :cond_38
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 2542
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 2543
    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 2544
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->semGetAudioType()I

    move-result p1

    if-ne p1, v5, :cond_59

    goto :goto_5a

    :cond_59
    move v4, v2

    .line 2551
    :goto_5a
    invoke-static {v4}, Lcom/samsung/android/server/audio/BluetoothHelper;->setBtVolumeMonitor(Z)V

    .line 2555
    :cond_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_65

    const-string/jumbo p1, "setDualA2dpMode"

    .line 2556
    invoke-virtual {p0, v2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexForA2dpDevice(ZLjava/lang/String;)V

    return-void

    :catchall_65
    move-exception p0

    .line 2555
    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public setFmRadioPath(I)V
    .registers 3

    .line 2334
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2335
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setRadioOutputPath(I)V

    .line 2336
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setForceUse_Async(IILjava/lang/String;)V
    .registers 10

    const/4 v1, 0x4

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 223
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    return-void
.end method

.method public setPreferredDevicesForCapturePresetSync(ILjava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 948
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForCapturePresetSync(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public setPreferredDevicesForStrategySync(ILjava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 929
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategySync(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public setSpeakerphoneOn(Landroid/os/IBinder;IZLjava/lang/String;)V
    .registers 14

    const-string v0, "AS.AudioDeviceBroker"

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpeakerphoneOn, on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_22
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_55

    const/4 v2, 0x0

    if-eqz p3, :cond_31

    .line 286
    :try_start_28
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    const/4 p3, 0x2

    const-string v3, ""

    invoke-direct {v2, p3, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    goto :goto_3e

    .line 288
    :cond_31
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForPid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object p3

    if-eqz p3, :cond_4f

    .line 289
    invoke-virtual {p3}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->requestsSpeakerphone()Z

    move-result p3

    if-nez p3, :cond_3e

    goto :goto_4f

    :cond_3e
    :goto_3e
    move-object v6, v2

    .line 293
    new-instance p3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    const/4 v7, -0x1

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;-><init>(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationRouteForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;)V

    .line 295
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_28 .. :try_end_4d} :catchall_52

    .line 296
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_55

    return-void

    .line 290
    :cond_4f
    :goto_4f
    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_52

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_55

    return-void

    :catchall_52
    move-exception p0

    .line 295
    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw p0

    :catchall_55
    move-exception p0

    .line 296
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V
    .registers 4

    .line 592
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V

    .line 594
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .registers 5

    .line 585
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)I

    .line 587
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final setupMessaging(Landroid/content/Context;)V
    .registers 4

    const-string/jumbo v0, "power"

    .line 1322
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string/jumbo v1, "handleAudioDeviceEvent"

    .line 1323
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1325
    new-instance p1, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    invoke-direct {p1, p0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    .line 1326
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1327
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->waitForBrokerHandlerCreation()V

    return-void
.end method

.method public shouldVolumeChangedIntent()Z
    .registers 1

    .line 2500
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->shouldVolumeChangedIntent()Z

    move-result p0

    return p0
.end method

.method public startBluetoothScoForClient(Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 14

    const-string v0, "AS.AudioDeviceBroker"

    .line 894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startBluetoothScoForClient_Sync, pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_39

    .line 899
    :try_start_1d
    new-instance v5, Landroid/media/AudioDeviceAttributes;

    const/16 v2, 0x10

    const-string v3, ""

    invoke-direct {v5, v2, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 902
    new-instance v8, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    move-object v2, v8

    move-object v3, p1

    move v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;-><init>(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationRouteForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;)V

    .line 904
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1d .. :try_end_34} :catchall_36

    .line 905
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_39

    return-void

    :catchall_36
    move-exception p0

    .line 904
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw p0

    :catchall_39
    move-exception p0

    .line 905
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 3

    .line 843
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 844
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 845
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public stopBluetoothScoForClient(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 13

    const-string v0, "AS.AudioDeviceBroker"

    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopBluetoothScoForClient_Sync, pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 916
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_41

    .line 917
    :try_start_1d
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForPid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 918
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->requestsBluetoothSco()Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_3b

    .line 921
    :cond_2a
    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v3, v2

    move-object v4, p1

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;-><init>(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationRouteForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;)V

    .line 923
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_3e

    .line 924
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_41

    return-void

    .line 919
    :cond_3b
    :goto_3b
    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3e

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_41

    return-void

    :catchall_3e
    move-exception p0

    .line 923
    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw p0

    :catchall_41
    move-exception p0

    .line 924
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public toggleHdmiIfConnected_Async()V
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x2

    .line 228
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    return-void
.end method

.method public final topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 422
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getPid()I

    move-result v2

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    if-ne v2, v3, :cond_6

    return-object v1

    .line 426
    :cond_1b
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    if-nez v0, :cond_31

    .line 427
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    return-object p0

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .registers 2

    .line 962
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    return-void
.end method

.method public unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    .registers 2

    .line 972
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .registers 2

    .line 943
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    return-void
.end method

.method public updateActiveCommunicationDevice()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .line 465
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    if-nez v0, :cond_35

    const/4 v0, 0x0

    .line 468
    invoke-static {v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v2

    .line 470
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 472
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 473
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isPlatformVoice()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "updateActiveCommunicationDevice(): no device for phone strategy"

    .line 474
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const-string/jumbo v0, "updateActiveCommunicationDevice mActiveCommunicationDevice = null"

    .line 478
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 480
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    return-void

    .line 483
    :cond_2f
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 486
    :cond_35
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v2

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-static {v2, v0}, Landroid/media/AudioManager;->getDeviceInfoFromTypeAndAddress(ILjava/lang/String;)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_60

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateActiveCommunicationDevice mActiveCommunicationDevice = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    .line 489
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 488
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return-void
.end method

.method public updateAvrcpAbsoluteVolumeSupported()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .line 2604
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z

    move-result v0

    .line 2605
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 2606
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->updateAvrcpAbsoluteVolumeSupported(Z)V

    return v0
.end method

.method public updateBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    .line 2482
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2483
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    .line 2484
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public updateDeviceQuickConnection(ZILjava/lang/String;Ljava/lang/String;I)V
    .registers 13

    .line 2365
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2366
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->updateDeviceQuickConnection(ZILjava/lang/String;Ljava/lang/String;I)V

    .line 2367
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public updateDexState()V
    .registers 1

    .line 2412
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->updateDexState()V

    return-void
.end method

.method public updateIndividualA2dpVolumes(I)V
    .registers 2

    .line 2516
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->updateIndividualA2dpVolumes(I)V

    return-void
.end method

.method public updateReceiverSupported(Z)V
    .registers 2

    .line 2193
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    return-void
.end method

.method public updateWatchConnectionState(Z)V
    .registers 2

    .line 2682
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->updateWatchConnectionState(Z)V

    return-void
.end method

.method public final waitForBrokerHandlerCreation()V
    .registers 3

    .line 1331
    monitor-enter p0

    .line 1332
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v0, :cond_11

    .line 1334
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_13

    goto :goto_1

    :catch_9
    :try_start_9
    const-string v0, "AS.AudioDeviceBroker"

    const-string v1, "Interruption while waiting on BrokerHandler"

    .line 1336
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1339
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v0
.end method
