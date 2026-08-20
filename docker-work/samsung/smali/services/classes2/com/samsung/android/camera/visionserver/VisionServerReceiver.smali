.class public Lcom/samsung/android/camera/visionserver/VisionServerReceiver;
.super Ljava/lang/Object;
.source "VisionServerReceiver.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final DEBUG:Z

.field public static final DEFAULT_RETRY_CONNECT_TIMES:I = 0x3

.field public static final INTENT_ACTION_CLOSE:Ljava/lang/String; = "com.samsung.android.camera.action.camera_close"

.field public static final INTENT_ACTION_OPEN:Ljava/lang/String; = "com.samsung.android.camera.action.camera_open"

.field public static final MSG_NOTIFY_VISION_PARAMETERS:I = 0x2

.field public static final MSG_REQUSET_VISION_PARAMETERS:I = 0x1

.field public static final PACKAGE_NAME_SDHMS:Ljava/lang/String; = "com.sec.android.sdhms"

.field public static final REQUEST_DELAY_AFTER_SERVER_ERROR:I = 0x18

.field public static final RETRY_DELAY_TIME:I = 0x14

.field public static final RETRY_TIMES:I = 0x1e

.field public static final TAG:Ljava/lang/String; = "VisionServerReceiver"


# instance fields
.field public mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsNetworkAttached:Z

.field public mIsUnihalSupport:Z

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageListLock:Ljava/lang/Object;

.field public mVisionServerCallback:Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;

.field public mVisionServerHelper:Lcom/samsung/android/camera/visionserver/VisionServerHelper;

.field public mVisionServerListManager:Lcom/samsung/android/camera/visionserver/VisionServerListManager;

.field public mVisionServerRetries:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/net/ConnectivityManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsNetworkAttached(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mIsNetworkAttached:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkCallback(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageList(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageListLock(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageListLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVisionServerListManager(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Lcom/samsung/android/camera/visionserver/VisionServerListManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mVisionServerListManager:Lcom/samsung/android/camera/visionserver/VisionServerListManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVisionServerRetries(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mVisionServerRetries:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsNetworkAttached(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mIsNetworkAttached:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVisionServerRetries(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mVisionServerRetries:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyVisionParamChangeRetry(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->notifyVisionParamChangeRetry()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 51
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    sput-boolean v0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageListLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageList:Ljava/util/ArrayList;

    const/4 v0, 0x3

    .line 78
    iput v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mVisionServerRetries:I

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mIsNetworkAttached:Z

    const-string/jumbo v1, "vendor.camera.unihal.enable"

    .line 80
    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mIsUnihalSupport:Z

    .line 87
    new-instance v0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;-><init>(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mVisionServerCallback:Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;

    .line 132
    new-instance v0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$2;-><init>(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 152
    iput-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 153
    iput-object p2, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mContext:Landroid/content/Context;

    .line 154
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance p1, Lcom/samsung/android/camera/visionserver/VisionServerHelper;

    iget-object p2, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mVisionServerCallback:Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;

    invoke-direct {p1, p2}, Lcom/samsung/android/camera/visionserver/VisionServerHelper;-><init>(Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;)V

    iput-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mVisionServerHelper:Lcom/samsung/android/camera/visionserver/VisionServerHelper;

    .line 156
    new-instance p1, Lcom/samsung/android/camera/visionserver/VisionServerListManager;

    invoke-direct {p1}, Lcom/samsung/android/camera/visionserver/VisionServerListManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mVisionServerListManager:Lcom/samsung/android/camera/visionserver/VisionServerListManager;

    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 7

    monitor-enter p0

    .line 349
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageListLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_e0

    :try_start_4
    const-string v1, "\n\tDump of VisionServerReceiver list"

    .line 350
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\tOriginal list : version - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mVisionServerListManager:Lcom/samsung/android/camera/visionserver/VisionServerListManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\tOriginal list : total - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mVisionServerListManager:Lcom/samsung/android/camera/visionserver/VisionServerListManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->getVisionServerList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mVisionServerListManager:Lcom/samsung/android/camera/visionserver/VisionServerListManager;

    invoke-virtual {v1}, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->getVisionServerList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " arg1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " arg2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->disallowUnihalVersion:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4b

    .line 358
    :cond_82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\tReceived list : total - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 359
    :goto_9d
    iget-object v2, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_da

    .line 360
    iget-object v2, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " arg1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " arg2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->disallowUnihalVersion:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9d

    .line 364
    :cond_da
    monitor-exit v0
    :try_end_db
    .catchall {:try_start_4 .. :try_end_db} :catchall_dd

    .line 365
    monitor-exit p0

    return-void

    :catchall_dd
    move-exception p1

    .line 364
    :try_start_de
    monitor-exit v0
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    :try_start_df
    throw p1
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_e0

    :catchall_e0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 161
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_21

    const-string p0, "VisionServerReceiver"

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VisionReceiver error, invalid message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 167
    :cond_21
    iget-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_24
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->notifyParamChangeRetryLocked(I)V

    .line 169
    monitor-exit v0

    goto :goto_31

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2b

    throw p0

    .line 163
    :cond_2e
    invoke-virtual {p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->requestVisionParameters()V

    :goto_31
    return v1
.end method

.method public initialize()V
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mVisionServerListManager:Lcom/samsung/android/camera/visionserver/VisionServerListManager;

    invoke-virtual {v1}, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->loadListFromFile()V

    .line 186
    iget-object v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 187
    iget-object v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mVisionServerListManager:Lcom/samsung/android/camera/visionserver/VisionServerListManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->getVisionServerList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->notifyVisionParamChangeRetry()V

    .line 190
    iget-boolean v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mIsUnihalSupport:Z

    if-eqz v1, :cond_23

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->registerNetworkConnectCheck()V

    goto :goto_2a

    :cond_23
    const-string p0, "VisionServerReceiver"

    const-string v1, "Does not support visionserver connect"

    .line 193
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public final notifyParamChangeRetryLocked(I)V
    .registers 5

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->notifyVisionParamChangeLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    move p1, v1

    :cond_8
    if-gtz p1, :cond_b

    return-void

    :cond_b
    const-string v0, "VisionServerReceiver"

    const-string v2, "Could not notify camera service of device state change, retrying..."

    .line 205
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x14

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final notifyVisionParamChangeLocked()Z
    .registers 12

    const-string v0, ";"

    .line 216
    iget-object v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 221
    :cond_c
    iget-object v3, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 222
    iget-object v4, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsUnihalSupport = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mIsUnihalSupport:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VisionServerReceiver"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    .line 227
    :goto_35
    :try_start_35
    iget-object v7, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_c8

    .line 228
    iget-object v7, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;

    .line 229
    iget-object v8, v7, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->packageName:Ljava/lang/String;

    aput-object v8, v3, v5

    .line 230
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkgNameHint="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->value:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 231
    iget-object v8, v7, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->disallowUnihalVersion:Ljava/lang/String;

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8d

    iget-boolean v8, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mIsUnihalSupport:Z

    if-eqz v8, :cond_8d

    .line 232
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "disallowUnihalVersion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->disallowUnihalVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 234
    :cond_8d
    sget-boolean v8, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->DEBUG:Z

    if-eqz v8, :cond_c4

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyPkgListParamChange : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/String;

    iget-object v10, v7, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->packageName:Ljava/lang/String;

    .line 236
    invoke-static {v10, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " arg1: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->value:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " arg2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->disallowUnihalVersion:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 235
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_35

    .line 241
    :cond_c8
    invoke-interface {v1, v3, v4}, Landroid/hardware/ICameraService;->notifyPkgListParamChange([Ljava/lang/String;[Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPkgListParamChange : size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_e5} :catch_e7

    const/4 p0, 0x1

    return p0

    :catch_e7
    move-exception p0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not notify vision param change, remote exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final notifyVisionParamChangeRetry()V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mPackageListLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x1e

    .line 255
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->notifyParamChangeRetryLocked(I)V

    .line 256
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final registerNetworkConnectCheck()V
    .registers 4

    .line 264
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 265
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 269
    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public final requestVisionParameters()V
    .registers 4

    const-string v0, "VisionServerReceiver"

    const-string/jumbo v1, "requestVisionParameters"

    .line 276
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sget-object v2, Lcom/samsung/android/camera/Logger$ID;->VISION_SERVER_RECEIVER:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {v2, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 278
    iget-boolean v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mIsNetworkAttached:Z

    if-eqz v1, :cond_1d

    .line 279
    iget-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mVisionServerHelper:Lcom/samsung/android/camera/visionserver/VisionServerHelper;

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mVisionServerListManager:Lcom/samsung/android/camera/visionserver/VisionServerListManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->requestPackageListInfo(Ljava/lang/String;)V

    goto :goto_22

    :cond_1d
    const-string p0, "Network has lost. it will retry after connected."

    .line 281
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    return-void
.end method

.method public tryRegisterCameraOpenListener()V
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    new-instance v1, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$3;-><init>(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)V

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->mHandler:Landroid/os/Handler;

    .line 290
    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    return-void
.end method
