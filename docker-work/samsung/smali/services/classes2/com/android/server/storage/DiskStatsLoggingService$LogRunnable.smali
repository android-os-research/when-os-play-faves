.class Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;
.super Ljava/lang/Object;
.source "DiskStatsLoggingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DiskStatsLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogRunnable"
.end annotation


# static fields
.field public static final TIMEOUT_MILLIS:J


# instance fields
.field public mCollector:Lcom/android/server/storage/AppCollector;

.field public mContext:Landroid/content/Context;

.field public mDownloadsDirectory:Ljava/io/File;

.field public mJobService:Landroid/app/job/JobService;

.field public mOutputFile:Ljava/io/File;

.field public mParams:Landroid/app/job/JobParameters;

.field public mSystemSize:J


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 125
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishJob(Z)V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mJobService:Landroid/app/job/JobService;

    if-eqz v0, :cond_9

    .line 199
    iget-object p0, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, p0, p1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_9
    return-void
.end method

.method public final logToFile(Lcom/android/server/storage/FileCollector$MeasurementResult;Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/util/List;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/storage/FileCollector$MeasurementResult;",
            "Lcom/android/server/storage/FileCollector$MeasurementResult;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageStats;",
            ">;J)V"
        }
    .end annotation

    .line 187
    new-instance v6, Lcom/android/server/storage/DiskStatsFileLogger;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/storage/DiskStatsFileLogger;-><init>(Lcom/android/server/storage/FileCollector$MeasurementResult;Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/util/List;J)V

    .line 190
    :try_start_a
    iget-object p1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mOutputFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 191
    iget-object p0, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mOutputFile:Ljava/io/File;

    invoke-virtual {v6, p0}, Lcom/android/server/storage/DiskStatsFileLogger;->dumpToFile(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception p0

    const-string p1, "DiskStatsLogService"

    const-string p2, "Exception while writing opportunistic disk file cache."

    .line 193
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void
.end method

.method public run()V
    .registers 10

    const-string v0, "DiskStatsLogService"

    const/4 v1, 0x1

    .line 163
    :try_start_3
    iget-object v2, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/storage/FileCollector;->getMeasurementResult(Landroid/content/Context;)Lcom/android/server/storage/FileCollector$MeasurementResult;

    move-result-object v4
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_9} :catch_2a

    .line 170
    iget-object v2, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mDownloadsDirectory:Ljava/io/File;

    .line 171
    invoke-static {v2}, Lcom/android/server/storage/FileCollector;->getMeasurementResult(Ljava/io/File;)Lcom/android/server/storage/FileCollector$MeasurementResult;

    move-result-object v5

    .line 174
    iget-object v2, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mCollector:Lcom/android/server/storage/AppCollector;

    sget-wide v6, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->TIMEOUT_MILLIS:J

    invoke-virtual {v2, v6, v7}, Lcom/android/server/storage/AppCollector;->getPackageStats(J)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_21

    const/4 v1, 0x0

    .line 177
    iget-wide v7, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mSystemSize:J

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->logToFile(Lcom/android/server/storage/FileCollector$MeasurementResult;Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/util/List;J)V

    goto :goto_26

    :cond_21
    const-string v2, "Timed out while fetching package stats."

    .line 179
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_26
    invoke-virtual {p0, v1}, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->finishJob(Z)V

    return-void

    :catch_2a
    move-exception v2

    const-string v3, "Error while measuring storage"

    .line 166
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    invoke-virtual {p0, v1}, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->finishJob(Z)V

    return-void
.end method

.method public setAppCollector(Lcom/android/server/storage/AppCollector;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mCollector:Lcom/android/server/storage/AppCollector;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setDownloadsDirectory(Ljava/io/File;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mDownloadsDirectory:Ljava/io/File;

    return-void
.end method

.method public setJobService(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .registers 3

    .line 156
    iput-object p1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mJobService:Landroid/app/job/JobService;

    .line 157
    iput-object p2, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mParams:Landroid/app/job/JobParameters;

    return-void
.end method

.method public setLogOutputFile(Ljava/io/File;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mOutputFile:Ljava/io/File;

    return-void
.end method

.method public setSystemSize(J)V
    .registers 3

    .line 148
    iput-wide p1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mSystemSize:J

    return-void
.end method
