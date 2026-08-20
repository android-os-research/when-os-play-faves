.class public Lcom/android/server/locksettings/LockSettingsServiceLog;
.super Ljava/lang/Object;
.source "LockSettingsServiceLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;,
        Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.android.log.sp4xkeu9ef"

.field public static final BASE_DIR:Ljava/lang/String; = "/data/log/LockSettingsLog"

.field public static final DEBUG:Z = true

.field public static final LOG_DIR:Ljava/lang/String; = "/data/log/"

.field public static final LOG_TYPE_ALL:I = 0x7

.field public static final LOG_TYPE_DEBUG:I = 0x4

.field public static final LOG_TYPE_DUMP:I = 0x2

.field public static final LOG_TYPE_UPLOAD:I = 0x1

.field public static final MAX_DUMP_LINE:J = 0x7d0L

.field public static final MAX_LOG_SIZE:J = 0x80000L

.field public static final MAX_TYPE_COUNT:I = 0x5

.field public static final REPORT_ERROR_INTENT:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

.field public static final SECURITY_LOG_PWDAT_VER:Ljava/lang/String; = "lockscreen.pwdata.ver"

.field public static final SECURITY_LOG_TOKEN_VER:Ljava/lang/String; = "lockscreen.token.ver"

.field public static final SECURITY_LOG_VERSION:Ljava/lang/String;

.field public static final SERVICE_ID:Ljava/lang/String; = "sp4xkeu9ef"

.field public static final TAG:Ljava/lang/String; = "LockSettingsLog"

.field public static final TYPE_DEBUG:I = 0x4

.field public static final TYPE_ENROLL:I = 0x0

.field public static final TYPE_KEYERR:I = 0x2

.field public static final TYPE_RESTORE:I = 0x3

.field public static final TYPE_VERIFY:I = 0x1

.field public static final UPLOAD_MO:Ljava/lang/String; = "uploadMO"


# instance fields
.field public BUILD_ID:Ljava/lang/String;

.field public EVENT_ID:Ljava/lang/String;

.field public final F_LOCK:Ljava/util/concurrent/locks/Lock;

.field public LOG_FILE:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mFileWriteLock:Ljava/lang/Object;

.field public mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

.field public saveLssLog:Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;


# direct methods
.method public static bridge synthetic -$$Nest$fgetF_LOCK(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/util/concurrent/locks/Lock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFileWriteLock(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mFileWriteLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogFile(Lcom/android/server/locksettings/LockSettingsServiceLog;)[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputLOG_FILE(Lcom/android/server/locksettings/LockSettingsServiceLog;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmakeLogTime(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->makeLogTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msendToDiagmon(Lcom/android/server/locksettings/LockSettingsServiceLog;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsServiceLog;->sendToDiagmon(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDump(Lcom/android/server/locksettings/LockSettingsServiceLog;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->showDump()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mzipLogFile(Lcom/android/server/locksettings/LockSettingsServiceLog;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsServiceLog;->zipLogFile(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 61
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object v0, Lcom/android/server/locksettings/LockSettingsServiceLog;->SECURITY_LOG_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mFileWriteLock:Ljava/lang/Object;

    .line 55
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->BUILD_ID:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->EVENT_ID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->saveLssLog:Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;

    .line 59
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    .line 83
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    .line 86
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->init()V

    return-void
.end method

.method public static gethashStr([B)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "SHA-256"

    .line 133
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 135
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "gethashStr() failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LockSettingsLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isDevBuild()Z
    .registers 2

    .line 147
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method public static isShipBuild()Z
    .registers 2

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 143
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addLog(ILjava/lang/String;)V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v0, v0, p1

    if-nez v0, :cond_1e

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "mLogFile is null. type = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockSettingsLog"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :cond_1e
    new-instance v0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;-><init>(Lcom/android/server/locksettings/LockSettingsServiceLog;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->saveLssLog:Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 14

    const-string v0, "LockSettingsLog"

    const-string v1, "dump start"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    const/4 v3, 0x5

    if-ge v2, v3, :cond_d3

    .line 273
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v3, v3, v2

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->hasLogType(I)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_c1

    .line 277
    :cond_19
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n----------------- Start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " state -----------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getLastFileName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5e

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<No "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c1

    .line 291
    :cond_5e
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 293
    :try_start_63
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v8, "r"

    invoke-direct {v7, v6, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_6b} :catch_9d
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6b} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6b} :catch_93
    .catchall {:try_start_63 .. :try_end_6b} :catchall_91

    move v6, v1

    .line 294
    :cond_6c
    :try_start_6c
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_81

    .line 295
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    const-wide/16 v10, 0x7d0

    cmp-long v8, v8, v10

    if-lez v8, :cond_6c

    const-string v4, "<MAX Line reached>"
    :try_end_81
    .catchall {:try_start_6c .. :try_end_81} :catchall_87

    .line 302
    :cond_81
    :try_start_81
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_84
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_84} :catch_9d
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_93
    .catchall {:try_start_81 .. :try_end_84} :catchall_91

    if-eqz v4, :cond_a5

    goto :goto_9f

    :catchall_87
    move-exception v6

    .line 293
    :try_start_88
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_90

    :catchall_8c
    move-exception v7

    :try_start_8d
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_90
    throw v6
    :try_end_91
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_91} :catch_9d
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_91} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_91} :catch_93
    .catchall {:try_start_8d .. :try_end_91} :catchall_91

    :catchall_91
    move-exception v1

    goto :goto_c5

    :catch_93
    move-exception v6

    .line 307
    :try_start_94
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "<Unknown Error>"

    goto :goto_9f

    :catch_9a
    const-string v4, "<IO Error>"

    goto :goto_9f

    :catch_9d
    const-string v4, "<File not found>"
    :try_end_9f
    .catchall {:try_start_94 .. :try_end_9f} :catchall_91

    .line 311
    :goto_9f
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_a5
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----------------- End "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_c1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    :goto_c5
    if-eqz v4, :cond_cd

    .line 311
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_cd
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 315
    throw v1

    :cond_d3
    const-string p0, "dump end"

    .line 320
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getCurTime()Ljava/lang/String;
    .registers 2

    .line 151
    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 152
    invoke-virtual {p0}, Landroid/text/format/Time;->setToNow()V

    const-string v0, "%Y%m%d_%H%M%S"

    .line 153
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    const-string v2, "Enroll"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 92
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    const-string v2, "Verify"

    invoke-direct {v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 93
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    const-string v2, "KeystoreErr"

    invoke-direct {v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 94
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    const-string v2, "Restore"

    invoke-direct {v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 95
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    const-string v1, "Debug"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;-><init>(Ljava/lang/String;I)V

    aput-object v0, p0, v2

    return-void
.end method

.method public final makeLogTime()Ljava/lang/String;
    .registers 6

    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    .line 160
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const/4 v2, 0x5

    .line 161
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xb

    .line 162
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xc

    .line 163
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/16 v1, 0xd

    .line 164
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/16 v1, 0xe

    .line 165
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%02d-%02d %02d:%02d:%02d.%03d "

    .line 159
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public migrateLssLog()V
    .registers 7

    const-string v0, "LockSettingsLog"

    .line 387
    :try_start_2
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    .line 388
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/log/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1e

    const-string p0, "No log folder"

    .line 390
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 393
    :cond_1e
    new-instance v3, Lcom/android/server/locksettings/LockSettingsServiceLog$3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/locksettings/LockSettingsServiceLog$3;-><init>(Lcom/android/server/locksettings/LockSettingsServiceLog;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2f

    const-string p0, "No log files"

    .line 403
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 406
    :cond_2f
    array-length v1, p0

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v1, :cond_6f

    aget-object v3, p0, v2

    .line 407
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 408
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " deleted!"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_57} :catch_5a

    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :catch_5a
    move-exception p0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete file error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    return-void
.end method

.method public final sendToDiagmon(I)V
    .registers 14

    const-string v0, "1"

    const-string v1, "IntentOnly"

    const-string v2, "Ext"

    const-string v3, "CFailLogUpload"

    const-string v4, "DiagMon"

    .line 213
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "samsung_errorlog_agree"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    const-string v7, "LockSettingsLog"

    if-eq v5, v6, :cond_24

    const-string/jumbo p0, "sendToDiagmon failed. errorlog_agree is not true!!"

    .line 215
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 218
    :cond_24
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    if-nez v5, :cond_2f

    const-string/jumbo p0, "sendToDiagmon failed. filename is null!!"

    .line 219
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_2f
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v5, v5, p1

    invoke-virtual {v5, v6}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->hasLogType(I)Z

    move-result v5

    if-nez v5, :cond_57

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendToDiagmon failed. Cannot upload this log : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 226
    :cond_57
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsServiceLog;->isShipBuild()Z

    move-result v5

    if-nez v5, :cond_6a

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsServiceLog;->isDevBuild()Z

    move-result v5

    if-nez v5, :cond_6a

    const-string/jumbo p0, "sendToDiagmon failed. Can upload only ship or dev!"

    .line 227
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 231
    :cond_6a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "send broadcast intent to diagmon : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/16 v8, 0x20

    .line 235
    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    :try_start_92
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v4, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v9, v3, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 241
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "ServiceID"

    const-string/jumbo v11, "sp4xkeu9ef"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v9, v2, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 243
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "ClientV"

    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->BUILD_ID:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "UiMode"

    const-string v11, "0"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "ResultCode"

    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v11, v11, p1

    invoke-virtual {v11}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getErrorCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "WifiOnlyFeature"

    invoke-virtual {v9, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "EventID"

    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->EVENT_ID:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v9, "Description"

    iget-object v10, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object p1, v10, p1

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 250
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "IntentOnlyMode"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Agree"

    const-string v2, "D"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "LogPath"

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "uploadMO"

    .line 254
    invoke-virtual {v5, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 255
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "com.sec.android.diagmonagent"

    .line 256
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_19c} :catch_19d

    goto :goto_1a3

    :catch_19d
    move-exception p1

    const-string v0, "Exception while sending a bug report."

    .line 260
    invoke-static {v7, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a3
    const/4 p1, 0x0

    .line 262
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    return-void
.end method

.method public final showDump()V
    .registers 15

    const-string v0, "LockSettingsLog"

    const-string v1, "!@LSS log start"

    .line 339
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    :goto_b
    const/4 v5, 0x5

    if-ge v3, v5, :cond_d8

    .line 346
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v5, v5, v3

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->hasLogType(I)Z

    move-result v5

    if-nez v5, :cond_1b

    goto/16 :goto_c9

    .line 350
    :cond_1b
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    .line 351
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@----------------- Start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " state -----------------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getLastFileName()Ljava/lang/String;

    move-result-object v6

    .line 356
    iget-object v8, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 358
    :try_start_49
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "r"

    invoke-direct {v8, v6, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_51} :catch_a8
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_51} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_51} :catch_9e
    .catchall {:try_start_49 .. :try_end_51} :catchall_9c

    move v6, v1

    .line 359
    :goto_52
    :try_start_52
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7d

    .line 360
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_52 .. :try_end_6c} :catchall_83

    add-int/lit8 v6, v6, 0x1

    int-to-long v9, v6

    const-wide/16 v11, 0x7d0

    cmp-long v4, v9, v11

    if-lez v4, :cond_7b

    :try_start_75
    const-string v4, "!@<MAX Line reached>"
    :try_end_77
    .catchall {:try_start_75 .. :try_end_77} :catchall_78

    goto :goto_7d

    :catchall_78
    move-exception v4

    move-object v6, v2

    goto :goto_87

    :cond_7b
    move-object v4, v2

    goto :goto_52

    .line 367
    :cond_7d
    :goto_7d
    :try_start_7d
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_80
    .catch Ljava/io/FileNotFoundException; {:try_start_7d .. :try_end_80} :catch_a8
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_9e
    .catchall {:try_start_7d .. :try_end_80} :catchall_9c

    if-eqz v4, :cond_ad

    goto :goto_aa

    :catchall_83
    move-exception v6

    move-object v13, v6

    move-object v6, v4

    move-object v4, v13

    .line 358
    :goto_87
    :try_start_87
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_8f

    :catchall_8b
    move-exception v8

    :try_start_8c
    invoke-virtual {v4, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8f
    throw v4
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_90} :catch_9a
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_90} :catch_98
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_90} :catch_93
    .catchall {:try_start_8c .. :try_end_90} :catchall_90

    :catchall_90
    move-exception v1

    move-object v4, v6

    goto :goto_cd

    :catch_93
    move-exception v4

    move-object v13, v6

    move-object v6, v4

    move-object v4, v13

    goto :goto_9f

    :catch_98
    move-object v4, v6

    goto :goto_a5

    :catch_9a
    move-object v4, v6

    goto :goto_a8

    :catchall_9c
    move-exception v1

    goto :goto_cd

    :catch_9e
    move-exception v6

    .line 372
    :goto_9f
    :try_start_9f
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "!@<Unknown Error>"

    goto :goto_aa

    :catch_a5
    :goto_a5
    const-string v4, "!@<IO Error>"

    goto :goto_aa

    :catch_a8
    :goto_a8
    const-string v4, "!@<File not found>"
    :try_end_aa
    .catchall {:try_start_9f .. :try_end_aa} :catchall_9c

    .line 376
    :goto_aa
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_ad
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 380
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@----------------- End "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :goto_cd
    if-eqz v4, :cond_d2

    .line 376
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_d2
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 379
    throw v1

    :cond_d8
    const-string p0, "!@LSS log end"

    .line 382
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public uploadLogFile(I)V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v0, v0, p1

    if-nez v0, :cond_1e

    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mLogFile is null. type = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockSettingsLog"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_1e
    new-instance v0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsServiceLog$1;-><init>(Lcom/android/server/locksettings/LockSettingsServiceLog;I)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public writeLog()V
    .registers 2

    .line 324
    new-instance v0, Lcom/android/server/locksettings/LockSettingsServiceLog$2;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsServiceLog$2;-><init>(Lcom/android/server/locksettings/LockSettingsServiceLog;)V

    .line 335
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final zipLogFile(I)Ljava/lang/String;
    .registers 15

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/log/LockSettingsLog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->getCurTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v1

    const/16 v2, 0x800

    :try_start_1f
    new-array v2, v2, [B
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_f2

    const/4 v3, 0x0

    .line 179
    :try_start_22
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_ab
    .catchall {:try_start_22 .. :try_end_27} :catchall_a7

    .line 180
    :try_start_27
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_a4
    .catchall {:try_start_27 .. :try_end_2c} :catchall_a1

    const/4 v6, 0x0

    move-object v8, v3

    move v7, v6

    :goto_2f
    const/4 v9, 0x5

    if-ge v7, v9, :cond_95

    if-ne p1, v7, :cond_3d

    .line 183
    :try_start_34
    iget-object v9, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getUploadFileName()Ljava/lang/String;

    move-result-object v9

    goto :goto_45

    :cond_3d
    iget-object v9, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getLastFileName()Ljava/lang/String;

    move-result-object v9

    :goto_45
    if-eqz v9, :cond_90

    .line 185
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_90

    .line 187
    new-instance v10, Ljava/util/zip/ZipEntry;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v12, v12, v7

    invoke-virtual {v12}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getErrorCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".log"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 190
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_78} :catch_93
    .catchall {:try_start_34 .. :try_end_78} :catchall_e0

    .line 191
    :goto_78
    :try_start_78
    invoke-virtual {v10, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_82

    .line 192
    invoke-virtual {v5, v2, v6, v8}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_78

    .line 194
    :cond_82
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 195
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_88} :catch_8d
    .catchall {:try_start_78 .. :try_end_88} :catchall_8a

    move-object v8, v10

    goto :goto_90

    :catchall_8a
    move-exception p0

    move-object v3, v10

    goto :goto_e2

    :catch_8d
    move-exception p0

    move-object v8, v10

    goto :goto_af

    :cond_90
    :goto_90
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :catch_93
    move-exception p0

    goto :goto_af

    :cond_95
    if-eqz v8, :cond_9a

    .line 203
    :try_start_97
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_f2

    .line 204
    :catch_9a
    :cond_9a
    :try_start_9a
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_f2

    .line 205
    :catch_9d
    :try_start_9d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_d6
    .catchall {:try_start_9d .. :try_end_a0} :catchall_f2

    goto :goto_d6

    :catchall_a1
    move-exception p0

    move-object v5, v3

    goto :goto_e2

    :catch_a4
    move-exception p0

    move-object v5, v3

    goto :goto_ae

    :catchall_a7
    move-exception p0

    move-object v4, v3

    move-object v5, v4

    goto :goto_e2

    :catch_ab
    move-exception p0

    move-object v4, v3

    move-object v5, v4

    :goto_ae
    move-object v8, v5

    :goto_af
    :try_start_af
    const-string p1, "LockSettingsLog"

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zipLogFile - error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_af .. :try_end_c6} :catchall_e0

    if-eqz v8, :cond_cb

    .line 203
    :try_start_c8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_f2

    :catch_cb
    :cond_cb
    if-eqz v5, :cond_d0

    .line 204
    :try_start_cd
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_f2

    :catch_d0
    :cond_d0
    if-eqz v4, :cond_d5

    .line 205
    :try_start_d2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_f2

    :catch_d5
    :cond_d5
    move-object v0, v3

    :catch_d6
    :goto_d6
    :try_start_d6
    const-string p0, "LockSettingsLog"

    const-string/jumbo p1, "zipLogFile - finish"

    .line 207
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    monitor-exit v1
    :try_end_df
    .catchall {:try_start_d6 .. :try_end_df} :catchall_f2

    return-object v0

    :catchall_e0
    move-exception p0

    move-object v3, v8

    :goto_e2
    if-eqz v3, :cond_e7

    .line 203
    :try_start_e4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_f2

    :catch_e7
    :cond_e7
    if-eqz v5, :cond_ec

    .line 204
    :try_start_e9
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_f2

    :catch_ec
    :cond_ec
    if-eqz v4, :cond_f1

    .line 205
    :try_start_ee
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_f2

    .line 206
    :catch_f1
    :cond_f1
    :try_start_f1
    throw p0

    :catchall_f2
    move-exception p0

    .line 208
    monitor-exit v1
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_f2

    throw p0
.end method
