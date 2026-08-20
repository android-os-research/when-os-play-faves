.class public final Lcom/android/server/knox/dar/sdp/SDPLogFile;
.super Ljava/lang/Object;
.source "SDPLogFile.java"


# static fields
.field public static final DEBUG:Z

.field public static final DUMP_LINE_CNT:I = 0x1770

.field public static final EOL:B = 0xat

.field public static final EOL_SIZE:I = 0x1

.field public static final FILE_LATEST_VERSION:I = 0x2

.field public static final FILE_LOCK:Ljava/util/concurrent/locks/Lock;

.field public static final FILE_OFFSET:I = 0x0

.field public static final FILE_PATH:Ljava/lang/String; = "/data/log/sdp_log"

.field public static final LONG_SIZE:I = 0x8

.field public static final MAX_FILE_SIZE:J = 0x200000L

.field public static final MAX_FILE_SIZE_IN_MB:J = 0x2L

.field public static final MAX_HEADER_LENGTH:J = 0x11L

.field public static final TAG:Ljava/lang/String; = "SDPLogFile"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.build.type"

    .line 23
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->DEBUG:Z

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogD(Ljava/lang/String;)V
    .registers 2

    .line 194
    sget-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->DEBUG:Z

    if-eqz v0, :cond_b

    if-eqz p0, :cond_b

    const-string v0, "SDPLogFile"

    .line 195
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static LogE(Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_7

    const-string v0, "SDPLogFile"

    .line 207
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static LogI(Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_7

    const-string v0, "SDPLogFile"

    .line 201
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static check(Ljava/io/RandomAccessFile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 120
    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 123
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_52

    const-wide/16 v0, 0x11

    cmp-long v0, v2, v0

    if-lez v0, :cond_4a

    const-wide/32 v0, 0x200000

    cmp-long v2, v2, v0

    if-gtz v2, :cond_42

    .line 133
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_3a

    .line 139
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_26} :catch_5a

    const-wide/16 v2, 0x2

    cmp-long p0, v0, v2

    if-nez p0, :cond_32

    const-string p0, "Header Check : Passed!"

    .line 147
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->LogD(Ljava/lang/String;)V

    return-void

    .line 141
    :cond_32
    :try_start_32
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Version mismatched"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    :cond_3a
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "File corrupted"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_42
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "File size exceeded"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_4a
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Broken file header"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :cond_52
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "File created from scratch"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_5a} :catch_5a

    :catch_5a
    move-exception p0

    .line 144
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Unexpected error"

    invoke-direct {v0, v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static checkAndReset(Ljava/io/RandomAccessFile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    :try_start_0
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->check(Ljava/io/RandomAccessFile;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x0

    goto :goto_31

    :catch_5
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->makeDebugMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->LogD(Ljava/lang/String;)V

    move-object v0, v1

    :goto_31
    if-eqz v0, :cond_56

    const-wide/16 v1, 0x11

    .line 104
    array-length v3, v0

    int-to-long v3, v3

    add-long/2addr v3, v1

    const-wide/16 v1, 0x1

    add-long/2addr v3, v1

    const-wide/16 v1, 0x0

    .line 106
    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 107
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const-wide/16 v1, 0x2

    .line 108
    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/16 v1, 0xa

    .line 109
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 112
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 113
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 114
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_56
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 7

    if-nez p0, :cond_8

    const-string p0, "Failed to dump: Invalid writer..."

    .line 152
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->LogE(Ljava/lang/String;)V

    return-void

    .line 156
    :cond_8
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Failed to dump: Maybe target file is already being used..."

    .line 157
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->LogE(Ljava/lang/String;)V

    const-string v0, "Target file busy"

    .line 158
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1b
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 165
    :try_start_1d
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/data/log/sdp_log"

    const-string/jumbo v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_71

    .line 168
    :try_start_27
    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->check(Ljava/io/RandomAccessFile;)V
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_2a} :catch_49
    .catchall {:try_start_27 .. :try_end_2a} :catchall_47

    const-wide/16 v3, 0x11

    .line 175
    :try_start_2c
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 178
    :goto_2f
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x1770

    if-lt v1, v5, :cond_3e

    const-string v0, "Dump line count reached to the limit: 6000"

    goto :goto_43

    .line 183
    :cond_3e
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_47

    move v1, v4

    goto :goto_2f

    .line 185
    :cond_43
    :goto_43
    :try_start_43
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_71

    goto :goto_75

    :catchall_47
    move-exception v1

    goto :goto_68

    :catch_49
    move-exception v1

    .line 170
    :try_start_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->LogE(Ljava/lang/String;)V

    .line 172
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_68
    .catchall {:try_start_4a .. :try_end_68} :catchall_47

    .line 165
    :goto_68
    :try_start_68
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception v2

    :try_start_6d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_70
    throw v1
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_71} :catch_71

    :catch_71
    move-exception v1

    .line 186
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    :goto_75
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v0, :cond_7f

    .line 189
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    :cond_7f
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static saveFile(Ljava/util/Queue;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving logs... [QS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->LogI(Ljava/lang/String;)V

    const-string v0, "Target path : /data/log/sdp_log"

    .line 41
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->LogD(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 45
    :try_start_27
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "/data/log/sdp_log"

    const-string/jumbo v2, "rwd"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_af

    .line 47
    :try_start_31
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->checkAndReset(Ljava/io/RandomAccessFile;)V

    const-wide/16 v1, 0x0

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 50
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v3

    .line 51
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 53
    :goto_40
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_78

    .line 54
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_4f

    goto :goto_40

    :cond_4f
    const-string v6, "UTF-8"

    .line 58
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 59
    array-length v6, v5

    int-to-long v6, v6

    add-long/2addr v3, v6

    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    const-wide/32 v6, 0x200000

    cmp-long v3, v3, v6

    if-lez v3, :cond_6b

    const-wide/16 v3, 0x11

    .line 60
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 62
    :cond_6b
    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->write([B)V

    const/16 v3, 0xa

    .line 63
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write(I)V

    .line 65
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    goto :goto_40

    .line 68
    :cond_78
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 69
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 71
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->setPermission()V

    .line 73
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Saving success! [FP : %d, FS : %d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 74
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 73
    invoke-static {p0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->LogI(Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_31 .. :try_end_a1} :catchall_a5

    .line 75
    :try_start_a1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a4} :catch_af

    goto :goto_cb

    :catchall_a5
    move-exception p0

    .line 45
    :try_start_a6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_aa

    goto :goto_ae

    :catchall_aa
    move-exception v0

    :try_start_ab
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ae
    throw p0
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_af} :catch_af

    :catch_af
    move-exception p0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to save logs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->LogE(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    :goto_cb
    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public static setPermission()V
    .registers 4

    const-string v0, "/data/log/sdp_log"

    const/16 v1, 0x1a0

    const/16 v2, 0x3e8

    const/16 v3, 0x3ef

    .line 86
    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set permission : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->LogI(Ljava/lang/String;)V

    return-void
.end method
