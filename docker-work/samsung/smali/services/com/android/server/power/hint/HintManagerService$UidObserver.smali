.class final Lcom/android/server/power/hint/HintManagerService$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "HintManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UidObserver"
.end annotation


# instance fields
.field public final mProcStatesCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public static synthetic $r8$lambda$4l3HyPlQpHUWpVX52ue6iriXNb8(Lcom/android/server/power/hint/HintManagerService$UidObserver;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/hint/HintManagerService$UidObserver;->lambda$onUidGone$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jdI4m7Gjk68By1ZihlCe9VtStvE(Lcom/android/server/power/hint/HintManagerService$UidObserver;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService$UidObserver;->lambda$onUidStateChanged$1(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 197
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    return-void
.end method

.method private synthetic lambda$onUidGone$0(I)V
    .registers 8

    .line 209
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 210
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_1b

    .line 212
    monitor-exit v0

    return-void

    .line 214
    :cond_1b
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_21
    if-ltz v2, :cond_40

    .line 216
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 217
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2f
    if-ltz v4, :cond_3d

    .line 218
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    invoke-virtual {v5}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->close()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2f

    :cond_3d
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 221
    :cond_40
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 222
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_47

    throw p0
.end method

.method private synthetic lambda$onUidStateChanged$1(II)V
    .registers 5

    .line 241
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 242
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_24

    .line 245
    monitor-exit v0

    return-void

    .line 247
    :cond_24
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 248
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 249
    invoke-static {p2}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->-$$Nest$monProcStateChanged(Lcom/android/server/power/hint/HintManagerService$AppHintSession;)V

    goto :goto_3c

    .line 252
    :cond_4c
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_4e

    throw p0
.end method


# virtual methods
.method public isUidForeground(I)Z
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 201
    :try_start_7
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt p0, v1, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    .line 203
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public onUidActive(I)V
    .registers 2

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4

    .line 208
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/power/hint/HintManagerService$UidObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/hint/HintManagerService$UidObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/hint/HintManagerService$UidObserver;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3

    return-void
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6

    .line 240
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance p4, Lcom/android/server/power/hint/HintManagerService$UidObserver$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService$UidObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/hint/HintManagerService$UidObserver;II)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
