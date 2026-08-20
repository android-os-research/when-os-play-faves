.class public final Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;
.super Landroid/os/IDumpstateListener$Stub;
.source "BugreportManagerServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/BugreportManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DumpstateListener"
.end annotation


# instance fields
.field public mDone:Z

.field public final mDs:Landroid/os/IDumpstate;

.field public final mListener:Landroid/os/IDumpstateListener;

.field public final synthetic this$0:Lcom/android/server/os/BugreportManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;)V
    .registers 4

    .line 338
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-direct {p0}, Landroid/os/IDumpstateListener$Stub;-><init>()V

    const/4 p1, 0x0

    .line 336
    iput-boolean p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    .line 339
    iput-object p2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    .line 340
    iput-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDs:Landroid/os/IDumpstate;

    .line 342
    :try_start_c
    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception p0

    const-string p1, "BugreportManagerService"

    const-string p2, "Unable to register Death Recipient for IDumpstate"

    .line 344
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    const-wide/16 v0, 0x3e8

    .line 385
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_5

    .line 388
    :catch_5
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/os/BugreportManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 389
    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    if-nez v1, :cond_1d

    const-string v1, "BugreportManagerService"

    const-string v2, "IDumpstate likely crashed. Notifying listener"

    .line 391
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_29

    .line 393
    :try_start_17
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/os/IDumpstateListener;->onError(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_29

    .line 398
    :catch_1d
    :cond_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_29

    .line 399
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDs:Landroid/os/IDumpstate;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_29
    move-exception p0

    .line 398
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public onError(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/os/BugreportManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 356
    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    .line 357
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    .line 358
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onError(I)V

    return-void

    :catchall_11
    move-exception p0

    .line 357
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public onFinished()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/os/BugreportManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 364
    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    .line 365
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    .line 366
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {p0}, Landroid/os/IDumpstateListener;->onFinished()V

    return-void

    :catchall_11
    move-exception p0

    .line 365
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public onProgress(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onProgress(I)V

    return-void
.end method

.method public onScreenshotTaken(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onScreenshotTaken(Z)V

    return-void
.end method

.method public onUiIntensiveBugreportDumpsFinished()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {p0}, Landroid/os/IDumpstateListener;->onUiIntensiveBugreportDumpsFinished()V

    return-void
.end method
