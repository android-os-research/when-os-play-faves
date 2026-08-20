.class public final Lcom/android/server/power/hint/HintManagerService;
.super Lcom/android/server/SystemService;
.source "HintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/hint/HintManagerService$AppHintSession;,
        Lcom/android/server/power/hint/HintManagerService$BinderService;,
        Lcom/android/server/power/hint/HintManagerService$UidObserver;,
        Lcom/android/server/power/hint/HintManagerService$NativeWrapper;,
        Lcom/android/server/power/hint/HintManagerService$Injector;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "HintManagerService"


# instance fields
.field public final mActiveSessions:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/power/hint/HintManagerService$AppHintSession;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mHintSessionPreferredRate:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

.field public final mService:Landroid/os/IHintManager$Stub;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mUidObserver:Lcom/android/server/power/hint/HintManagerService$UidObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[I)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService;->checkTidValid(II[I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misHalSupported(Lcom/android/server/power/hint/HintManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->isHalSupported()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 75
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/hint/HintManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/hint/HintManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    .line 72
    new-instance p1, Lcom/android/server/power/hint/HintManagerService$BinderService;

    invoke-direct {p1, p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    .line 81
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 82
    invoke-virtual {p2}, Lcom/android/server/power/hint/HintManagerService$Injector;->createNativeWrapper()Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 83
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halInit()V

    .line 84
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halGetHintSessionPreferredRate()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    .line 85
    new-instance p1, Lcom/android/server/power/hint/HintManagerService$UidObserver;

    invoke-direct {p1, p0}, Lcom/android/server/power/hint/HintManagerService$UidObserver;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$UidObserver;

    .line 86
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 87
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-void
.end method


# virtual methods
.method public final checkTidValid(II[I)Z
    .registers 12

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_b

    .line 276
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->getIsolatedProcesses(I)Ljava/util/List;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-nez p0, :cond_13

    .line 279
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    :cond_13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    array-length p2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    const/4 v2, 0x1

    if-ge v1, p2, :cond_5d

    aget v3, p3, v1

    const/4 v4, 0x2

    const-string v5, "Uid:"

    const-string v6, "Tgid:"

    .line 284
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [J

    .line 289
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/status"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v4}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v5, v4, v0

    long-to-int v3, v5

    aget-wide v4, v4, v2

    long-to-int v2, v4

    .line 294
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    if-ne v3, p1, :cond_59

    goto :goto_5a

    :cond_59
    return v0

    :cond_5a
    :goto_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_5d
    return v2
.end method

.method public getBinderServiceInstance()Landroid/os/IHintManager$Stub;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 267
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    return-object p0
.end method

.method public final isHalSupported()Z
    .registers 5

    .line 98
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_7

    .line 109
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->systemReady()V

    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    const-string/jumbo v1, "performance_hint"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final systemReady()V
    .registers 5

    const-string v0, "HintManagerService"

    const-string v1, "Initializing HintManager service..."

    .line 114
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$UidObserver;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_13

    :catch_13
    return-void
.end method
