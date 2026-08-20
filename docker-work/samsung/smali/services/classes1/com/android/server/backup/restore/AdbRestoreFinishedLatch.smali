.class public Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
.super Ljava/lang/Object;
.source "AdbRestoreFinishedLatch.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# static fields
.field public static final TAG:Ljava/lang/String; = "AdbRestoreFinishedLatch"


# instance fields
.field public backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public final mCurrentOpToken:I

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;I)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 49
    iput-object p2, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 50
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 51
    iput p3, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mCurrentOpToken:I

    .line 53
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p1

    const-string p2, "Timeout parameters cannot be null"

    .line 52
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-void
.end method


# virtual methods
.method public await()V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 60
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v0

    .line 62
    :try_start_6
    iget-object p0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_15

    :catch_e
    const-string p0, "AdbRestoreFinishedLatch"

    const-string v0, "Interrupted!"

    .line 64
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public execute()V
    .registers 1

    return-void
.end method

.method public handleCancel(Z)V
    .registers 3

    const-string p1, "AdbRestoreFinishedLatch"

    const-string v0, "adb onRestoreFinished() timed out"

    .line 85
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 88
    iget-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mCurrentOpToken:I

    invoke-interface {p1, p0}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    return-void
.end method

.method public operationComplete(J)V
    .registers 3

    .line 78
    iget-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 79
    iget-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mCurrentOpToken:I

    invoke-interface {p1, p0}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    return-void
.end method
