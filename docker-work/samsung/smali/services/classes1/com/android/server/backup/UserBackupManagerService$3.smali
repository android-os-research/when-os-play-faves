.class public Lcom/android/server/backup/UserBackupManagerService$3;
.super Ljava/lang/Object;
.source "UserBackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/UserBackupManagerService;->endFullBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 2

    .line 2528
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$3;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2532
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$3;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmQueueLock(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2533
    :try_start_7
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$3;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v1}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmRunningFullBackupTask(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 2534
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$3;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v1}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmRunningFullBackupTask(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 2536
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_30

    if-eqz v1, :cond_2f

    const-string v0, "BackupManagerService"

    .line 2539
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$3;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmUserId(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result p0

    const-string v2, "Telling running backup to stop"

    .line 2541
    invoke-static {p0, v2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$smaddUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2539
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 2544
    invoke-virtual {v1, p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->handleCancel(Z)V

    :cond_2f
    return-void

    :catchall_30
    move-exception p0

    .line 2536
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method
