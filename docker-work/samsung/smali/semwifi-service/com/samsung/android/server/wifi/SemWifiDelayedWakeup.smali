.class public Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;
.super Ljava/lang/Object;
.source "SemWifiDelayedWakeup.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;
    }
.end annotation


# static fields
.field private static final ALL_BROADCAST:I = 0x0

.field private static final ALL_MULTICAST:I = 0x1

.field private static final ALL_UNICAST:I = 0x3

.field private static final CONNECTION_STATE_CHANGED:I = 0x1

.field private static final DELAYED_WAKEUP_OFF:I = 0x0

.field private static final DELAYED_WAKEUP_ON:I = 0x1

.field private static final DELAYED_WAKEUP_TIMEOUT:I = 0xa

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x64

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiDelayedWakeup history:"

.field private static final GET_SCPM_CONFIG:I = 0x3

.field private static final SCPM_CONFIGURATION_NAME:Ljava/lang/String; = "WIFI_DELAYED_WAKEUP"

.field private static final SCREEN_STATE_CHANGED:I = 0x2

.field private static final SPECIFIC_UNICAST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemWifiDelayedWakeup"

.field private static final UNKNOWN_VERSION_H:Ljava/lang/String; = "999999"

.field private static final UNKNOWN_VERSION_L:Ljava/lang/String; = "000000"

.field private static final mDelayedWakeupVersion:Ljava/lang/String; = "0.1"

.field private static mIfaceName:Ljava/lang/String;


# instance fields
.field private isFeatureEnabled:Z

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private final mControlHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mHandler:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;

.field private mIsDelayedWakeup:I

.field private mIsScpmEnabled:Z

.field private mLatestScpmVersion:Ljava/lang/String;

.field private mModelName:Ljava/lang/String;

.field private mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

.field private mScpmDelayedWakeupVersion:Ljava/lang/String;

.field private mScpmDriverVersion:Ljava/lang/String;

.field private mScpmEnableCondition:I

.field private mScpmFirmwareVersion:Ljava/lang/String;

.field private mWifiApState:Z

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiNanState:Z

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private mWifiP2pState:Z

.field private mWifiScpmExecutor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;


# direct methods
.method public static synthetic $r8$lambda$SCc_8A_-kitjM0tOZBCpMyZY210(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;ZILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->lambda$new$2(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SzVGfUrhcSCGaoQLKHiz5dG7NWA(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->lambda$new$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$l1Fyu6Zc3S41yau8ZtoqUJ8_des(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->lambda$new$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lkwGuBzJm3p-YPtNUvm3Z-HhMG4(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->isFeatureEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mHandler:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDelayedWakeup(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mIsDelayedWakeup:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScpmEnabled(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mIsScpmEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsDelayedWakeup(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mIsDelayedWakeup:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScpmDataProvider(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDelayedWakeupAvailability(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->checkDelayedWakeupAvailability()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckScpmConfig(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->checkScpmConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDelayedWakeupType(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->setDelayedWakeupType()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtriggerDelayedWakeup(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->triggerDelayedWakeup(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmIfaceName(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mIfaceName:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
    .registers 7

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mIsDelayedWakeup:I

    .line 60
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiApState:Z

    .line 61
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiP2pState:Z

    .line 62
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiNanState:Z

    const/16 v0, 0x10

    .line 85
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmEnableCondition:I

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mLatestScpmVersion:Ljava/lang/String;

    const-string v0, "999999"

    .line 90
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmDriverVersion:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmFirmwareVersion:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmDelayedWakeupVersion:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mControlHistory:Ljava/util/LinkedList;

    .line 98
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->isFeatureEnabled:Z

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mIsScpmEnabled:Z

    .line 273
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiScpmExecutor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 103
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 105
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mHandler:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;

    .line 106
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 107
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 109
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 110
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 117
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V

    .line 125
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerP2pStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V

    .line 133
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerWifiAwareStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V

    return-void
.end method

.method private checkDelayedWakeupAvailability()Z
    .registers 5

    .line 251
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 252
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isMulticastEnabled()Z

    move-result v0

    .line 254
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mIsDelayedWakeup:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    if-eq v1, v3, :cond_17

    goto :goto_37

    .line 261
    :cond_17
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiApState:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiP2pState:Z

    if-nez v1, :cond_27

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiNanState:Z

    if-nez p0, :cond_27

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    return v3

    :cond_27
    :goto_27
    return v2

    .line 256
    :cond_28
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiApState:Z

    if-nez v1, :cond_37

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiP2pState:Z

    if-nez v1, :cond_37

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiNanState:Z

    if-nez p0, :cond_37

    if-nez v0, :cond_37

    return v3

    :cond_37
    :goto_37
    return v2
.end method

.method private checkScpmConfig()V
    .registers 16

    const-string v0, ","

    const-string v1, "999999"

    const-string v2, "SCPM: descriptor & stream close failure"

    .line 306
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    if-nez v3, :cond_10

    const-string v0, "SCPM: null data provider"

    .line 307
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    return-void

    :cond_10
    const/4 v4, 0x0

    :try_start_11
    const-string v5, "WIFI_DELAYED_WAKEUP"

    .line 315
    invoke-interface {v3, v5}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getData(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_178

    if-nez v3, :cond_4b

    .line 317
    :try_start_19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getLastError()Landroid/util/Pair;

    move-result-object v0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCPM: null file descriptor "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_19 .. :try_end_41} :catchall_172

    if-eqz v3, :cond_4a

    .line 393
    :try_start_43
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4a

    .line 396
    :catchall_47
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-void

    .line 323
    :cond_4b
    :try_start_4b
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_172

    .line 324
    :try_start_54
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_16f

    .line 325
    :try_start_59
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_16c

    .line 328
    :try_start_63
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7f

    const-string v0, "SCPM: empty data"

    .line 330
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_16a

    .line 384
    :try_start_6e
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 387
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 390
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 393
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7a
    .catchall {:try_start_6e .. :try_end_7a} :catchall_7b

    goto :goto_7e

    .line 396
    :catchall_7b
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    :goto_7e
    return-void

    .line 336
    :cond_7f
    :try_start_7f
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_16a

    const/4 v8, 0x1

    const/4 v9, 0x2

    const-string v10, ""

    if-eqz v4, :cond_97

    .line 338
    :try_start_8d
    array-length v11, v4

    if-ne v11, v9, :cond_97

    .line 339
    aget-object v4, v4, v8

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_98

    :cond_97
    move-object v4, v10

    .line 341
    :goto_98
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b4

    const-string v0, "SCPM: wrong policy version"

    .line 342
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_8d .. :try_end_a3} :catchall_16a

    .line 384
    :try_start_a3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 387
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 390
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 393
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_af
    .catchall {:try_start_a3 .. :try_end_af} :catchall_b0

    goto :goto_b3

    .line 396
    :catchall_b0
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    :goto_b3
    return-void

    .line 344
    :cond_b4
    :try_start_b4
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mLatestScpmVersion:Ljava/lang/String;

    if-eqz v10, :cond_d4

    .line 345
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d4

    const-string v0, "SCPM: existing policy"

    .line 346
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_b4 .. :try_end_c3} :catchall_16a

    .line 384
    :try_start_c3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 387
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 390
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 393
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_cf
    .catchall {:try_start_c3 .. :try_end_cf} :catchall_d0

    goto :goto_d3

    .line 396
    :catchall_d0
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    :goto_d3
    return-void

    .line 349
    :cond_d4
    :try_start_d4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SCPM: new policy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    .line 350
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mLatestScpmVersion:Ljava/lang/String;

    .line 351
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmDriverVersion:Ljava/lang/String;

    .line 352
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmFirmwareVersion:Ljava/lang/String;

    .line 353
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmDelayedWakeupVersion:Ljava/lang/String;

    .line 356
    :cond_f0
    :goto_f0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15d

    .line 357
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f0

    .line 360
    array-length v4, v1

    const/4 v10, 0x3

    if-ge v4, v10, :cond_105

    goto :goto_f0

    :cond_105
    const/4 v4, 0x0

    .line 364
    aget-object v11, v1, v4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, 0x782db4b8

    if-eq v13, v14, :cond_117

    goto :goto_120

    :cond_117
    const-string v13, "Version"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_120

    goto :goto_121

    :cond_120
    :goto_120
    move v4, v12

    :goto_121
    if-eqz v4, :cond_124

    goto :goto_f0

    .line 366
    :cond_124
    aget-object v4, v1, v8

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mModelName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 367
    array-length v4, v1

    const/4 v11, 0x6

    if-lt v4, v11, :cond_f0

    .line 368
    aget-object v4, v1, v9

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmDriverVersion:Ljava/lang/String;

    .line 369
    aget-object v4, v1, v10

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmFirmwareVersion:Ljava/lang/String;

    const/4 v4, 0x4

    .line 370
    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmDelayedWakeupVersion:Ljava/lang/String;

    const/4 v4, 0x5

    .line 371
    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmEnableCondition:I
    :try_end_15c
    .catchall {:try_start_d4 .. :try_end_15c} :catchall_16a

    goto :goto_f0

    .line 384
    :cond_15d
    :try_start_15d
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 387
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 390
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 393
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_169
    .catchall {:try_start_15d .. :try_end_169} :catchall_1a9

    goto :goto_1ac

    :catchall_16a
    move-exception v0

    goto :goto_176

    :catchall_16c
    move-exception v0

    move-object v7, v4

    goto :goto_176

    :catchall_16f
    move-exception v0

    move-object v6, v4

    goto :goto_175

    :catchall_172
    move-exception v0

    move-object v5, v4

    move-object v6, v5

    :goto_175
    move-object v7, v6

    :goto_176
    move-object v4, v3

    goto :goto_17c

    :catchall_178
    move-exception v0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    .line 380
    :goto_17c
    :try_start_17c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCPM: policy query failure "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V
    :try_end_194
    .catchall {:try_start_17c .. :try_end_194} :catchall_1b3

    if-eqz v7, :cond_199

    .line 384
    :try_start_196
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_199
    if-eqz v6, :cond_19e

    .line 387
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    :cond_19e
    if-eqz v5, :cond_1a3

    .line 390
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_1a3
    if-eqz v4, :cond_1ac

    .line 393
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a8
    .catchall {:try_start_196 .. :try_end_1a8} :catchall_1a9

    goto :goto_1ac

    .line 396
    :catchall_1a9
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    .line 400
    :cond_1ac
    :goto_1ac
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->checkScpmConfigCompliance()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mIsScpmEnabled:Z

    return-void

    :catchall_1b3
    move-exception v0

    if-eqz v7, :cond_1b9

    .line 384
    :try_start_1b6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_1b9
    if-eqz v6, :cond_1be

    .line 387
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    :cond_1be
    if-eqz v5, :cond_1c3

    .line 390
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_1c3
    if-eqz v4, :cond_1cc

    .line 393
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1c8
    .catchall {:try_start_1b6 .. :try_end_1c8} :catchall_1c9

    goto :goto_1cc

    .line 396
    :catchall_1c9
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    .line 398
    :cond_1cc
    :goto_1cc
    throw v0
.end method

.method private checkScpmConfigCompliance()Z
    .registers 7

    .line 404
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->getWifiDriverVersion()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->getWifiFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    .line 406
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmDriverVersion:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "0.1"

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmFirmwareVersion:Ljava/lang/String;

    .line 407
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmDelayedWakeupVersion:Ljava/lang/String;

    .line 408
    invoke-direct {p0, v4, v2}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_3b

    .line 416
    :cond_24
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmEnableCondition:I

    if-ltz v0, :cond_34

    .line 417
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->isDwAllowedByMacAddress(I)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "Compliance violation: MAC"

    .line 418
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    return v3

    :cond_34
    const-string v0, "SCPM Compliance"

    .line 422
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 409
    :cond_3b
    :goto_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compliance violation: ver. "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmDriverVersion:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mScpmDelayedWakeupVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    return v3
.end method

.method private getProductModelName()Ljava/lang/String;
    .registers 4

    .line 457
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v0, "ro.product.model"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 458
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_15

    goto :goto_1c

    :cond_15
    const/4 v0, 0x3

    const/4 v1, 0x7

    .line 461
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    :goto_1c
    return-object v1
.end method

.method private getWifiDriverVersion()Ljava/lang/String;
    .registers 2

    .line 494
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p0

    .line 495
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    move-result v0

    if-nez v0, :cond_f

    .line 496
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 499
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getDriverVersion()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    const-string v0, ""

    .line 500
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    return-object p0

    :cond_1f
    :goto_1f
    const-string p0, "000000"

    return-object p0
.end method

.method private getWifiFactoryMacAddress()Ljava/lang/String;
    .registers 3

    .line 466
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p0

    .line 467
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    move-result v0

    if-nez v0, :cond_f

    .line 468
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 471
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 472
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1e

    return-object p0

    :cond_1e
    const-string p0, ""

    return-object p0
.end method

.method private getWifiFirmwareVersion()Ljava/lang/String;
    .registers 2

    .line 480
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p0

    .line 481
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    move-result v0

    if-nez v0, :cond_f

    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    :cond_f
    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getFirmwareVersion(Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    const-string v0, ""

    .line 486
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    return-object p0

    :cond_20
    :goto_20
    const-string p0, "000000"

    return-object p0
.end method

.method private isDwAllowedByMacAddress(I)Z
    .registers 5

    .line 508
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->getWifiFactoryMacAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 509
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    const/16 p0, 0x11

    const/16 v1, 0x10

    .line 510
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    if-lt p0, p1, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    return v2

    :cond_1d
    const-string p1, "Invalid MAC"

    .line 513
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    return v2
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 4

    if-nez p1, :cond_19

    .line 111
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 112
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mHandler:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 112
    invoke-static {p0, p1, v0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_19
    return-void
.end method

.method private synthetic lambda$new$1(I)V
    .registers 3

    const/16 v0, 0xd

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiApState:Z

    goto :goto_f

    :cond_8
    const/16 v0, 0xb

    if-ne p1, v0, :cond_f

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiApState:Z

    :cond_f
    :goto_f
    return-void
.end method

.method private synthetic lambda$new$2(ZILjava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiP2pState:Z

    goto :goto_9

    :cond_6
    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiP2pState:Z

    :goto_9
    return-void
.end method

.method private synthetic lambda$new$3(Z)V
    .registers 2

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiNanState:Z

    goto :goto_9

    :cond_6
    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiNanState:Z

    :goto_9
    return-void
.end method

.method private logControlHistory(Ljava/lang/String;)V
    .registers 6

    const-string v0, "SemWifiDelayedWakeup"

    .line 519
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mControlHistory:Ljava/util/LinkedList;

    monitor-enter v1

    .line 524
    :try_start_1e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mControlHistory:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 525
    :goto_32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mControlHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_42

    .line 526
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mControlHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_32

    .line 528
    :cond_42
    monitor-exit v1

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_1e .. :try_end_46} :catchall_44

    throw p0
.end method

.method private setDelayedWakeupType()V
    .registers 4

    .line 242
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mIfaceName:Ljava/lang/String;

    const-string v2, " 1"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setDelayedWakeupType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "setDelayedWakeupType requested"

    .line 244
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    goto :goto_26

    .line 246
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDelayedWakeupType request failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method private triggerDelayedWakeup(Z)V
    .registers 5

    if-eqz p1, :cond_5

    const-string v0, " 1 10"

    goto :goto_7

    :cond_5
    const-string v0, " 0 0"

    .line 226
    :goto_7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    sget-object v2, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->triggerDelayedWakeup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerDelayedWakeup requested : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    if-eqz p1, :cond_2b

    const/4 p1, 0x1

    .line 230
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mIsDelayedWakeup:I

    goto :goto_43

    :cond_2b
    const/4 p1, 0x0

    .line 232
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mIsDelayedWakeup:I

    goto :goto_43

    .line 235
    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerDelayedWakeup request failed "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    :goto_43
    return-void
.end method

.method private versionViolation(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    if-eqz p1, :cond_65

    if-nez p2, :cond_6

    goto :goto_65

    :cond_6
    const-string v1, "\\.|-"

    .line 430
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 431
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    .line 432
    :goto_12
    array-length v3, p2

    if-ge v2, v3, :cond_64

    .line 433
    array-length v3, p1

    if-ne v2, v3, :cond_19

    return v0

    .line 436
    :cond_19
    aget-object v3, p1, v2

    const-string v4, "[^0-9]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 437
    aget-object v6, p2, v2

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 441
    :try_start_29
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_31

    move v3, v1

    goto :goto_35

    :cond_31
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 442
    :goto_35
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3d

    move v4, v1

    goto :goto_41

    :cond_3d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_4a

    :goto_41
    if-le v4, v3, :cond_44

    return v0

    :cond_44
    if-ge v4, v3, :cond_47

    return v1

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :catchall_4a
    move-exception p1

    .line 444
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ver. violation check failure: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    return v0

    :cond_64
    return v1

    :cond_65
    :goto_65
    return v0
.end method


# virtual methods
.method public checkChipsetCapabilities(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .registers 4

    .line 146
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v0, "ro.product.first_api_level"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    move-result p1

    .line 147
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->getProductModelName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mModelName:Ljava/lang/String;

    if-eqz v0, :cond_28

    const-string v1, "QCA"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    const/16 v1, 0x21

    if-lt p1, v1, :cond_32

    if-eqz v0, :cond_32

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->isFeatureEnabled:Z

    .line 157
    :cond_32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isFeatureEnabled : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->isFeatureEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->logControlHistory(Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 533
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mControlHistory:Ljava/util/LinkedList;

    monitor-enter v0

    .line 534
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mControlHistory:Ljava/util/LinkedList;

    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 535
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    const-string p0, "SemWifiDelayedWakeup history:"

    .line 536
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 538
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 540
    :cond_24
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 541
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_2b
    move-exception p0

    .line 535
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public getScpmExecutor()Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mWifiScpmExecutor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    return-object p0
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .registers 5

    if-eqz p1, :cond_10

    .line 163
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->mHandler:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;

    const/4 v0, 0x1

    .line 164
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    const/4 v1, 0x0

    .line 163
    invoke-static {p0, v0, p2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_28

    .line 166
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ifaceName is null, isConnected "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiDelayedWakeup"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    return-void
.end method
