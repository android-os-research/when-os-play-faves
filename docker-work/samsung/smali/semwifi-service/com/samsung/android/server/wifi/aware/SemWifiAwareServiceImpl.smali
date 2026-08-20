.class public Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;
.super Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;
.source "SemWifiAwareServiceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiAwareService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDbg:Z

.field private mHandler:Landroid/os/Handler;

.field private mStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method public static synthetic $r8$lambda$0QYholoMmPyLGTdMhqBJZ0CgSuI(Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->lambda$startLate$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$9p2yM8wWqhG47IlYfNmnXefQrIo(Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;Landroid/os/HandlerThread;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->lambda$start$0(Landroid/os/HandlerThread;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mDbg:Z

    .line 43
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 45
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-void
.end method

.method private enableVerboseLogging(ZLcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V
    .registers 5

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVerboseLogging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiAwareService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mDbg:Z

    .line 74
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->enableVerboseLogging(Z)V

    return-void
.end method

.method private synthetic lambda$start$0(Landroid/os/HandlerThread;)V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->start(Landroid/content/Context;Landroid/os/Looper;)V

    .line 61
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->enableVerboseLogging(ZLcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V

    return-void
.end method

.method private synthetic lambda$startLate$1()V
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->startLate()V

    return-void
.end method


# virtual methods
.method public setClusterMergingEnabled(Z)V
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->setClusterMergingEnabled(Z)V

    return-void
.end method

.method public start(Landroid/os/HandlerThread;)V
    .registers 4

    const-string v0, "SemWifiAwareService"

    const-string v1, "Starting Sem Wi-Fi Aware service"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v1, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;Landroid/os/HandlerThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startLate()V
    .registers 3

    const-string v0, "SemWifiAwareService"

    const-string v1, "Late initialization of Sem Wi-Fi Aware service"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
