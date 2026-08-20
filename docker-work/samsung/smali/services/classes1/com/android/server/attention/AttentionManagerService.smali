.class public Lcom/android/server/attention/AttentionManagerService;
.super Lcom/android/server/SystemService;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/attention/AttentionManagerService$BinderService;,
        Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;,
        Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;,
        Lcom/android/server/attention/AttentionManagerService$AttentionHandler;,
        Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;,
        Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;,
        Lcom/android/server/attention/AttentionManagerService$AttentionCheck;,
        Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;,
        Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;,
        Lcom/android/server/attention/AttentionManagerService$LocalService;
    }
.end annotation


# static fields
.field public static final ATTENTION_CACHE_BUFFER_SIZE:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final CONNECTION_TTL_MILLIS:J = 0xea60L

.field public static final DEBUG:Z = false

.field public static final DEFAULT_SERVICE_ENABLED:Z = true

.field public static final DEFAULT_STALE_AFTER_MILLIS:J = 0x3e8L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_SERVICE_ENABLED:Ljava/lang/String; = "service_enabled"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_STALE_AFTER_MILLIS:Ljava/lang/String; = "stale_after_millis"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LOG_TAG:Ljava/lang/String; = "AttentionManagerService"

.field public static final SERVICE_BINDING_WAIT_MILLIS:J = 0x3e8L

.field public static sTestAttentionServicePackage:Ljava/lang/String;


# instance fields
.field public mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

.field public mBinding:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mComponentName:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

.field public final mContext:Landroid/content/Context;

.field public mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mIsServiceEnabled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public mService:Landroid/service/attention/IAttentionService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

.field public mStaleAfterMillis:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$gB_-BdC0YJFCoSO95udknZ00hKg(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->lambda$bindLocked$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$yY--1bOyG1T9SAoQDRYxybMCm3A(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->lambda$cancelAndUnbindLocked$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$zAl0cVmXN5SK-pOb0598ByvkKOI(Lcom/android/server/attention/AttentionManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->lambda$onBootPhase$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceBindingLatch(Lcom/android/server/attention/AttentionManagerService;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBinding(Lcom/android/server/attention/AttentionManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmServiceBindingLatch(Lcom/android/server/attention/AttentionManagerService;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mappendResultToAttentionCacheBuffer(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->appendResultToAttentionCacheBuffer(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->cancelAndUnbindLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/attention/AttentionManagerService;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePendingCallbackLocked(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->handlePendingCallbackLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsTestAttentionServicePackage(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$smresolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 1

    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "power"

    .line 156
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/attention/AttentionManagerService;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Ljava/lang/Object;Lcom/android/server/attention/AttentionManagerService$AttentionHandler;)V

    .line 158
    new-instance p1, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    invoke-direct {p1, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Ljava/lang/Object;Lcom/android/server/attention/AttentionManagerService$AttentionHandler;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 164
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection-IA;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    .line 165
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 167
    iput-object p3, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 168
    iput-object p4, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 169
    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 170
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 432
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isServiceConfigured(Landroid/content/Context;)Z
    .registers 1

    .line 194
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$bindLocked$2()V
    .registers 5

    .line 891
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.attention.AttentionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 892
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 895
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const v3, 0x4001001

    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private synthetic lambda$cancelAndUnbindLocked$1()V
    .registers 2

    .line 868
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private synthetic lambda$onBootPhase$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 182
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method public static resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 9

    .line 448
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 452
    sget-object v1, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 453
    sget-object v1, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    const/16 v3, 0x80

    goto :goto_1b

    .line 455
    :cond_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_71

    const/high16 v3, 0x100000

    move-object v1, v0

    .line 461
    :goto_1b
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.service.attention.AttentionService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 464
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v6, "AttentionManagerService"

    if-eqz p0, :cond_62

    .line 465
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_3a

    goto :goto_62

    .line 473
    :cond_3a
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v5, "android.permission.BIND_ATTENTION_SERVICE"

    .line 474
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 475
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 479
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    aput-object v7, v0, v3

    aput-object v5, v0, v1

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    aput-object p0, v0, v4

    const-string p0, "Service %s should require %s permission. Found %s permission"

    .line 477
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_62
    :goto_62
    new-array p0, v4, [Ljava/lang/Object;

    aput-object v5, p0, v3

    aput-object v0, p0, v1

    const-string v0, "Service %s not found in package %s"

    .line 466
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    return-object v2
.end method


# virtual methods
.method public final appendResultToAttentionCacheBuffer(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)V
    .registers 4

    .line 723
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_3
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    if-nez v1, :cond_e

    .line 725
    new-instance v1, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    invoke-direct {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;-><init>()V

    iput-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    .line 727
    :cond_e
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->add(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)V

    .line 728
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final awaitServiceBinding(J)V
    .registers 4

    .line 437
    :try_start_0
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string p1, "AttentionManagerService"

    const-string p2, "Interrupted while waiting to bind Attention Service."

    .line 439
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public final bindLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 882
    iget-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-eqz v0, :cond_9

    goto :goto_16

    :cond_9
    const/4 v0, 0x1

    .line 886
    iput-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    .line 890
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    new-instance v1, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    :goto_16
    return-void
.end method

.method public cancel()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 833
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIsFulfilled(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 840
    :cond_9
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-nez v0, :cond_13

    .line 841
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->cancelInternal()V

    return-void

    .line 846
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIAttentionCallback(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/service/attention/IAttentionService;->cancelAttentionCheck(Landroid/service/attention/IAttentionCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_29

    :catch_1d
    const-string v0, "AttentionManagerService"

    const-string v1, "Unable to cancel attention check"

    .line 848
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->cancelInternal()V

    :goto_29
    return-void
.end method

.method public final cancelAfterTimeoutLocked(J)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 427
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final cancelAndUnbindLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 856
    :try_start_3
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-nez v1, :cond_d

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-nez v2, :cond_d

    .line 857
    monitor-exit v0

    return-void

    :cond_d
    if-eqz v1, :cond_12

    .line 860
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->cancel()V

    .line 862
    :cond_12
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-eqz v1, :cond_19

    .line 863
    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->cancelUpdates()V

    .line 865
    :cond_19
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-nez v1, :cond_1f

    .line 866
    monitor-exit v0

    return-void

    .line 868
    :cond_1f
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    new-instance v2, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 874
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->cleanupService()V

    .line 875
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmCallbackInternal(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    const-string p0, "AttentionManagerService"

    const-string p1, "Cannot cancel a non-current request"

    .line 333
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    monitor-exit v0

    return-void

    .line 336
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->cancel()V

    .line 337
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 262
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const-string p0, "AttentionManagerService"

    const-string p1, "Trying to call checkAttention() on an unsupported device."

    .line 265
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 269
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string p0, "AttentionManagerService"

    const-string p1, "Service is not available at this moment."

    .line 270
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 274
    :cond_1e
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string p0, "AttentionManagerService"

    const-string p1, "Camera is locked by a toggle."

    .line 275
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 280
    :cond_2f
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_41

    goto/16 :goto_c4

    .line 284
    :cond_41
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_44
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->freeIfInactiveLocked()V

    .line 289
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->bindLocked()V

    .line 290
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_c1

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 293
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/attention/AttentionManagerService;->awaitServiceBinding(J)V

    .line 294
    iget-object v4, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 296
    :try_start_5b
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    if-nez v0, :cond_61

    const/4 v0, 0x0

    goto :goto_65

    .line 297
    :cond_61
    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->getLast()Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    move-result-object v0

    :goto_65
    const/4 v5, 0x1

    if-eqz v0, :cond_80

    .line 298
    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->-$$Nest$fgetmLastComputed(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/attention/AttentionManagerService;->mStaleAfterMillis:J

    add-long/2addr v6, v8

    cmp-long v2, v2, v6

    if-gez v2, :cond_80

    .line 299
    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->-$$Nest$fgetmResult(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)I

    move-result p0

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->-$$Nest$fgetmTimestamp(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J

    move-result-wide p1

    invoke-virtual {p3, p0, p1, p2}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onSuccess(IJ)V

    .line 300
    monitor-exit v4

    return v5

    .line 304
    :cond_80
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-eqz v0, :cond_94

    .line 305
    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIsDispatched(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIsFulfilled(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 307
    :cond_92
    monitor-exit v4

    return v1

    .line 311
    :cond_94
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-direct {v0, p3, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;-><init>(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 313
    iget-object p3, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;
    :try_end_9d
    .catchall {:try_start_5b .. :try_end_9d} :catchall_be

    if-eqz p3, :cond_bc

    .line 316
    :try_start_9f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/attention/AttentionManagerService;->cancelAfterTimeoutLocked(J)V

    .line 317
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    iget-object p2, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {p2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIAttentionCallback(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/service/attention/IAttentionService;->checkAttention(Landroid/service/attention/IAttentionCallback;)V

    .line 318
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {p0, v5}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fputmIsDispatched(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_b2} :catch_b3
    .catchall {:try_start_9f .. :try_end_b2} :catchall_be

    goto :goto_bc

    :catch_b3
    :try_start_b3
    const-string p0, "AttentionManagerService"

    const-string p1, "Cannot call into the AttentionService"

    .line 320
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    monitor-exit v4

    return v1

    .line 324
    :cond_bc
    :goto_bc
    monitor-exit v4

    return v5

    :catchall_be
    move-exception p0

    .line 325
    monitor-exit v4
    :try_end_c0
    .catchall {:try_start_b3 .. :try_end_c0} :catchall_be

    throw p0

    :catchall_c1
    move-exception p0

    .line 290
    :try_start_c2
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    throw p0

    :cond_c4
    :goto_c4
    return v1
.end method

.method public final dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    const-string v0, "Attention Manager Service (dumpsys attention) state:\n"

    .line 486
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isServiceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mStaleAfterMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/attention/AttentionManagerService;->mStaleAfterMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttentionServicePackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Resolved component:"

    .line 490
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_90

    .line 492
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 497
    :cond_90
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "current attention check:"

    .line 499
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-eqz v1, :cond_b5

    .line 501
    invoke-virtual {v1, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 503
    :cond_b5
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    if-eqz v1, :cond_bc

    .line 504
    invoke-static {v1, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->-$$Nest$mdump(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 506
    :cond_bc
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-eqz p0, :cond_c3

    .line 507
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 509
    :cond_c3
    monitor-exit v0

    return-void

    :catchall_c5
    move-exception p0

    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_93 .. :try_end_c7} :catchall_c5

    throw p0
.end method

.method public freeIfInactiveLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final getIsServiceEnabled()Z
    .registers 3

    const-string p0, "attention_manager_service"

    const-string/jumbo v0, "service_enabled"

    const/4 v1, 0x1

    .line 207
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getStaleAfterMillis()J
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "attention_manager_service"

    const-string/jumbo v0, "stale_after_millis"

    const-wide/16 v1, 0x3e8

    .line 217
    invoke-static {p0, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-ltz p0, :cond_19

    const-wide/16 v5, 0x2710

    cmp-long p0, v3, v5

    if-lez p0, :cond_18

    goto :goto_19

    :cond_18
    return-wide v3

    :cond_19
    :goto_19
    const-string p0, "AttentionManagerService"

    const-string v0, "Bad flag value supplied for: stale_after_millis"

    .line 222
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public final handlePendingCallbackLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    const-string v1, "Cannot call into the AttentionService"

    const-string v2, "AttentionManagerService"

    if-eqz v0, :cond_30

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIsDispatched(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 770
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-eqz v0, :cond_26

    .line 772
    :try_start_12
    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v3}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIAttentionCallback(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/service/attention/IAttentionService;->checkAttention(Landroid/service/attention/IAttentionCallback;)V

    .line 773
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fputmIsDispatched(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_21} :catch_22

    goto :goto_30

    .line 775
    :catch_22
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 778
    :cond_26
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmCallbackInternal(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    .line 781
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-eqz v0, :cond_55

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->-$$Nest$fgetmStartedUpdates(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 782
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-eqz v0, :cond_4d

    .line 784
    :try_start_3e
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->-$$Nest$fgetmIProximityUpdateCallback(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Landroid/service/attention/IProximityUpdateCallback;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/service/attention/IAttentionService;->onStartProximityUpdates(Landroid/service/attention/IProximityUpdateCallback;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_47} :catch_48

    goto :goto_55

    :catch_48
    move-exception p0

    .line 787
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 790
    :cond_4d
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->cancelUpdates()V

    const/4 v0, 0x0

    .line 791
    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    :cond_55
    :goto_55
    return-void
.end method

.method public isServiceAvailable()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_c

    .line 201
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 203
    :cond_c
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public onBootPhase(I)V
    .registers 5

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2b

    .line 176
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver-IA;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->readValuesFromDeviceConfig()V

    .line 181
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    const-string p0, "attention_manager_service"

    .line 180
    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    :cond_2b
    return-void
.end method

.method public final onDeviceConfigChange(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 230
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v1, "stale_after_millis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string/jumbo v1, "service_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring change on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttentionManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 234
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->readValuesFromDeviceConfig()V

    :cond_3f
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 188
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/attention/AttentionManagerService$BinderService;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$BinderService-IA;)V

    const-string v2, "attention"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 189
    const-class v0, Landroid/attention/AttentionManagerInternal;

    new-instance v2, Lcom/android/server/attention/AttentionManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/attention/AttentionManagerService$LocalService;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$LocalService-IA;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 350
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const-string p0, "AttentionManagerService"

    const-string p1, "Trying to call onProximityUpdate() on an unsupported device."

    .line 352
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 356
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string p0, "AttentionManagerService"

    const-string p1, "Service is not available at this moment."

    .line 357
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 363
    :cond_1e
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2e

    const-string p0, "AttentionManagerService"

    const-string p1, "Proximity Service is unavailable during screen off at this moment."

    .line 364
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 368
    :cond_2e
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_31
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->freeIfInactiveLocked()V

    .line 373
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->bindLocked()V

    .line 374
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_75

    const-wide/16 v2, 0x3e8

    .line 376
    invoke-virtual {p0, v2, v3}, Lcom/android/server/attention/AttentionManagerService;->awaitServiceBinding(J)V

    .line 377
    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 383
    :try_start_40
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-eqz v0, :cond_65

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->-$$Nest$fgetmStartedUpdates(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 384
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->-$$Nest$fgetmCallbackInternal(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    move-result-object p0

    if-ne p0, p1, :cond_5c

    const-string p0, "AttentionManagerService"

    const-string p1, "Provided callback is already registered. Skipping."

    .line 385
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 386
    monitor-exit v2

    return p0

    :cond_5c
    const-string p0, "AttentionManagerService"

    const-string p1, "New proximity update cannot be processed because there is already an ongoing update"

    .line 389
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    monitor-exit v2

    return v1

    .line 394
    :cond_65
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-direct {v0, p0, p1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;-><init>(Lcom/android/server/attention/AttentionManagerService;Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 395
    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->startUpdates()Z

    move-result p0

    monitor-exit v2

    return p0

    :catchall_72
    move-exception p0

    .line 396
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_40 .. :try_end_74} :catchall_72

    throw p0

    :catchall_75
    move-exception p0

    .line 374
    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p0
.end method

.method public onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_3
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-eqz v1, :cond_24

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->-$$Nest$fgetmCallbackInternal(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    move-result-object v1

    .line 404
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->-$$Nest$fgetmStartedUpdates(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_24

    .line 409
    :cond_1a
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-virtual {p1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->cancelUpdates()V

    const/4 p1, 0x0

    .line 410
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 411
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    const-string p0, "AttentionManagerService"

    const-string p1, "Cannot stop a non-current callback"

    .line 406
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    .line 411
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final readValuesFromDeviceConfig()V
    .registers 4

    .line 243
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->getIsServiceEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    .line 244
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->getStaleAfterMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/attention/AttentionManagerService;->mStaleAfterMillis:J

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readValuesFromDeviceConfig():\nmIsServiceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmStaleAfterMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/attention/AttentionManagerService;->mStaleAfterMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AttentionManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
