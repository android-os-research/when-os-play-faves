.class public final Lcom/android/server/logcat/LogcatManagerService;
.super Lcom/android/server/SystemService;
.source "LogcatManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/logcat/LogcatManagerService$Injector;,
        Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;,
        Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;,
        Lcom/android/server/logcat/LogcatManagerService$BinderService;,
        Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;,
        Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;,
        Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;,
        Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestStatus;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final MSG_APPROVE_LOG_ACCESS:I = 0x1

.field public static final MSG_DECLINE_LOG_ACCESS:I = 0x2

.field public static final MSG_LOG_ACCESS_FINISHED:I = 0x3

.field public static final MSG_LOG_ACCESS_REQUESTED:I = 0x0

.field public static final MSG_LOG_ACCESS_STATUS_EXPIRED:I = 0x5

.field public static final MSG_PENDING_TIMEOUT:I = 0x4

.field public static final PENDING_CONFIRMATION_TIMEOUT_MILLIS:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATUS_APPROVED:I = 0x2

.field public static final STATUS_DECLINED:I = 0x3

.field public static final STATUS_EXPIRATION_TIMEOUT_MILLIS:I = 0xea60
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATUS_NEW_REQUEST:I = 0x0

.field public static final STATUS_PENDING:I = 0x1

.field public static final TAG:Ljava/lang/String; = "LogcatManagerService"


# instance fields
.field public final mActiveLogAccessCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

.field public final mClock:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/logcat/LogcatManagerService$Injector;

.field public final mLocalService:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

.field public final mLogAccessStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;",
            "Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mLogdService:Landroid/os/ILogd;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/logcat/LogcatManagerService;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 63
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const v0, 0x11170

    goto :goto_b

    :cond_8
    const v0, 0x61a80

    :goto_b
    sput v0, Lcom/android/server/logcat/LogcatManagerService;->PENDING_CONFIRMATION_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 293
    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/logcat/LogcatManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/logcat/LogcatManagerService;-><init>(Landroid/content/Context;Lcom/android/server/logcat/LogcatManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/logcat/LogcatManagerService$Injector;)V
    .registers 4

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 181
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    .line 182
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    .line 298
    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    .line 299
    iput-object p2, p0, Lcom/android/server/logcat/LogcatManagerService;->mInjector:Lcom/android/server/logcat/LogcatManagerService$Injector;

    .line 300
    invoke-virtual {p2}, Lcom/android/server/logcat/LogcatManagerService$Injector;->createClock()Ljava/util/function/Supplier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Ljava/util/function/Supplier;

    .line 301
    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$BinderService;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/logcat/LogcatManagerService$BinderService;-><init>(Lcom/android/server/logcat/LogcatManagerService;Lcom/android/server/logcat/LogcatManagerService$BinderService-IA;)V

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

    .line 302
    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    invoke-direct {p1, p0}, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;-><init>(Lcom/android/server/logcat/LogcatManagerService;)V

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLocalService:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    .line 303
    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    invoke-virtual {p2}, Lcom/android/server/logcat/LogcatManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;-><init>(Landroid/os/Looper;Lcom/android/server/logcat/LogcatManagerService;)V

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final approveRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .registers 7

    .line 519
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    move-result-object v0

    iget v1, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iget v2, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iget v3, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iget p2, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-interface {v0, v1, v2, v3, p2}, Landroid/os/ILogd;->approve(IIII)V

    .line 520
    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 521
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    move-exception p0

    const-string p1, "LogcatManagerService"

    const-string p2, "Fails to call remote functions"

    .line 523
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_34
    return-void
.end method

.method public createIntent(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)Landroid/content/Intent;
    .registers 4

    .line 542
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/server/logcat/LogAccessDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p0, 0x10008000

    .line 544
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 546
    iget-object p0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mPackageName:Ljava/lang/String;

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    iget p0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mUid:I

    const-string p1, "android.intent.extra.UID"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public final declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .registers 5

    .line 532
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    move-result-object p0

    iget v0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iget v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iget v2, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-interface {p0, v0, v1, v2, p1}, Landroid/os/ILogd;->decline(IIII)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception p0

    const-string p1, "LogcatManagerService"

    const-string v0, "Fails to call remote functions"

    .line 534
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    return-void
.end method

.method public getBinderService()Landroid/os/logcat/ILogcatManagerService;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 324
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

    return-object p0
.end method

.method public final getClientForRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;
    .registers 3

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->getPackageName(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 334
    :cond_8
    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    invoke-direct {v0, p1, p0}, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public getLocalService()Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 319
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLocalService:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    return-object p0
.end method

.method public final getLogdService()Landroid/os/ILogd;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    if-nez v0, :cond_c

    .line 228
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mInjector:Lcom/android/server/logcat/LogcatManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/logcat/LogcatManagerService$Injector;->getLogdService()Landroid/os/ILogd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    .line 230
    :cond_c
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    return-object p0
.end method

.method public final getPackageName(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Ljava/lang/String;
    .registers 5

    .line 343
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_d

    .line 344
    iget v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    .line 350
    :cond_d
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "LogcatManagerService"

    if-nez p0, :cond_1e

    const-string p0, "PackageManager is null, declining the logd access"

    .line 353
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 357
    :cond_1e
    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 359
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "Unknown calling package name, declining the logd access"

    if-eqz p1, :cond_30

    .line 361
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_30
    const/4 p1, 0x0

    .line 365
    aget-object p0, p0, p1

    if-eqz p0, :cond_3d

    .line 367
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_3d

    :cond_3c
    return-object p0

    .line 369
    :cond_3d
    :goto_3d
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final isSmartSwitchApp(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)Z
    .registers 5

    .line 438
    iget-object p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mPackageName:Ljava/lang/String;

    const-string v0, "com.sec.android.easyMover"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1e

    .line 439
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_1e

    :try_start_14
    const-string p1, "android"

    .line 442
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_1e

    if-nez p0, :cond_1e

    move p0, v2

    goto :goto_1f

    :catch_1e
    :cond_1e
    move p0, v1

    :goto_1f
    if-ne p0, v2, :cond_22

    move v1, v2

    :cond_22
    return v1
.end method

.method public onAccessApprovedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .registers 5

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->scheduleStatusExpiry(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    .line 454
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    if-eqz v0, :cond_2b

    .line 456
    iget-object v1, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 457
    invoke-virtual {p0, p1, v2}, Lcom/android/server/logcat/LogcatManagerService;->approveRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    goto :goto_13

    :cond_23
    const/4 p0, 0x2

    .line 459
    iput p0, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    .line 460
    iget-object p0, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2b
    return-void
.end method

.method public onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .registers 4

    .line 465
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->scheduleStatusExpiry(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    .line 467
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    if-eqz p1, :cond_2b

    .line 469
    iget-object v0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 470
    invoke-virtual {p0, v1}, Lcom/android/server/logcat/LogcatManagerService;->declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    goto :goto_13

    :cond_23
    const/4 p0, 0x3

    .line 472
    iput p0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    .line 473
    iget-object p0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2b
    return-void
.end method

.method public onAccessStatusExpired(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .registers 2

    .line 495
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onLogAccessFinished(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .registers 5

    .line 499
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->getClientForRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    move-result-object p1

    .line 500
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    if-nez v0, :cond_1e

    .line 503
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 510
    :cond_1e
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_27
    return-void
.end method

.method public onLogAccessRequested(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .registers 6

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->getClientForRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    move-result-object v0

    if-nez v0, :cond_a

    .line 379
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    return-void

    .line 383
    :cond_a
    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    if-nez v1, :cond_1f

    .line 385
    new-instance v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;-><init>(Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus-IA;)V

    .line 386
    iget-object v2, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_1f
    iget v2, v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    if-eqz v2, :cond_3b

    const/4 v3, 0x1

    if-eq v2, v3, :cond_35

    const/4 v1, 0x2

    if-eq v2, v1, :cond_31

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2d

    goto :goto_43

    .line 401
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    goto :goto_43

    .line 398
    :cond_31
    invoke-virtual {p0, v0, p1}, Lcom/android/server/logcat/LogcatManagerService;->approveRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    goto :goto_43

    .line 395
    :cond_35
    iget-object p0, v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 391
    :cond_3b
    iget-object v1, v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {p0, v0}, Lcom/android/server/logcat/LogcatManagerService;->processNewLogAccessRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    :goto_43
    return-void
.end method

.method public onPendingTimeoutExpired(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .registers 4

    .line 485
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    if-eqz v0, :cond_12

    .line 486
    iget v0, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    :cond_12
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 309
    :try_start_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v0, "logcat"

    .line 310
    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 311
    const-class v0, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLocalService:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    goto :goto_22

    :catchall_1a
    move-exception p0

    const-string v0, "LogcatManagerService"

    const-string v1, "Could not start the LogcatManagerService."

    .line 313
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method

.method public final processNewLogAccessRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .registers 8

    .line 413
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 415
    :goto_f
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->isSmartSwitchApp(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)Z

    move-result v2

    if-nez v0, :cond_52

    if-eqz v2, :cond_18

    goto :goto_52

    .line 422
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->shouldShowConfirmationDialog(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    return-void

    .line 427
    :cond_22
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    .line 428
    iput v1, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    .line 430
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Ljava/util/function/Supplier;

    .line 431
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget v4, Lcom/android/server/logcat/LogcatManagerService;->PENDING_CONFIRMATION_TIMEOUT_MILLIS:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 430
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->createIntent(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)Landroid/content/Intent;

    move-result-object p1

    .line 433
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 418
    :cond_52
    :goto_52
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessApprovedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    return-void
.end method

.method public final scheduleStatusExpiry(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .registers 7

    .line 478
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Ljava/util/function/Supplier;

    .line 481
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    .line 480
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final shouldShowConfirmationDialog(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)Z
    .registers 2

    .line 408
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mUid:I

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method
