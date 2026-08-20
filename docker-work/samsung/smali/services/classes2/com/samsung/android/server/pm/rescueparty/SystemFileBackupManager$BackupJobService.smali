.class public Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;
.super Landroid/app/job/JobService;
.source "SystemFileBackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupJobService"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$7Bi9w_dbr8kgQFxKPg1uMRp-kiA(Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;Landroid/app/job/JobParameters;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;->lambda$onStartJob$0(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStartJob$0(Landroid/app/job/JobParameters;)V
    .registers 4

    const-string v0, "SystemFileBackupManager"

    const-string v1, "Running BackupJobServiceThread"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->-$$Nest$mrequestBackupFiles(Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 119
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartJob: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemFileBackupManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;Landroid/app/job/JobParameters;)V

    const-string p0, "BackupJobServiceThread"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onStopJob:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemFileBackupManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
