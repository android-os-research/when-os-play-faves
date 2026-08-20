.class public final Lcom/android/server/PermissionThread;
.super Lcom/android/server/ServiceThread;
.source "PermissionThread.java"


# static fields
.field public static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field public static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field public static sHandler:Landroid/os/Handler;

.field public static sHandlerExecutor:Landroid/os/HandlerExecutor;

.field public static sInstance:Lcom/android/server/PermissionThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation
.end field

.field public static final sLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/PermissionThread;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const-string v0, "android.perm"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 45
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static ensureThreadLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/android/server/PermissionThread;->sInstance:Lcom/android/server/PermissionThread;

    if-eqz v0, :cond_5

    return-void

    .line 54
    :cond_5
    new-instance v0, Lcom/android/server/PermissionThread;

    invoke-direct {v0}, Lcom/android/server/PermissionThread;-><init>()V

    sput-object v0, Lcom/android/server/PermissionThread;->sInstance:Lcom/android/server/PermissionThread;

    .line 55
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    sget-object v0, Lcom/android/server/PermissionThread;->sInstance:Lcom/android/server/PermissionThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    const-wide/16 v1, 0x64

    const-wide/16 v3, 0xc8

    .line 58
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 60
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/PermissionThread;->sInstance:Lcom/android/server/PermissionThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/PermissionThread;->sHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Landroid/os/HandlerExecutor;

    sget-object v1, Lcom/android/server/PermissionThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/PermissionThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    return-void
.end method

.method public static get()Lcom/android/server/PermissionThread;
    .registers 2

    .line 68
    sget-object v0, Lcom/android/server/PermissionThread;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_3
    invoke-static {}, Lcom/android/server/PermissionThread;->ensureThreadLocked()V

    .line 70
    sget-object v1, Lcom/android/server/PermissionThread;->sInstance:Lcom/android/server/PermissionThread;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 71
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 89
    sget-object v0, Lcom/android/server/PermissionThread;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    invoke-static {}, Lcom/android/server/PermissionThread;->ensureThreadLocked()V

    .line 91
    sget-object v1, Lcom/android/server/PermissionThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 92
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .line 78
    sget-object v0, Lcom/android/server/PermissionThread;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    invoke-static {}, Lcom/android/server/PermissionThread;->ensureThreadLocked()V

    .line 80
    sget-object v1, Lcom/android/server/PermissionThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 81
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
