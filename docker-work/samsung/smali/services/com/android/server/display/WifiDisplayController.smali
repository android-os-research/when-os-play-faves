.class public final Lcom/android/server/display/WifiDisplayController;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayController$Listener;
    }
.end annotation


# static fields
.field public static final CONNECTION_TIMEOUT_SECONDS:I = 0x1e

.field public static final CONNECT_MAX_RETRIES:I = 0x3

.field public static final CONNECT_RETRY_DELAY_MILLIS:I = 0x1f4

.field public static final DEBUG:Z = false

.field public static final DEFAULT_CONTROL_PORT:I = 0x1c44

.field public static final DEFAULT_GO_INTENT:I = 0xd

.field public static final DEFAULT_SCAN_CHANNEL:I = 0x64b

.field public static final DISCOVER_PEERS_FULL_SCAN_INTERVAL_MILLIS:I = 0x3e8

.field public static final DISCOVER_PEERS_INTERVAL_MILLIS:I = 0x2710

.field public static final FULL_SCAN_CHANNEL:I = 0x0

.field public static final INTENT_ACTION_KEYGUARD_STATE_UPDATE:Ljava/lang/String; = "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

.field public static final MAX_THROUGHPUT:I = 0x32

.field public static final MUSIC_STREAM_MAX_VOLUME:I = 0xf

.field public static final NOTIFY_CLIENT_CONNECTED:I = 0x1

.field public static final NOTIFY_DISPLAY_VOLUME_STATUS:I = 0x46

.field public static final NOTIFY_DISPLAY_VOLUME_SUPPORT:I = 0x3c

.field public static final NOTIFY_KEY_INFO:Ljava/lang/String; = "info"

.field public static final NOTIFY_KEY_SET_PARAMETERS_FROM_SINK:Ljava/lang/String; = "params"

.field public static final NOTIFY_NOT_DEFINED:I = 0x64

.field public static final NOTIFY_REQUEST_TCP_SWITCHING:I = 0x5a

.field public static final NOTIFY_ROTATION_CHANGED:I = 0xa

.field public static final NOTIFY_SCREEN_WAKE_UP:I = 0x32

.field public static final NOTIFY_SUPPORT_INITIATE_MIRRORING:I = 0x28

.field public static final NOTIFY_SUPPORT_UIBC:I = 0x9

.field public static final NOTIFY_TRANSPORT_MODE:I = 0x7

.field public static final NOTIFY_WFD_ENGINE_PAUSE:I = 0x3

.field public static final NOTIFY_WFD_ENGINE_RESUME:I = 0x2

.field public static final REASON_LOST_RTSP:I = 0x4

.field public static final REASON_NOT_DEFINED:I = 0x1

.field public static final REASON_NO_HDCP_KEY:I = 0x3

.field public static final REASON_RTSP_TIME_OUT:I = 0x2

.field public static final REASON_VPN_CONNECTED:I = 0x5

.field public static final RTSP_TIMEOUT_SECONDS:I = 0x1e

.field public static final RTSP_TIMEOUT_SECONDS_CERT_MODE:I = 0x78

.field public static final TAG:Ljava/lang/String; = "WifiDisplayController"

.field public static final TCP_MODE:I = 0x1

.field public static final UDP_MODE:I = 0x0

.field public static final UIBC_MODE_MIRRORING:Z = false

.field public static final WFD_SCAN_TIMER:I = 0x2710

.field public static final WIFI_DISPLAY_STATE_OFF:I = 0x0

.field public static final WIFI_DISPLAY_STATE_ON:I = 0x1

.field public static mToast:Landroid/widget/Toast;


# instance fields
.field public mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field public mAdvertisedDisplayFlags:I

.field public mAdvertisedDisplayHeight:I

.field public mAdvertisedDisplaySurface:Landroid/view/Surface;

.field public mAdvertisedDisplayWidth:I

.field public mAudioManager:Landroid/media/AudioManager;

.field public final mAudioModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field public final mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field public mCallback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

.field public mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field public mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public mConnectionRetriesLeft:I

.field public final mConnectionTimeout:Ljava/lang/Runnable;

.field public final mContext:Landroid/content/Context;

.field public mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public mDisconnectByUser:Z

.field public mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public final mDiscoverPeers:Ljava/lang/Runnable;

.field public mDiscoverPeersInProgress:Z

.field public final mGameCallback:Lcom/samsung/android/game/IGameManagerCallback;

.field public mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field public final mHandler:Landroid/os/Handler;

.field public final mInitiateReceiver:Landroid/content/BroadcastReceiver;

.field public mIsDisplayVolumeControlSupported:Z

.field public mIsPortraitDisplay:Z

.field public mIsSupportInitiateMirroring:Z

.field public mIsUibcAvailable:Z

.field public final mListener:Lcom/android/server/display/WifiDisplayController$Listener;

.field public mMcfManager:Lcom/android/server/display/WifiDisplayMcfManager;

.field public final mNativeListener:Landroid/media/RemoteDisplay$NativeListener;

.field public mNetworkInfo:Landroid/net/NetworkInfo;

.field public mP2pFrequency:I

.field public final mP2pReceiver:Landroid/content/BroadcastReceiver;

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public mPrevAudioMode:I

.field public mPrevMusicStreamVolume:I

.field public mRemoteDisplay:Landroid/media/RemoteDisplay;

.field public mRemoteDisplayConnected:Z

.field public mRemoteDisplayInterface:Ljava/lang/String;

.field public mRenameCapablity:Z

.field public mRequestedScanChannel:I

.field public mRequestedScanInterval:I

.field public final mRtspTimeout:Ljava/lang/Runnable;

.field public mScanRequested:Z

.field public mScreenWakeUpByUser:Z

.field public final mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

.field public mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public mTransportMode:I

.field public mWfdEnabled:Z

.field public mWfdEnabling:Z

.field public mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

.field public final mWifiDisable:Ljava/lang/Runnable;

.field public mWifiDisplayCertMode:Z

.field public mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

.field public mWifiDisplayOnSetting:Z

.field public mWifiDisplayWpsConfig:I

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public mWifiP2pEnabled:Z

.field public mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field public mWifiTurnedOnByController:Z

.field public final remoteDisplayListener:Landroid/media/RemoteDisplay$Listener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAdvertisedDisplay(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/display/WifiDisplayController;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioModeChangedReceiver(Lcom/android/server/display/WifiDisplayController;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mAudioModeChangedReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAvailableWifiDisplayPeers(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCancelingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectedDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectedDeviceGroupInfo(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectionTimeout(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDesiredDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisconnectByUser(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisconnectingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiscoverPeersInProgress(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInitiateReceiver(Lcom/android/server/display/WifiDisplayController;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mInitiateReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDisplayVolumeControlSupported(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeControlSupported:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPortraitDisplay(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayController;->mIsPortraitDisplay:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsSupportInitiateMirroring(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayController;->mIsSupportInitiateMirroring:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUibcAvailable(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayController;->mIsUibcAvailable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrevMusicStreamVolume(Lcom/android/server/display/WifiDisplayController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/WifiDisplayController;->mPrevMusicStreamVolume:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteDisplay(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteDisplayConnected(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRtspTimeout(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenWakeUpByUser(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThisDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTransportMode(Lcom/android/server/display/WifiDisplayController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWfdEnabling(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWfdUibcManager(Lcom/android/server/display/WifiDisplayController;)Lcom/samsung/android/wfd/WFDUibcManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiDisplayCertMode(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiDisplayConfig(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/SemWifiDisplayConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiDisplayOnSetting(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCancelingDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmConnectedDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmConnectedDeviceGroupInfo(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmConnectingDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDesiredDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisconnectByUser(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisconnectingDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsDisplayVolumeControlSupported(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeControlSupported:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsPortraitDisplay(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsPortraitDisplay:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsSupportInitiateMirroring(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsSupportInitiateMirroring:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsUibcAvailable(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsUibcAvailable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmP2pFrequency(Lcom/android/server/display/WifiDisplayController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mP2pFrequency:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPrevMusicStreamVolume(Lcom/android/server/display/WifiDisplayController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mPrevMusicStreamVolume:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRemoteDisplayConnected(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRenameCapablity(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRenameCapablity:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenWakeUpByUser(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmThisDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTransportMode(Lcom/android/server/display/WifiDisplayController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWfdEnabled(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWfdEnabling(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWifiTurnedOnByController(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiTurnedOnByController:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$madvertiseDisplay(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisconnect(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinish(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->finish()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mflagsToString(Lcom/android/server/display/WifiDisplayController;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->flagsToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetScreenLockType(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->getScreenLockType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSessionInfo(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleConnectionChanged(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleConnectionFailure(Lcom/android/server/display/WifiDisplayController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePeersChanged(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScanResults(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanResults()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStateChanged(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleWifiDisplayStateBroadcast(Lcom/android/server/display/WifiDisplayController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleWifiDisplayStateBroadcast(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monConnectionSuccess(Lcom/android/server/display/WifiDisplayController;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->onConnectionSuccess(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mparseParametersFromEngine(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->parseParametersFromEngine(Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mregisterGameManagerCallback(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->registerGameManagerCallback()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportFeatureState(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendBroadcastTransportMode(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->sendBroadcastTransportMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendDeviceVolumeChangedEvent(Lcom/android/server/display/WifiDisplayController;ILandroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->sendDeviceVolumeChangedEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendEventToSemDeviceStatusListener(Lcom/android/server/display/WifiDisplayController;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->sendEventToSemDeviceStatusListener(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendRemoteDisplayStateChangeEvent(Lcom/android/server/display/WifiDisplayController;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->sendRemoteDisplayStateChangeEvent(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendSSRMRequestIntent(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->sendSSRMRequestIntent(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendVoipModeMessageIfNecessary(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->sendVoipModeMessageIfNecessary(Landroid/hardware/display/WifiDisplay;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendWifiDisplayParameterEvent(Lcom/android/server/display/WifiDisplayController;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->sendWifiDisplayParameterEvent(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendWifiDisplayVolumeSupportChangedBroadcast(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->sendWifiDisplayVolumeSupportChangedBroadcast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWifiDisplayConfig(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;I)Landroid/hardware/display/WifiDisplay;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->setWifiDisplayConfig(Landroid/hardware/display/WifiDisplay;I)Landroid/hardware/display/WifiDisplay;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mtryDiscoverPeers(Lcom/android/server/display/WifiDisplayController;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munadvertiseDisplay(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterGameManagerCallback(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->unregisterGameManagerCallback()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateConnection(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateScanState(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwakeUpScreen(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->wakeUpScreen()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcontains(Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayController;->contains(Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smcreateWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .registers 1

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smdescribeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smdescribeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;Lcom/android/server/display/PersistentDataStore;)V
    .registers 9

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64b

    .line 196
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanChannel:I

    const/16 v0, 0x3e8

    .line 197
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanInterval:I

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    const/4 v0, 0x4

    .line 271
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    const/4 v0, 0x0

    .line 277
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    .line 302
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mPrevAudioMode:I

    .line 1123
    new-instance v1, Lcom/android/server/display/WifiDisplayController$14;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$14;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    .line 1131
    new-instance v1, Lcom/android/server/display/WifiDisplayController$15;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$15;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    .line 1144
    new-instance v1, Lcom/android/server/display/WifiDisplayController$16;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$16;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    .line 1313
    new-instance v1, Lcom/android/server/display/WifiDisplayController$18;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$18;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mP2pReceiver:Landroid/content/BroadcastReceiver;

    .line 2138
    new-instance v2, Lcom/android/server/display/WifiDisplayController$29;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisable:Ljava/lang/Runnable;

    .line 2152
    new-instance v2, Lcom/android/server/display/WifiDisplayController$30;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$30;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mGameCallback:Lcom/samsung/android/game/IGameManagerCallback;

    .line 2168
    new-instance v2, Lcom/android/server/display/WifiDisplayController$31;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$31;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAudioModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 2180
    new-instance v2, Lcom/android/server/display/WifiDisplayController$32;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$32;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mInitiateReceiver:Landroid/content/BroadcastReceiver;

    .line 2218
    new-instance v2, Lcom/android/server/display/WifiDisplayController$33;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$33;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mNativeListener:Landroid/media/RemoteDisplay$NativeListener;

    .line 2337
    new-instance v2, Lcom/android/server/display/WifiDisplayController$34;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$34;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->remoteDisplayListener:Landroid/media/RemoteDisplay$Listener;

    .line 307
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 308
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 309
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    .line 311
    iput-object p4, p0, Lcom/android/server/display/WifiDisplayController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 312
    new-instance p3, Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-direct {p3}, Landroid/hardware/display/SemWifiDisplayConfig;-><init>()V

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    const-string/jumbo p3, "wifip2p"

    .line 314
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const-string/jumbo p3, "sem_wifi_p2p"

    .line 316
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    const-string/jumbo p3, "wifi"

    .line 317
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p3, "audio"

    .line 318
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    .line 320
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    .line 321
    invoke-virtual {p3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.p2p.PEERS_CHANGED"

    .line 322
    invoke-virtual {p3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 323
    invoke-virtual {p3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    .line 324
    invoke-virtual {p3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.p2p.action.WIFI_P2P_REQUEST_RESPONSE_CHANGED"

    .line 325
    invoke-virtual {p3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 326
    invoke-virtual {p1, v1, p3, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 328
    new-instance p3, Lcom/android/server/display/WifiDisplayController$1;

    invoke-direct {p3, p0, p2}, Lcom/android/server/display/WifiDisplayController$1;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_display_on"

    .line 336
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v3, "wifi_display_certification_on"

    .line 338
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v3, "wifi_display_wps_config"

    .line 340
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 344
    new-instance p3, Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-direct {p3, p1}, Lcom/samsung/android/wfd/WFDUibcManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    .line 345
    new-instance p3, Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-direct {p3, p1, p2, p4}, Lcom/android/server/display/WifiDisplayMcfManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/PersistentDataStore;)V

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mMcfManager:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static contains(Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 3

    .line 1040
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .registers 10

    .line 1304
    new-instance v8, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1305
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->getWfdInfo()Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->getWfdInfo()Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    move v5, v0

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 1307
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    invoke-virtual {v8, v0}, Landroid/hardware/display/WifiDisplay;->setIconIdx(I)V

    .line 1308
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->getBluetoothMacAddress(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/hardware/display/WifiDisplay;->setBluetoothMacAddress(Ljava/lang/String;)V

    .line 1309
    iget p0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    invoke-virtual {v8, p0}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    return-object v8
.end method

.method public static describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_f

    .line 1295
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :cond_f
    const-string/jumbo p0, "null"

    :goto_12
    return-object p0
.end method

.method public static describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_f

    .line 1299
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :cond_f
    const-string/jumbo p0, "null"

    :goto_12
    return-object p0
.end method

.method public static getBluetoothMacAddress(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .registers 6

    .line 1459
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_b

    return-object v1

    .line 1464
    :cond_b
    :try_start_b
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->stringToByte(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x3

    .line 1465
    :goto_12
    array-length v2, p0

    if-ge v0, v2, :cond_58

    .line 1466
    aget-byte v2, p0, v0

    and-int/lit8 v3, v2, 0x2

    if-lez v3, :cond_3a

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-lez v2, :cond_2d

    new-array v2, v4, [B

    add-int/lit8 v0, v0, 0x7

    .line 1469
    invoke-static {p0, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1471
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->parseMacAddressToUpperString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_38

    :cond_2d
    new-array v2, v4, [B

    add-int/lit8 v0, v0, 0x1

    .line 1475
    invoke-static {p0, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1477
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->parseMacAddressToUpperString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_38} :catch_3d

    :goto_38
    move-object v1, p0

    goto :goto_58

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :catch_3d
    move-exception p0

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBluetoothMacAddress, error : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiDisplayController"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    return-object v1
.end method

.method public static getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;
    .registers 7

    const-string v0, "Could not obtain address of network interface "

    const-string v1, "WifiDisplayController"

    const/4 v2, 0x0

    .line 1251
    :try_start_5
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_d} :catch_40

    .line 1258
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 1259
    :cond_11
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1260
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 1261
    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_11

    .line 1262
    check-cast v4, Ljava/net/Inet4Address;

    return-object v4

    .line 1266
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " because it had no IPv4 addresses."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1266
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_40
    move-exception v3

    .line 1253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1253
    invoke-static {v1, p0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public static getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .registers 3

    .line 1272
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v1, "DIRECT-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v0, "Broadcom"

    .line 1273
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/16 p0, 0x216a

    return p0

    :cond_17
    const/16 p0, 0x1c44

    return p0
.end method

.method public static isPrimarySinkDeviceType(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x3

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 2

    .line 1281
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->getWfdInfo()Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 1283
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1285
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1286
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->isPrimarySinkDeviceType(I)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public static parseMacAddressToUpperString([B)Ljava/lang/String;
    .registers 7

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1444
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_2e

    aget-byte v4, p0, v3

    .line 1445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_19

    const/16 v5, 0x3a

    .line 1446
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_19
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 1448
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02X"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1450
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringToByte(Ljava/lang/String;)[B
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_32

    .line 1426
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_32

    .line 1430
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    :goto_12
    if-ge v0, v1, :cond_31

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 1433
    :try_start_18
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_25} :catch_28

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :catch_28
    move-exception p0

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "stringToByte, NumberFormatException : "

    .line 1436
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    return-object v2

    :cond_32
    :goto_32
    new-array p0, v0, [B

    return-object p0
.end method


# virtual methods
.method public final advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 17

    move-object v1, p0

    move-object v5, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    .line 1190
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    if-ne v0, v3, :cond_1f

    iget v0, v1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    if-ne v0, v6, :cond_1f

    iget v0, v1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    if-ne v0, v7, :cond_1f

    iget v0, v1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    if-eq v0, v8, :cond_3f

    .line 1195
    :cond_1f
    iget-object v4, v1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 1196
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 1198
    iput-object v5, v1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 1199
    iput-object v3, v1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 1200
    iput v6, v1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    .line 1201
    iput v7, v1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    .line 1202
    iput v8, v1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    .line 1204
    iget-object v9, v1, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/display/WifiDisplayController$17;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/WifiDisplayController$17;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3f
    return-void
.end method

.method public final channelToFreq(I)I
    .registers 2

    const/4 p0, 0x1

    if-lt p1, p0, :cond_14

    const/16 p0, 0xa5

    if-gt p1, p0, :cond_14

    const/16 p0, 0xe

    if-gt p1, p0, :cond_e

    const/16 p0, 0x967

    goto :goto_10

    :cond_e
    const/16 p0, 0x1388

    :goto_10
    mul-int/lit8 p1, p1, 0x5

    add-int/2addr p1, p0

    goto :goto_18

    :cond_14
    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 p1, -0x1

    :goto_18
    return p1
.end method

.method public final computeFeatureState()I
    .registers 2

    .line 552
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 555
    :cond_6
    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x3

    goto :goto_d

    :cond_c
    const/4 p0, 0x2

    :goto_d
    return p0
.end method

.method public final connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 4

    .line 706
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_f

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 707
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 715
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 716
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_22

    return-void

    .line 726
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_3f

    .line 727
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring request to connect to Wifi display because the  feature is currently disabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiDisplayController"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 732
    :cond_3f
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 p1, 0x3

    .line 733
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    .line 734
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    return-void
.end method

.method public final createConnectConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .registers 7

    .line 1748
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    const/16 v1, 0xd

    .line 1749
    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    const/4 v1, -0x1

    .line 1750
    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set groupOwnerIntent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiDisplayController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_b4

    .line 1755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semSamsungDeviceType :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_57

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanChannel:I

    const/16 v4, 0x64b

    if-ne v1, v4, :cond_57

    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    const v4, 0xff00

    and-int/2addr v1, v4

    const/16 v4, 0x600

    if-ne v1, v4, :cond_60

    :cond_57
    const-string/jumbo v1, "set NETWORK_ID_PERSISTENT"

    .line 1760
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    .line 1761
    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1764
    :cond_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createConnectConfig:: name = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1768
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayConfig;->isPinRequest()Z

    move-result p0

    const/4 v1, 0x2

    if-eqz p0, :cond_8e

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result p0

    if-eqz p0, :cond_8e

    .line 1769
    iget-object p0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, p0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_b4

    .line 1770
    :cond_8e
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_9a

    .line 1771
    iget-object p0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, p0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_b4

    .line 1772
    :cond_9a
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result p0

    if-eqz p0, :cond_a5

    .line 1773
    iget-object p0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, p0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_b4

    .line 1774
    :cond_a5
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result p0

    if-eqz p0, :cond_b0

    .line 1775
    iget-object p0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, p0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_b4

    .line 1777
    :cond_b0
    iget-object p0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, p0, Landroid/net/wifi/WpsInfo;->setup:I

    :cond_b4
    :goto_b4
    return-object v0
.end method

.method public final disableP2p()V
    .registers 5

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableP2p:: mConnectedDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWifiTurnedOnByController = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiTurnedOnByController:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWifiP2pEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiTurnedOnByController:Z

    if-eqz v0, :cond_3d

    .line 1662
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 1663
    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayController;->setAllowWifiScan(Z)V

    :cond_3d
    return-void
.end method

.method public final disconnect()V
    .registers 5

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 741
    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayController;->onConnectionFailure(I)V

    .line 744
    :cond_20
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v1, :cond_3a

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result v0

    if-ne v0, v3, :cond_34

    goto :goto_3a

    .line 758
    :cond_34
    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 759
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    goto :goto_60

    .line 745
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_60

    .line 746
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result v0

    if-ne v0, v3, :cond_4d

    .line 747
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "fcdc"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4d
    const/4 v0, 0x4

    .line 749
    invoke-virtual {p0, v3, v0}, Lcom/android/server/display/WifiDisplayController;->sendEventToSemDeviceStatusListener(II)V

    .line 750
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    .line 751
    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 752
    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    const/4 v0, 0x0

    .line 753
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    .line 754
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    :cond_60
    :goto_60
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mWifiDisplayOnSetting="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mWifiP2pEnabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mWfdEnabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mWfdEnabling="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mNetworkInfo="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mScanRequested="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mDiscoverPeersInProgress="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mDesiredDevice="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mConnectingDisplay="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mDisconnectingDisplay="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mCancelingDisplay="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mConnectedDevice="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mConnectionRetriesLeft="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mRemoteDisplay="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mRemoteDisplayInterface="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mRemoteDisplayConnected="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mAdvertisedDisplay="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mAdvertisedDisplaySurface="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mAdvertisedDisplayWidth="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mAdvertisedDisplayHeight="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mAdvertisedDisplayFlags="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mAvailableWifiDisplayPeers: size="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_218
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_23d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_218

    :cond_23d
    return-void
.end method

.method public final enableP2p()V
    .registers 4

    .line 1644
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->isWifiRestricted()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1648
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_34

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "turn on wifi by controller : wifiState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiTurnedOnByController:Z

    const/4 v0, 0x0

    .line 1651
    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayController;->setAllowWifiScan(Z)V

    .line 1654
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->retrieveWifiP2pManagerAndChannel()V

    .line 1655
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method public final finish()V
    .registers 3

    const-string v0, "WifiDisplayController"

    const-string v1, "finish"

    .line 1811
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1813
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1814
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1815
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v0, 0x0

    .line 1816
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    .line 1817
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRenameCapablity:Z

    .line 1818
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsSupportInitiateMirroring:Z

    .line 1819
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z

    .line 1820
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsUibcAvailable:Z

    .line 1821
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mPrevAudioMode:I

    .line 1822
    new-instance v1, Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-direct {v1}, Landroid/hardware/display/SemWifiDisplayConfig;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 1824
    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayController;->handleWifiDisplayStateBroadcast(I)V

    .line 1825
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final flagsToString(I)Ljava/lang/String;
    .registers 3

    .line 2070
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e

    const-string v0, "SECURE"

    .line 2072
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_17

    const-string v0, "LANDSCAPE"

    .line 2075
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_20

    const-string v0, "PORTRAIT_90"

    .line 2078
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_29

    const-string v0, "PORTRAIT_270"

    .line 2081
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_32

    const-string v0, "AUDIO_ONLY"

    .line 2084
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_3b

    const-string v0, "HIGH_RESOLUTION_SUPPORT"

    .line 2087
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_44

    const-string p1, "DMR_SUPPORT"

    .line 2090
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2092
    :cond_44
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEngineParameters()Ljava/lang/String;
    .registers 9

    .line 1785
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1787
    :try_start_5
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result v1
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_b} :catch_c3

    const/4 v2, 0x1

    const-string v3, "frequency"

    const-string/jumbo v4, "initparams"

    if-ne v1, v2, :cond_20

    .line 1788
    :try_start_13
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    new-instance v2, Landroid/hardware/display/SemWifiDisplayParameter;

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mP2pFrequency:I

    invoke-direct {v2, v3, v5}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4, v2}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    goto :goto_45

    .line 1789
    :cond_20
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_45

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 1790
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    new-instance v2, Landroid/hardware/display/SemWifiDisplayParameter;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    invoke-direct {v2, v3, v5}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4, v2}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    .line 1792
    :cond_45
    :goto_45
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    move-result v1
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_4b} :catch_c3

    const-string/jumbo v2, "setparams"

    const-string/jumbo v3, "getparams"

    if-nez v1, :cond_a7

    .line 1793
    :try_start_53
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    new-instance v5, Landroid/hardware/display/SemWifiDisplayParameter;

    const-string/jumbo v6, "wfd_sec_view_mode"

    invoke-direct {v5, v6}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    .line 1794
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    new-instance v5, Landroid/hardware/display/SemWifiDisplayParameter;

    const-string/jumbo v6, "wfd_sec_dmr_support"

    invoke-direct {v5, v6}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    .line 1795
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    new-instance v5, Landroid/hardware/display/SemWifiDisplayParameter;

    const-string/jumbo v6, "wfd_sec_dmr_support_type"

    invoke-direct {v5, v6}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    .line 1796
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    new-instance v5, Landroid/hardware/display/SemWifiDisplayParameter;

    const-string/jumbo v6, "wfd_sec_voip_mode"

    invoke-direct {v5, v6}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    .line 1797
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    new-instance v5, Landroid/hardware/display/SemWifiDisplayParameter;

    const-string/jumbo v6, "wfd_sec_tv_ble_mac"

    invoke-direct {v5, v6}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    .line 1799
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    new-instance v5, Landroid/hardware/display/SemWifiDisplayParameter;

    const-string/jumbo v6, "wfd_sec_mirroring_uuid"

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mMcfManager:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-virtual {v7}, Lcom/android/server/display/WifiDisplayMcfManager;->getInitiatedMirroringUuid()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    .line 1801
    :cond_a7
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v1, v4}, Landroid/hardware/display/SemWifiDisplayConfig;->getJasonArrayParameters(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1802
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v1, v3}, Landroid/hardware/display/SemWifiDisplayConfig;->getJasonArrayParameters(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1803
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {p0, v2}, Landroid/hardware/display/SemWifiDisplayConfig;->getJasonArrayParameters(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c2
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_c2} :catch_c3

    goto :goto_cd

    :catch_c3
    move-exception p0

    .line 1805
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :goto_cd
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getScreenLockType()Ljava/lang/String;
    .registers 3

    .line 1688
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1689
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const-string v0, "WifiDisplayController"

    if-eqz p0, :cond_57

    const v1, 0x8000

    if-eq p0, v1, :cond_4f

    const/high16 v1, 0x10000

    if-eq p0, v1, :cond_46

    const/high16 v1, 0x20000

    if-eq p0, v1, :cond_3d

    const/high16 v1, 0x30000

    if-eq p0, v1, :cond_3d

    const/high16 v1, 0x40000

    if-eq p0, v1, :cond_34

    const/high16 v1, 0x50000

    if-eq p0, v1, :cond_34

    const/high16 v1, 0x60000

    if-eq p0, v1, :cond_34

    const-string/jumbo p0, "none"

    return-object p0

    :cond_34
    const-string p0, "LockScreenType : Password"

    .line 1704
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "password"

    return-object p0

    :cond_3d
    const-string p0, "LockScreenType : Pin"

    .line 1699
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "pin"

    return-object p0

    :cond_46
    const-string p0, "LockScreenType : Pattern"

    .line 1695
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "pattern"

    return-object p0

    :cond_4f
    const-string p0, "LockScreenType : Bio"

    .line 1707
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "bio"

    return-object p0

    :cond_57
    const-string p0, "LockScreenType : Swipe"

    .line 1692
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "swipe"

    return-object p0
.end method

.method public getScreenSharingStatus()I
    .registers 2

    .line 1553
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getState()I

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x7

    :goto_e
    return p0
.end method

.method public final getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .registers 11

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1001
    :cond_4
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 1002
    new-instance v7, Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 1003
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 v2, p0, 0x1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1005
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1006
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_43

    .line 1007
    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    goto :goto_45

    :cond_43
    const-string p0, ""

    :goto_45
    move-object v6, p0

    move-object v1, v7

    move v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public final handleConnectionChanged(Landroid/net/NetworkInfo;)V
    .registers 4

    .line 1044
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1045
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1046
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz p1, :cond_36

    .line 1047
    :cond_14
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$13;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$13;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto :goto_36

    :cond_21
    const/4 p1, 0x0

    .line 1107
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1110
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz p1, :cond_2f

    .line 1111
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 1117
    :cond_2f
    iget-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz p1, :cond_36

    .line 1118
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    :cond_36
    :goto_36
    return-void
.end method

.method public final handleConnectionFailure(I)V
    .registers 9

    const-string v0, "WifiDisplayController"

    const-string v1, "Wifi display connection failed!"

    .line 1159
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x1040d81

    const v1, 0x103012b

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_6e

    const/4 v4, 0x2

    if-eq p1, v4, :cond_5c

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3c

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1c

    goto/16 :goto_94

    .line 1178
    :cond_1c
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v4, 0x1040f18

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    aput-object v5, v2, v3

    .line 1179
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1178
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1179
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_94

    .line 1169
    :cond_3c
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v5, 0x1040f15

    new-array v2, v2, [Ljava/lang/Object;

    .line 1170
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1169
    invoke-static {v4, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1171
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_94

    .line 1174
    :cond_5c
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v1, 0x1040f17

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1175
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_94

    .line 1163
    :cond_6e
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v5, 0x1040f16

    new-array v2, v2, [Ljava/lang/Object;

    .line 1165
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v6, :cond_83

    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_87

    :cond_83
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_87
    aput-object v0, v2, v3

    .line 1164
    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1163
    invoke-static {v4, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1166
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1184
    :goto_94
    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->onConnectionFailure(I)V

    .line 1185
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    return-void
.end method

.method public final handlePeersChanged()V
    .registers 2

    .line 1034
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-eqz v0, :cond_7

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    :cond_7
    return-void
.end method

.method public final handleScanFinished()V
    .registers 3

    .line 680
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$8;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$8;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleScanResults()V
    .registers 6

    .line 663
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 664
    sget-object v1, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/display/WifiDisplay;

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_25

    .line 666
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 667
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    aput-object v4, v1, v2

    .line 668
    invoke-virtual {p0, v3}, Lcom/android/server/display/WifiDisplayController;->updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 671
    :cond_25
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$7;

    invoke-direct {v2, p0, v1}, Lcom/android/server/display/WifiDisplayController$7;-><init>(Lcom/android/server/display/WifiDisplayController;[Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleScanStarted()V
    .registers 3

    .line 654
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$6;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$6;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleStateChanged(Z)V
    .registers 5

    .line 1015
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    .line 1017
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result v0

    const-string v1, "WifiDisplayController"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_23

    .line 1018
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "handleStateChanged, do not handle p2p intent, enabled = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1021
    :cond_23
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_3f

    if-nez p1, :cond_3f

    const-string/jumbo p1, "handleStateChanged, wifi p2p state turn off, but wfd state on"

    .line 1022
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1023
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 1024
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_display_on"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_42

    .line 1026
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    :goto_42
    return-void
.end method

.method public final handleWifiDisplayStateBroadcast(I)V
    .registers 4

    .line 1715
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$19;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayController$19;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initializeMcfManager()V
    .registers 3

    .line 1613
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1d524

    if-lt v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 1614
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getRememberedInitiatedDevices()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1615
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mMcfManager:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->initialize()V

    :cond_18
    return-void
.end method

.method public isConnected()Z
    .registers 1

    .line 1549
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isWifiDisplayWithPinSupported(Ljava/lang/String;)Z
    .registers 5

    .line 1565
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1566
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1567
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result p0

    if-nez p0, :cond_27

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result p0

    if-eqz p0, :cond_28

    :cond_27
    const/4 v1, 0x1

    :cond_28
    return v1
.end method

.method public final isWifiRestricted()Z
    .registers 8

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 2023
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2028
    :try_start_6
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string/jumbo v4, "isWifiEnabled"

    const-string/jumbo p0, "true"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_1c} :catch_1d

    goto :goto_22

    :catch_1d
    move-exception p0

    .line 2031
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_22
    if-eqz p0, :cond_54

    .line 2035
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_27
    const-string/jumbo v0, "isWifiEnabled"

    .line 2037
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "WifiDisplayController"

    const-string v1, "Restriction policy block wifi change"

    .line 2038
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_41} :catch_48
    .catchall {:try_start_27 .. :try_end_41} :catchall_46

    const/4 v0, 0x1

    .line 2044
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_46
    move-exception v0

    goto :goto_50

    :catch_48
    move-exception v0

    .line 2042
    :try_start_49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_46

    .line 2044
    :cond_4c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_54

    :goto_50
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2045
    throw v0

    :cond_54
    :goto_54
    const/4 p0, 0x0

    return p0
.end method

.method public final onConnectionFailure(I)V
    .registers 2

    .line 1679
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mCallback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

    if-eqz p0, :cond_f

    .line 1680
    invoke-interface {p0, p1}, Landroid/hardware/display/IWifiDisplayConnectionCallback;->onFailure(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    const-string p0, "WifiDisplayController"

    const-string p1, "Failed to onFailure"

    .line 1683
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    return-void
.end method

.method public final onConnectionSuccess(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)V"
        }
    .end annotation

    .line 1669
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mCallback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

    if-eqz p0, :cond_f

    .line 1670
    invoke-interface {p0, p1}, Landroid/hardware/display/IWifiDisplayConnectionCallback;->onSuccess(Ljava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    const-string p0, "WifiDisplayController"

    const-string p1, "Failed to onSuccess"

    .line 1673
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    return-void
.end method

.method public final parseParametersFromEngine(Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/WifiDisplay;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;"
        }
    .end annotation

    .line 1884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseParametersFromEngine : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_9d

    if-nez p2, :cond_1e

    goto/16 :goto_9d

    .line 1889
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1890
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1891
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 1892
    :cond_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 1893
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1894
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 1895
    :goto_3d
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2c

    .line 1896
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1897
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 1898
    :cond_4b
    :goto_4b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_91

    .line 1899
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1900
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1902
    new-instance v10, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-direct {v10, v8, v9}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1903
    invoke-virtual {p1, v8, v9}, Landroid/hardware/display/WifiDisplay;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getMode()I

    move-result v10

    if-nez v10, :cond_4b

    const-string/jumbo v10, "wfd_sec_tv_ble_mac"

    .line 1906
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 1907
    invoke-static {v9}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 1908
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v8, v9}, Lcom/android/server/display/PersistentDataStore;->rememberInitiatedDevice(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4b

    const-string v8, "add new initiated device list"

    .line 1909
    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v8}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1911
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->initializeMcfManager()V
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_90} :catch_95

    goto :goto_4b

    :cond_91
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_94
    return-object v2

    :catch_95
    move-exception p0

    .line 1919
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    :goto_9d
    return-object v0
.end method

.method public final readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V
    .registers 8

    .line 1243
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method public final registerGameManagerCallback()V
    .registers 4

    const-string v0, "WifiDisplayController"

    .line 1988
    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v1, :cond_12

    .line 1989
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1991
    invoke-static {v1}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    .line 1994
    :cond_12
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v1, :cond_48

    .line 1995
    invoke-interface {v1}, Lcom/samsung/android/game/IGameManagerService;->identifyForegroundApp()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    const-string v1, "Set low latency mode"

    .line 1996
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "lowl"

    .line 1997
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2000
    :cond_2a
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mGameCallback:Lcom/samsung/android/game/IGameManagerCallback;

    invoke-interface {v1, p0}, Lcom/samsung/android/game/IGameManagerService;->registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result p0

    .line 2001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallback. ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_48
    const-string p0, "failed to get game manager"

    .line 2003
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4d} :catch_4e

    goto :goto_64

    :catch_4e
    move-exception p0

    .line 2006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallback failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    return-void
.end method

.method public final reportFeatureState()V
    .registers 4

    .line 542
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->computeFeatureState()I

    move-result v0

    .line 543
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/WifiDisplayController$4;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestConnect(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V
    .registers 10

    .line 1507
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mCallback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

    .line 1508
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 1510
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestConnect:: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayConfig;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiDisplayController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_33

    .line 1513
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayConfig;->getP2pMacAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->requestConnect(Ljava/lang/String;)V

    goto/16 :goto_f1

    .line 1514
    :cond_33
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq p1, v1, :cond_45

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 1515
    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result p1

    if-ne p1, v2, :cond_f1

    .line 1516
    :cond_45
    new-instance p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 1517
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    move-result v1

    if-ne v1, v2, :cond_59

    .line 1518
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_5f

    :cond_59
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v1

    :goto_5f
    iput-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1519
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1520
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1521
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayConfig;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 1524
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestStopScan()V

    .line 1526
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    const/4 p1, 0x6

    .line 1527
    invoke-virtual {v2, p1}, Landroid/hardware/display/WifiDisplay;->setState(I)V

    .line 1528
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayConfig;->getFlags()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/hardware/display/WifiDisplay;->setFlags(I)V

    .line 1529
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/hardware/display/WifiDisplay;->setMode(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 1530
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    const/4 p1, 0x4

    .line 1532
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/WifiDisplayController;->sendEventToSemDeviceStatusListener(II)V

    .line 1534
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Listening for RTSP connection from Wifi display via AP : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->remoteDisplayListener:Landroid/media/RemoteDisplay$Listener;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 1537
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->getEngineParameters()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mNativeListener:Landroid/media/RemoteDisplay$NativeListener;

    .line 1536
    invoke-static/range {v0 .. v5}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/media/RemoteDisplay$NativeListener;)Landroid/media/RemoteDisplay;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 1538
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f1
    :goto_f1
    return-void
.end method

.method public requestConnect(Ljava/lang/String;)V
    .registers 5

    .line 438
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 439
    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 440
    invoke-virtual {p0, v1}, Lcom/android/server/display/WifiDisplayController;->connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_6

    .line 444
    :cond_1e
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez p1, :cond_2d

    const-string p1, "WifiDisplayController"

    const-string v0, "Can not found desired device"

    .line 445
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 446
    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->onConnectionFailure(I)V

    :cond_2d
    return-void
.end method

.method public requestDisconnect()V
    .registers 2

    const/4 v0, 0x1

    .line 464
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z

    .line 465
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    return-void
.end method

.method public requestPause()V
    .registers 1

    .line 451
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz p0, :cond_7

    .line 452
    invoke-virtual {p0}, Landroid/media/RemoteDisplay;->pause()V

    :cond_7
    return-void
.end method

.method public final requestPeers()V
    .registers 4

    .line 628
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$5;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$5;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    return-void
.end method

.method public requestResume()V
    .registers 1

    .line 457
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz p0, :cond_7

    .line 458
    invoke-virtual {p0}, Landroid/media/RemoteDisplay;->resume()V

    :cond_7
    return-void
.end method

.method public requestSetWifiDisplayParameters(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)Z"
        }
    .end annotation

    .line 1574
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_61

    if-eqz p1, :cond_61

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_61

    .line 1577
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestSetWifiDisplayParameters, parameters : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1579
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_31
    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/SemWifiDisplayParameter;

    .line 1580
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayParameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 1581
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_31

    :cond_59
    const-string/jumbo p1, "setp"

    .line 1584
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_61
    :goto_61
    const/4 p0, 0x0

    return p0
.end method

.method public requestStartScan()V
    .registers 2

    .line 421
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 422
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 425
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->enableP2p()V

    .line 426
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    :cond_d
    return-void
.end method

.method public requestStartScan(II)V
    .registers 5

    .line 1491
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-nez v0, :cond_38

    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestStartScan setChannel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanChannel:I

    const/16 p1, 0x3e8

    if-gtz p2, :cond_2c

    .line 1495
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanInterval:I

    goto :goto_2f

    :cond_2c
    mul-int/2addr p2, p1

    .line 1497
    iput p2, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanInterval:I

    :goto_2f
    const/4 p1, 0x1

    .line 1499
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 1501
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->enableP2p()V

    .line 1502
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    :cond_38
    return-void
.end method

.method public requestStopScan()V
    .registers 2

    .line 431
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 432
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 433
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    :cond_a
    return-void
.end method

.method public requestWifiDisplayParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Z
    .registers 9

    .line 1589
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    const/4 v1, 0x0

    if-eqz v0, :cond_76

    if-nez p2, :cond_8

    goto :goto_76

    .line 1592
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestWifiDisplayParameter, parametersGroup : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " parameter : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/display/SemWifiDisplayParameter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiDisplayController"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string/jumbo v3, "setparams"

    const-string/jumbo v4, "initparams"

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_78

    goto :goto_5b

    :sswitch_3e
    const-string/jumbo v2, "getparams"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_5b

    :cond_48
    const/4 v0, 0x2

    goto :goto_5b

    :sswitch_4a
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_5b

    :cond_51
    move v0, v5

    goto :goto_5b

    :sswitch_53
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    goto :goto_5b

    :cond_5a
    move v0, v1

    :goto_5b
    packed-switch v0, :pswitch_data_86

    return v1

    :pswitch_5f
    return v5

    .line 1597
    :pswitch_60
    invoke-virtual {p0, v3, p2}, Lcom/android/server/display/WifiDisplayController;->wifiDisplayParameterToJOSNArray(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Lorg/json/JSONArray;

    move-result-object p1

    const-string/jumbo p2, "setp"

    .line 1596
    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return v5

    .line 1601
    :pswitch_6b
    invoke-virtual {p0, v4, p2}, Lcom/android/server/display/WifiDisplayController;->wifiDisplayParameterToJOSNArray(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Lorg/json/JSONArray;

    move-result-object p1

    const-string/jumbo p2, "setc"

    .line 1600
    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return v5

    :cond_76
    :goto_76
    return v1

    nop

    :sswitch_data_78
    .sparse-switch
        0x3fe05296 -> :sswitch_53
        0x53926468 -> :sswitch_4a
        0x605d305c -> :sswitch_3e
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_60
        :pswitch_5f
    .end packed-switch
.end method

.method public final retrieveWifiP2pManagerAndChannel()V
    .registers 5

    .line 355
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_11

    .line 356
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 358
    :cond_11
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_28

    .line 359
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    :cond_28
    return-void
.end method

.method public final retryConnection()V
    .registers 3

    .line 767
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 768
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    return-void
.end method

.method public final sendBroadcastTransportMode()V
    .registers 4

    .line 1858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendBroadcastTransportMode mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    const-string v1, "TCP"

    goto :goto_15

    :cond_13
    const-string v1, "UDP"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 1861
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1862
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    const-string v2, "CONNECTION_MODE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1863
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendDeviceVolumeChangedEvent(ILandroid/os/Bundle;)V
    .registers 5

    .line 1939
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/WifiDisplayController$24;-><init>(Lcom/android/server/display/WifiDisplayController;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendEvent(IILjava/lang/String;Z)V
    .registers 13

    .line 1829
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/display/WifiDisplayController$20;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/WifiDisplayController$20;-><init>(Lcom/android/server/display/WifiDisplayController;IILjava/lang/String;Z)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendEventToSemDeviceStatusListener(II)V
    .registers 5

    .line 1842
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$21;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/WifiDisplayController$21;-><init>(Lcom/android/server/display/WifiDisplayController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendRemoteDisplayStateChangeEvent(II)V
    .registers 5

    .line 1925
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$23;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/WifiDisplayController$23;-><init>(Lcom/android/server/display/WifiDisplayController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendSSRMRequestIntent(Z)V
    .registers 4

    .line 2096
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$27;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayController$27;-><init>(Lcom/android/server/display/WifiDisplayController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendVoipModeMessageIfNecessary(Landroid/hardware/display/WifiDisplay;I)V
    .registers 7

    .line 1964
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mPrevAudioMode:I

    const-string/jumbo v1, "wfd_sec_voip_mode"

    const-string/jumbo v2, "wfd_sec_low_latency_mode"

    const/4 v3, 0x3

    if-eq v0, v3, :cond_30

    if-ne p2, v3, :cond_30

    .line 1965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1966
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isVoipModeSupported()Z

    move-result p1

    const-string/jumbo v3, "on"

    if-eqz p1, :cond_24

    .line 1967
    new-instance p1, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-direct {p1, v1, v3}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 1969
    :cond_24
    new-instance p1, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-direct {p1, v2, v3}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1972
    :goto_2c
    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayController;->requestSetWifiDisplayParameters(Ljava/util/List;)Z

    goto :goto_56

    :cond_30
    if-ne v0, v3, :cond_56

    if-eq p2, v3, :cond_56

    .line 1974
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1975
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isVoipModeSupported()Z

    move-result p1

    const-string/jumbo v3, "off"

    if-eqz p1, :cond_4b

    .line 1976
    new-instance p1, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-direct {p1, v1, v3}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1978
    :cond_4b
    new-instance p1, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-direct {p1, v2, v3}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1981
    :goto_53
    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayController;->requestSetWifiDisplayParameters(Ljava/util/List;)Z

    .line 1983
    :cond_56
    :goto_56
    iput p2, p0, Lcom/android/server/display/WifiDisplayController;->mPrevAudioMode:I

    return-void
.end method

.method public final sendWifiDisplayParameterEvent(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_27

    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendWifiDisplayParameterEvent, parameters : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$25;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayController$25;-><init>(Lcom/android/server/display/WifiDisplayController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_27
    return-void
.end method

.method public final sendWifiDisplayVolumeSupportChangedBroadcast()V
    .registers 3

    .line 1867
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    if-eqz v0, :cond_e

    .line 1868
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$22;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$22;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final setAllowWifiScan(Z)V
    .registers 4

    .line 2112
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$28;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayController$28;-><init>(Lcom/android/server/display/WifiDisplayController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1543
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz p0, :cond_7

    .line 1544
    invoke-virtual {p0, p1, p2}, Landroid/media/RemoteDisplay;->setParam(Ljava/lang/String;Ljava/lang/Object;)I

    :cond_7
    return-void
.end method

.method public setScreenSharingStatus(I)V
    .registers 3

    .line 1557
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getState()I

    move-result v0

    if-eq v0, p1, :cond_16

    .line 1558
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->setState(I)V

    const/4 v0, 0x5

    .line 1559
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/WifiDisplayController;->sendRemoteDisplayStateChangeEvent(II)V

    .line 1560
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->sendWifiDisplayVolumeSupportChangedBroadcast()V

    :cond_16
    return-void
.end method

.method public final setWifiDisplayConfig(Landroid/hardware/display/WifiDisplay;I)Landroid/hardware/display/WifiDisplay;
    .registers 4

    const/4 v0, 0x6

    .line 2124
    invoke-virtual {p1, v0}, Landroid/hardware/display/WifiDisplay;->setState(I)V

    .line 2125
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->getFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/display/WifiDisplay;->setFlags(I)V

    .line 2126
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/display/WifiDisplay;->setMode(I)V

    .line 2127
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    move-result p0

    if-nez p0, :cond_37

    and-int/lit8 p0, p2, 0x40

    if-eqz p0, :cond_2a

    const-string/jumbo p0, "wfd_sec_dmr_support"

    const-string v0, "enable"

    .line 2129
    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/WifiDisplay;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    and-int/lit8 p0, p2, 0x20

    if-eqz p0, :cond_37

    const-string/jumbo p0, "high_resolution_mode"

    const-string/jumbo p2, "support"

    .line 2132
    invoke-virtual {p1, p0, p2}, Landroid/hardware/display/WifiDisplay;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return-object p1
.end method

.method public final stopPeerDiscovery()V
    .registers 3

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "stopPeerDiscovery"

    .line 623
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public final tryDiscoverPeers(II)V
    .registers 6

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tryDiscoverPeers requestChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isChannelConstrainedDiscoverySupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pManager;->isChannelConstrainedDiscoverySupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_30

    .line 594
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {p1, v1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_55

    .line 596
    :cond_30
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pManager;->isChannelConstrainedDiscoverySupported()Z

    move-result v1

    if-eqz v1, :cond_50

    const/16 v1, 0x64b

    if-ne p1, v1, :cond_44

    .line 598
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {p1, v1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeersOnSocialChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_55

    .line 600
    :cond_44
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->channelToFreq(I)I

    move-result p1

    invoke-virtual {v1, v2, p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeersOnSpecificFrequency(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_55

    .line 603
    :cond_50
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->discoverPeersOnSpecificChannel(ILcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V

    .line 608
    :goto_55
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final unadvertiseDisplay()V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1239
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method public final unregisterGameManagerCallback()V
    .registers 3

    .line 2012
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v0, :cond_19

    .line 2013
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mGameCallback:Lcom/samsung/android/game/IGameManagerCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/game/IGameManagerService;->unregisterCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    const/4 v0, 0x0

    .line 2014
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_19

    :catch_d
    move-exception p0

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "mGameManagerService.unregisterCallback error"

    .line 2017
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_19
    :goto_19
    return-void
.end method

.method public final updateConnection()V
    .registers 12

    .line 777
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    return-void

    .line 781
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConnection, mConnectedDevice = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    move v2, v1

    goto :goto_1d

    :cond_1c
    move v2, v3

    :goto_1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRemoteDisplay = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v2, :cond_2b

    move v2, v1

    goto :goto_2c

    :cond_2b
    move v2, v3

    :goto_2c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiDisplayController"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->retrieveWifiP2pManagerAndChannel()V

    .line 788
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 792
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const-string v4, " from Wifi display: "

    const/4 v5, 0x0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_87

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v0, v6, :cond_87

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopped listening for RTSP connection on "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    .line 797
    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 798
    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 799
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    .line 800
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 802
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 803
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 809
    :cond_87
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_8c

    return-void

    .line 812
    :cond_8c
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_e6

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v0, v6, :cond_e6

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disconnecting from Wifi display: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 815
    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 816
    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 818
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 820
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 822
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v6, :cond_d9

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 823
    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayController;->createConnectConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 824
    iget-object v6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v6

    .line 825
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v9, Lcom/android/server/display/WifiDisplayController$9;

    invoke-direct {v9, p0, v0}, Lcom/android/server/display/WifiDisplayController$9;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v7, v8, v6, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->removeClient(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/MacAddress;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_e6

    .line 848
    :cond_d9
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$10;

    invoke-direct {v3, p0, v0}, Lcom/android/server/display/WifiDisplayController$10;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void

    .line 875
    :cond_e6
    :goto_e6
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_eb

    return-void

    .line 878
    :cond_eb
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_12a

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v0, v6, :cond_12a

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Canceling connection to Wifi display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 881
    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 883
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 884
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 886
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 887
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$11;

    invoke-direct {v3, p0, v0}, Lcom/android/server/display/WifiDisplayController$11;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void

    .line 922
    :cond_12a
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v5, :cond_141

    .line 923
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v0, :cond_13d

    .line 924
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 926
    :cond_13d
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    return-void

    .line 931
    :cond_141
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v3, :cond_18d

    if-nez v0, :cond_18d

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting to Wifi display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 936
    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayController;->createConnectConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 937
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    .line 938
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/hardware/display/WifiDisplay;->setMode(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 939
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 941
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 942
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/server/display/WifiDisplayController$12;

    invoke-direct {v4, p0, v1}, Lcom/android/server/display/WifiDisplayController$12;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void

    :cond_18d
    if-eqz v3, :cond_224

    .line 969
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-nez v0, :cond_224

    .line 970
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_1b7

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get local interface address for communicating with Wifi display: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual {p0, v1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(I)V

    return-void

    .line 978
    :cond_1b7
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 980
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 981
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v1

    .line 982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 983
    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Listening for RTSP connection on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->remoteDisplayListener:Landroid/media/RemoteDisplay$Listener;

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->getEngineParameters()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mNativeListener:Landroid/media/RemoteDisplay$NativeListener;

    invoke-static/range {v5 .. v10}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/media/RemoteDisplay$NativeListener;)Landroid/media/RemoteDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 991
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v0, :cond_217

    const/16 v0, 0x78

    goto :goto_219

    :cond_217
    const/16 v0, 0x1e

    .line 993
    :goto_219
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_224
    return-void
.end method

.method public final updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 4

    .line 691
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 692
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_2a

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 697
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 698
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz p1, :cond_2a

    .line 699
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 700
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V

    :cond_2a
    return-void
.end method

.method public final updateScanState()V
    .registers 4

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateScanState() mScanRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWfdEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDiscoverPeersInProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_65

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    if-eqz v0, :cond_65

    .line 563
    :cond_3d
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-nez v0, :cond_8a

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting Wifi display scan, mRemoteDisplayConnected = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 565
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 566
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanStarted()V

    .line 567
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanChannel:I

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanInterval:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers(II)V

    goto :goto_8a

    .line 570
    :cond_65
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-eqz v0, :cond_8a

    .line 572
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 577
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_78

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v2, :cond_8a

    :cond_78
    const-string v0, "Stopping Wifi display scan."

    .line 578
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 579
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    const/16 v0, 0x64b

    .line 581
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanChannel:I

    .line 582
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->stopPeerDiscovery()V

    .line 583
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public final updateSettings()V
    .registers 5

    .line 364
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    const/4 v2, 0x0

    .line 365
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    move v1, v3

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    const-string/jumbo v1, "wifi_display_certification_on"

    .line 367
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_20

    move v2, v3

    :cond_20
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    const/4 v1, 0x4

    .line 370
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    if-eqz v2, :cond_30

    const-string/jumbo v2, "wifi_display_wps_config"

    .line 372
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 376
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_53

    const-string/jumbo v0, "secmm.wfd.running"

    const-string v1, "0"

    .line 377
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v1, "1"

    .line 378
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WifiDisplayController"

    const-string v1, "[SECMM] Starting remotedisplay from Controller.."

    .line 379
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->retrieveWifiP2pManagerAndChannel()V

    goto :goto_56

    .line 383
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->disableP2p()V

    .line 387
    :goto_56
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    return-void
.end method

.method public final updateWfdEnableState()V
    .registers 6

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWfdEnableState:: mWifiDisplayOnSetting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mWifiP2pEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mWfdEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mWfdEnabling = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_78

    .line 473
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-eqz v0, :cond_a6

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_a6

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-nez v0, :cond_a6

    const/4 v0, 0x1

    .line 474
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    .line 476
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->setScreenSharing(Z)V

    .line 478
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    .line 479
    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setEnabled(Z)V

    .line 480
    invoke-virtual {v2, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    .line 481
    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 483
    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setContentProtectionSupported(Z)V

    const/16 v0, 0x1c44

    .line 484
    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setControlPort(I)V

    const/16 v0, 0x32

    .line 485
    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setMaxThroughput(I)V

    .line 486
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$2;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$2;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWfdInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_a6

    .line 511
    :cond_78
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_80

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-eqz v0, :cond_99

    .line 513
    :cond_80
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->setScreenSharing(Z)V

    .line 515
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    .line 516
    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setEnabled(Z)V

    .line 517
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/server/display/WifiDisplayController$3;

    invoke-direct {v4, p0}, Lcom/android/server/display/WifiDisplayController$3;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setWfdInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 533
    :cond_99
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    .line 534
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    .line 535
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    .line 536
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 537
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    :cond_a6
    :goto_a6
    return-void
.end method

.method public final wakeUpScreen()V
    .registers 3

    .line 2051
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$26;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$26;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final wifiDisplayParameterToJOSNArray(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Lorg/json/JSONArray;
    .registers 6

    .line 1620
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 1621
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x3fe05296

    const/4 v2, 0x1

    if-eq v0, v1, :cond_30

    const v1, 0x53926468

    if-eq v0, v1, :cond_25

    const v1, 0x605d305c

    if-eq v0, v1, :cond_1a

    goto :goto_3b

    :cond_1a
    const-string/jumbo v0, "getparams"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p1, 0x2

    goto :goto_3c

    :cond_25
    const-string/jumbo v0, "setparams"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p1, 0x0

    goto :goto_3c

    :cond_30
    const-string/jumbo v0, "initparams"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    move p1, v2

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 p1, -0x1

    :goto_3c
    if-eqz p1, :cond_73

    if-eq p1, v2, :cond_41

    goto :goto_8e

    .line 1628
    :cond_41
    invoke-virtual {p2}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8e

    invoke-virtual {p2}, Landroid/hardware/display/SemWifiDisplayParameter;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8e

    .line 1630
    :try_start_55
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/hardware/display/SemWifiDisplayParameter;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_69} :catch_6a

    goto :goto_8e

    :catch_6a
    const-string p1, "WifiDisplayController"

    const-string/jumbo p2, "wifiDisplaySetParameterToJOSNArray JSONException"

    .line 1632
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 1623
    :cond_73
    invoke-virtual {p2}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8e

    invoke-virtual {p2}, Landroid/hardware/display/SemWifiDisplayParameter;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8e

    .line 1624
    invoke-virtual {p2}, Landroid/hardware/display/SemWifiDisplayParameter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_8e
    :goto_8e
    return-object p0
.end method
