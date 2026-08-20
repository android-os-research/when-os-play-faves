.class Lcom/android/commands/bmgr/Bmgr$BackupObserver;
.super Lcom/android/commands/bmgr/Bmgr$Observer;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/bmgr/Bmgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupObserver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr$Observer;-><init>(Lcom/android/commands/bmgr/Bmgr$Observer-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/bmgr/Bmgr$BackupObserver-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr$BackupObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public backupFinished(I)V
    .registers 5
    .param p1, "status"    # I

    .line 395
    invoke-super {p0, p1}, Lcom/android/commands/bmgr/Bmgr$Observer;->backupFinished(I)V

    .line 396
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup finished with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 397
    invoke-static {p1}, Lcom/android/commands/bmgr/Bmgr;->-$$Nest$smconvertBackupStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 398
    const/16 v0, -0x7d3

    if-ne p1, v0, :cond_2a

    .line 399
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Backups can be cancelled if a backup is already running, check backup dumpsys"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    :cond_2a
    return-void
.end method

.method public onResult(Ljava/lang/String;I)V
    .registers 6
    .param p1, "currentPackage"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 388
    invoke-super {p0, p1, p2}, Lcom/android/commands/bmgr/Bmgr$Observer;->onResult(Ljava/lang/String;I)V

    .line 389
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 390
    invoke-static {p2}, Lcom/android/commands/bmgr/Bmgr;->-$$Nest$smconvertBackupStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .registers 7
    .param p1, "currentPackage"    # Ljava/lang/String;
    .param p2, "backupProgress"    # Landroid/app/backup/BackupProgress;

    .line 380
    invoke-super {p0, p1, p2}, Lcom/android/commands/bmgr/Bmgr$Observer;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    .line 381
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Landroid/app/backup/BackupProgress;->bytesTransferred:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Landroid/app/backup/BackupProgress;->bytesExpected:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 384
    return-void
.end method
