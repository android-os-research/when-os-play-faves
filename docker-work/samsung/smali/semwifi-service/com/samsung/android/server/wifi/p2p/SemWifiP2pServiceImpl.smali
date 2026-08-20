.class public Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;
.super Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;
.source "SemWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;
    }
.end annotation


# static fields
.field static final BASE:I = 0x23000

.field private static final BUNDLE_KEY_DEVICE_ADDRESS:Ljava/lang/String; = "device_address"

.field private static final CMD_DISCOVER_PEERS:I = 0x2300e

.field private static final CMD_REMOVE_P2P_CLIENT:I = 0x2300d

.field private static final CMD_SET_LISTEN_OFFLOADING:I = 0x2300c

.field private static final CMD_SET_MICROSOFT_MICE:I = 0x2300a

.field private static final CMD_SET_SCREEN_SHARING:I = 0x2300b

.field private static final EVENT_WIFI_P2P_DISABLED:I = 0x23002

.field private static final EVENT_WIFI_P2P_ENABLED:I = 0x23001

.field private static final FW_INVITE_VENDOR_TYPE:I = 0xf00d

.field private static final GROUP_REMOVED_EVENT:I = 0x23004

.field private static final GROUP_STARTED_EVENT:I = 0x23003

.field private static final MAX_NETWORK_NAME_BYTES:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SemWifiP2pService"


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mContext:Landroid/content/Context;

.field private mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mHandler:Landroid/os/Handler;

.field private mHistoricalDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInUseAware:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInUseP2p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private mOpenWifiScanTimer:Landroid/os/CountDownTimer;

.field private mP2pFactoryMac:Landroid/net/MacAddress;

.field private mP2pState:I

.field private mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

.field private final mP2pSupported:Z

.field private mReqBlockWifiScan:Z

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mThisDeviceStatus:I

.field private mVerboseLoggingEnabled:Z

.field private mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pPowerSave:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

.field private mWifiState:I


# direct methods
.method public static synthetic $r8$lambda$F8p1H1VVfFjeHWgIMTHLFIagdBQ(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->lambda$registerReceiver$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$cFcV-Z_vfzG19tJvdbXI-NUEX2A(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->lambda$handleBootCompleted$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$qJ8qsxGfWeEoeh3IOO2u6cEXWoQ(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Landroid/os/HandlerThread;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->lambda$handleP2pServiceReady$0(Landroid/os/HandlerThread;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yR6jfQLR4OQuCC3WgG3ju1Bgehw(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->lambda$isAllowedPackageForNextAction$3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannel(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpenWifiScanTimer(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/os/CountDownTimer;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mOpenWifiScanTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmP2pStateMachine(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiP2pManager(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiP2pPowerSave(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pPowerSave:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmP2pState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleThisDeviceStatus(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->handleThisDeviceStatus(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAwareOnOrP2pOn(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->isAwareOnOrP2pOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetDeviceName(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setDeviceName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLegacyScanningEnable(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setLegacyScanningEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLegacyScanningEnableForced(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setLegacyScanningEnableForced(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 5

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    const/4 v1, 0x1

    .line 122
    iput v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pState:I

    .line 123
    iput v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiState:I

    const/4 v1, 0x0

    .line 127
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 130
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mReqBlockWifiScan:Z

    .line 131
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mOpenWifiScanTimer:Landroid/os/CountDownTimer;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    const/4 v0, 0x4

    .line 139
    iput v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mThisDeviceStatus:I

    .line 142
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 144
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 145
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 146
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pSupported:Z

    .line 149
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 150
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pPowerSave:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

    .line 151
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.wifi.aware"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 152
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string p2, "wifiaware"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/aware/WifiAwareManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 155
    :cond_75
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string p2, "wifinl80211"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    return-void
.end method

.method private addHistoricalDumpLog(Ljava/lang/String;)V
    .registers 5

    .line 439
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 440
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_20

    .line 443
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 445
    :cond_20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private cutStringByByte(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    .line 336
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v1, v0, :cond_29

    aget-char v3, p1, v1

    .line 339
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    if-le v2, p2, :cond_23

    .line 341
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 343
    :cond_23
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 345
    :cond_29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private enforceAccessPermission()V
    .registers 3

    .line 288
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    const-string v1, "SemWifiP2pService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceChangePermission()V
    .registers 3

    .line 294
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CHANGE_WIFI_STATE"

    const-string v1, "SemWifiP2pService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceLocalMacAddressPermission()V
    .registers 3

    .line 300
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.LOCAL_MAC_ADDRESS"

    const-string v1, "SemWifiP2pService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getDeviceNameForNetwork(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 329
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_c

    return-object p1

    .line 332
    :cond_c
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->cutStringByByte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleThisDeviceStatus(I)V
    .registers 4

    .line 268
    iget v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mThisDeviceStatus:I

    if-ne v0, p1, :cond_5

    return-void

    .line 269
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleThisDeviceStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiP2pService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1f
    iput p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mThisDeviceStatus:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2d

    .line 272
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    const p1, 0x23001

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    goto :goto_38

    :cond_2d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_38

    .line 274
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    const p1, 0x23002

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    :cond_38
    :goto_38
    return-void
.end method

.method private handleWifiState(I)V
    .registers 4

    .line 279
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiP2pService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1a
    iput p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_27

    const-string p1, "all"

    .line 282
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->unsetAllInUsePackage(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setLegacyScanningEnableForced(Z)V

    :cond_27
    return-void
.end method

.method private insertColonsForMacFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 426
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 427
    :goto_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_14

    const/16 v0, 0x3a

    .line 428
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x3

    goto :goto_6

    .line 430
    :cond_14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isAllowedPackageForNextAction(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "smartView"

    const-string v1, "com.samsung.android.smartmirroring"

    const-string v2, "com.samsung.android.mdx.kit"

    const-string v3, "com.android.bluetooth"

    const-string v4, "com.samsung.android.mcfserver"

    const-string v5, "com.samsung.sept.WIFI"

    .line 500
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 504
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 505
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private isAwareOnOrP2pOn()Z
    .registers 3

    .line 376
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/net/wifi/aware/WifiAwareManager;->isDeviceAttached()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 378
    :cond_c
    iget p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pState:I

    if-eq p0, v1, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private isMacAddress(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}"

    .line 434
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 435
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$handleBootCompleted$1()V
    .registers 1

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->registerReceiver()V

    .line 176
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setP2pFactoryMacAddress()V

    return-void
.end method

.method private synthetic lambda$handleP2pServiceReady$0(Landroid/os/HandlerThread;)V
    .registers 5

    .line 164
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pSupported:Z

    const-string v2, "SemWifiP2pService"

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    .line 165
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->start()V

    return-void
.end method

.method private static synthetic lambda$isAllowedPackageForNextAction$3(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 505
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$registerReceiver$2(II)V
    .registers 3

    .line 214
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->handleWifiState(I)V

    return-void
.end method

.method private registerReceiver()V
    .registers 5

    .line 213
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pPowerSave:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->registerListener()V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$2;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$3;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setDeviceName()V
    .registers 5

    .line 306
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_9

    goto :goto_2a

    .line 308
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "device_name"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    .line 313
    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->getDeviceNameForNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$5;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private setLegacyScanningEnable(Z)V
    .registers 4

    .line 349
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_5

    return-void

    .line 353
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isScanningEnabled()Z

    move-result v0

    const-string v1, "SemWifiP2pService"

    if-nez p1, :cond_21

    if-eqz v0, :cond_21

    .line 356
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_18

    const-string v0, "setLegacyScanningEnable: false"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v0, 0x1

    .line 357
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mReqBlockWifiScan:Z

    .line 358
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setAllowWifiScan(Z)V

    goto :goto_38

    :cond_21
    if-eqz p1, :cond_38

    .line 359
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mReqBlockWifiScan:Z

    if-eqz v0, :cond_38

    .line 360
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_30

    const-string v0, "setLegacyScanningEnable: true"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const/4 v0, 0x0

    .line 361
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mReqBlockWifiScan:Z

    .line 362
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setAllowWifiScan(Z)V

    :cond_38
    :goto_38
    return-void
.end method

.method private setLegacyScanningEnableForced(Z)V
    .registers 4

    .line 367
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_5

    return-void

    .line 371
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLegacyScanningEnableForced: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiP2pService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_1f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setAllowWifiScan(Z)V

    return-void
.end method

.method private setP2pFactoryMacAddress()V
    .registers 6

    .line 396
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v1, "SemWifiP2pService"

    if-nez v0, :cond_c

    const-string p0, "mSemWifiManager is null"

    .line 397
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 400
    :cond_c
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const-string p0, "macAddress is null!"

    .line 404
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    const-string v2, ":|-|\\.|\\s"

    const-string v3, ""

    .line 407
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2c

    .line 409
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->insertColonsForMacFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    :cond_2c
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->isMacAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 412
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong address : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 416
    :cond_47
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    .line 417
    aget-byte v3, v0, v2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 419
    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pFactoryMac:Landroid/net/MacAddress;

    .line 420
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_77

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mP2pFactoryMac: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pFactoryMac:Landroid/net/MacAddress;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    return-void
.end method


# virtual methods
.method public controlOpenWifiScanTimer(I)V
    .registers 3

    .line 386
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mOpenWifiScanTimer:Landroid/os/CountDownTimer;

    if-eqz p0, :cond_a

    if-nez p1, :cond_a

    .line 387
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_1a

    :cond_a
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 389
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1a

    :cond_13
    const-string p0, "SemWifiP2pService"

    const-string p1, "mOpenWifiScanTimer is null or control value is wrong"

    .line 391
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    return-void
.end method

.method public discoverPeers(ILcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V
    .registers 5

    .line 639
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceAccessPermission()V

    .line 640
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceChangePermission()V

    .line 641
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    const v0, 0x2300e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 450
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p1, "Internal API call history"

    .line 451
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mInUseP2p :"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mInUseAware :"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getChannelsMhzForBand(I)[I
    .registers 2

    .line 657
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getChannelsMhzForBand(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getInUsePackageList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 510
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "p2p"

    .line 514
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 516
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    return-object p0

    :cond_13
    const-string v0, "aware"

    .line 517
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 519
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    return-object p0

    :cond_1e
    return-object v1
.end method

.method public getP2pFactoryMacAddress()Landroid/net/MacAddress;
    .registers 3

    .line 625
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceLocalMacAddressPermission()V

    .line 626
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pFactoryMac:Landroid/net/MacAddress;

    if-nez v0, :cond_17

    .line 627
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 629
    :try_start_b
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setP2pFactoryMacAddress()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_12

    .line 631
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_17

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    throw p0

    .line 634
    :cond_17
    :goto_17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pFactoryMac:Landroid/net/MacAddress;

    return-object p0
.end method

.method public getWifiP2pState()I
    .registers 1

    .line 459
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceAccessPermission()V

    .line 460
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceChangePermission()V

    .line 461
    iget p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pState:I

    return p0
.end method

.method public handleBootCompleted()V
    .registers 9

    const-string v0, "SemWifiP2pService"

    const-string v1, "handleBootCompleted"

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    .line 172
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiState:I

    .line 174
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mOpenWifiScanTimer:Landroid/os/CountDownTimer;

    if-nez v1, :cond_32

    .line 180
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$1;

    const-wide/16 v4, 0x7530

    const-wide/16 v6, 0x1388

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$1;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;JJ)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mOpenWifiScanTimer:Landroid/os/CountDownTimer;

    .line 200
    :cond_32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "wifip2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_57

    .line 202
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_5c

    const-string v1, "Failed to set up connection with wifi p2p service"

    .line 204
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-object v4, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    goto :goto_5c

    :cond_57
    const-string p0, "mWifiP2pManager is null"

    .line 208
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    return-void
.end method

.method public handleP2pServiceReady(Landroid/os/HandlerThread;)V
    .registers 4

    const-string v0, "SemWifiP2pService"

    const-string v1, "handleP2pServiceReady"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pSupported:Z

    if-nez v0, :cond_c

    return-void

    .line 162
    :cond_c
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mHandler:Landroid/os/Handler;

    .line 163
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Landroid/os/HandlerThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeClient(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V
    .registers 5

    .line 646
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceAccessPermission()V

    .line 647
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceChangePermission()V

    .line 648
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x2300d

    .line 649
    iput v1, v0, Landroid/os/Message;->what:I

    .line 650
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 651
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "device_address"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 529
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_aa

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_aa

    :cond_e
    const-string v0, "android"

    .line 533
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "empty"

    if-eqz v0, :cond_21

    .line 534
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_20

    move-object p2, v1

    goto :goto_21

    :cond_20
    move-object p2, p3

    .line 539
    :cond_21
    :goto_21
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-string v0, "SemWifiP2pService"

    if-eqz p3, :cond_2f

    const-string p0, "setInUsePackage error, package is wrong"

    .line 540
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    const-string p3, "p2p"

    .line 544
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_47

    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    if-eqz p3, :cond_47

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_47

    .line 547
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_47
    const-string p3, "aware"

    .line 548
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5e

    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    if-eqz p3, :cond_5e

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5e

    .line 551
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5e
    :goto_5e
    if-eqz p4, :cond_86

    .line 554
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->isAllowedPackageForNextAction(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_86

    .line 555
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInUsePackage executes nextAction, reqNextAction: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " packageName: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    .line 557
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setLegacyScanningEnableForced(Z)V

    .line 559
    :cond_86
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setInUsePackage: type="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " packageName="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reqNextAction="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->addHistoricalDumpLog(Ljava/lang/String;)V

    :cond_aa
    :goto_aa
    return-void
.end method

.method public setListenOffloading(IIII)V
    .registers 7

    .line 489
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceAccessPermission()V

    .line 490
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceChangePermission()V

    .line 491
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "channel"

    .line 492
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "period"

    .line 493
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "interval"

    .line 494
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "count"

    .line 495
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 496
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    const p1, 0x2300c

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setMsMiceInfo(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 466
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceAccessPermission()V

    .line 467
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceChangePermission()V

    .line 468
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x2300a

    .line 469
    iput v1, v0, Landroid/os/Message;->what:I

    .line 470
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 471
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p3, :cond_22

    .line 473
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "MICE_IP"

    .line 474
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 477
    :cond_22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setScreenSharing(Z)V
    .registers 3

    .line 482
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceAccessPermission()V

    .line 483
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceChangePermission()V

    .line 484
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    const v0, 0x2300b

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->sendMessage(II)V

    return-void
.end method

.method public unsetAllInUsePackage(Ljava/lang/String;)V
    .registers 4

    .line 605
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "all"

    .line 609
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "p2p"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    if-eqz v1, :cond_26

    .line 610
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 612
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 615
    :cond_26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "aware"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    if-eqz v0, :cond_43

    .line 616
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_43

    .line 618
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 620
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsetAllInUsePackage: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->addHistoricalDumpLog(Ljava/lang/String;)V

    return-void
.end method

.method public unsetInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 569
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_ba

    :cond_e
    const-string v0, "android"

    .line 573
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "empty"

    if-eqz v0, :cond_21

    .line 574
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_20

    move-object p2, v1

    goto :goto_21

    :cond_20
    move-object p2, p3

    .line 579
    :cond_21
    :goto_21
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-string v0, "SemWifiP2pService"

    if-eqz p3, :cond_2f

    const-string p0, "unsetInUsePackage error, package is wrong"

    .line 580
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    const-string p3, "p2p"

    .line 584
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4f

    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    if-eqz p3, :cond_4f

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_4f

    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    .line 585
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4f

    .line 587
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_4f
    const-string p3, "aware"

    .line 588
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6e

    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    if-eqz p3, :cond_6e

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_6e

    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    .line 589
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6e

    .line 591
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6e
    :goto_6e
    if-eqz p4, :cond_96

    .line 594
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->isAllowedPackageForNextAction(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_96

    .line 595
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsetInUsePackage executes nextAction, reqNextAction: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " packageName: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    .line 597
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setLegacyScanningEnableForced(Z)V

    .line 599
    :cond_96
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsetInUsePackage: type="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " packageName="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reqNextAction="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->addHistoricalDumpLog(Ljava/lang/String;)V

    :cond_ba
    :goto_ba
    return-void
.end method
