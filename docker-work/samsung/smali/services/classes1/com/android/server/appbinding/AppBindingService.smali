.class public Lcom/android/server/appbinding/AppBindingService;
.super Landroid/os/Binder;
.source "AppBindingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;,
        Lcom/android/server/appbinding/AppBindingService$Lifecycle;,
        Lcom/android/server/appbinding/AppBindingService$Injector;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "AppBindingService"


# instance fields
.field public final mApps:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appbinding/finders/AppServiceFinder;",
            ">;"
        }
    .end annotation
.end field

.field public final mConnections:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public mConstants:Lcom/android/server/appbinding/AppBindingConstants;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mIPackageManager:Landroid/content/pm/IPackageManager;

.field public final mInjector:Lcom/android/server/appbinding/AppBindingService$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageUserMonitor:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mRunningUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$-Rz0EdzeWwT41frPEW-lXb80eUA(ILcom/android/server/appbinding/finders/AppServiceFinder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->lambda$onUserRemoved$0(ILcom/android/server/appbinding/finders/AppServiceFinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-ttpHIUv6DSLfX7cizRwpLtcOoo(Lcom/android/server/appbinding/AppBindingService;Lcom/android/server/appbinding/finders/AppServiceFinder;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appbinding/AppBindingService;->onAppChanged(Lcom/android/server/appbinding/finders/AppServiceFinder;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$k6nb_YX3oixwAxQyPGolZFt0ccc(Ljava/io/PrintWriter;Lcom/android/server/appbinding/finders/AppServiceFinder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->lambda$dumpSimple$2(Ljava/io/PrintWriter;Lcom/android/server/appbinding/finders/AppServiceFinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wGBy9FjhcPXhzA8L3fKDNvqijFQ(Ljava/io/PrintWriter;Lcom/android/server/appbinding/finders/AppServiceFinder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->lambda$dump$1(Ljava/io/PrintWriter;Lcom/android/server/appbinding/finders/AppServiceFinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageAddedReplacing(Lcom/android/server/appbinding/AppBindingService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appbinding/AppBindingService;->handlePackageAddedReplacing(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBootPhase(Lcom/android/server/appbinding/AppBindingService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->onBootPhase(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monStartUser(Lcom/android/server/appbinding/AppBindingService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->onStartUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monStopUser(Lcom/android/server/appbinding/AppBindingService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->onStopUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUnlockUser(Lcom/android/server/appbinding/AppBindingService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->onUnlockUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/appbinding/AppBindingService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->onUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrefreshConstants(Lcom/android/server/appbinding/AppBindingService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/appbinding/AppBindingService;->refreshConstants()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/appbinding/AppBindingService$Injector;Landroid/content/Context;)V
    .registers 6

    .line 144
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    .line 202
    new-instance v1, Lcom/android/server/appbinding/AppBindingService$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/appbinding/AppBindingService$1;-><init>(Lcom/android/server/appbinding/AppBindingService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 224
    new-instance v1, Lcom/android/server/appbinding/AppBindingService$2;

    invoke-direct {v1, p0}, Lcom/android/server/appbinding/AppBindingService$2;-><init>(Lcom/android/server/appbinding/AppBindingService;)V

    iput-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mPackageUserMonitor:Landroid/content/BroadcastReceiver;

    .line 145
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mInjector:Lcom/android/server/appbinding/AppBindingService$Injector;

    .line 146
    iput-object p2, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {p1}, Lcom/android/server/appbinding/AppBindingService$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 150
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    new-instance v2, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appbinding/AppBindingService;)V

    invoke-direct {v1, p2, v2, p1}, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, ""

    .line 154
    invoke-static {p1}, Lcom/android/server/appbinding/AppBindingConstants;->initializeFromString(Ljava/lang/String;)Lcom/android/server/appbinding/AppBindingConstants;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/appbinding/AppBindingService$Injector;Landroid/content/Context;Lcom/android/server/appbinding/AppBindingService-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/appbinding/AppBindingService;-><init>(Lcom/android/server/appbinding/AppBindingService$Injector;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$dump$1(Ljava/io/PrintWriter;Lcom/android/server/appbinding/finders/AppServiceFinder;)V
    .registers 3

    const-string v0, "    "

    .line 498
    invoke-virtual {p1, v0, p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic lambda$dumpSimple$2(Ljava/io/PrintWriter;Lcom/android/server/appbinding/finders/AppServiceFinder;)V
    .registers 2

    .line 532
    invoke-virtual {p1, p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->dumpSimple(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic lambda$onUserRemoved$0(ILcom/android/server/appbinding/finders/AppServiceFinder;)V
    .registers 2

    .line 314
    invoke-virtual {p1, p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->onUserRemoved(I)V

    return-void
.end method


# virtual methods
.method public final bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V
    .registers 14

    const/4 v0, 0x0

    .line 384
    :goto_1
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 385
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/appbinding/finders/AppServiceFinder;

    if-eqz p2, :cond_17

    if-eq p2, v7, :cond_17

    goto :goto_44

    .line 391
    :cond_17
    invoke-virtual {p0, p1, v7}, Lcom/android/server/appbinding/AppBindingService;->findConnectionLock(ILcom/android/server/appbinding/finders/AppServiceFinder;)Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 393
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 396
    :cond_20
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    invoke-virtual {v7, p1, v1, v2}, Lcom/android/server/appbinding/finders/AppServiceFinder;->findService(ILandroid/content/pm/IPackageManager;Lcom/android/server/appbinding/AppBindingConstants;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-nez v1, :cond_2b

    goto :goto_44

    .line 404
    :cond_2b
    new-instance v9, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    iget-object v3, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    iget-object v6, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    .line 406
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    move-object v2, v9

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;-><init>(Landroid/content/Context;ILcom/android/server/appbinding/AppBindingConstants;Landroid/os/Handler;Lcom/android/server/appbinding/finders/AppServiceFinder;Landroid/content/ComponentName;)V

    .line 407
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-virtual {v9}, Lcom/android/server/am/PersistentConnection;->bind()V

    :goto_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_47
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 463
    iget-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    const-string v0, "AppBindingService"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 465
    :cond_b
    array-length p1, p3

    const/4 v0, 0x0

    if-lez p1, :cond_1d

    const-string p1, "-s"

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 466
    invoke-virtual {p0, p2}, Lcom/android/server/appbinding/AppBindingService;->dumpSimple(Ljava/io/PrintWriter;)V

    return-void

    .line 470
    :cond_1d
    iget-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 471
    :try_start_20
    iget-object p3, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    const-string v1, "  "

    invoke-virtual {p3, v1, p2}, Lcom/android/server/appbinding/AppBindingConstants;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 473
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p3, "  Running users:"

    .line 474
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move p3, v0

    .line 475
    :goto_30
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge p3, v1, :cond_51

    .line 476
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string v1, " "

    .line 477
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    :cond_4e
    add-int/lit8 p3, p3, 0x1

    goto :goto_30

    .line 482
    :cond_51
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p3, "  Connections:"

    .line 483
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    :goto_59
    iget-object p3, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v0, p3, :cond_84

    .line 485
    iget-object p3, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    const-string v1, "    App type: "

    .line 486
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p3}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "      "

    .line 490
    invoke-virtual {p3, v1, p2}, Lcom/android/server/am/PersistentConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 492
    :cond_84
    iget-object p3, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p3, :cond_91

    const-string p3, "    None:"

    .line 493
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    :cond_91
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p3, "  Finders:"

    .line 497
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance p3, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p3}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 499
    monitor-exit p1

    return-void

    :catchall_a3
    move-exception p0

    monitor-exit p1
    :try_end_a5
    .catchall {:try_start_20 .. :try_end_a5} :catchall_a3

    throw p0
.end method

.method public final dumpSimple(Ljava/io/PrintWriter;)V
    .registers 6

    .line 506
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 507
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_af

    .line 508
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    const-string v3, "conn,"

    .line 510
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v2}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ","

    .line 512
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getUserId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ","

    .line 514
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ","

    .line 516
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ","

    .line 518
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->isBound()Z

    move-result v3

    if-eqz v3, :cond_5e

    const-string v3, "bound"

    goto :goto_61

    :cond_5e
    const-string/jumbo v3, "not-bound"

    :goto_61
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ","

    .line 520
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_72

    const-string v3, "connected"

    goto :goto_75

    :cond_72
    const-string/jumbo v3, "not-connected"

    :goto_75
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ",#con="

    .line 522
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getNumConnected()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ",#dis="

    .line 524
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getNumDisconnected()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ",#died="

    .line 526
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getNumBindingDied()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ",backoff="

    .line 528
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getNextBackoffMs()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 530
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 532
    :cond_af
    new-instance v1, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v1}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 533
    monitor-exit v0

    return-void

    :catchall_b9
    move-exception p0

    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_4 .. :try_end_bb} :catchall_b9

    throw p0
.end method

.method public final findConnectionLock(ILcom/android/server/appbinding/finders/AppServiceFinder;)Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
    .registers 6

    const/4 v0, 0x0

    .line 348
    :goto_1
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 349
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    .line 350
    invoke-virtual {v1}, Lcom/android/server/am/PersistentConnection;->getUserId()I

    move-result v2

    if-ne v2, p1, :cond_1e

    invoke-virtual {v1}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object v2

    if-ne v2, p2, :cond_1e

    return-object v1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findFinderLocked(ILjava/lang/String;)Lcom/android/server/appbinding/finders/AppServiceFinder;
    .registers 6

    const/4 v0, 0x0

    .line 336
    :goto_1
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 337
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appbinding/finders/AppServiceFinder;

    .line 338
    invoke-virtual {v1, p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getTargetPackage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final forAllAppsLocked(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/appbinding/finders/AppServiceFinder;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 158
    :goto_1
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 159
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appbinding/finders/AppServiceFinder;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public getConstantsForTest()Lcom/android/server/appbinding/AppBindingConstants;
    .registers 1

    .line 537
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    return-object p0
.end method

.method public final handlePackageAddedReplacing(Ljava/lang/String;I)V
    .registers 5

    .line 361
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/appbinding/AppBindingService;->findFinderLocked(ILjava/lang/String;)Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object p1

    if-eqz p1, :cond_15

    const-string/jumbo v1, "package update"

    .line 364
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    const-string/jumbo v1, "package update"

    .line 365
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 367
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final onAppChanged(Lcom/android/server/appbinding/finders/AppServiceFinder;I)V
    .registers 6

    .line 327
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 331
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-eq p1, v0, :cond_d

    const/16 v0, 0x258

    if-eq p1, v0, :cond_9

    goto :goto_10

    .line 172
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/appbinding/AppBindingService;->onPhaseThirdPartyAppsCanStart()V

    goto :goto_10

    .line 169
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/appbinding/AppBindingService;->onPhaseActivityManagerReady()V

    :goto_10
    return-void
.end method

.method public final onPhaseActivityManagerReady()V
    .registers 13

    .line 183
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 184
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 185
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 186
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mPackageUserMonitor:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 191
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 192
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v6, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/appbinding/AppBindingService;->mPackageUserMonitor:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v11, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 196
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_binding_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/server/appbinding/AppBindingService;->refreshConstants()V

    return-void
.end method

.method public final onPhaseThirdPartyAppsCanStart()V
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    new-instance v1, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 273
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final onStartUser(I)V
    .registers 5

    .line 281
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    const/4 v1, 0x0

    const-string/jumbo v2, "user start"

    .line 283
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 284
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final onStopUser(I)V
    .registers 5

    .line 302
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    const-string/jumbo v2, "user stop"

    .line 303
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 305
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 306
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final onUnlockUser(I)V
    .registers 5

    .line 292
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    const-string/jumbo v2, "user unlock"

    .line 293
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 294
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final onUserRemoved(I)V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    new-instance v1, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 316
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 317
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final rebindAllLocked(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 371
    :goto_1
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 372
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_1f

    .line 375
    :cond_12
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    const/4 v2, 0x0

    .line 377
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_22
    return-void
.end method

.method public final refreshConstants()V
    .registers 6

    .line 210
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mInjector:Lcom/android/server/appbinding/AppBindingService$Injector;

    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_binding_constants"

    .line 210
    invoke-virtual {v0, v1, v2}, Lcom/android/server/appbinding/AppBindingService$Injector;->getGlobalSettingString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_11
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    iget-object v2, v2, Lcom/android/server/appbinding/AppBindingConstants;->sourceSettings:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 215
    monitor-exit v1

    return-void

    :cond_1d
    const-string v2, "AppBindingService"

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating constants with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {v0}, Lcom/android/server/appbinding/AppBindingConstants;->initializeFromString(Ljava/lang/String;)Lcom/android/server/appbinding/AppBindingConstants;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    const-string/jumbo v0, "settings update"

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/server/appbinding/AppBindingService;->rebindAllLocked(Ljava/lang/String;)V

    .line 221
    monitor-exit v1

    return-void

    :catchall_41
    move-exception p0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_11 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public final unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V
    .registers 6

    .line 414
    iget-object p3, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_8
    if-ltz p3, :cond_2c

    .line 415
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    .line 416
    invoke-virtual {v0}, Lcom/android/server/am/PersistentConnection;->getUserId()I

    move-result v1

    if-ne v1, p1, :cond_29

    if-eqz p2, :cond_21

    .line 417
    invoke-virtual {v0}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object v1

    if-eq v1, p2, :cond_21

    goto :goto_29

    .line 425
    :cond_21
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 426
    invoke-virtual {v0}, Lcom/android/server/am/PersistentConnection;->unbind()V

    :cond_29
    :goto_29
    add-int/lit8 p3, p3, -0x1

    goto :goto_8

    :cond_2c
    return-void
.end method
