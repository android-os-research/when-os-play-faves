.class public Lcom/samsung/android/server/pm/PmLog;
.super Ljava/lang/Object;
.source "PmLog.java"


# static fields
.field public static final LOG_MAX_SIZE:I = 0x300000

.field public static final PACKAGE_LOG_FILE_NAME:Ljava/lang/String; = "pm_debug_info.txt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupDumpIfNeeded(Ljava/io/File;)V
    .registers 5

    if-eqz p0, :cond_2a

    .line 71
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x300000

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    .line 72
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".old"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_2a
    return-void
.end method

.method public static getDumpFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 65
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static logCriticalInfoAndLogcat(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x3

    .line 29
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-void
.end method

.method public static logDebugInfo(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "pm_debug_info.txt"

    .line 45
    invoke-static {v0, p0}, Lcom/samsung/android/server/pm/PmLog;->logToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logDebugInfoAndLogcat(Ljava/lang/String;)V
    .registers 2

    const-string v0, "PackageManager"

    .line 33
    invoke-static {p0, v0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_4

    const-string p1, "PackageManager"

    .line 40
    :cond_4
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static logFinishedScanningInfo(Ljava/lang/String;JIII)V
    .registers 9

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished scanning "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " apps. Time: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms, packageCount: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " , timePerPackage: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_27

    const-wide/16 p0, 0x0

    goto :goto_2a

    :cond_27
    int-to-long v1, p3

    .line 87
    div-long p0, p1, v1

    :goto_2a
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " , cached: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 84
    invoke-static {p5, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public static logRoleHoldersChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Role holders for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " changed. holders: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", UserId: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    return-void
.end method

.method public static logToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 49
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->getDumpFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 50
    :try_start_4
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_56

    .line 51
    :try_start_f
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1fc

    const/4 v2, -0x1

    .line 54
    invoke-static {p1, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 58
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->backupDumpIfNeeded(Ljava/io/File;)V
    :try_end_48
    .catchall {:try_start_f .. :try_end_48} :catchall_4c

    .line 59
    :try_start_48
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_56

    goto :goto_56

    :catchall_4c
    move-exception p0

    .line 50
    :try_start_4d
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception p1

    :try_start_52
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw p0
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_56

    :catch_56
    :goto_56
    return-void
.end method
