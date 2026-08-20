.class public Lcom/samsung/android/gamesdk/subsystem/SdhmsBindHandler;
.super Ljava/lang/Object;
.source "SdhmsBindHandler.java"


# static fields
.field private static binder:Landroid/os/IBinder;

.field private static final lock:Ljava/lang/Object;

.field private static mSdhmService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/gamesdk/subsystem/SdhmsBindHandler;->mSdhmService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    .line 10
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/samsung/android/gamesdk/subsystem/SdhmsBindHandler;->lock:Ljava/lang/Object;

    .line 11
    sput-object v0, Lcom/samsung/android/gamesdk/subsystem/SdhmsBindHandler;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .registers 2

    .line 15
    :try_start_0
    sget-object v0, Lcom/samsung/android/gamesdk/subsystem/SdhmsBindHandler;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_26

    .line 16
    :try_start_3
    sget-object v1, Lcom/samsung/android/gamesdk/subsystem/SdhmsBindHandler;->mSdhmService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-eqz v1, :cond_11

    sget-object v1, Lcom/samsung/android/gamesdk/subsystem/SdhmsBindHandler;->binder:Landroid/os/IBinder;

    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_21

    .line 17
    :cond_11
    const-string v1, "sdhms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/gamesdk/subsystem/SdhmsBindHandler;->binder:Landroid/os/IBinder;

    .line 18
    if-eqz v1, :cond_21

    .line 19
    invoke-static {v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/gamesdk/subsystem/SdhmsBindHandler;->mSdhmService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    .line 22
    :cond_21
    monitor-exit v0

    .line 25
    goto :goto_2a

    .line 22
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    :try_start_25
    throw v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_26} :catch_26

    .line 23
    :catch_26
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2a
    sget-object v0, Lcom/samsung/android/gamesdk/subsystem/SdhmsBindHandler;->mSdhmService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    return-object v0
.end method
