.class public Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;
.super Ljava/lang/Object;
.source "SemWifiApContinuityMHS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;,
        Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;
    }
.end annotation


# static fields
.field private static final CMD_AH_START_ADVERTISE:I = 0x2

.field private static final CMD_AH_STOP_ADVERTISE:I = 0x3

.field private static final CMD_MHS_ENABLED_TIMEOUT:I = 0x4

.field private static final CMD_START_ADVERTISE:I = 0x1

.field private static final MHS_ENABLED_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "MHSMcf:MHS"

.field private static final TIMEOUT_SEND_MESSAGE:I = 0x1388

.field private static mWifiApContinuityMHSInterFilter:Landroid/content/IntentFilter;


# instance fields
.field private isAdvertisementGoingon:Z

.field private isMHSEnabledSmartly:Z

.field private isServiceBinded:Z

.field private mBleWorkHandler:Landroid/os/Handler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mIntentSoftApState:I

.field private mObject:Ljava/lang/Object;

.field private mWaitingToEnableSmartly:Z

.field private mWaitingdeviceId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApContinuityMHSBR:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;

.field private semWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method public static synthetic $r8$lambda$4ZFByg8CRJ7o54KAFv2t1Y5v7fM(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->lambda$startAdvertisement$1(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xU0muU9ANpz8YBOYWGb-8_T4Q1I(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->lambda$startAdvertisement$0(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isMHSEnabledSmartly:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisServiceBinded(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isServiceBinded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntentSoftApState(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mIntentSoftApState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingToEnableSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingToEnableSmartly:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isMHSEnabledSmartly:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIntentSoftApState(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mIntentSoftApState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaitingToEnableSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingToEnableSmartly:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Landroid/os/Handler;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSemWifiManager(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Lcom/samsung/android/wifi/SemWifiManager;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misAutoHotspotDBEnabled(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isAutoHotspotDBEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendMHSConfigMessage(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Ljava/util/Set;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->sendMHSConfigMessage(Ljava/util/Set;Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWifiApContinuityMHSInterFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    .line 36
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mIntentSoftApState:I

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mObject:Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->registerContentObserver()V

    .line 59
    new-instance p1, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWifiApContinuityMHSBR:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;

    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWifiApContinuityMHSInterFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;
    .registers 1

    .line 187
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object p0

    return-object p0
.end method

.method private getHandler()Landroid/os/Handler;
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mBleWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_1d

    .line 179
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiApContinuityMHS"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 180
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 181
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mBleWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mBleWorkHandler:Landroid/os/Handler;

    .line 183
    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mBleWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getMHSAdvertisementData()[B
    .registers 4

    .line 191
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 192
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityUtil()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    move-result-object v0

    :try_start_d
    const-string v1, "version"

    const/4 v2, 0x1

    .line 194
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "messagetype"

    const/4 v2, 0x2

    .line 195
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "backhaulnetworktype"

    .line 196
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getNetworkType()B

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "deviceName"

    .line 197
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getHostNameFromSettingDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "securetype"

    .line 198
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getSecurityType()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "hiddenssid"

    .line 199
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->isHidden()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "batteryLevel"

    .line 200
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getBatteryLevel()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "wifimac"

    .line 201
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getClientMACAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "datasaver"

    .line 202
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->isDataSaverEnabled()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "wifi6estandard"

    .line 203
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getWifi6ENetwork()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "wifi6standard"

    .line 204
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getWifi6Network()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_74} :catch_75

    return-object p0

    :catch_75
    move-exception p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method private getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->semWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_10

    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->semWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 112
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->semWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method private isAutoHotspotDBEnabled()Z
    .registers 3

    .line 298
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_smart_tethering_settings"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v1, v0

    :cond_11
    return v1
.end method

.method private synthetic lambda$startAdvertisement$0(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 3

    .line 219
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    const-string v0, "Please enable Bluetooth"

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$startAdvertisement$1(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 3

    .line 227
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    const-string v0, "please try after sometime"

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private registerContentObserver()V
    .registers 6

    .line 302
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    const-string v2, "wifi_ap_smart_tethering_settings"

    .line 303
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$1;

    .line 304
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$1;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Landroid/os/Handler;)V

    const/4 p0, 0x1

    .line 302
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private sendMHSConfigMessage(Ljava/util/Set;Ljava/lang/Boolean;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 272
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 273
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityUtil()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    move-result-object v1

    :try_start_d
    const-string v2, "messagetype"

    const/4 v3, 0x4

    .line 275
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 276
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_5b

    const-string v2, "isSuccess"

    if-eqz p2, :cond_56

    const/4 p2, 0x1

    .line 277
    :try_start_1c
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "ssid"

    .line 278
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "password"

    .line 279
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "mhsfreq"

    .line 280
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getFreq()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "securetype"

    .line 281
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getSecurityType()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "hiddenssid"

    .line 282
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->isHidden()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "mhsbssid"

    .line 283
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getMHSMacFromInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5f

    :cond_56
    const/4 p2, 0x0

    .line 285
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_5a} :catch_5b

    goto :goto_5f

    :catch_5b
    move-exception p2

    .line 288
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 290
    :goto_5f
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 291
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;->sendMessage(Ljava/lang/String;[B)Z

    move-result v0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMHSConfigMessage:,message size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":retvalue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MHSMcf:MHS"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    :cond_a5
    return-void
.end method

.method private updateStateIntent()V
    .registers 3

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleBootCompleted()V
    .registers 1

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    return-void
.end method

.method public onReceived(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p3, v0, :cond_4a

    .line 70
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mObject:Ljava/lang/Object;

    monitor-enter p3

    .line 71
    :try_start_6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getMHSAdvertisementData()[B

    move-result-object p2

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;->sendMessage(Ljava/lang/String;[B)Z

    move-result p0

    const-string p1, "MHSMcf:MHS"

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MHS_DISCOVERY_TYPE:,message size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":retvalue:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_45
    monitor-exit p3

    return-void

    :catchall_47
    move-exception p0

    monitor-exit p3
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_47

    throw p0

    .line 79
    :cond_4a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p3

    .line 80
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    monitor-enter v1

    .line 81
    :try_start_55
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_de

    const-string v1, "MHSMcf:MHS"

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",wifiapState:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":message:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd

    const/4 p2, 0x4

    if-ne p3, p1, :cond_a1

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    monitor-enter p1

    .line 87
    :try_start_90
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->sendMHSConfigMessage(Ljava/util/Set;Ljava/lang/Boolean;)V

    .line 88
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 89
    monitor-exit p1

    goto :goto_dd

    :catchall_9e
    move-exception p0

    monitor-exit p1
    :try_end_a0
    .catchall {:try_start_90 .. :try_end_a0} :catchall_9e

    throw p0

    :cond_a1
    const/16 p1, 0xc

    if-eq p3, p1, :cond_dd

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    move-result p1

    if-nez p1, :cond_cb

    const-string p1, "MHSMcf:MHS"

    const-string p2, "setWifiApEnabled, returned false;"

    .line 94
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    monitor-enter p1

    .line 96
    :try_start_ba
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->sendMHSConfigMessage(Ljava/util/Set;Ljava/lang/Boolean;)V

    .line 97
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 98
    monitor-exit p1

    goto :goto_dd

    :catchall_c8
    move-exception p0

    monitor-exit p1
    :try_end_ca
    .catchall {:try_start_ba .. :try_end_ca} :catchall_c8

    throw p0

    .line 100
    :cond_cb
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingToEnableSmartly:Z

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_dd
    :goto_dd
    return-void

    :catchall_de
    move-exception p0

    .line 82
    :try_start_df
    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw p0
.end method

.method public setServiceBinded(Z)V
    .registers 3

    .line 157
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isServiceBinded:Z

    const-string v0, "MHSMcf:MHS"

    if-nez p1, :cond_1e

    const-string p1, "setServiceBinded,false,stopping discovery"

    .line 159
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3b

    .line 164
    :cond_1e
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isAutoHotspotDBEnabled()Z

    move-result p1

    if-eqz p1, :cond_3b

    const-string p1, "setServiceBinded,starting discovery"

    .line 165
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3b
    :goto_3b
    return-void
.end method

.method public startAdvertisement()I
    .registers 6

    .line 214
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-string v1, "wifi_ap_smart_tethering_settings"

    const-string v2, "MHSMcf:MHS"

    const/4 v3, 0x0

    if-eqz v0, :cond_38

    .line 215
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "Bluetooth is not ON"

    .line 216
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    .line 218
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->updateStateIntent()V

    const/4 p0, -0x4

    return p0

    .line 223
    :cond_38
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v0

    if-nez v0, :cond_65

    const-string v0, "discoveryManager == null"

    .line 224
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    .line 226
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->updateStateIntent()V

    const/4 p0, -0x1

    return p0

    .line 231
    :cond_65
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isAdvertisementGoingon:Z

    if-eqz v0, :cond_6f

    const-string p0, "startAdvertisement already goingon"

    .line 232
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 235
    :cond_6f
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isServiceBinded:Z

    if-nez v0, :cond_86

    const-string v0, "isServiceBinded false"

    .line 236
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->updateStateIntent()V

    const/4 p0, -0x2

    return p0

    .line 241
    :cond_86
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->startAdvertisement()Z

    move-result v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAdvertisement return :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a8

    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isAdvertisementGoingon:Z

    return v3

    .line 247
    :cond_a8
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isAdvertisementGoingon:Z

    const/4 p0, -0x3

    return p0
.end method

.method public stopAdvertisement()I
    .registers 5

    .line 252
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v0

    const-string v1, "MHSMcf:MHS"

    if-nez v0, :cond_17

    const-string p0, "discoveryManager == null,stopDiscovery"

    .line 254
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 257
    :cond_17
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isAdvertisementGoingon:Z

    const/4 v3, 0x0

    if-nez v2, :cond_22

    const-string p0, "isAdvertisementGoingon false"

    .line 258
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 261
    :cond_22
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isAdvertisementGoingon:Z

    .line 262
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->stopAdvertisement()Z

    move-result p0

    if-eqz p0, :cond_30

    const-string p0, "stopAdvertisement success"

    .line 264
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_30
    const-string p0, "stopAdvertisement failed"

    .line 267
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0
.end method
