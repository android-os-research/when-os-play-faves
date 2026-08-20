.class public Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;
.super Landroid/os/Binder;
.source "LocationTimeZoneManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;,
        Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;
    }
.end annotation


# static fields
.field public static final ATTRIBUTION_TAG:Ljava/lang/String; = "LocationTimeZoneService"

.field public static final BLOCKING_OP_WAIT_DURATION_MILLIS:J

.field public static final TAG:Ljava/lang/String; = "LocationTZDetector"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation
.end field

.field public mLocationTimeZoneProviderControllerEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation
.end field

.field public final mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation
.end field

.field public final mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation
.end field

.field public final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field public final mSharedLock:Ljava/lang/Object;

.field public final mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;


# direct methods
.method public static synthetic $r8$lambda$-Dq9GOsbIl6svrOUawUoaEUsIvo(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->restartIfRequiredOnDomainThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$Dar0P8WyjkU4fUUytlsoVBHaEGQ(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->lambda$startWithTestProviders$0(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ENyxT5EiWJnjACgE_Z9dPQiZBOY(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->stopOnDomainThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$O2dujrvJfJ0Eoz18kempr1qIkRM(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->handleServiceConfigurationChangedOnMainThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$XZsJDbeZuFP4m17hkxsFB5X84G4(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->lambda$getStateForTests$2()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gso0WQEkM-mL8bdi-UBNBjYMrqk(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->lambda$clearRecordedProviderStates$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$lzWGRNsK4GL2kEQCjyPMT61aLcM(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startOnDomainThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceConfigAccessor(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThreadingDomain(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/location/ThreadingDomain;
    .registers 1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x14

    .line 119
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)V
    .registers 7

    .line 162
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 123
    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    const/4 v1, 0x0

    const-string/jumbo v2, "primary"

    const-string v3, "android.service.timezone.PrimaryLocationTimeZoneProviderService"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    .line 128
    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    const/4 v1, 0x1

    const-string/jumbo v2, "secondary"

    const-string v3, "android.service.timezone.SecondaryLocationTimeZoneProviderService"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    const-string v0, "LocationTimeZoneService"

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    .line 164
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-direct {v0, p1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    .line 166
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getLockObject()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    .line 167
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    return-void
.end method

.method public static debugLog(Ljava/lang/String;)V
    .registers 3

    const-string v0, "LocationTZDetector"

    const/4 v1, 0x3

    .line 407
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 408
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public static infoLog(Ljava/lang/String;)V
    .registers 3

    const-string v0, "LocationTZDetector"

    const/4 v1, 0x4

    .line 413
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 414
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method private synthetic lambda$clearRecordedProviderStates$1()V
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_3
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    if-eqz p0, :cond_a

    .line 346
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->clearRecordedStates()V

    .line 348
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method private synthetic lambda$getStateForTests$2()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_3
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    .line 365
    monitor-exit v0

    return-object p0

    .line 367
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->getStateForTests()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 368
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method private synthetic lambda$startWithTestProviders$0(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 258
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->stopOnDomainThread()V

    .line 261
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v1, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->setTestPrimaryLocationTimeZoneProviderPackageName(Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {p1, p2}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->setTestSecondaryLocationTimeZoneProviderPackageName(Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {p1, p3}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->setRecordStateChangesForTests(Z)V

    .line 266
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startOnDomainThread()V

    .line 267
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public static warnLog(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 419
    invoke-static {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "LocationTZDetector"

    const/4 v1, 0x5

    .line 423
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 424
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    return-void
.end method


# virtual methods
.method public clearRecordedProviderStates()V
    .registers 5

    .line 341
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->enforceManageTimeZoneDetectorPermission()V

    .line 343
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    sget-wide v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 379
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    const-string v0, "LocationTZDetector"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 381
    :cond_b
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 383
    iget-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_13
    const-string v0, "LocationTimeZoneManagerService:"

    .line 384
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "Primary provider config:"

    .line 387
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 389
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "Secondary provider config:"

    .line 392
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 394
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 397
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    if-nez p0, :cond_46

    const-string/jumbo p0, "{Stopped}"

    .line 398
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_49

    .line 400
    :cond_46
    invoke-virtual {p0, p1, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 402
    :goto_49
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 403
    monitor-exit p2

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit p2
    :try_end_50
    .catchall {:try_start_13 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public final enforceManageTimeZoneDetectorPermission()V
    .registers 3

    .line 429
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MANAGE_TIME_AND_ZONE_DETECTION"

    const-string v1, "manage time and time zone detection"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getStateForTests()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    .registers 5

    .line 358
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->enforceManageTimeZoneDetectorPermission()V

    .line 361
    :try_start_3
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    sget-wide v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postAndWait(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 372
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final handleServiceConfigurationChangedOnMainThread()V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 335
    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onSystemReady()V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->addLocationTimeZoneManagerConfigListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    return-void
.end method

.method public onSystemThirdPartyAppsCanStart()V
    .registers 2

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startInternal(Z)V

    return-void
.end method

.method public final restartIfRequiredOnDomainThread()V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 189
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_8
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    if-eqz v1, :cond_12

    .line 195
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->stopOnDomainThread()V

    .line 196
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startOnDomainThread()V

    .line 198
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public start()V
    .registers 2

    .line 217
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->enforceManageTimeZoneDetectorPermission()V

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startInternal(Z)V

    return-void
.end method

.method public final startInternal(Z)V
    .registers 5

    .line 234
    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    if-eqz p1, :cond_f

    .line 236
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    sget-wide v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V

    goto :goto_14

    .line 238
    :cond_f
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    :goto_14
    return-void
.end method

.method public final startOnDomainThread()V
    .registers 9

    .line 272
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 274
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_8
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v1

    if-nez v1, :cond_17

    const-string p0, "Not starting location_time_zone_manager: it is disabled in service config"

    .line 276
    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 277
    monitor-exit v0

    return-void

    .line 280
    :cond_17
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    if-nez v1, :cond_51

    .line 281
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->createProvider()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    move-result-object v5

    .line 282
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->createProvider()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    move-result-object v6

    .line 283
    new-instance v4, Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;

    invoke-direct {v4}, Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;-><init>()V

    .line 285
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getRecordStateChangesForTests()Z

    move-result v7

    .line 286
    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Z)V

    .line 289
    new-instance v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    .line 292
    new-instance v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;

    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-direct {v3, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    .line 294
    invoke-virtual {v1, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;)V

    .line 296
    iput-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderControllerEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 297
    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 299
    :cond_51
    monitor-exit v0

    return-void

    :catchall_53
    move-exception p0

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_8 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public startWithTestProviders(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 251
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->enforceManageTimeZoneDetectorPermission()V

    if-nez p1, :cond_10

    if-eqz p2, :cond_8

    goto :goto_10

    .line 254
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One or both test package names must be provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 257
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-wide p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public stop()V
    .registers 5

    .line 310
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->enforceManageTimeZoneDetectorPermission()V

    .line 312
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    sget-wide v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final stopOnDomainThread()V
    .registers 4

    .line 316
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 318
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_8
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    if-eqz v1, :cond_1e

    .line 320
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->destroy()V

    const/4 v1, 0x0

    .line 321
    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 322
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderControllerEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->destroy()V

    .line 323
    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderControllerEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 326
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->resetVolatileTestConfig()V

    .line 328
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_20

    throw p0
.end method
