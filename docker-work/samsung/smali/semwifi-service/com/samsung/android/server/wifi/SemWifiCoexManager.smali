.class public Lcom/samsung/android/server/wifi/SemWifiCoexManager;
.super Ljava/lang/Object;
.source "SemWifiCoexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;,
        Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;
    }
.end annotation


# static fields
.field private static final CSC_SUPPORT_5G_ANT_SHARE:Z

.field private static final CUSTOM_BACKOFF_TYPE:Ljava/lang/String; = ""

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SemWifiCoexManager"

.field public static final WIFI_STATE_CONNECTED_STATE_ENTER:I = 0x3

.field public static final WIFI_STATE_CONNECTED_STATE_EXIT:I = 0x4

.field public static final WIFI_STATE_CONNECT_MODE_STATE_ENTER:I = 0x1

.field public static final WIFI_STATE_CONNECT_MODE_STATE_EXIT:I = 0x2

.field public static final WIFI_STATE_DONGLE_ROAM:I = 0x5


# instance fields
.field private final LTEU_MOBILEHOTSPOT_5GHZ_ENABLED:I

.field private final LTEU_P2P_5GHZ_CONNECTED:I

.field private final LTEU_STA_5GHZ_CONNECTED:I

.field private infEndFreqMhz:I

.field private infStartFreqMhz:I

.field private isCameraRunning:Z

.field private laaActiveState:I

.field private laaEnterState:I

.field private lastScellEnter:Z

.field private mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

.field private mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

.field private mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

.field private mCamBackBackoffEnable:Z

.field private mCamFrontBackoffEnable:Z

.field private mCameraStateMonitor:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private mContext:Landroid/content/Context;

.field private mCustomBackoffArray:[Ljava/lang/String;

.field private mIsCamBackBackoffDefined:Z

.field private mIsCamFrontBackoffDefined:Z

.field private mIsUwbBackoffDefined:Z

.field private mIsUwbCxEnabled:Z

.field private mIsUwbCxfor5GhzDefined:Z

.field private mLteuEnable:I

.field private mP2pFreq:I

.field private mPreBackOff:Ljava/lang/String;

.field private mSApFreq:I

.field private mScellEnter:Z

.field private mSoftApCallback:Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;

.field private final mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

.field private mStaFreq:I

.field private mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

.field private mUwbBackoffEnable:Z

.field private mUwbCh:I

.field private mWifiApState:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private uwbCxEnd5gCh:I

.field private uwbCxStart5gCh:I


# direct methods
.method static bridge synthetic -$$Nest$fgetisCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->isCameraRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->lastScellEnter:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamBackBackoffEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamFrontBackoffEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSApFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSApFreq:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mScellEnter:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUwbBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbBackoffEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiApState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->isCameraRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlaaEnterState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaEnterState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->lastScellEnter:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamBackBackoffEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamFrontBackoffEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmP2pFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mP2pFreq:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSApFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSApFreq:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mScellEnter:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiApState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msendIpcMessageToRilForLteu(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->sendIpcMessageToRilForLteu(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setWifiCustomBackoff(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetCSC_SUPPORT_5G_ANT_SHARE()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->CSC_SUPPORT_5G_ANT_SHARE:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 55
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 56
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_Support5GAntShare"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->CSC_SUPPORT_5G_ANT_SHARE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 10

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    const-string v1, "-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1"

    .line 62
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mPreBackOff:Ljava/lang/String;

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    const/16 v1, 0x157c

    .line 65
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->infStartFreqMhz:I

    const/16 v1, 0x16fd

    .line 66
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->infEndFreqMhz:I

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxStart5gCh:I

    .line 68
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxEnd5gCh:I

    .line 69
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    .line 70
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mP2pFreq:I

    .line 71
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSApFreq:I

    .line 72
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiApState:I

    .line 73
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCh:I

    .line 74
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxEnabled:Z

    .line 75
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbBackoffDefined:Z

    .line 76
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxfor5GhzDefined:Z

    .line 77
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamFrontBackoffDefined:Z

    .line 78
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamBackBackoffDefined:Z

    .line 79
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbBackoffEnable:Z

    .line 80
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamFrontBackoffEnable:Z

    .line 81
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamBackBackoffEnable:Z

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->isCameraRunning:Z

    .line 83
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mLteuEnable:I

    .line 84
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mScellEnter:Z

    .line 85
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->lastScellEnter:Z

    const/4 v2, 0x1

    .line 86
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->LTEU_MOBILEHOTSPOT_5GHZ_ENABLED:I

    const/4 v3, 0x2

    .line 87
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->LTEU_P2P_5GHZ_CONNECTED:I

    const/4 v3, 0x4

    .line 88
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->LTEU_STA_5GHZ_CONNECTED:I

    const/4 v3, -0x1

    .line 89
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaEnterState:I

    .line 90
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaActiveState:I

    const-string v3, "SemWifiCoexManager"

    .line 112
    invoke-static {v3, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 115
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 116
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    const-string p2, "wifi"

    .line 117
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 118
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 119
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 121
    sget-boolean p2, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    if-eqz p2, :cond_80

    const-string p2, "CUSTOM_BACKOFF_TYPE = "

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_246

    const-string p2, " "

    .line 123
    invoke-virtual {v0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    move p3, v1

    .line 124
    :goto_8f
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    array-length v0, p4

    if-ge p3, v0, :cond_246

    .line 125
    aget-object p4, p4, p3

    const-string v0, "UWB"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_10b

    add-int/lit8 p4, p3, 0x6

    :goto_a0
    add-int/2addr p3, v2

    if-ge p3, p4, :cond_be

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    goto :goto_a0

    .line 130
    :cond_be
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 131
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 132
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbBackoffDefined:Z

    .line 133
    sget-boolean p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    if-eqz p4, :cond_243

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UWB Backoff is defined as "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_243

    .line 134
    :cond_10b
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    aget-object p4, p4, p3

    const-string v0, "CAM_FRONT"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_184

    add-int/lit8 p4, p3, 0x6

    :goto_119
    add-int/2addr p3, v2

    if-ge p3, p4, :cond_137

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    goto :goto_119

    .line 139
    :cond_137
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 140
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 141
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamFrontBackoffDefined:Z

    .line 142
    sget-boolean p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    if-eqz p4, :cond_243

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CAM_F Backoff is defined as "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_243

    .line 143
    :cond_184
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    aget-object p4, p4, p3

    const-string v0, "CAM_BACK"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1fc

    add-int/lit8 p4, p3, 0x6

    :goto_192
    add-int/2addr p3, v2

    if-ge p3, p4, :cond_1b0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    goto :goto_192

    .line 148
    :cond_1b0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 149
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 150
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamBackBackoffDefined:Z

    .line 151
    sget-boolean p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    if-eqz p4, :cond_243

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CAM_B Backoff is defined as "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_243

    .line 152
    :cond_1fc
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    aget-object p4, p4, p3

    const-string v0, "UWB_5G_CX"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_243

    .line 153
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    add-int/lit8 p3, p3, 0x1

    aget-object p4, p4, p3

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxStart5gCh:I

    .line 154
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    add-int/2addr p3, v2

    aget-object p4, p4, p3

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxEnd5gCh:I

    .line 155
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxfor5GhzDefined:Z

    .line 156
    sget-boolean p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    if-eqz p4, :cond_243

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UWB_5G_CX is defined as "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxStart5gCh:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxEnd5gCh:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_243
    :goto_243
    add-int/2addr p3, v2

    goto/16 :goto_8f

    .line 161
    :cond_246
    sget-boolean p2, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->CSC_SUPPORT_5G_ANT_SHARE:Z

    if-eqz p2, :cond_25f

    .line 162
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaEnterState:I

    .line 163
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaActiveState:I

    .line 164
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mContext:Landroid/content/Context;

    new-instance p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;

    invoke-direct {p4, p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.coexstatus"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_25f
    if-nez p2, :cond_26d

    .line 186
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbBackoffDefined:Z

    if-nez p2, :cond_26d

    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamFrontBackoffDefined:Z

    if-nez p2, :cond_26d

    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamBackBackoffDefined:Z

    if-eqz p2, :cond_2a2

    .line 187
    :cond_26d
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mContext:Landroid/content/Context;

    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiCoexManager$2;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    new-instance p4, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {p4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;-><init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback-IA;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSoftApCallback:Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;

    .line 210
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p3, Landroid/os/HandlerExecutor;

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    invoke-direct {p3, p4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSoftApCallback:Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;

    invoke-virtual {p2, p3, p4}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 212
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamFrontBackoffDefined:Z

    if-nez p2, :cond_29f

    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamBackBackoffDefined:Z

    if-eqz p2, :cond_2a2

    .line 213
    :cond_29f
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->startCameraBackoffHandler(Landroid/content/Context;)V

    :cond_2a2
    return-void
.end method

.method private addBackoff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string p0, " "

    .line 591
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 592
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 594
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 595
    :goto_10
    array-length v2, p1

    if-ge v1, v2, :cond_43

    .line 596
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 597
    aget-object v3, p2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_33

    if-gez v2, :cond_28

    .line 600
    aget-object v2, p2, v1

    aput-object v2, p1, v1

    goto :goto_33

    :cond_28
    if-lez v3, :cond_33

    if-ge v2, v3, :cond_2f

    .line 602
    aget-object v2, p1, v1

    goto :goto_31

    :cond_2f
    aget-object v2, p2, v1

    :goto_31
    aput-object v2, p1, v1

    .line 605
    :cond_33
    :goto_33
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_40

    .line 607
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 610
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sendIpcMessageToRilForLteu(Z)V
    .registers 9

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStaFreq : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mP2pFreq : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mP2pFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSApFreq : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSApFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiCoexManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    const/16 v2, 0x1388

    const/4 v3, 0x0

    if-le v0, v2, :cond_35

    const/4 v0, 0x4

    goto :goto_36

    :cond_35
    move v0, v3

    .line 420
    :goto_36
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mP2pFreq:I

    if-le v4, v2, :cond_3c

    const/4 v4, 0x2

    goto :goto_3d

    :cond_3c
    move v4, v3

    .line 421
    :goto_3d
    iget v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSApFreq:I

    const/4 v6, 0x1

    if-le v5, v2, :cond_44

    move v2, v6

    goto :goto_45

    :cond_44
    move v2, v3

    :goto_45
    add-int/2addr v0, v4

    add-int/2addr v0, v2

    if-lez v0, :cond_4e

    const/16 v2, 0x8

    if-ge v0, v2, :cond_4e

    goto :goto_55

    .line 428
    :cond_4e
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mScellEnter:Z

    if-eqz v2, :cond_54

    .line 429
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaActiveState:I

    :cond_54
    move v3, v6

    :goto_55
    if-nez p1, :cond_5f

    .line 432
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mScellEnter:Z

    if-eqz p1, :cond_e1

    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mLteuEnable:I

    if-eq v3, p1, :cond_e1

    .line 433
    :cond_5f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lteuState = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lteuEnable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "phone"

    .line 434
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    .line 435
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 436
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x11

    .line 438
    :try_start_91
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x90

    .line 439
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x5

    .line 440
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 441
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_a0} :catch_e6
    .catchall {:try_start_91 .. :try_end_a0} :catchall_e4

    .line 447
    :try_start_a0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_a3

    :catch_a3
    const/16 v2, 0x800

    :try_start_a5
    new-array v2, v2, [B

    if-eqz p1, :cond_c6

    .line 454
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I

    move-result p1

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeOemRilRequestRaw : return value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1

    :cond_c6
    const-string p1, "ITelephony is null"

    .line 457
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_cb} :catch_cc

    goto :goto_e1

    :catch_cc
    move-exception p1

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeOemRilRequestRaw : RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_e1
    :goto_e1
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mLteuEnable:I

    return-void

    :catchall_e4
    move-exception p0

    goto :goto_ef

    :catch_e6
    :try_start_e6
    const-string p0, "IOException occurs in set lteuEnable"

    .line 443
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catchall {:try_start_e6 .. :try_end_eb} :catchall_e4

    .line 447
    :try_start_eb
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ee} :catch_ee

    :catch_ee
    return-void

    :goto_ef
    :try_start_ef
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f2} :catch_f2

    .line 450
    :catch_f2
    throw p0
.end method

.method private setWifiCustomBackoff(Z)Z
    .registers 9

    .line 533
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

    .line 536
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbBackoffDefined:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2e

    .line 537
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->infStartFreqMhz:I

    if-lt v1, v4, :cond_12

    iget v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->infEndFreqMhz:I

    if-le v1, v5, :cond_22

    :cond_12
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mP2pFreq:I

    if-lt v1, v4, :cond_1a

    iget v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->infEndFreqMhz:I

    if-le v1, v5, :cond_22

    :cond_1a
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSApFreq:I

    if-lt v1, v4, :cond_24

    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->infEndFreqMhz:I

    if-gt v1, v4, :cond_24

    :cond_22
    move v1, v2

    goto :goto_25

    :cond_24
    move v1, v3

    .line 541
    :goto_25
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbBackoffEnable:Z

    if-eqz v4, :cond_2f

    if-eqz v1, :cond_2f

    .line 542
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    goto :goto_2f

    :cond_2e
    move v1, v3

    .line 546
    :cond_2f
    :goto_2f
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamFrontBackoffDefined:Z

    if-eqz v4, :cond_3d

    .line 547
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamFrontBackoffEnable:Z

    if-eqz v4, :cond_3d

    .line 548
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->addBackoff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    :cond_3d
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamBackBackoffDefined:Z

    if-eqz v4, :cond_4b

    .line 553
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamBackBackoffEnable:Z

    if-eqz v4, :cond_4b

    .line 554
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->addBackoff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    :cond_4b
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mPreBackOff:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_55

    if-eqz p1, :cond_e7

    .line 560
    :cond_55
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    invoke-interface {p1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object p1

    .line 561
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 562
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {v4, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWifiCustomBackoff(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_7d

    .line 563
    :cond_68
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiApState:I

    const/16 v4, 0xd

    if-ne p1, v4, :cond_7a

    .line 564
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p1, :cond_77

    .line 565
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotCustomBackOff(Ljava/lang/String;)Z

    move-result p1

    goto :goto_7d

    .line 567
    :cond_77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

    goto :goto_7c

    .line 570
    :cond_7a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

    :goto_7c
    move p1, v3

    :goto_7d
    const-string v4, "SemWifiCoexManager"

    if-eqz p1, :cond_dd

    .line 573
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8f

    const-string v1, "CBO is disabled"

    .line 574
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    :cond_8f
    const-string v5, "CBO is enabled"

    .line 576
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UB="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbBackoffEnable:Z

    if-eqz v6, :cond_a5

    if-eqz v1, :cond_a5

    goto :goto_a6

    :cond_a5
    move v2, v3

    :goto_a6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " CFB="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamFrontBackoffEnable:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " CBB="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamBackBackoffEnable:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    sget-boolean v1, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    if-eqz v1, :cond_e4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CBO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    :cond_dd
    const-string v0, "CBO failed !!!"

    .line 582
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

    .line 585
    :cond_e4
    :goto_e4
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mPreBackOff:Ljava/lang/String;

    move v3, p1

    :cond_e7
    return v3
.end method

.method private startCameraBackoffHandler(Landroid/content/Context;)V
    .registers 4

    .line 293
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackoffHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 295
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;-><init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCameraStateMonitor:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    .line 296
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->start()V

    return-void
.end method


# virtual methods
.method public getLaaActiveState()I
    .registers 1

    .line 403
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaActiveState:I

    return p0
.end method

.method public getLaaEnterState()I
    .registers 1

    .line 399
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaEnterState:I

    return p0
.end method

.method public getWifiUwbCoexMode()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleWifiStateChanged(I)V
    .registers 7

    .line 219
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->CSC_SUPPORT_5G_ANT_SHARE:Z

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_b

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbBackoffDefined:Z

    if-eqz v4, :cond_23

    :cond_b
    if-eq p1, v2, :cond_13

    if-ne p1, v1, :cond_10

    goto :goto_13

    .line 226
    :cond_10
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    goto :goto_23

    .line 221
    :cond_13
    :goto_13
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v4, :cond_23

    .line 223
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    :cond_23
    :goto_23
    if-eqz v0, :cond_28

    .line 231
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->sendIpcMessageToRilForLteu(Z)V

    :cond_28
    const/4 v0, 0x1

    if-eq p1, v0, :cond_59

    const/4 v0, 0x2

    if-eq p1, v0, :cond_54

    if-eq p1, v2, :cond_4c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4c

    if-eq p1, v1, :cond_4c

    .line 253
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleWifiStateChanged - unknown state ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiCoexManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 245
    :cond_4c
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbBackoffEnable:Z

    if-eqz p1, :cond_65

    .line 246
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setWifiCustomBackoff(Z)Z

    goto :goto_65

    .line 250
    :cond_54
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mPreBackOff:Ljava/lang/String;

    goto :goto_65

    .line 236
    :cond_59
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setWifiCustomBackoff(Z)Z

    .line 238
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxEnabled:Z

    if-eqz p1, :cond_65

    .line 239
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCh:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setWifiUwbCoexEnabled(IZ)I

    :cond_65
    :goto_65
    return-void
.end method

.method public setLaaActiveState(I)V
    .registers 2

    .line 411
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaActiveState:I

    return-void
.end method

.method public setLaaEnterState(I)V
    .registers 2

    .line 407
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaEnterState:I

    return-void
.end method

.method public setWifiUwbCoexEnabled(IZ)I
    .registers 5

    .line 468
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbBackoffDefined:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const/4 v0, 0x5

    if-eq p1, v0, :cond_10

    const/16 v0, 0x9

    if-ne p1, v0, :cond_d

    goto :goto_10

    .line 472
    :cond_d
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbBackoffEnable:Z

    goto :goto_12

    .line 470
    :cond_10
    :goto_10
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbBackoffEnable:Z

    .line 474
    :goto_12
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setWifiCustomBackoff(Z)Z

    :cond_15
    return v1
.end method
