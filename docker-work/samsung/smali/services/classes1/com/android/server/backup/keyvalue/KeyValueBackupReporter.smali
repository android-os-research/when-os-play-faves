.class public Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;
.super Ljava/lang/Object;
.source "KeyValueBackupReporter.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final MORE_DEBUG:Z = false
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "KeyValueBackupTask"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field public final mObserver:Landroid/app/backup/IBackupObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;)V
    .registers 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 75
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 76
    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-void
.end method

.method public static onNewThread(Ljava/lang/String;)V
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spinning thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyValueBackupTask"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getMonitor()Landroid/app/backup/IBackupManagerMonitor;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object p0
.end method

.method public getObserver()Landroid/app/backup/IBackupObserver;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    return-object p0
.end method

.method public final getPackageName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_5

    .line 371
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_8

    :cond_5
    const-string/jumbo p0, "no_package_yet"

    :goto_8
    return-object p0
.end method

.method public onAgentCancelled(Landroid/content/pm/PackageInfo;)V
    .registers 6

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getPackageName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel backing up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyValueBackupTask"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb07

    .line 351
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v1, 0x0

    const-string v2, "android.app.backup.extra.LOG_CANCEL_ALL"

    const/4 v3, 0x1

    .line 358
    invoke-static {v1, v2, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x15

    const/4 v3, 0x2

    .line 353
    invoke-static {v0, v2, p1, v3, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-void
.end method

.method public onAgentDataError(Ljava/lang/String;Ljava/io/IOException;)V
    .registers 4

    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to read/write agent data for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueBackupTask"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAgentDoQuotaExceededError(Ljava/lang/Exception;)V
    .registers 3

    .line 289
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to notify about quota exceeded: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueBackupTask"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAgentError(Ljava/lang/String;)V
    .registers 3

    .line 173
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v0, -0x3eb

    invoke-static {p0, p1, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    return-void
.end method

.method public onAgentFilesReady(Ljava/io/File;)V
    .registers 2

    return-void
.end method

.method public onAgentIllegalKey(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .registers 7

    .line 209
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    const-string v3, "bad key"

    aput-object v3, v1, v2

    const/16 v2, 0xb07

    .line 210
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 211
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v2, 0x0

    const-string v3, "android.app.backup.extra.LOG_ILLEGAL_KEY"

    .line 217
    invoke-static {v2, v3, p2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const/4 v2, 0x5

    const/4 v3, 0x3

    .line 212
    invoke-static {v1, v2, p1, v3, p2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 219
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 p1, -0x3eb

    invoke-static {p0, v0, p1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    return-void
.end method

.method public onAgentResultError(Landroid/content/pm/PackageInfo;)V
    .registers 4

    .line 363
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getPackageName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p1

    .line 364
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v0, -0x3eb

    invoke-static {p0, p1, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "result error"

    aput-object v1, p0, v0

    const/16 v0, 0xb07

    .line 366
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 367
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Agent "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error in onBackup()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueBackupTask"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAgentTimedOut(Landroid/content/pm/PackageInfo;)V
    .registers 6

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getPackageName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyValueBackupTask"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb07

    .line 335
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v1, 0x0

    const-string v2, "android.app.backup.extra.LOG_CANCEL_ALL"

    const/4 v3, 0x0

    .line 344
    invoke-static {v1, v2, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x15

    const/4 v3, 0x2

    .line 339
    invoke-static {v0, v2, p1, v3, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-void
.end method

.method public onAgentUnknown(Ljava/lang/String;)V
    .registers 4

    const-string v0, "KeyValueBackupTask"

    const-string v1, "Package does not exist, skipping"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v0, -0x7d2

    invoke-static {p0, p1, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    return-void
.end method

.method public onBackupFinished(I)V
    .registers 2

    .line 414
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {p0, p1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    return-void
.end method

.method public onBindAgentError(Ljava/lang/String;Ljava/lang/SecurityException;)V
    .registers 5

    const-string v0, "KeyValueBackupTask"

    const-string v1, "Error in bind/backup"

    .line 164
    invoke-static {v0, v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 p2, -0x3eb

    invoke-static {p0, p1, p2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    return-void
.end method

.method public onCallAgentDoBackupError(Ljava/lang/String;ZLjava/lang/Exception;)V
    .registers 7

    const-string v0, ": "

    const-string v1, "KeyValueBackupTask"

    if-eqz p2, :cond_28

    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error invoking agent on "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 p2, -0x3eb

    invoke-static {p0, p1, p2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_42

    .line 199
    :cond_28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error before invoking agent on "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    const/16 p0, 0xb07

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x1

    .line 201
    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p1

    invoke-static {p0, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onCloseFileDescriptorError(Ljava/lang/String;)V
    .registers 3

    .line 323
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error closing "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " file-descriptor"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueBackupTask"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDigestError(Ljava/security/NoSuchAlgorithmException;)V
    .registers 2

    const-string p0, "KeyValueBackupTask"

    const-string p1, "Unable to use SHA-1!"

    .line 233
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEmptyData(Landroid/content/pm/PackageInfo;)V
    .registers 6

    .line 257
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v1, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 258
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-void
.end method

.method public onEmptyQueueAtStart()V
    .registers 2

    const-string p0, "KeyValueBackupTask"

    const-string v0, "Backup begun with an empty queue, nothing to do"

    .line 96
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onExtractAgentData(Ljava/lang/String;)V
    .registers 3

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invoking agent on "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueBackupTask"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onExtractPmAgentDataError(Ljava/lang/Exception;)V
    .registers 3

    const-string p0, "KeyValueBackupTask"

    const-string v0, "Error during PM metadata backup"

    .line 131
    invoke-static {p0, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onFailAgentError(Ljava/lang/String;)V
    .registers 3

    .line 205
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error conveying failure to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueBackupTask"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInitializeTransport(Ljava/lang/String;)V
    .registers 2

    const-string p0, "KeyValueBackupTask"

    const-string p1, "Initializing transport and resetting backup state"

    .line 110
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInitializeTransportError(Ljava/lang/Exception;)V
    .registers 3

    const-string p0, "KeyValueBackupTask"

    const-string v0, "Error during initialization"

    .line 123
    invoke-static {p0, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onJournalDeleteFailed(Lcom/android/server/backup/DataChangedJournal;)V
    .registers 3

    .line 391
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to remove backup journal file "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueBackupTask"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPackageBackupComplete(Ljava/lang/String;J)V
    .registers 6

    .line 267
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 269
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const/16 p2, 0xb08

    invoke-static {p2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 270
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageBackupNonIncrementalAndNonIncrementalRequired(Ljava/lang/String;)V
    .registers 4

    const-string v0, "KeyValueBackupTask"

    const-string v1, "Transport requested non-incremental but already the case"

    .line 303
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v0, -0x3e8

    invoke-static {p0, p1, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 p0, 0xb06

    .line 306
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public onPackageBackupNonIncrementalRequired(Landroid/content/pm/PackageInfo;)V
    .registers 5

    const-string v0, "KeyValueBackupTask"

    const-string v1, "Transport lost data, retrying package"

    .line 293
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v0, 0x33

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    return-void
.end method

.method public onPackageBackupQuotaExceeded(Ljava/lang/String;)V
    .registers 3

    .line 283
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v0, -0x3ed

    invoke-static {p0, p1, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 p0, 0xb0d

    .line 285
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public onPackageBackupRejected(Ljava/lang/String;)V
    .registers 3

    .line 274
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v0, -0x3ea

    invoke-static {p0, p1, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string p0, "Transport rejected"

    .line 276
    invoke-static {p1, p0}, Lcom/android/server/EventLogTags;->writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPackageBackupTransportError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transport error backing up "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 p2, -0x3e8

    invoke-static {p0, p1, p2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 p0, 0xb06

    .line 319
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public onPackageBackupTransportFailure(Ljava/lang/String;)V
    .registers 3

    .line 310
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v0, -0x3e8

    invoke-static {p0, p1, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 p0, 0xb06

    .line 312
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public onPackageEligibleForFullBackup(Ljava/lang/String;)V
    .registers 4

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " performs full-backup rather than key-value, skipping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v0, -0x7d1

    invoke-static {p0, p1, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageNotEligibleForBackup(Ljava/lang/String;)V
    .registers 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " no longer supports backup, skipping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v0, -0x7d1

    invoke-static {p0, p1, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageStopped(Ljava/lang/String;)V
    .registers 3

    .line 153
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v0, -0x7d1

    invoke-static {p0, p1, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    return-void
.end method

.method public onPendingInitializeTransportError(Ljava/lang/Exception;)V
    .registers 3

    .line 406
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to query transport name for pending init: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueBackupTask"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onQueueReady(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Beginning backup of "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " targets"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueBackupTask"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemoteCallReturned(Lcom/android/server/backup/remote/RemoteResult;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onRestoreconFailed(Ljava/io/File;)V
    .registers 3

    .line 190
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELinux restorecon failed on "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueBackupTask"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRevertTask()V
    .registers 1

    return-void
.end method

.method public onSetCurrentTokenError(Ljava/lang/Exception;)V
    .registers 3

    .line 395
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transport threw reporting restore set: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueBackupTask"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSkipBackup()V
    .registers 2

    const-string p0, "KeyValueBackupTask"

    const-string v0, "Skipping backup since one is already in progress"

    .line 91
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSkipPm()V
    .registers 2

    const-string p0, "KeyValueBackupTask"

    const-string v0, "Skipping backup of PM metadata"

    .line 127
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartFullBackup(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 418
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Starting full backups for: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueBackupTask"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartPackageBackup(Ljava/lang/String;)V
    .registers 3

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Starting key-value backup of "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueBackupTask"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTaskFinished()V
    .registers 2

    const-string p0, "KeyValueBackupTask"

    const-string v0, "K/V backup pass finished"

    .line 422
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTransportInitialized(I)V
    .registers 2

    if-nez p1, :cond_b

    const/16 p0, 0xb0b

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 115
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_19

    :cond_b
    const/16 p0, 0xb06

    const-string p1, "(initialize)"

    .line 117
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const-string p0, "KeyValueBackupTask"

    const-string p1, "Transport error in initializeDevice()"

    .line 118
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void
.end method

.method public onTransportNotInitialized(Ljava/lang/String;)V
    .registers 2

    const/16 p0, 0xb0a

    .line 399
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public onTransportPerformBackup(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onTransportReady(Ljava/lang/String;)V
    .registers 2

    const/16 p0, 0xb05

    .line 106
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public onTransportRequestBackupTimeError(Ljava/lang/Exception;)V
    .registers 3

    .line 381
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to contact transport for recommended backoff: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueBackupTask"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWriteWidgetData(Z[B)V
    .registers 3

    return-void
.end method
