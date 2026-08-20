.class public Lcom/android/server/wm/FoldStarManagerService;
.super Lcom/samsung/android/core/IFoldStarManager$Stub;
.source "FoldStarManagerService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FoldStar"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/core/IFoldStarCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mLastBoundsCompatMode:I

.field public mLastBoundsCompatPackage:Ljava/lang/String;

.field public mRegisteredCallbackCount:I


# direct methods
.method public static synthetic $r8$lambda$FOsvvV1K2jWicZ5BcbpucOQWDyI(Lcom/android/server/wm/FixedAspectRatioController;ILjava/lang/String;)Ljava/lang/Float;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/FoldStarManagerService;->lambda$getFixedAspectRatioPackages$7(Lcom/android/server/wm/FixedAspectRatioController;ILjava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NnZlN8JjGZC6UST5vcroIdnioIQ(Lcom/android/server/wm/FixedAspectRatioController;Ljava/lang/String;)Ljava/lang/Float;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/FoldStarManagerService;->lambda$getFixedAspectRatioPackages$8(Lcom/android/server/wm/FixedAspectRatioController;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X6aqJaXfncm2nkBdBmxKhlEkwkM(Lcom/android/server/wm/FixedAspectRatioController;ILjava/lang/String;)Ljava/lang/Float;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/FoldStarManagerService;->lambda$getFixedAspectRatioPackages$6(Lcom/android/server/wm/FixedAspectRatioController;ILjava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZXGT4j3AO1qVTExvPHqOpLTZ900(Lcom/android/server/wm/FoldStarManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/FoldStarManagerService;->lambda$notifyBoundsCompatPackageAppeared$1(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bZrlBZgcTORxtDTVuOvIqFNEnuI(Lcom/android/server/wm/FixedAspectRatioController;ILjava/lang/String;)Ljava/lang/Float;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/FoldStarManagerService;->lambda$getFixedAspectRatioPackages$9(Lcom/android/server/wm/FixedAspectRatioController;ILjava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rHMiyYgLZZgqRlD4qGlTSJAay2Q(Lcom/android/server/wm/FoldStarManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/FoldStarManagerService;->lambda$notifyBoundsCompatPackageAppeared$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/core/IFoldStarManager$Stub;-><init>()V

    .line 53
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public static synthetic lambda$getDisplayCompatPackages$2(Lcom/android/server/wm/DisplayCompatController;ILjava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayCompatController;->getMergedChange(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getDisplayCompatPackages$3(Lcom/android/server/wm/DisplayCompatController;ILjava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayCompatController;->getUserChange(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getDisplayCompatPackages$4(Lcom/android/server/wm/DisplayCompatController;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayCompatController;->getSystemChange(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getDisplayCompatPackages$5(Lcom/android/server/wm/DisplayCompatController;ILjava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayCompatController;->getMergedChange(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getFixedAspectRatioPackages$6(Lcom/android/server/wm/FixedAspectRatioController;ILjava/lang/String;)Ljava/lang/Float;
    .registers 3

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/FixedAspectRatioController;->getMergedChange(ILjava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getFixedAspectRatioPackages$7(Lcom/android/server/wm/FixedAspectRatioController;ILjava/lang/String;)Ljava/lang/Float;
    .registers 3

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/FixedAspectRatioController;->getUserChange(ILjava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getFixedAspectRatioPackages$8(Lcom/android/server/wm/FixedAspectRatioController;Ljava/lang/String;)Ljava/lang/Float;
    .registers 2

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FixedAspectRatioController;->getSystemChange(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getFixedAspectRatioPackages$9(Lcom/android/server/wm/FixedAspectRatioController;ILjava/lang/String;)Ljava/lang/Float;
    .registers 3

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/FixedAspectRatioController;->getMergedChange(ILjava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$notifyBoundsCompatPackageAppeared$0()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/FoldStarManagerService;->handleBoundsCompatPackageAppeared(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$notifyBoundsCompatPackageAppeared$1(ILjava/lang/String;)V
    .registers 3

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/FoldStarManagerService;->handleBoundsCompatPackageAppeared(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    const-string v0, "[FoldStarManagerService]"

    .line 361
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRegisteredCallbackCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/FoldStarManagerService;->mRegisteredCallbackCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastBoundsCompatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/FoldStarManagerService;->mLastBoundsCompatMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mLastBoundsCompatPackage="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/FoldStarManagerService;->mLastBoundsCompatPackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final enforceFoldStarPermission(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayCompatPackages(IILjava/util/Map;)Ljava/util/Map;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFixedAspectRatioPackages(IILjava/util/Map;)Ljava/util/Map;
    .registers 8

    .line 259
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FIXED_ASPECT_RATIO_MODE:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    const-string v0, "getFixedAspectRatioPackages()"

    .line 262
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFixedAspectRatioController:Lcom/android/server/wm/FixedAspectRatioController;

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    if-eqz p2, :cond_63

    if-eq p2, v2, :cond_5a

    const/4 v3, 0x2

    if-eq p2, v3, :cond_51

    const/4 v2, 0x3

    if-ne p2, v2, :cond_3a

    if-eqz p3, :cond_31

    .line 284
    new-instance p2, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda3;

    invoke-direct {p2, v0, p1}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/FixedAspectRatioController;I)V

    .line 285
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    goto :goto_6b

    .line 282
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "requestedPackages is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is an unknown option."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 277
    :cond_51
    new-instance p2, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p2, v0}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/FixedAspectRatioController;)V

    .line 278
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/FoldStarManagerService;->getLauncherPackages(ILjava/util/List;)V

    goto :goto_6b

    .line 273
    :cond_5a
    new-instance p2, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p2, v0, p1}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/FixedAspectRatioController;I)V

    .line 274
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/FoldStarManagerService;->getLauncherPackages(ILjava/util/List;)V

    goto :goto_6b

    .line 269
    :cond_63
    new-instance p2, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0, p1}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/FixedAspectRatioController;I)V

    .line 270
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/FoldStarManagerService;->getLauncherPackages(ILjava/util/List;)V

    .line 292
    :goto_6b
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 293
    iget-object p0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_75
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 294
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_7c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_9b

    if-eqz v2, :cond_9b

    goto :goto_7c

    .line 299
    :cond_9b
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    .line 301
    :cond_a3
    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_75 .. :try_end_a4} :catchall_a8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    :catchall_a8
    move-exception p1

    :try_start_a9
    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final getLauncherPackages(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getLauncherApps()Landroid/content/pm/LauncherApps;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 76
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 75
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 77
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    .line 78
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 79
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 80
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2a
    return-void
.end method

.method public final handleBoundsCompatPackageAppeared(ILjava/lang/String;)V
    .registers 9

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_23

    .line 105
    iget-object v3, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/core/IFoldStarCallback;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2a

    .line 107
    :try_start_14
    invoke-interface {v3, p1, p2}, Lcom/samsung/android/core/IFoldStarCallback;->onBoundsCompatPackageAppeared(ILjava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_20

    :catchall_18
    move-exception v3

    :try_start_19
    const-string v4, "FoldStar"

    const-string v5, "Failed to onBoundsCompatPackageAppeared"

    .line 109
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 112
    :cond_23
    iget-object p0, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 113
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public initAppContinuityValueWhenReset(ZZ)V
    .registers 3

    return-void
.end method

.method public notifyBoundsCompatPackageAppeared(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 85
    iget v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mRegisteredCallbackCount:I

    if-gtz v0, :cond_5

    return-void

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/FoldStarManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDisplayCompatModeEnabled()Z

    move-result v0

    .line 92
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 93
    iget v1, p0, Lcom/android/server/wm/FoldStarManagerService;->mLastBoundsCompatMode:I

    if-ne v0, v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wm/FoldStarManagerService;->mLastBoundsCompatPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    return-void

    .line 96
    :cond_2e
    iput v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mLastBoundsCompatMode:I

    .line 97
    iput-object p1, p0, Lcom/android/server/wm/FoldStarManagerService;->mLastBoundsCompatPackage:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/FoldStarManagerService;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V
    .registers 4

    if-eqz p1, :cond_3b

    const-string/jumbo v0, "registerFoldStarCallback()"

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/server/wm/FoldStarManagerService;->enforceFoldStarPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3b

    .line 124
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_33

    .line 125
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 126
    iget-object p1, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    .line 127
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_30

    .line 128
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_33

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 129
    iput p1, p0, Lcom/android/server/wm/FoldStarManagerService;->mRegisteredCallbackCount:I

    .line 130
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_2a

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_33

    goto :goto_3b

    :catchall_2a
    move-exception p0

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_30} :catch_33

    :catchall_30
    move-exception p0

    .line 127
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_33} :catch_33

    :catch_33
    move-exception p0

    const-string p1, "FoldStar"

    const-string v0, "Failed to registerFoldStarCallback"

    .line 132
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3b
    :goto_3b
    return-void
.end method

.method public setAllAppContinuityMode(IZ)V
    .registers 3

    return-void
.end method

.method public setAppContinuityMode(Ljava/lang/String;IZ)V
    .registers 4

    return-void
.end method

.method public setDisplayCompatPackages(ILjava/util/Map;Z)V
    .registers 4

    return-void
.end method

.method public setFixedAspectRatioPackages(ILjava/util/Map;Z)V
    .registers 9

    .line 225
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FIXED_ASPECT_RATIO_MODE:Z

    if-eqz v0, :cond_68

    if-nez p2, :cond_7

    goto :goto_68

    :cond_7
    const-string/jumbo v0, "setFixedAspectRatioPackages()"

    .line 228
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 236
    :try_start_11
    iget-object v2, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_63

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 237
    iget-object v3, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFixedAspectRatioController:Lcom/android/server/wm/FixedAspectRatioController;

    .line 238
    invoke-virtual {v3, p1}, Lcom/android/server/wm/FixedAspectRatioController;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    if-eqz p3, :cond_28

    .line 240
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 242
    :cond_28
    invoke-virtual {v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 243
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_33
    :goto_33
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 244
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_33

    .line 245
    iget-object v3, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    check-cast p3, Ljava/lang/String;

    const-string/jumbo v4, "setFixedAspectRatioPackages"

    invoke-static {v3, p3, p1, v4}, Lcom/android/server/wm/PackagesChange;->removeTaskWithoutRemoveFromRecents(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_33

    .line 249
    :cond_4c
    iget-object p0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFixedAspectRatioController:Lcom/android/server/wm/FixedAspectRatioController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FixedAspectRatioController;->requestToSave(I)V

    .line 250
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_16 .. :try_end_56} :catchall_5d

    :try_start_56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_63

    .line 252
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_5d
    move-exception p0

    .line 250
    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p0

    .line 252
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    throw p0

    :cond_68
    :goto_68
    return-void
.end method

.method public setFrontScreenOnWhenAppContinuityMode(Z)V
    .registers 2

    return-void
.end method

.method public unregisterFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V
    .registers 4

    if-eqz p1, :cond_3b

    const-string/jumbo v0, "unregisterFoldStarCallback()"

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/server/wm/FoldStarManagerService;->enforceFoldStarPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3b

    .line 144
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_33

    .line 145
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 146
    iget-object p1, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    .line 147
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_30

    .line 148
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_33

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 149
    iput p1, p0, Lcom/android/server/wm/FoldStarManagerService;->mRegisteredCallbackCount:I

    .line 150
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_2a

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_33

    goto :goto_3b

    :catchall_2a
    move-exception p0

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_30} :catch_33

    :catchall_30
    move-exception p0

    .line 147
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_33} :catch_33

    :catch_33
    move-exception p0

    const-string p1, "FoldStar"

    const-string v0, "Failed to unregisterFoldStarCallback"

    .line 152
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3b
    :goto_3b
    return-void
.end method
