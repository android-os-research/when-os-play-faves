.class public Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;
.super Ljava/lang/Object;
.source "SemWifiApTetheredClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;
    }
.end annotation


# static fields
.field private static MHSDBG:Z = false

.field private static TAG:Ljava/lang/String; = "SemWifiApTetheredClientInfo"

.field private static final WIFI_AP_STA_DHCPACK_EVENT:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_AP_STA_DHCPACK_EVENT"

.field private static mIsLOHSmode:Z = false

.field private static mSemWifiApTetheredClientInfoIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private isRegisteredCallback:Z

.field private mClearDeepCopyObject:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDHCPIntent:Landroid/content/Intent;

.field private mDeepCopyLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMHSDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSemWifiApTetheredClientInfoReceiver:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mTetheredInfaceState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

.field private mTetheringManager:Landroid/net/TetheringManager;

.field private numOfTetheredClients:I


# direct methods
.method static bridge synthetic -$$Nest$fgetisRegisteredCallback(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->isRegisteredCallback:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClearDeepCopyObject(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mClearDeepCopyObject:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeepCopyLastTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDeepCopyLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTetheredInfaceState(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mTetheredInfaceState:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTetheringCallback(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Landroid/net/TetheringManager$TetheringEventCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTetheringManager(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Landroid/net/TetheringManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mTetheringManager:Landroid/net/TetheringManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnumOfTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->numOfTetheredClients:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisRegisteredCallback(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->isRegisteredCallback:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDeepCopyLastTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDeepCopyLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTetheringManager(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Landroid/net/TetheringManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mTetheringManager:Landroid/net/TetheringManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnumOfTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->numOfTetheredClients:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msendDHCPACKBroadcast(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->sendDHCPACKBroadcast(Ljava/util/Collection;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLastConnectedClientInfo(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->updateLastConnectedClientInfo(Ljava/util/Collection;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmIsLOHSmode(Z)V
    .registers 1

    sput-boolean p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mIsLOHSmode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smshowMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 52
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->MHSDBG:Z

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mSemWifiApTetheredClientInfoIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->numOfTetheredClients:I

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDHCPIntent:Landroid/content/Intent;

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->isRegisteredCallback:Z

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mTetheredInfaceState:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDeepCopyLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mClearDeepCopyObject:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mMHSDumpLogs:Ljava/util/List;

    .line 167
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mContext:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mHandler:Landroid/os/Handler;

    .line 169
    new-instance p2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mSemWifiApTetheredClientInfoReceiver:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;

    .line 170
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mSemWifiApTetheredClientInfoIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendDHCPACKBroadcast(Ljava/util/Collection;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/TetheredClient;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 297
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 299
    :try_start_e
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_263

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/TetheredClient;

    .line 300
    invoke-virtual {v6}, Landroid/net/TetheredClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v7

    .line 301
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_150

    invoke-virtual {v6}, Landroid/net/TetheredClient;->getTetheringType()I

    move-result v8

    if-nez v8, :cond_150

    .line 302
    invoke-virtual {v6}, Landroid/net/TetheredClient;->getAddresses()Ljava/util/List;

    move-result-object v6

    .line 303
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_d4

    .line 304
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/TetheredClient$AddressInfo;

    invoke-virtual {v8}, Landroid/net/TetheredClient$AddressInfo;->getAddress()Landroid/net/LinkAddress;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    .line 305
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v10, "^/+"

    const-string v11, ""

    .line 306
    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "/"

    .line 307
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v14, v8, v9

    .line 308
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/TetheredClient$AddressInfo;

    invoke-virtual {v6}, Landroid/net/TetheredClient$AddressInfo;->getHostname()Ljava/lang/String;

    move-result-object v6

    .line 309
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7d

    const-string v8, "null"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 310
    :cond_7d
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1040f3a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 312
    :cond_8a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " new client: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object v8, v12

    move-object v9, v7

    move-object v10, v14

    move-object v11, v6

    move-object/from16 p1, v5

    move-object v5, v12

    move-wide/from16 v12, v16

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 313
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v15, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object v8, v15

    move-object v9, v7

    move-object v10, v14

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v5, v7, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v5, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object v8, v5

    move-object v9, v7

    move-object v10, v14

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25f

    :cond_d4
    move-object/from16 p1, v5

    .line 316
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDeepCopyLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_25f

    .line 317
    sget-object v5, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "address info is not available for:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",using deep copy"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDeepCopyLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "address info is not available for using deepcopy: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v14, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    iget-object v10, v5, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    iget-object v11, v5, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object v8, v14

    move-object v9, v7

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 320
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v14, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    iget-object v10, v5, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    iget-object v11, v5, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object v8, v14

    move-object v9, v7

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6, v7, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v6, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    iget-object v10, v5, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    iget-object v11, v5, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object v8, v6

    move-object v9, v7

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25f

    :cond_150
    move-object/from16 p1, v5

    .line 324
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_25f

    invoke-virtual {v6}, Landroid/net/TetheredClient;->getTetheringType()I

    move-result v5

    if-nez v5, :cond_25f

    .line 325
    invoke-virtual {v6}, Landroid/net/TetheredClient;->getAddresses()Ljava/util/List;

    move-result-object v1

    .line 326
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    iget-wide v5, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->connectedTime:J

    .line 327
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 328
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    iget-object v8, v8, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 329
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_25e

    .line 330
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/TetheredClient$AddressInfo;

    invoke-virtual {v10}, Landroid/net/TetheredClient$AddressInfo;->getAddress()Landroid/net/LinkAddress;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v10

    .line 331
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "^/+"

    const-string v12, ""

    .line 332
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "/"

    .line 333
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v14, v10, v9

    .line 334
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetheredClient$AddressInfo;

    invoke-virtual {v1}, Landroid/net/TetheredClient$AddressInfo;->getHostname()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_211

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1ca

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_211

    .line 336
    :cond_1ca
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MAC is exist but device name connected device , got IP and got hostname "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MAC is exist but device name connected device , got IP and got hostname "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 338
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v15, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    move-object v8, v15

    move-object v9, v7

    move-object v10, v14

    move-object v11, v1

    move-wide v12, v5

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v2, v7, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    move-object v8, v2

    move-object v9, v7

    move-object v10, v14

    move-object v11, v1

    move-wide v12, v5

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25e

    .line 340
    :cond_211
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25e

    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25e

    .line 341
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    const-string v8, "MAC is exist but IP is not same"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MAC is exist but IP is not same for mac:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    move-object v8, v15

    move-object v9, v7

    move-object v10, v14

    move-object v11, v1

    move-wide v12, v5

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 343
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v15, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    move-object v8, v15

    move-object v9, v7

    move-object v10, v14

    move-object v11, v1

    move-wide v12, v5

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v2, v7, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    move-object v8, v2

    move-object v9, v7

    move-object v10, v14

    move-object v11, v1

    move-wide v12, v5

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25e
    :goto_25e
    move-wide v1, v5

    :cond_25f
    :goto_25f
    move-object/from16 v5, p1

    goto/16 :goto_12

    .line 349
    :cond_263
    monitor-exit v4
    :try_end_264
    .catchall {:try_start_e .. :try_end_264} :catchall_32a

    .line 350
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_268
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_329

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 351
    invoke-static {}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_286

    .line 352
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mContext:Landroid/content/Context;

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x1

    const-string v10, "SemWifiApTetheredClientInfo"

    const-string v11, "Client device connected to Wi-Fi hotspot"

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->auditLog(Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_286
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "EVENT"

    const-string v7, "sta_join"

    .line 361
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "MAC"

    .line 362
    iget-object v7, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "IP"

    .line 363
    iget-object v7, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "DEVICE"

    .line 364
    iget-object v7, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "TIME"

    .line 365
    invoke-virtual {v5, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "MODE"

    .line 366
    sget-boolean v7, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mIsLOHSmode:Z

    if-eqz v7, :cond_2b7

    const-string v7, "LOHS"

    goto :goto_2b9

    :cond_2b7
    const-string v7, "TETHERED"

    :goto_2b9
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "STA_COUNT"

    .line 367
    iget v7, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->numOfTetheredClients:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 370
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.net.wifi.WIFI_AP_STA_DHCPACK_EVENT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDHCPIntent:Landroid/content/Intent;

    const-string v6, "MAC"

    .line 371
    iget-object v7, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDHCPIntent:Landroid/content/Intent;

    const-string v6, "IP"

    iget-object v7, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDHCPIntent:Landroid/content/Intent;

    const-string v6, "DEVICE"

    iget-object v7, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",IP:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",mHostname:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 375
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDHCPIntent:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_268

    :cond_329
    return-void

    :catchall_32a
    move-exception v0

    .line 349
    :try_start_32b
    monitor-exit v4
    :try_end_32c
    .catchall {:try_start_32b .. :try_end_32c} :catchall_32a

    throw v0
.end method

.method private static showMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 400
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->MHSDBG:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 403
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateLastConnectedClientInfo(Ljava/util/Collection;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/TetheredClient;",
            ">;)V"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    sget-boolean v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->MHSDBG:Z

    if-eqz v1, :cond_3a

    .line 254
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/TetheredClient;

    .line 255
    invoke-virtual {v2}, Landroid/net/TetheredClient;->getTetheringType()I

    move-result v3

    if-nez v3, :cond_d

    .line 256
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/TetheredClient;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 260
    :cond_3a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_3d
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_47
    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_94

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 262
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 263
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    const/4 v5, 0x0

    .line 265
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_66
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_89

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/TetheredClient;

    .line 266
    invoke-virtual {v7}, Landroid/net/TetheredClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_66

    .line 267
    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_66

    invoke-virtual {v7}, Landroid/net/TetheredClient;->getTetheringType()I

    move-result v7

    if-nez v7, :cond_66

    const/4 v5, 0x1

    :cond_89
    if-nez v5, :cond_47

    .line 273
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 276
    :cond_94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_98
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 277
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_98

    .line 279
    :cond_ac
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_3d .. :try_end_ad} :catchall_12d

    .line 280
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 281
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AP_STA_REMOVE_EVENT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AP_STA_REMOVE_EVENT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 283
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "EVENT"

    const-string v3, "sta_leave"

    .line 284
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "MAC"

    .line 285
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "IP"

    .line 286
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "STA_COUNT"

    .line 287
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_b1

    :cond_12c
    return-void

    :catchall_12d
    move-exception p0

    .line 279
    :try_start_12e
    monitor-exit v1
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    throw p0
.end method


# virtual methods
.method public declared-synchronized addMHSDumpLog(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 380
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mhs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mMHSDumpLogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
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

    .line 384
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mMHSDumpLogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x64

    if-le p1, v1, :cond_66

    .line 385
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mMHSDumpLogs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_76

    .line 388
    :cond_66
    :try_start_66
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_66 .. :try_end_6f} :catch_70
    .catchall {:try_start_66 .. :try_end_6f} :catchall_76

    goto :goto_74

    :catch_70
    move-exception p1

    .line 390
    :try_start_71
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_76

    .line 392
    :goto_74
    monitor-exit p0

    return-void

    :catchall_76
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDumpLogs()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 394
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "--WifiApTetheredClientInfo history \n"

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNumOfConnectedDevices()I
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0
.end method

.method public getWifiApStaListDetail()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    const-string v1, "getWifiApStaListDetail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 237
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 239
    iget-object v3, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    if-eqz v3, :cond_38

    const-string v4, "[\n\r]"

    const-string v5, ""

    .line 240
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 242
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->connectedTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 245
    :cond_71
    monitor-exit v0

    return-object p0

    :catchall_73
    move-exception p0

    .line 246
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_a .. :try_end_75} :catchall_73

    throw p0
.end method
