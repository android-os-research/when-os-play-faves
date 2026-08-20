.class public Lcom/android/server/enterprise/plm/ProcessLifecycleManager;
.super Ljava/lang/Object;
.source "ProcessLifecycleManager.java"


# static fields
.field public static volatile sInstance:Lcom/android/server/enterprise/plm/ProcessLifecycleManager;


# instance fields
.field public final mStateTracker:Lcom/android/server/enterprise/plm/ProcessStateTracker;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProcessLifecycleManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 33
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v2, Lcom/android/server/enterprise/plm/ProcessAdapter;

    new-instance v3, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    new-instance v4, Lcom/android/server/enterprise/plm/context/AuthTouchContext;

    invoke-direct {v4, p1}, Lcom/android/server/enterprise/plm/context/AuthTouchContext;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, p1, v4}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/plm/context/ProcessContext;)V

    invoke-direct {v2, v0, p1, v3}, Lcom/android/server/enterprise/plm/ProcessAdapter;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v2, Lcom/android/server/enterprise/plm/ProcessAdapter;

    new-instance v3, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    new-instance v4, Lcom/android/server/enterprise/plm/context/CmfaContext;

    invoke-direct {v4, p1}, Lcom/android/server/enterprise/plm/context/CmfaContext;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, p1, v4}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/plm/context/ProcessContext;)V

    invoke-direct {v2, v0, p1, v3}, Lcom/android/server/enterprise/plm/ProcessAdapter;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v2, Lcom/android/server/enterprise/plm/ProcessAdapter;

    new-instance v3, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    new-instance v4, Lcom/android/server/enterprise/plm/context/PeripheralContext;

    invoke-direct {v4, p1}, Lcom/android/server/enterprise/plm/context/PeripheralContext;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, p1, v4}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/plm/context/ProcessContext;)V

    invoke-direct {v2, v0, p1, v3}, Lcom/android/server/enterprise/plm/ProcessAdapter;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v2, Lcom/android/server/enterprise/plm/ProcessStateTracker;

    invoke-direct {v2, v0, p1, v1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->mStateTracker:Lcom/android/server/enterprise/plm/ProcessStateTracker;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/plm/ProcessLifecycleManager;
    .registers 3

    .line 20
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->sInstance:Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    if-nez v0, :cond_17

    .line 21
    const-class v0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    monitor-enter v0

    .line 22
    :try_start_7
    sget-object v1, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->sInstance:Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    if-nez v1, :cond_12

    .line 23
    new-instance v1, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->sInstance:Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    .line 25
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 27
    :cond_17
    :goto_17
    sget-object p0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->sInstance:Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    return-object p0
.end method


# virtual methods
.method public start(Lcom/android/server/enterprise/plm/StartReason;)V
    .registers 2

    .line 46
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->mStateTracker:Lcom/android/server/enterprise/plm/ProcessStateTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->start(Lcom/android/server/enterprise/plm/StartReason;)V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->mStateTracker:Lcom/android/server/enterprise/plm/ProcessStateTracker;

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->stop()V

    return-void
.end method
