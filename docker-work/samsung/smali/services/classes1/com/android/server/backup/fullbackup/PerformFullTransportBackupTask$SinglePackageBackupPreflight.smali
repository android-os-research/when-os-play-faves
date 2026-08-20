.class public Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;
.super Ljava/lang/Object;
.source "PerformFullTransportBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;
.implements Lcom/android/server/backup/fullbackup/FullBackupPreflight;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SinglePackageBackupPreflight"
.end annotation


# instance fields
.field public final mCurrentOpToken:I

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mQuota:J

.field public final mResult:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public final mTransportFlags:I

.field public final synthetic this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;


# direct methods
.method public static synthetic $r8$lambda$Rgmk7YU1vz3J_t49StN24e7mhCc(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;Landroid/app/IBackupAgent;JLandroid/app/backup/IBackupCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->lambda$preflightFullBackup$0(Landroid/app/IBackupAgent;JLandroid/app/backup/IBackupCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Lcom/android/server/backup/transport/TransportConnection;JII)V
    .registers 9

    .line 732
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x3eb

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicLong;

    .line 722
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 733
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 734
    iput-wide p3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mQuota:J

    .line 735
    iput p5, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mCurrentOpToken:I

    .line 736
    iput p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mTransportFlags:I

    return-void
.end method

.method private synthetic lambda$preflightFullBackup$0(Landroid/app/IBackupAgent;JLandroid/app/backup/IBackupCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 778
    iget-wide v3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mQuota:J

    move-object v0, p1

    move-wide v1, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    return-void
.end method

.method public getExpectedSizeOrErrorCode()J
    .registers 5

    .line 816
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->-$$Nest$fgetmAgentTimeoutParameters(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v0

    .line 819
    :try_start_a
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 820
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_17} :catch_18

    return-wide v0

    :catch_18
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public handleCancel(Z)V
    .registers 4

    .line 809
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x3eb

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 810
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 811
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object p1, p1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mCurrentOpToken:I

    invoke-interface {p1, p0}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    return-void
.end method

.method public operationComplete(J)V
    .registers 4

    .line 799
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 800
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 801
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object p1, p1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mCurrentOpToken:I

    invoke-interface {p1, p0}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    return-void
.end method

.method public preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I
    .registers 18

    move-object v0, p0

    .line 742
    iget-object v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->-$$Nest$fgetmAgentTimeoutParameters(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v1

    .line 743
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v7

    .line 745
    :try_start_b
    iget-object v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->-$$Nest$fgetmUserBackupManagerService(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    iget v2, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mCurrentOpToken:I

    const/4 v6, 0x0

    move-wide v3, v7

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 750
    iget-wide v10, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mQuota:J

    iget v12, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mCurrentOpToken:I

    iget-object v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->-$$Nest$fgetmUserBackupManagerService(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 751
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v13

    iget v14, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mTransportFlags:I

    move-object/from16 v9, p2

    .line 750
    invoke-interface/range {v9 .. v14}, Landroid/app/IBackupAgent;->doMeasureFullBackup(JILandroid/app/backup/IBackupManager;I)V

    .line 758
    iget-object v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v7, v8, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 760
    iget-object v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_43

    long-to-int v0, v1

    return v0

    .line 769
    :cond_43
    iget-object v3, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v4, "PFTBT$SPBP.preflightFullBackup()"

    .line 770
    invoke-virtual {v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v3

    .line 771
    invoke-virtual {v3, v1, v2}, Lcom/android/server/backup/transport/BackupTransportClient;->checkFullBackupSize(J)I

    move-result v3

    const/16 v4, -0x3ed

    if-ne v3, v4, :cond_91

    .line 777
    new-instance v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight$$ExternalSyntheticLambda0;

    move-object/from16 v5, p2

    invoke-direct {v4, p0, v5, v1, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;Landroid/app/IBackupAgent;J)V

    iget-object v0, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->-$$Nest$fgetmAgentTimeoutParameters(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 779
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    move-result-wide v0

    .line 777
    invoke-static {v4, v0, v1}, Lcom/android/server/backup/remote/RemoteCall;->execute(Lcom/android/server/backup/remote/RemoteCallable;J)Lcom/android/server/backup/remote/RemoteResult;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_67} :catch_68

    goto :goto_91

    :catch_68
    move-exception v0

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception preflighting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PFTBT"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x3eb

    :cond_91
    :goto_91
    return v3
.end method
