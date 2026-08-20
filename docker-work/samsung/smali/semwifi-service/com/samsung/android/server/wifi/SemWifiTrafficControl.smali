.class public Lcom/samsung/android/server/wifi/SemWifiTrafficControl;
.super Ljava/lang/Object;
.source "SemWifiTrafficControl.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;,
        Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;
    }
.end annotation


# static fields
.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x64

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiTrafficControl history:"

.field private static final SET_TC_CONFIGURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemWifiTrafficControl"

.field private static final TWT_CAP_NOT_INITIALIZED:I = 0x0

.field private static final TWT_CAP_NOT_SUPPORTED:I = 0x1

.field private static final TWT_CAP_SUPPORTED:I = 0x2

.field private static mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connectedIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetdService:Landroid/net/INetd;

.field private mOemNetd:Lcom/android/internal/net/IOemNetd;

.field private mTCHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;

.field private final mTwtMonitor:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private twtAvailable:I


# direct methods
.method static bridge synthetic -$$Nest$fgetconnectedIfaces(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->connectedIfaces:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOemNetd(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)Lcom/android/internal/net/IOemNetd;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwtMonitor(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mTwtMonitor:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettwtAvailable(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->twtAvailable:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputtwtAvailable(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->twtAvailable:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueryTwtCapability(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->queryTwtCapability()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mHistory:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->connectedIfaces:Ljava/util/HashSet;

    .line 63
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mTwtMonitor:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 65
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "SemWifiTrafficControlThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 67
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mTCHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;

    :try_start_27
    const-string p1, "netd"

    .line 70
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mNetdService:Landroid/net/INetd;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_34

    goto :goto_4d

    :catch_34
    move-exception p1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to bind service netd, error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    .line 74
    :goto_4d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mNetdService:Landroid/net/INetd;

    if-nez p1, :cond_57

    const-string p1, "Can\'t bind service netd"

    .line 75
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    goto :goto_77

    .line 78
    :cond_57
    :try_start_57
    invoke-interface {p1}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mOemNetd:Lcom/android/internal/net/IOemNetd;
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_61} :catch_62
    .catch Landroid/os/ServiceSpecificException; {:try_start_57 .. :try_end_61} :catch_62

    goto :goto_77

    :catch_62
    move-exception p1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get OemNetd listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    :goto_77
    return-void
.end method

.method private queryTwtCapability()I
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getDriverFeatureProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isTwtSupported()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x2

    return p0

    :cond_e
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .registers 5

    const-string p0, "SemWifiTrafficControl"

    .line 169
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_5
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 172
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_28} :catch_45

    .line 178
    sget-object p1, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mHistory:Ljava/util/LinkedList;

    monitor-enter p1

    .line 179
    :try_start_2b
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 180
    :goto_30
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/16 v0, 0x64

    if-le p0, v0, :cond_40

    .line 181
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_30

    .line 183
    :cond_40
    monitor-exit p1

    return-void

    :catchall_42
    move-exception p0

    monitor-exit p1
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_42

    throw p0

    :catch_45
    move-exception p0

    const-string p1, "SemWifiTrafficControl"

    const-string v0, "format problem"

    .line 174
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 188
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mHistory:Ljava/util/LinkedList;

    monitor-enter p0

    .line 189
    :try_start_3
    new-instance v0, Ljava/util/LinkedList;

    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mHistory:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 190
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    const-string p0, "SemWifiTrafficControl history:"

    .line 191
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 195
    :cond_24
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 196
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_2b
    move-exception p1

    .line 190
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .registers 3

    .line 160
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    if-eqz p2, :cond_a

    .line 161
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->connectedIfaces:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 163
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->connectedIfaces:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_f
    return-void
.end method

.method public setTCRule(ZLjava/lang/String;I)V
    .registers 6

    .line 150
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration-IA;)V

    .line 151
    iput-boolean p1, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;->enabled:Z

    .line 152
    iput-object p2, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;->iface:Ljava/lang/String;

    .line 153
    iput p3, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;->limit:I

    .line 154
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mTCHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
