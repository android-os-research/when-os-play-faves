.class public Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnUnsyncableAccountCheck"
.end annotation


# static fields
.field public static final SERVICE_BOUND_TIME_MILLIS:J = 0x1388L


# instance fields
.field public final mOnReadyCallback:Lcom/android/server/content/SyncManager$OnReadyCallback;

.field public final mSyncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$monReady(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->onReady()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Lcom/android/server/content/SyncManager$OnReadyCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "Landroid/content/SyncAdapterType;",
            ">;",
            "Lcom/android/server/content/SyncManager$OnReadyCallback;",
            ")V"
        }
    .end annotation

    .line 2820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2821
    iput-object p1, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mSyncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2822
    iput-object p2, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mOnReadyCallback:Lcom/android/server/content/SyncManager$OnReadyCallback;

    return-void
.end method


# virtual methods
.method public final onReady()V
    .registers 3

    .line 2826
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2828
    :try_start_4
    iget-object p0, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mOnReadyCallback:Lcom/android/server/content/SyncManager$OnReadyCallback;

    invoke-interface {p0}, Lcom/android/server/content/SyncManager$OnReadyCallback;->onReady()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 2830
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2831
    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 2836
    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    move-result-object p1

    .line 2839
    :try_start_4
    new-instance p2, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;

    invoke-direct {p2, p0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;-><init>(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    invoke-interface {p1, p2}, Landroid/content/ISyncAdapter;->onUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_29

    :catch_d
    move-exception p1

    .line 2848
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not call onUnsyncableAccountDone "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mSyncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SyncManager"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2853
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->onReady()V

    :goto_29
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
