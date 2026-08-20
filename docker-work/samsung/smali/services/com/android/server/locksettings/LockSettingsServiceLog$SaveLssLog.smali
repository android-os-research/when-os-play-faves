.class public Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;
.super Ljava/lang/Thread;
.source "LockSettingsServiceLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsServiceLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveLssLog"
.end annotation


# instance fields
.field public mContents:Ljava/lang/String;

.field public mIsSaveLssLogDone:Z

.field public mType:I

.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsServiceLog;ILjava/lang/String;)V
    .registers 5

    .line 423
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mIsSaveLssLogDone:Z

    .line 424
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mType:I

    .line 425
    iput-object p3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mContents:Ljava/lang/String;

    .line 426
    invoke-static {p1}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fgetmLogFile(Lcom/android/server/locksettings/LockSettingsServiceLog;)[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    move-result-object p0

    aget-object p0, p0, p2

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->hasLogType(I)Z

    move-result p0

    if-eqz p0, :cond_1e

    const-string p0, "LockSettingsLog"

    .line 427
    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 484
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->writeLockSettingsLog()V

    const/4 v0, 0x1

    .line 486
    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mIsSaveLssLogDone:Z

    return-void
.end method

.method public final setPermissions()V
    .registers 5

    .line 450
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fgetmFileWriteLock(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "LockSettingsLog"

    const-string/jumbo v2, "setPermissions - Start"

    .line 451
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fgetmLogFile(Lcom/android/server/locksettings/LockSettingsServiceLog;)[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    move-result-object v2

    iget p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mType:I

    aget-object p0, v2, p0

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getLastFileName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_49

    .line 456
    :try_start_22
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1a0

    const/16 v2, 0x3e8

    const/16 v3, 0x3ef

    .line 458
    invoke-static {p0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2f} :catch_30
    .catchall {:try_start_22 .. :try_end_2f} :catchall_49

    goto :goto_47

    :catch_30
    move-exception p0

    :try_start_31
    const-string v1, "LockSettingsLog"

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCanonicalPath error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public waitUntilSaveLssLogDone(JJ)I
    .registers 9

    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    .line 470
    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    long-to-int p1, p1

    :goto_8
    int-to-long v2, p1

    cmp-long p2, v2, p3

    if-gez p2, :cond_30

    .line 472
    iget-boolean p2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mIsSaveLssLogDone:Z

    if-eqz p2, :cond_12

    return p1

    .line 474
    :cond_12
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_18

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :catch_18
    move-exception p0

    .line 477
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "waitUntilSaveLssLogDone error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockSettingsLog"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const/4 p0, -0x1

    return p0
.end method

.method public final writeLockSettingsLog()V
    .registers 6

    .line 432
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fgetF_LOCK(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_14

    const-string p0, "LockSettingsLog"

    const-string v0, "Dump is in progress!! Cannot written log"

    .line 433
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 436
    :cond_14
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fgetmFileWriteLock(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 438
    :try_start_1b
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {v3}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fgetmLogFile(Lcom/android/server/locksettings/LockSettingsServiceLog;)[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    move-result-object v3

    iget v4, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mType:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getLastFileName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 439
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$mmakeLogTime(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mContents:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 441
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_56} :catch_59
    .catchall {:try_start_1b .. :try_end_56} :catchall_57

    goto :goto_71

    :catchall_57
    move-exception p0

    goto :goto_7c

    :catch_59
    move-exception v1

    :try_start_5a
    const-string v2, "LockSettingsLog"

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makefile error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_5a .. :try_end_72} :catchall_57

    .line 446
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fgetF_LOCK(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 445
    :goto_7c
    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_57

    throw p0
.end method
