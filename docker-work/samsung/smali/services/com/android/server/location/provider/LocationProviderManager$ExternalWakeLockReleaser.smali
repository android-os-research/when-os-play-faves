.class public Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;
.super Landroid/os/IRemoteCallback$Stub;
.source "LocationProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalWakeLockReleaser"
.end annotation


# instance fields
.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$9vCHYGQWZWxZ-hJoohHKT4xlpVU(Ljava/lang/RuntimeException;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->lambda$sendResult$0(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public constructor <init>(Landroid/location/util/identity/CallerIdentity;Landroid/os/PowerManager$WakeLock;)V
    .registers 3

    .line 3126
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 3127
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 3128
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/PowerManager$WakeLock;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public static synthetic lambda$sendResult$0(Ljava/lang/RuntimeException;)V
    .registers 2

    .line 3146
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 7

    .line 3133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3135
    :try_start_4
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_f
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 3151
    :goto_9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_32

    :catchall_d
    move-exception p0

    goto :goto_40

    :catch_f
    move-exception p1

    .line 3139
    :try_start_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/RuntimeException;

    if-ne v2, v3, :cond_33

    const-string v2, "LocationManagerService"

    .line 3140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wakelock over-released by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :goto_32
    return-void

    .line 3145
    :cond_33
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3148
    throw p1
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_d

    .line 3151
    :goto_40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3152
    throw p0
.end method
