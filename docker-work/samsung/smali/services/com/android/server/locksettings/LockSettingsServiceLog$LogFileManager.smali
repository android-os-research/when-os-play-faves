.class public Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;
.super Ljava/lang/Object;
.source "LockSettingsServiceLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsServiceLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogFileManager"
.end annotation


# instance fields
.field public mErrorCode:Ljava/lang/String;

.field public mLastFileName:Ljava/lang/String;

.field public mLogType:I

.field public mUploadFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 493
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mLastFileName:Ljava/lang/String;

    .line 494
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    .line 498
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mErrorCode:Ljava/lang/String;

    .line 499
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mLogType:I

    return-void
.end method


# virtual methods
.method public deleteUploadFile()V
    .registers 8

    const-string v0, "delete uploaded Filename = "

    const-string v1, "LockSettingsLog"

    .line 529
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    if-nez v2, :cond_9

    return-void

    .line 533
    :cond_9
    :try_start_9
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x80000

    cmp-long v3, v3, v5

    if-lez v3, :cond_67

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", FileSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " byte"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_49} :catch_4a

    goto :goto_67

    :catch_4a
    move-exception v2

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    :goto_67
    const/4 v0, 0x0

    .line 541
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    return-void
.end method

.method public getErrorCode()Ljava/lang/String;
    .registers 1

    .line 503
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public getLastFileName()Ljava/lang/String;
    .registers 3

    .line 511
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mLastFileName:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/log/LockSettingsLog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mLastFileName:Ljava/lang/String;

    .line 514
    :cond_1e
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mLastFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getUploadFileName()Ljava/lang/String;
    .registers 1

    .line 518
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    return-object p0
.end method

.method public hasLogType(I)Z
    .registers 2

    .line 507
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mLogType:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public prepareUpload()V
    .registers 2

    .line 522
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mLastFileName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 523
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mLastFileName:Ljava/lang/String;

    :cond_9
    return-void
.end method
