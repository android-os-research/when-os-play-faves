.class public Lcom/android/server/chimera/SystemRepositoryDefault$1;
.super Landroid/app/IUidObserver$Stub;
.source "SystemRepositoryDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/SystemRepositoryDefault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/SystemRepositoryDefault;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepositoryDefault;)V
    .registers 2

    .line 417
    iput-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault$1;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault$1;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-static {v0}, Lcom/android/server/chimera/SystemRepositoryDefault;->-$$Nest$fgetmChimeraUidObservers(Lcom/android/server/chimera/SystemRepositoryDefault;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 422
    :try_start_7
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault$1;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-static {p0}, Lcom/android/server/chimera/SystemRepositoryDefault;->-$$Nest$fgetmChimeraUidObservers(Lcom/android/server/chimera/SystemRepositoryDefault;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/SystemRepository$ChimeraUidObserver;

    .line 423
    invoke-interface {v1, p1, p2}, Lcom/android/server/chimera/SystemRepository$ChimeraUidObserver;->onUidGone(IZ)V

    goto :goto_11

    .line 425
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public onUidIdle(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
