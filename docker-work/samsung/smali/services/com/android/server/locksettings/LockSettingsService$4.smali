.class public Lcom/android/server/locksettings/LockSettingsService$4;
.super Landroid/os/IProgressListener$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;

.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;ILjava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 1994
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$4;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$4;->val$userId:I

    iput-object p3, p0, Lcom/android/server/locksettings/LockSettingsService$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p2, "LockSettingsService"

    const-string/jumbo v0, "unlockUser finished"

    .line 2007
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$4;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object p2

    monitor-enter p2

    .line 2010
    :try_start_f
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$4;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$4;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->deleteInvalidSyntheticPasswordHandleLocked(IJ)V

    .line 2011
    monitor-exit p2
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_2e

    .line 2012
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$4;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget p2, p0, Lcom/android/server/locksettings/LockSettingsService$4;->val$userId:I

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$msetSyntheticPasswordTryHandleLocked(Lcom/android/server/locksettings/LockSettingsService;ILjava/lang/String;)V

    .line 2014
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_2e
    move-exception p0

    .line 2011
    :try_start_2f
    monitor-exit p2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public onProgress(IILandroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2002
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "unlockUser progress "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockSettingsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStarted(ILandroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "LockSettingsService"

    const-string/jumbo p1, "unlockUser started"

    .line 1997
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
