.class public final Lcom/android/server/pm/InstantAppResolverConnection;
.super Ljava/lang/Object;
.source "InstantAppResolverConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;,
        Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;,
        Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;,
        Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;
    }
.end annotation


# static fields
.field public static final BIND_SERVICE_TIMEOUT_MS:J

.field public static final CALL_SERVICE_TIMEOUT_MS:J

.field public static final DEBUG_INSTANT:Z

.field public static final STATE_BINDING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PENDING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public mBindState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

.field public final mIntent:Landroid/content/Intent;

.field public final mLock:Ljava/lang/Object;

.field public mRemoteInstance:Landroid/app/IInstantAppResolver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public static synthetic $r8$lambda$JBm5_EVTrfafQJpmYxi5cuBdFsA(Lcom/android/server/pm/InstantAppResolverConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->lambda$optimisticBind$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBindState(Lcom/android/server/pm/InstantAppResolverConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBindState(Lcom/android/server/pm/InstantAppResolverConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRemoteInstance(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/app/IInstantAppResolver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBinderDiedLocked(Lcom/android/server/pm/InstantAppResolverConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->handleBinderDiedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetCALL_SERVICE_TIMEOUT_MS()J
    .registers 2

    sget-wide v0, Lcom/android/server/pm/InstantAppResolverConnection;->CALL_SERVICE_TIMEOUT_MS:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG_INSTANT()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 59
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_7

    const-wide/16 v1, 0x1f4

    goto :goto_9

    :cond_7
    const-wide/16 v1, 0x12c

    :goto_9
    sput-wide v1, Lcom/android/server/pm/InstantAppResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    if-eqz v0, :cond_10

    const-wide/16 v0, 0xc8

    goto :goto_12

    :cond_10
    const-wide/16 v0, 0x64

    .line 61
    :goto_12
    sput-wide v0, Lcom/android/server/pm/InstantAppResolverConnection;->CALL_SERVICE_TIMEOUT_MS:J

    .line 62
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    invoke-direct {v0}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    .line 67
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection-IA;)V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 84
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    .line 85
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    .line 86
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBgHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$optimisticBind$0()V
    .registers 3

    const-string v0, "PackageManager"

    :try_start_2
    const-string v1, "Optimistic Bind"

    .line 255
    invoke-virtual {p0, v1}, Lcom/android/server/pm/InstantAppResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object p0

    if-eqz p0, :cond_1a

    sget-boolean p0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz p0, :cond_1a

    const-string p0, "Optimistic bind succeeded."

    .line 256
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_2 .. :try_end_13} :catch_14
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_13} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception p0

    const-string v1, "Optimistic bind failed."

    .line 259
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v1, :cond_9

    .line 172
    monitor-exit v0

    return-object v1

    .line 175
    :cond_9
    iget v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3a

    .line 177
    sget-boolean v1, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_2f

    const-string v1, "PackageManager"

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Previous bind timed out; waiting for connection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_12b

    .line 181
    :cond_2f
    :try_start_2f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    :try_end_34
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2f .. :try_end_34} :catch_38
    .catchall {:try_start_2f .. :try_end_34} :catchall_12b

    if-eqz v1, :cond_3a

    .line 183
    :try_start_36
    monitor-exit v0

    return-object v1

    :catch_38
    move v1, v4

    goto :goto_3b

    :cond_3a
    move v1, v3

    .line 191
    :goto_3b
    iget v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    if-ne v5, v4, :cond_6d

    .line 194
    sget-boolean v1, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_5e

    const-string v1, "PackageManager"

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] Another thread is binding; waiting for connection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_5e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz p0, :cond_67

    .line 200
    monitor-exit v0

    return-object p0

    .line 202
    :cond_67
    new-instance p0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    invoke-direct {p0, v4}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p0

    .line 204
    :cond_6d
    iput v4, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 205
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_36 .. :try_end_70} :catchall_12b

    const/4 v0, 0x0

    if-eqz v1, :cond_99

    .line 212
    :try_start_73
    sget-boolean v1, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_92

    const-string v1, "PackageManager"

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Previous connection never established; rebinding"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_92
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 217
    :cond_99
    sget-boolean v1, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_b8

    const-string v1, "PackageManager"

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Binding to instant app resolver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_b8
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const v7, 0x4000001

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 222
    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1
    :try_end_c7
    .catchall {:try_start_73 .. :try_end_c7} :catchall_113

    if-eqz v1, :cond_eb

    .line 224
    :try_start_c9
    iget-object v4, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_111

    .line 225
    :try_start_cc
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    .line 227
    monitor-exit v4
    :try_end_d2
    .catchall {:try_start_cc .. :try_end_d2} :catchall_e8

    .line 234
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    if-eqz v1, :cond_dc

    if-nez v0, :cond_dc

    .line 236
    :try_start_d9
    iput v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    goto :goto_de

    .line 238
    :cond_dc
    iput v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 240
    :goto_de
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 241
    monitor-exit p1

    return-object v0

    :catchall_e5
    move-exception p0

    monitor-exit p1
    :try_end_e7
    .catchall {:try_start_d9 .. :try_end_e7} :catchall_e5

    throw p0

    :catchall_e8
    move-exception p1

    .line 228
    :try_start_e9
    monitor-exit v4
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    :try_start_ea
    throw p1

    :cond_eb
    const-string v5, "PackageManager"

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Failed to bind to: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    invoke-direct {p1, v4}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1
    :try_end_111
    .catchall {:try_start_ea .. :try_end_111} :catchall_111

    :catchall_111
    move-exception p1

    goto :goto_115

    :catchall_113
    move-exception p1

    move v1, v3

    .line 234
    :goto_115
    iget-object v4, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    if-eqz v1, :cond_11f

    if-nez v0, :cond_11f

    .line 236
    :try_start_11c
    iput v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    goto :goto_121

    .line 238
    :cond_11f
    iput v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 240
    :goto_121
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 241
    monitor-exit v4
    :try_end_127
    .catchall {:try_start_11c .. :try_end_127} :catchall_128

    .line 242
    throw p1

    :catchall_128
    move-exception p0

    .line 241
    :try_start_129
    monitor-exit v4
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_128

    throw p0

    :catchall_12b
    move-exception p0

    .line 205
    :try_start_12c
    monitor-exit v0
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_12b

    throw p0
.end method

.method public binderDied()V
    .registers 3

    .line 266
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_b

    const-string v0, "PackageManager"

    const-string v1, "Binder to instant app resolver died"

    .line 267
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->handleBinderDiedLocked()V

    .line 271
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_16

    .line 272
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->optimisticBind()V

    return-void

    :catchall_16
    move-exception p0

    .line 271
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getInstantAppIntentFilterList(Landroid/content/pm/InstantAppRequestInfo;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Landroid/os/Handler;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
        }
    .end annotation

    .line 119
    new-instance v6, Lcom/android/server/pm/InstantAppResolverConnection$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/InstantAppResolverConnection$1;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/os/Handler;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;J)V

    .line 129
    :try_start_a
    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/pm/InstantAppResolverConnection;->getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object p0

    .line 130
    invoke-interface {p0, p1, v6}, Landroid/app/IInstantAppResolver;->getInstantAppIntentFilterList(Landroid/content/pm/InstantAppRequestInfo;Landroid/os/IRemoteCallback;)V
    :try_end_15
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_15} :catch_1d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_15} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_15

    :catch_15
    return-void

    .line 134
    :catch_16
    new-instance p0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p0

    .line 132
    :catch_1d
    new-instance p0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p0
.end method

.method public getInstantAppResolveInfoList(Landroid/content/pm/InstantAppRequestInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/InstantAppRequestInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->throwIfCalledOnMainThread()V

    .line 95
    :try_start_3
    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstantAppResolverConnection;->getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v0
    :try_end_b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_b} :catch_3c
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_b} :catch_35
    .catchall {:try_start_3 .. :try_end_b} :catchall_33

    .line 102
    :try_start_b
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    .line 103
    invoke-virtual {v1, v0, p1}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->getInstantAppResolveInfoList(Landroid/app/IInstantAppResolver;Landroid/content/pm/InstantAppRequestInfo;)Ljava/util/List;

    move-result-object p1
    :try_end_11
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_11} :catch_2c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_1e
    .catchall {:try_start_b .. :try_end_11} :catchall_33

    .line 109
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_14
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v0

    return-object p1

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p0

    .line 109
    :catch_1e
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 110
    :try_start_21
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit p1

    const/4 p0, 0x0

    return-object p0

    :catchall_29
    move-exception p0

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw p0

    .line 105
    :catch_2c
    :try_start_2c
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1

    :catchall_33
    move-exception p1

    goto :goto_43

    .line 99
    :catch_35
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1

    .line 97
    :catch_3c
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1
    :try_end_43
    .catchall {:try_start_2c .. :try_end_43} :catchall_33

    .line 109
    :goto_43
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_46
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4d

    .line 112
    throw p1

    :catchall_4d
    move-exception p0

    .line 111
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public final getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 144
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    throw p0
.end method

.method public final handleBinderDiedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v0, :cond_c

    .line 279
    :try_start_4
    invoke-interface {v0}, Landroid/app/IInstantAppResolver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_c
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    return-void
.end method

.method public optimisticBind()V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstantAppResolverConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/InstantAppResolverConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final throwIfCalledOnMainThread()V
    .registers 2

    .line 246
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-eq v0, p0, :cond_11

    return-void

    .line 247
    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot invoke on the main thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final waitForBindLocked(Ljava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 153
    :goto_4
    iget v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    if-eqz v2, :cond_3d

    .line 154
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v2, :cond_d

    goto :goto_3d

    .line 157
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 158
    sget-wide v4, Lcom/android/server/pm/InstantAppResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_21

    .line 162
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_4

    .line 160
    :cond_21
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Didn\'t bind to resolver in time!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    :goto_3d
    return-void
.end method
