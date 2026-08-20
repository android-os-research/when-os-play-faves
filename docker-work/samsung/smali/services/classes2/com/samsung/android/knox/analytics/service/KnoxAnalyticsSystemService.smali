.class public Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;
.super Lcom/android/server/SystemService;
.source "KnoxAnalyticsSystemService.java"


# static fields
.field public static final ANALYTICS_SERVICE:Ljava/lang/String; = "knox_analytics"

.field public static final EVENT_FEATURE:Ljava/lang/String; = "KNOX_ANALYTICS"

.field public static final EVENT_SCHEMA_VERSION:I = 0x1

.field public static final KNOX_ANALYTICS_SYSTEM_SERVICE_VERSION:Ljava/lang/String; = "v1.0.0"

.field public static final ONE_MINUTE_IN_MS:I = 0xea60

.field public static final PACKAGE_NAME_PARAMETER_NAME:Ljava/lang/String; = "pN"

.field public static final PERMISSION_TYPE_PARAMETER_NAME:Ljava/lang/String; = "prm"

.field public static final PUB_KEY_MD5_PARAMETER_NAME:Ljava/lang/String; = "pkMD5"

.field public static final PUB_KEY_SHA256_PARAMETER_NAME:Ljava/lang/String; = "pkSHA256"

.field public static final SERVICE_ACTIVATION_EVENT_NAME:Ljava/lang/String; = "activationChanged"

.field public static final STATUS_CHANGED_EVENT_NAME:Ljava/lang/String; = "statusChanged"

.field public static final STATUS_PARAMETER_NAME:Ljava/lang/String; = "st"

.field public static final TAG:Ljava/lang/String;

.field public static final TRIGGER_ELM:I = 0x0

.field public static final TRIGGER_EVENT_NAME:Ljava/lang/String; = "serviceChanged"

.field public static final TRIGGER_PARAMETER_NAME:Ljava/lang/String; = "srv"


# instance fields
.field public mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

.field public mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

.field public final mBootCompletedLock:Ljava/lang/Object;

.field public mBootPhase:I

.field public mContext:Landroid/content/Context;

.field public mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

.field public mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

.field public mImpl:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

.field public mIsSystemServiceRunning:Z

.field public final mSystemServiceRunningLock:Ljava/lang/Object;

.field public mUserManager:Landroid/os/UserManager;

.field public final mUserUnlockStatusLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBootCompletedLock(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootCompletedLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBootPhase(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootPhase:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEventQueue(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Lcom/samsung/android/knox/analytics/service/EventQueue;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsSystemServiceRunning(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemServiceRunningLock(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mSystemServiceRunningLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserUnlockStatusLock(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserUnlockStatusLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbroadcastAnalyticsStatus(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;ZZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->broadcastAnalyticsStatus(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogActivationEventAfterStart(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logActivationEventAfterStart()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogActivationUpdateEvent(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logActivationUpdateEvent(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogStatusChangedEvent(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logStatusChangedEvent(IZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogStatusChangedEventAfterStart(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logStatusChangedEventAfterStart(IZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogTriggerEvent(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logTriggerEvent(IZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogTriggerEventAfterStart(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logTriggerEventAfterStart(IZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartSystemService(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->startSystemService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopSystemService(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->stopSystemService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    const/16 v0, 0x3e8

    .line 53
    iput v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootPhase:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootCompletedLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mSystemServiceRunningLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserUnlockStatusLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    .line 94
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "Constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public static runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 398
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$7;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 404
    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final broadcastAnalyticsStatus(ZZ)V
    .registers 5

    .line 197
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "broadcastAnalyticsStatus()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 200
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->broadcastAnalyticsStatus(Landroid/content/Context;ZZ)V

    return-void

    .line 205
    :cond_16
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;ZZ)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final checkVersioningBlobWhenBootCompleted()V
    .registers 3

    .line 170
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "checkVersioningBlobWhenBootCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final deinitializeDatabaseSizeObserver()V
    .registers 3

    .line 235
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "deinitializeDatabaseSizeObserver()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    if-eqz v0, :cond_11

    .line 237
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->stop()V

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    :cond_11
    return-void
.end method

.method public final initializeDatabaseSizeObserver()V
    .registers 4

    .line 227
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "initializeDatabaseSizeObserver()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    if-nez v0, :cond_16

    .line 229
    new-instance v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 231
    :cond_16
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->start()V

    return-void
.end method

.method public final initializeEventQueue()V
    .registers 3

    .line 243
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "initializeEventQueue()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    if-nez v0, :cond_14

    .line 245
    new-instance v0, Lcom/samsung/android/knox/analytics/service/EventQueue;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/analytics/service/EventQueue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 247
    :cond_14
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->start()V

    return-void
.end method

.method public final logActivationEventAfterStart()V
    .registers 3

    .line 350
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "logActivationEventAfterStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final logActivationUpdateEvent(Z)V
    .registers 6

    .line 382
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logActivationUpdateEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->isStarted()Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_44

    .line 388
    :cond_2a
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_ANALYTICS"

    const/4 v2, 0x1

    const-string v3, "activationChanged"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "st"

    .line 391
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    .line 393
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v2, 0x2

    :goto_40
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void

    :cond_44
    :goto_44
    const-string p0, "logActivationUpdateEvent(): EventQueue not started!"

    .line 384
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final logDeactivationEvent()V
    .registers 2

    .line 373
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    if-nez v0, :cond_c

    .line 375
    sget-object p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v0, "Won\'t log deactivation because it is already off!"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 378
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logActivationUpdateEvent(Z)V

    return-void
.end method

.method public final logStatusChangedEvent(IZLjava/lang/String;)V
    .registers 13

    .line 319
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logStatusChangedEvent( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_ANALYTICS"

    const/4 v4, 0x1

    const-string/jumbo v5, "statusChanged"

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "srv"

    .line 322
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo v1, "st"

    .line 323
    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    if-eqz p3, :cond_d3

    .line 324
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d3

    const-string/jumbo p2, "pN"

    .line 325
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object p2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/android/server/enterprise/utils/Utils;->getPermissionType(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    const-string/jumbo v1, "prm"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const/4 p2, 0x0

    .line 332
    :try_start_59
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/android/server/enterprise/utils/Utils;->getApplicationPubKeyMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_5f
    .catch Ljava/security/cert/CertificateException; {:try_start_59 .. :try_end_5f} :catch_68
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_59 .. :try_end_5f} :catch_68
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_59 .. :try_end_5f} :catch_68

    .line 333
    :try_start_5f
    iget-object v5, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    invoke-static {v5, p3}, Lcom/android/server/enterprise/utils/Utils;->getApplicationSignaturesSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2
    :try_end_65
    .catch Ljava/security/cert/CertificateException; {:try_start_5f .. :try_end_65} :catch_66
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_65} :catch_66
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5f .. :try_end_65} :catch_66

    goto :goto_84

    :catch_66
    move-exception v5

    goto :goto_6a

    :catch_68
    move-exception v5

    move-object v1, p2

    .line 336
    :goto_6a
    sget-object v6, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_84
    if-eqz v1, :cond_d3

    .line 339
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d3

    if-eqz p2, :cond_d3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d3

    .line 340
    sget-object v5, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "log pubkey( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "pkMD5"

    invoke-virtual {v0, p3, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "pkSHA256"

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_d3
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void
.end method

.method public final logStatusChangedEventAfterStart(IZLjava/lang/String;)V
    .registers 6

    .line 278
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "logStatusChangedEventAfterStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    if-eqz v0, :cond_f

    .line 281
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logStatusChangedEvent(IZLjava/lang/String;)V

    return-void

    .line 284
    :cond_f
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$5;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final logTriggerEvent(IZLjava/lang/String;)V
    .registers 8

    .line 305
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logTriggerEvent( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_ANALYTICS"

    const/4 v2, 0x1

    const-string/jumbo v3, "serviceChanged"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "srv"

    .line 309
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo v1, "st"

    .line 310
    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    if-eqz p3, :cond_4e

    .line 311
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4e

    if-nez p1, :cond_4e

    const-string/jumbo p1, "pN"

    .line 312
    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_4e
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void
.end method

.method public final logTriggerEventAfterStart(IZLjava/lang/String;)V
    .registers 6

    .line 251
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "logTriggerEventAfterStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    if-eqz v0, :cond_f

    .line 254
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logTriggerEvent(IZLjava/lang/String;)V

    return-void

    .line 257
    :cond_f
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onBootPhase(I)V
    .registers 4

    .line 110
    iput p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootPhase:I

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_20

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_b

    goto :goto_28

    .line 116
    :cond_b
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootPhase(PHASE_BOOT_COMPLETED)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootCompletedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_16
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootCompletedLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 119
    monitor-exit v0

    goto :goto_28

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw p0

    .line 113
    :cond_20
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootPhase(PHASE_SYSTEM_SERVICES_READY)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_28
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->onBootPhase(I)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 102
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart() knox_analytics"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 104
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->registerObserver(Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 129
    sget-object p1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v0, " onUserUnlocking()"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserUnlockStatusLock:Ljava/lang/Object;

    monitor-enter p1

    .line 131
    :try_start_a
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserUnlockStatusLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 132
    monitor-exit p1

    return-void

    :catchall_11
    move-exception p0

    monitor-exit p1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final startSystemService()V
    .registers 5

    .line 136
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSystemService()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    if-eqz v1, :cond_13

    const-string/jumbo p0, "startSystemService(): can\'t start, already running!"

    .line 138
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->initializeEventQueue()V

    .line 142
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mImpl:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    if-nez v1, :cond_46

    const-string/jumbo v1, "startSystemService(): new Impl"

    .line 143
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mImpl:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    const-string v1, "knox_analytics"

    .line 146
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 147
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;-><init>(Landroid/content/Context;)V

    const-string v1, "knox_analytics_proxy"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->checkVersioningBlobWhenBootCompleted()V

    goto :goto_4b

    .line 152
    :cond_46
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->notifyVersioningCompleted()V

    :goto_4b
    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->initializeDatabaseSizeObserver()V

    return-void
.end method

.method public final stopSystemService()V
    .registers 3

    .line 159
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopSystemService()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    if-nez v1, :cond_13

    const-string/jumbo p0, "stopSystemService(): can\'t stop, already stopped!"

    .line 161
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->deinitializeDatabaseSizeObserver()V

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logDeactivationEvent()V

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    return-void
.end method
