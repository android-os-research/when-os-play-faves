.class public Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;
.super Landroid/os/Handler;
.source "SemWifiTransportLayerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;,
        Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SemWifiTransportLayerMonitor"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentWifiApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

.field private mCurrentWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageUpdateHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;

.field private mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

.field private mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

.field private mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field private mUsageStatsPackageName:Ljava/lang/String;

.field private mUsageStatsUid:I

.field private final mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

.field private mWifiApInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiPackageInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiSwitchEnabledUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiTransportLayerFileManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageUpdateHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mPackageUpdateHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTcpMonitorHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageStatsUid(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiApInfoList:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTransportLayerFileManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiTransportLayerFileManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentUserId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsageStatsPackageName(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsageStatsUid(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsUid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetOrCreatePackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getOrCreatePackageInfo(ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPackageManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Landroid/content/pm/PackageManager;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUserIdBasedUid(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getUserIdBasedUid(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misCategoryUpdateable(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isCategoryUpdateable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendBigDataFeatureForTCPE(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->sendBigDataFeatureForTCPE(IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 44
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/content/Context;)V
    .registers 4

    .line 78
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    new-instance p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiTransportLayerFileManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentUserId:I

    .line 676
    new-instance p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 80
    iput-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    const/4 p2, -0x1

    .line 84
    :try_start_1e
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsUid:I

    const-string p2, "default"

    .line 85
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsPackageName:Ljava/lang/String;

    const-string p2, "usagestats"

    .line 87
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 89
    invoke-interface {p2, p1}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_33} :catch_34

    goto :goto_4e

    :catch_34
    move-exception p1

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception occured while register UsageStatWatcher "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SemWifiTransportLayerMonitor"

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    :goto_4e
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->setupHandlers()V

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->loadInfoFromFile()V

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->setupBroadcastReceiver()V

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->setAudioPlaybackCallback()V

    .line 101
    new-instance p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    return-void
.end method

.method private createWifiPackageInfo(ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    .registers 5

    .line 805
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 807
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    if-eqz p1, :cond_13

    const/4 p2, 0x2

    .line 808
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    return-object v0
.end method

.method private getCountryCode()Ljava/lang/String;
    .registers 3

    const-string p0, " "

    .line 943
    :try_start_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CountryISO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_f

    if-eqz v0, :cond_f

    move-object p0, v0

    :catch_f
    :cond_f
    return-object p0
.end method

.method private getOrCreatePackageInfo(ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    .registers 7

    .line 787
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    const-string v1, "SemWifiTransportLayerMonitor"

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOrCreatePackageInfo - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_22
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object v0

    if-nez v0, :cond_37

    const-string v0, "getOrCreatePackageInfo - create new info"

    .line 790
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->createWifiPackageInfo(ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)V

    goto :goto_79

    .line 792
    :cond_37
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 793
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    :cond_4f
    const-string v0, "getOrCreatePackageInfo - invalid packageName"

    .line 794
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->createWifiPackageInfo(ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)V

    goto :goto_79

    .line 796
    :cond_5e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    if-eqz v1, :cond_79

    .line 797
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 798
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 799
    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_79
    :goto_79
    return-object v0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 540
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 541
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 543
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method private getUserIdBasedUid(II)I
    .registers 3

    const p0, 0x186a0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method private isCategoryUpdateable()Z
    .registers 3

    .line 930
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCategoryUpdateable - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isNetworkConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiTransportLayerMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_2a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3e

    const/4 p0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p0, 0x0

    :goto_3f
    return p0
.end method

.method private isNetworkConnected()Z
    .registers 2

    .line 935
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 936
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private loadInfoFromFile()V
    .registers 6

    .line 748
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    const-string v1, "SemWifiTransportLayerMonitor"

    if-eqz v0, :cond_b

    const-string v2, "loadInfoFromFile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiTransportLayerFileManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->loadWifiPackageInfoFromFile()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    if-eqz v0, :cond_4c

    if-eqz v2, :cond_4c

    .line 750
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 751
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadInfoFromFile - PACKAGE - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 756
    :cond_4c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiTransportLayerFileManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->loadWifiApInfoFromFile()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiApInfoList:Ljava/util/HashMap;

    .line 757
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    if-eqz v2, :cond_8f

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 758
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiApInfoList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadInfoFromFile - AP - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 762
    :cond_8f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiTransportLayerFileManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->loadSwitchEnabledUidListFromFile()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    .line 763
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    if-eqz v2, :cond_ce

    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 764
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadInfoFromFile - Switch Enabed UID - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    :cond_ce
    return-void
.end method

.method private sendBigDataFeatureForTCPE(IIZ)V
    .registers 11

    .line 1024
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    if-eqz v0, :cond_26

    .line 1025
    new-instance v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;-><init>(ILjava/lang/String;)V

    .line 1026
    iput p2, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    .line 1028
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    iget p1, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getCurrentWifiApInfo()Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    move-result-object v4

    iget p1, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 1029
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isSwitchEnabledApp(I)Z

    move-result v5

    move v6, p3

    .line 1028
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->sendBigDataFeatureForTCPE(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;ZZ)V

    goto :goto_2d

    :cond_26
    const-string p0, "SemWifiTransportLayerMonitor"

    const-string p1, "sendBigDataFeatureForTCPE - Failed to send bigdata"

    .line 1031
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method private setAudioPlaybackCallback()V
    .registers 3

    .line 547
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "SemWifiTransportLayerMonitor"

    const-string v1, "setAudioPlaybackCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 549
    new-instance v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$1;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)V

    invoke-virtual {v0, v1, p0}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private setupBroadcastReceiver()V
    .registers 4

    .line 573
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "SemWifiTransportLayerMonitor"

    const-string v1, "setupBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_b
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$2;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 590
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 591
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 594
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$3;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 668
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 669
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 670
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 671
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 672
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setupHandlers()V
    .registers 3

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkStatsThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 109
    new-instance v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mPackageUpdateHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;

    .line 111
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    return-void
.end method


# virtual methods
.method public addWifiPackageDetectedCount(I)V
    .registers 5

    .line 924
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    if-eqz v0, :cond_e

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 925
    invoke-virtual {p0, v1, p1, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    return-void
.end method

.method public dump()Ljava/lang/String;
    .registers 13

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\n[SWITCH ENABLED PACKAGE INFO]\n"

    .line 956
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    const-string v2, ", [UID] "

    const-string v3, "[INDEX] "

    const/4 v4, 0x0

    const-string v5, "\n"

    if-eqz v1, :cond_75

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_75

    .line 959
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v6, v4

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 960
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", [PACKAGE] "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v9

    goto :goto_22

    :cond_75
    const-string v1, "\n\n[AP INFO]\n"

    .line 967
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiApInfoList:Ljava/util/HashMap;

    const-string v6, ", [DetectedCount] "

    if-eqz v1, :cond_19f

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19f

    .line 970
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiApInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v4

    :cond_91
    :goto_91
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 971
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSwitchForIndivdiaulAppsDetectionCount()I

    move-result v9

    if-lez v9, :cond_91

    .line 972
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", [SSID] "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSsid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", [ConnectionCount] "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionCount()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", [ConnectionTime] "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionTime()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", [DetectionCount] "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSwitchForIndivdiaulAppsDetectionCount()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    move-result-object v7

    if-eqz v7, :cond_19c

    .line 978
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_19c

    .line 979
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    .line 980
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  [DetectedPackage] "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ", [LastDetectedTime] "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getLastDetectedTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getDetectedCount()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ", [PackageNormalOperationTime] "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getPackageNormalOperationTime()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12e

    :cond_19c
    move v7, v10

    goto/16 :goto_91

    :cond_19f
    const-string v1, "EMTPY\n"

    .line 990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a4
    const-string v1, "\n\n[PACKAGE INFO]\n"

    .line 994
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    if-eqz v1, :cond_305

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_305

    .line 997
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1bd
    :goto_1bd
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_305

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 998
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSystemApp()Z

    move-result v7

    if-nez v7, :cond_1bd

    .line 999
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", [PackageName] "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", [Switchable] "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSwitchable()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", [Category] "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getDetectedCount()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", [BrowsingApp] "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isBrowsingApp()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", [ChatApp] "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", [GamingApp] "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isGamingApp()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", [Launchable] "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isLaunchable()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", [SystemApp] "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSystemApp()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", [Voip] "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isVoip()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", [UsagePattern] "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUsagePattern()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v8

    goto/16 :goto_1bd

    .line 1015
    :cond_305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public enableSwitchEnabledAppInfo(I)V
    .registers 5

    .line 912
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    if-eqz v0, :cond_e

    const/16 v1, 0x1e

    const/4 v2, 0x1

    .line 913
    invoke-virtual {p0, v1, p1, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    return-void
.end method

.method public getCurrentPackageInfo()Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    .registers 5

    const-string v0, "SemWifiTransportLayerMonitor"

    .line 841
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 842
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 844
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 845
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    if-eqz v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentPackageInfo package changed - MATCH ANY USER: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_30
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0x400080

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 848
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentUserId:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getUserIdBasedUid(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsUid:I

    .line 849
    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsPackageName:Ljava/lang/String;

    .line 850
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getOrCreatePackageInfo(ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_4d} :catch_6a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_4d} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4d} :catch_4e

    goto :goto_77

    :catch_4e
    move-exception v1

    .line 859
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    if-eqz v2, :cond_58

    const-string v2, "getCurrentPackageInfo - Exception"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_58
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_77

    :catch_5c
    move-exception v1

    .line 856
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    if-eqz v2, :cond_66

    const-string v2, "getCurrentPackageInfo - RemoteException"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_66
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_77

    :catch_6a
    move-exception v1

    .line 853
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    if-eqz v2, :cond_74

    const-string v2, "getCurrentPackageInfo - NameNotFoundException"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_74
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 863
    :cond_77
    :goto_77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    return-object p0
.end method

.method public getCurrentWifiApInfo()Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;
    .registers 3

    .line 893
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "SemWifiTransportLayerMonitor"

    const-string v1, "getCurrentWifiApInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    return-object p0
.end method

.method public getPackageName(I)Ljava/lang/String;
    .registers 4

    .line 831
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    if-eqz v0, :cond_1f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 832
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string p0, ""

    return-object p0
.end method

.method public getTcpeManager()Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;
    .registers 1

    .line 1020
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    return-object p0
.end method

.method public getWifiApInfo(Ljava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;
    .registers 4

    .line 868
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWifiApInfo - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiTransportLayerMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiApInfoList:Ljava/util/HashMap;

    if-eqz v0, :cond_32

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 870
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiApInfoList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V

    return-object v0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    .registers 4

    .line 815
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    if-eqz v0, :cond_20

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 816
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)V

    return-object v0

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public isSwitchEnabledApp(I)Z
    .registers 2

    .line 907
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public resetSwitchForIndivdiaulAppsDetectionCount(Ljava/lang/String;)V
    .registers 4

    .line 898
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetSwitchForIndivdiaulAppsDetectionCount - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiTransportLayerMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    if-eqz v0, :cond_27

    const/16 v1, 0x16

    .line 900
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_27
    return-void
.end method

.method public saveTcpMonitorFiles()V
    .registers 3

    .line 771
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "SemWifiTransportLayerMonitor"

    const-string v1, "saveTcpMonitorFiles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    if-eqz p0, :cond_14

    const/16 v0, 0x28

    .line 773
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendEmptyMessage(I)Z

    :cond_14
    return-void
.end method

.method public setSsid(Ljava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;
    .registers 4

    .line 883
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "SemWifiTransportLayerMonitor"

    const-string v1, "setSsid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_b
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiApInfo(Ljava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    if-nez v0, :cond_1d

    .line 886
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 887
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->updateWifiApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V

    .line 889
    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    return-object p0
.end method

.method public updateSwitchEnabledAppList(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 918
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    if-eqz v0, :cond_d

    const/16 v1, 0x1f

    .line 919
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_d
    return-void
.end method

.method public updateWifiApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V
    .registers 4

    .line 876
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWifiApInfo - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiTransportLayerMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    if-eqz v0, :cond_27

    const/16 v1, 0x14

    .line 878
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_27
    return-void
.end method
