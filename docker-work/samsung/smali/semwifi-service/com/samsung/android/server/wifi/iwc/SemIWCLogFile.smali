.class public Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;
.super Lcom/samsung/android/server/wifi/iwc/SemIWCFile;
.source "SemIWCLogFile.java"


# static fields
.field private static final FILE_NAME_COUNTER:Ljava/lang/String; = "iwc_log_name_counter"

.field private static final LOG_NAME_OLD:Ljava/lang/String; = "iwc_dump_old.txt"

.field private static final MAX_SIZE:I = 0x400000

.field private static final dateFormat:Landroid/icu/text/SimpleDateFormat;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final bssidPattern:Ljava/util/regex/Pattern;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->dateFormat:Landroid/icu/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;-><init>(Ljava/lang/String;)V

    const-string v0, "([0-9A-Fa-f]{2}:){5}([0-9A-Fa-f]{2})"

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->bssidPattern:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 43
    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p1

    if-nez p1, :cond_1d

    const-string p1, "./"

    .line 45
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->mPath:Ljava/lang/String;

    goto :goto_23

    .line 47
    :cond_1d
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->mPath:Ljava/lang/String;

    .line 50
    :goto_23
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->mPath:Ljava/lang/String;

    const-string v1, "iwc_log_name_counter"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_49

    .line 53
    :try_start_39
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 54
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->setFileNameCounter(I)V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3f} :catch_45
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3f} :catch_40

    goto :goto_49

    :catch_40
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    :catch_45
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 62
    :cond_49
    :goto_49
    iput-object p2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->TAG:Ljava/lang/String;

    .line 63
    new-instance p1, Landroid/util/LocalLog;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p2

    if-eqz p2, :cond_56

    const/16 p2, 0x200

    goto :goto_58

    :cond_56
    const/16 p2, 0x400

    :goto_58
    invoke-direct {p1, p2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->mLocalLog:Landroid/util/LocalLog;

    return-void
.end method

.method private localLog(Ljava/lang/String;)V
    .registers 2

    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->mLocalLog:Landroid/util/LocalLog;

    if-eqz p0, :cond_7

    .line 115
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public delete()V
    .registers 3

    .line 134
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->mPath:Ljava/lang/String;

    const-string v1, "iwc_dump_old.txt"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 139
    :cond_20
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 140
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_29
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/nio/file/InvalidPathException;->printStackTrace()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public dumpLocalLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 172
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getBufferedReader()Ljava/io/BufferedReader;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->getBufferedReader()Ljava/io/BufferedReader;

    move-result-object p0

    return-object p0
.end method

.method public getFileNameCounter()I
    .registers 5

    const/4 v0, 0x0

    .line 150
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->mPath:Ljava/lang/String;

    const-string v3, "iwc_log_name_counter"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-static {p0, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_2d
    .catch Ljava/nio/file/InvalidPathException; {:try_start_1 .. :try_end_1b} :catch_2d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1b} :catch_2d

    .line 152
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_23

    .line 153
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2d
    .catch Ljava/nio/file/InvalidPathException; {:try_start_1f .. :try_end_22} :catch_2d
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_22} :catch_2d

    goto :goto_31

    :catchall_23
    move-exception p0

    .line 150
    :try_start_24
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v1

    :try_start_29
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw p0
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_2d
    .catch Ljava/nio/file/InvalidPathException; {:try_start_29 .. :try_end_2d} :catch_2d
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_31
    return v0
.end method

.method public getPrintableLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 179
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->bssidPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v1, 0x0

    .line 183
    :goto_15
    :try_start_15
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 184
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 185
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    add-int/lit8 v4, v2, 0x0

    .line 186
    invoke-virtual {v0, p1, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v1, "##:##:##:##"

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0xb

    .line 188
    invoke-virtual {v0, p1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_15

    .line 191
    :cond_37
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_15 .. :try_end_3e} :catch_3e

    .line 194
    :catch_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSize()J
    .registers 3

    .line 30
    invoke-super {p0}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic isFileExists()Z
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->isFileExists()Z

    move-result p0

    return p0
.end method

.method public readData()[B
    .registers 6

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    long-to-int v0, v0

    .line 72
    new-array v1, v0, [B

    .line 73
    :try_start_f
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_20} :catch_32
    .catch Ljava/nio/file/InvalidPathException; {:try_start_f .. :try_end_20} :catch_32
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_20} :catch_32

    const/4 p0, 0x0

    .line 76
    :try_start_21
    invoke-virtual {v2, v1, p0, v0}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 77
    :try_start_24
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_32
    .catch Ljava/nio/file/InvalidPathException; {:try_start_24 .. :try_end_27} :catch_32
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_27} :catch_32

    goto :goto_36

    :catchall_28
    move-exception p0

    .line 73
    :try_start_29
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception v0

    :try_start_2e
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_31
    throw p0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_32} :catch_32
    .catch Ljava/nio/file/InvalidPathException; {:try_start_2e .. :try_end_32} :catch_32
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_32} :catch_32

    :catch_32
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_36
    return-object v1
.end method

.method public bridge synthetic readFile()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->readFile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setFileNameCounter(I)V
    .registers 5

    .line 161
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->mPath:Ljava/lang/String;

    const-string v2, "iwc_log_name_counter"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_2b
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_1a} :catch_2b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1a} :catch_2b

    .line 164
    :try_start_1a
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_21

    .line 166
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_2b
    .catch Ljava/nio/file/InvalidPathException; {:try_start_1d .. :try_end_20} :catch_2b
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_20} :catch_2b

    goto :goto_2f

    :catchall_21
    move-exception p0

    .line 161
    :try_start_22
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p1

    :try_start_27
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p0
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2b} :catch_2b
    .catch Ljava/nio/file/InvalidPathException; {:try_start_27 .. :try_end_2b} :catch_2b
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2f
    return-void
.end method

.method public writeData(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    const-string v0, "UTF-8"

    .line 87
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 88
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_23

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 95
    :cond_20
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 98
    :cond_23
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    array-length v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/32 v3, 0x400000

    cmp-long v1, v1, v3

    if-lez v1, :cond_57

    .line 99
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->mPath:Ljava/lang/String;

    const-string v2, "iwc_dump_old.txt"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 103
    :cond_4a
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 104
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 107
    :cond_57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-object v2, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v1, v0

    invoke-static {p0, p1, v1}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6f} :catch_70
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_6f} :catch_70
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_74
    return-void
.end method

.method public bridge synthetic writeDataAppend(Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->writeDataAppend(Ljava/lang/String;)V

    return-void
.end method

.method public writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 120
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->localLog(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".File"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->dateFormat:Landroid/icu/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->writeData(Ljava/lang/String;)V

    return-void
.end method
