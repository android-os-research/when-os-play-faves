.class public final Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;
.super Ljava/lang/Object;
.source "RemoteSystemCaptionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;
    }
.end annotation


# static fields
.field public static final MSG_BIND:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.systemcaptions.SystemCaptionsManagerService"

.field public static final TAG:Ljava/lang/String; = "RemoteSystemCaptionsManagerService"


# instance fields
.field public mBinding:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mIntent:Landroid/content/Intent;

.field public final mLock:Ljava/lang/Object;

.field public mService:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

.field public final mUserId:I

.field public final mVerbose:Z


# direct methods
.method public static synthetic $r8$lambda$ntn0frXw0esl20fmRG5o3udFdrU(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->handleEnsureBound()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBinding(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDestroyed(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVerbose(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmBinding(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IZ)V
    .registers 7

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;-><init>(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection-IA;)V

    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    .line 66
    iput-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 68
    iput p3, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mUserId:I

    .line 69
    iput-boolean p4, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    .line 70
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.service.systemcaptions.SystemCaptionsManagerService"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mIntent:Landroid/content/Intent;

    .line 71
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;-><init>()V

    .line 86
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 85
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final ensureUnboundLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v0, :cond_1a

    .line 155
    sget-object v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "ensureUnbound(): unbinding"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1a
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public handleDestroy()V
    .registers 3

    .line 90
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v0, :cond_b

    .line 91
    sget-object v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "handleDestroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_b
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_e
    iget-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    if-eqz v1, :cond_1f

    .line 96
    iget-boolean p0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz p0, :cond_1d

    .line 97
    sget-object p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "handleDestroy(): Already destroyed"

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1d
    monitor-exit v0

    return-void

    :cond_1f
    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    .line 102
    invoke-virtual {p0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->ensureUnboundLocked()V

    .line 103
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final handleEnsureBound()V
    .registers 9

    .line 123
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    if-nez v1, :cond_5d

    iget-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    if-eqz v1, :cond_c

    goto :goto_5d

    .line 128
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v1, :cond_17

    .line 129
    sget-object v1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v2, "handleEnsureBound(): binding"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v1, 0x1

    .line 131
    iput-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    const v1, 0x4001001

    .line 135
    iget-object v2, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    iget-object v6, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mUserId:I

    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    const v5, 0x4001001

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 138
    sget-object v2, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not bind to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with flags "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 139
    iput-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    const/4 v1, 0x0

    .line 140
    iput-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    .line 142
    :cond_5b
    monitor-exit v0

    return-void

    .line 125
    :cond_5d
    :goto_5d
    monitor-exit v0

    return-void

    :catchall_5f
    move-exception p0

    .line 142
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public initialize()V
    .registers 3

    .line 75
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v0, :cond_b

    .line 76
    sget-object v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->scheduleBind()V

    return-void
.end method

.method public isDestroyed()Z
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 109
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final scheduleBind()V
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 114
    iget-boolean p0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz p0, :cond_15

    sget-object p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "scheduleBind(): already scheduled"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void

    .line 117
    :cond_16
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda1;-><init>()V

    .line 118
    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 119
    invoke-virtual {p0, v1}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object p0

    .line 117
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
