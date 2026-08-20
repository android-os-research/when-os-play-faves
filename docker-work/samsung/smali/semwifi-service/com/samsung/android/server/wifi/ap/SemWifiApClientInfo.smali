.class public Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;
.super Ljava/lang/Object;
.source "SemWifiApClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;
    }
.end annotation


# static fields
.field public static final AP_STA_DISCONNECT_DELAY:I = 0xea60

.field public static final AP_STA_RECONNECT_DELAY:I = 0x2710

.field private static final MHSDBG:Z

.field private static final TAG:Ljava/lang/String; = "SemWifiApClientInfo"

.field private static final WIFI_AP_DRIVER_STATE_HANGED:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

.field private static final WIFI_AP_STA_DHCPACK_EVENT:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_AP_STA_DHCPACK_EVENT"

.field private static mIsLOHSmode:Z = false


# instance fields
.field private intent:Landroid/content/Intent;

.field private mChannelSwitch:Z

.field private mClientWorkThread:Landroid/os/HandlerThread;

.field private mClients:I

.field private final mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

.field private mLooper:Landroid/os/Looper;

.field mMHSClients:Ljava/util/Hashtable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMHSDumpCSALogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMHSDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSoftApReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mSoftApReceiverFilter:Landroid/content/IntentFilter;

.field private mStr:[Ljava/lang/String;

.field private mWifiApMonitor:Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;

.field private mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mac:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mChannelSwitch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClients(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mClients:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mStr:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/wifi/SemWifiManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->intent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mChannelSwitch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClients(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mClients:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;[Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mStr:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiManager(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Lcom/samsung/android/wifi/SemWifiManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->MHSClientSetState(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetClientCntDhcpack(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->getClientCntDhcpack()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendMHSBigdata(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->sendMHSBigdata(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendTsfInfoResults(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->sendTsfInfoResults(JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowClientsInfo(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->showClientsInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetMHSDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->MHSDBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsLOHSmode()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mIsLOHSmode:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmIsLOHSmode(Z)V
    .registers 1

    sput-boolean p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mIsLOHSmode:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 54
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->MHSDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 5

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mChannelSwitch:Z

    .line 69
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mClients:I

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mStr:[Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mClientWorkThread:Landroid/os/HandlerThread;

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSDumpLogs:Ljava/util/List;

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSDumpCSALogs:Ljava/util/List;

    .line 82
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 84
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "SemWifiApClientInfo"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mClientWorkThread:Landroid/os/HandlerThread;

    .line 85
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.net.wifi.WIFI_AP_STA_DHCPACK_EVENT"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mSoftApReceiverFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 87
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApMonitor()Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mWifiApMonitor:Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;

    .line 129
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getHostapdHal()Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    if-eqz p1, :cond_60

    .line 131
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    :cond_60
    new-instance p2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mClientWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mHandler:Landroid/os/Handler;

    .line 351
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mWifiApMonitor:Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->registerHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private declared-synchronized MHSClientSetState(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    monitor-enter p0

    .line 532
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 534
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->setState(Ljava/lang/String;I)V

    goto :goto_6d

    :cond_19
    const-string p3, "sta_new"

    .line 536
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_45

    const-string p3, "SemWifiApClientInfo"

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " MHSClient do not add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_6f

    .line 538
    monitor-exit p0

    return-void

    .line 540
    :cond_45
    :try_start_45
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)V

    .line 541
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {p3, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, -0x1

    .line 542
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->setState(Ljava/lang/String;I)V

    const-string p1, "SemWifiApClientInfo"

    .line 543
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "new client :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_45 .. :try_end_6d} :catchall_6f

    .line 545
    :goto_6d
    monitor-exit p0

    return-void

    :catchall_6f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getClientCntDhcpack()I
    .registers 9

    monitor-enter p0

    .line 516
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 517
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 518
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 519
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    .line 520
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sta_dhcpack"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    add-int/lit8 v1, v1, 0x1

    .line 523
    :cond_33
    sget-boolean v3, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->MHSDBG:Z

    if-eqz v3, :cond_d

    const-string v3, "SemWifiApClientInfo"

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "idx : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rtn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMac:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    iget-wide v6, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_1 .. :try_end_9d} :catchall_a3

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    .line 528
    :cond_a1
    monitor-exit p0

    return v1

    :catchall_a3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendMHSBigdata(Ljava/lang/String;)V
    .registers 4

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMHSBigdata MHDC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApClientInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mContext:Landroid/content/Context;

    const-string v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    const-string v0, "MHDC"

    .line 497
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendTsfInfoResults(JJ)V
    .registers 7

    .line 582
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.SOFTAP_TSF_INFO_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TSF"

    .line 583
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "UTC"

    .line 584
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 585
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string p2, "android.permission.WIFI_SET_DEVICE_MOBILITY_STATE"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized showClientsInfo()Ljava/lang/String;
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v0, "SemWifiApClientInfo"

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showClientsInfo() size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 503
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 504
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 505
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 506
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    .line 507
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "idx : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMac:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isInUIList:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v3, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->isInUIList:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2d

    .line 510
    :cond_b0
    sget-boolean v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->MHSDBG:Z

    if-eqz v1, :cond_bd

    const-string v1, "SemWifiApClientInfo"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_bd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c1
    .catchall {:try_start_1 .. :try_end_c1} :catchall_c3

    monitor-exit p0

    return-object v0

    :catchall_c3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 547
    sget-boolean p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->MHSDBG:Z

    if-eqz p0, :cond_5

    return-object p1

    .line 550
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addMHSDumpCSALog(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 471
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SemWifiApClientInfo"

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mhs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSDumpCSALogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSDumpCSALogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x64

    if-le p1, v1, :cond_66

    .line 476
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSDumpCSALogs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 478
    :cond_66
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSDumpCSALogs:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catchall {:try_start_1 .. :try_end_6f} :catchall_71

    .line 479
    monitor-exit p0

    return-void

    :catchall_71
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMHSDumpLog(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 458
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SemWifiApClientInfo"

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mhs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSDumpLogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSDumpLogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x64

    if-le p1, v1, :cond_66

    .line 463
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSDumpLogs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 465
    :cond_66
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catchall {:try_start_1 .. :try_end_6f} :catchall_71

    .line 466
    monitor-exit p0

    return-void

    :catchall_71
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getConnectedDeviceLength()I
    .registers 3

    .line 556
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    const-string v0, "GET_STA_LIST"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 558
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x12

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    .line 560
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccessPointStaList num is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApClientInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getDumpLogs()Ljava/lang/String;
    .registers 3

    .line 483
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "--WifiApClientInfo history \n"

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n--showClientsInfo \n"

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->showClientsInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n--CSA history \n"

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSDumpCSALogs:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getWifiApStaListDetail()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 568
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 570
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 571
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 572
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    .line 573
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sta_dhcpack"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mIp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "SemWifiApClientInfo"

    .line 575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifiap list detail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMac:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_1 .. :try_end_9d} :catchall_a1

    goto/16 :goto_10

    .line 578
    :cond_9f
    monitor-exit p0

    return-object v0

    :catchall_a1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAccessPointDisassocSta(Ljava/lang/String;)V
    .registers 4

    const-string v0, "disassoc_sta"

    const/4 v1, -0x1

    .line 565
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->MHSClientSetState(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
